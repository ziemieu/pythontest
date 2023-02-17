import pytest
from greeting import my_name

##### Testing Features
@pytest.fixture
def mary():
    return "My name is: Mary"

@pytest.fixture
def john():
    return "My name is: John"

def test_mary(mary):
    assert "Mary" == my_name("Mary")

def test_john(john):
    assert "John" == my_name("Mary")

##### This is for testing module
# def test_my_name():
#     assert "My name is: Mary" == my_name("Mary")