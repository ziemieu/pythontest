import pytest
from greeting import my_name

##### Testing Features
@pytest.fixture
def mary():
    return "My name is: mary"

def test_mary(mary):
    assert mary == my_name("mary")

@pytest.fixture
def John():
    return "My name is: John"

def test_john(John):
    assert John == my_name("John")


##### This is for testing module
# def test_my_name():
#     assert "My name is: Mary" == my_name("Mary")