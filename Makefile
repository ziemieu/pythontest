install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:

	python -m pytest -vv hello_test.py
	# python -m pytest -vvv --cov=hello --cov=greeting \
	# 	--cov=smath --cov=web tests
	# python -m pytest --nbval notebook.ipynb	#tests our jupyter notebook
	#python -m pytest -v tests/test_web.py #if you just want to test web

# debugthree:
# 	#not working the way I expect
# 	python -m pytest -vv --pdb --maxfail=4  # drop to PDB for first three failures

format:
	black *.py

lint:
	pylint --disable=R,C *.py

all: install lint test 