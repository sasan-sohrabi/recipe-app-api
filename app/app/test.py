# This code is simple example for writing test in python.


# Import relevant libraries for this test program
from django.test import TestCase

from app.cal import add


class CalcTest(TestCase):

    def test_add_number(self):
        """Test that two numbers are added together"""
        self.assertEqual(add(3, 8), 11)


