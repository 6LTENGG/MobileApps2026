import 'package:flutter/material.dart';

var name = 'John Doe';
var age = 30;
var isActive = true;

int year = 2026;
String country = 'USA';
double height = 5.9;

const String appName = 'My First App';
const double pi = 3.14;

  final String city = 'New York';
  final int population = 8419600;

  String? nullableString ;

  int add(int a, int b) {
    return a + b;
  }
    int subtract(int a, int b) { return a - b; }

  void greet(String name) {
    print('Hello, $name!');
  }

  void sayHello() {
    print('Hello, World!');
  }

  int multiply(int a, int b) => a * b;

  List<String> fruits = ['Apple', 'Banana', 'Orange'];
  final Set<int>numbers = {1, 2, 3, 4, 5};
  
  Map<String, int> scores = {
    'Alice': 90,
    'Bob': 85,
    'Charlie': 95,
  };



void main() {

  if (age > 18) {
    print('$name is an adult.');
  } else {
    print('$name is a minor.');
  }

  int count = 0;
  while (count < 5) {
    print("Count: $count");
    count++;
  }
  
  // print("Hello, $name! you are $age years old.");
  // print("Sum of 5 and 10 is: ${add(5, 10)}");
  // print("difference of 5 and 10 is: ${add(5, 10)}");
  // print("Product of 5 and 10 is: ${multiply(5, 10)}");
  // print("alice");
  // sayHello();

}