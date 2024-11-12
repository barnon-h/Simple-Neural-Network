import pytest

from src.main import add

@pytest.fixture
def numbers()->list:
    return [5 , 5]

class tast:
    
    def test_add(self, numbers) -> None:
        tmp = add(numbers[0], numbers[1])
        assert tmp == 10
