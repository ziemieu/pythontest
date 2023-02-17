install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:

	# python -m pytest -vv hello_test.py     ////Testing only one
	#  python -m pytest -vv --cov=hello hello_test.py ////Testing withonly one file i.e hello_test.py
	# python -m pytest -vv --cov=hello tests ///Testinf only hello pytest cov
	python -m pytest -vv --cov=hello --cov=greeting tests/
	
	# python -m pytest -vvv  --cov=greeting  tests/
	# 	--cov=smath --cov=web testss
	# python -m pytest --nbval notebook.ipynb	#tests our jupyter notebook
	#python -m pytest -v tests/test_web.py #if you just want to test web

one-test:
	python -m pytest -vv tests/test_greeting.py::test_my_name

debug:
	#working the way I expect
	python -m pytest -vv --pdb #Invoke debugger

# debugthree:
# 	#not working the way I expect
# 	python -m pytest -vv --pdb --maxfail=4  # drop to PDB for first three failures

format:
	black *.py

lint:
	pylint --disable=R,C *.py

all: install lint test 