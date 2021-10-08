# This code is simple example for writing test in python.


# Import relevant libraries for this test program
from django.test import TestCase

from app.cal import add, subtract


class CalcTest(TestCase):

    def test_add_number(self):
        """Test that two numbers are added together"""
        self.assertEqual(add(3, 8), 11)

    def test_subtract_numbers(self):
        """Test that values are subtracted and returned"""
        self.assertEqual(subtract(5, 11), 6)
