# Program1_Ruby
This assignment consists of three parts and gives you an introduction to programming in
Ruby. Please find a code template here . You need to complete the declared methods
and the Movie class. DO NOT change the method or class definition in any way. Write
your code where it says “ # ADD YOUR CODE HERE ”. This file includes mock tests. You may
run these tests and add more customized tests in order to check the correctness of your
code. The only difference between mock tests and real tests we will run for grading is
the number of test cases. Please note that the result of each method must be returned ,
not printed!<br><br>
Learning Goals<br>
The objective of this assignment is for you to …<br>
&nbsp;&nbsp;● understand method signatures in Ruby;<br>
&nbsp;&nbsp;● understand how to manipulate strings and arrays in Ruby;<br>
&nbsp;&nbsp;● write simple code using the basic object-oriented mechanisms in Ruby.<br><br>
Arrays, Hashes, and Enumerables<br>
Check the official documentation on Array , Hash and Enumerable as they may be helpful
in solving this exercise. Define the following methods:<br><br>
1.two_sum(a, k) takes an array of integers as an argument, and an integer k , and
returns the maximum of sum of any 2 elements in the array such that their
sum s < k . If no such elements exist satisfying this equation, return –1 .<br>
Example:<br>
&nbsp;&nbsp;● two_sum( [34,23,1,24,75,33,54,8], 60) returns 58<br>
&nbsp;&nbsp;  ● two_sum( [10,20,30], 15) returns –1<br>
2.sorted_squares(a) takes an array of integers sorted in non-decreasing order,
and returns an array of the squares of each number, also sorted in
non-decreasing order.<br>
Example:<br>
&nbsp;&nbsp;  ● sorted_squares ([–4,–1,0,3,10]) returns [0,1,9,16,100]<br>
&nbsp;&nbsp;  ● sorted_squares ([–7,–3,2,3,11]) returns [4,9,9,49,121]<br>
3.unique_total(a) takes an array of integers as an argument, and then returns the
sum of unique elements in the array. The sum of an empty array is defined to be
zero. <br>Example:<br>
 &nbsp;&nbsp; ● unique_total([1,2,2,3,4,4,6,1]) returns 9<br>
 &nbsp;&nbsp; ● unique_total([1,4,–4,6,1]) returns 6<br>
 &nbsp;&nbsp; ● unique_total([]) returns 0<br><br>
Strings and Regular Expressions<br>
Check the official Ruby documentation on String s and Regexp s as they may be helpful
in solving this exercise. Define the following methods:<br><br>
1.unique_char (s) takes a string, finds the first non-repeating character in it, and
returns its index. If it doesn't exist, it returns –1 .<br>
Example:<br>
 &nbsp;&nbsp; ● unique_char(“ racecar”) returns 3<br>
 &nbsp;&nbsp; ● unique_char(“ redder”) returns –1<br><br>
2.reverse_words(str) takes an input string, and reverses the string word by word.
Also for each word, if the word contains vowels, it removes the vowels and
appends the vowels at the end of each word. The answer is returned as a
lowercase String.<br>
 &nbsp;&nbsp; ● A word is defined as a sequence of non-space characters.<br>
&nbsp;&nbsp;  ● The input string may contain leading or trailing spaces. However, your
  reversed string should not contain leading or trailing spaces.<br>
 &nbsp;&nbsp; ● Multiple spaces between two words are reduced to a single space in the
  reversed string.<br>
Example :<br>
 &nbsp;&nbsp; ● reverse_words( " hello world! ") returns “ wrld!o hlleo ”<br>
 &nbsp;&nbsp; ● reverse_words( “Object Oriented Design!!”) returns “ dsgn!!ei
rntdoiee bjctoe ”<br><br>
Object-Oriented Basics<br>
You will be implementing a Movie class. Each Movie has two attributes - name and
release_date . The attributes shouldn’t be publicly accessible; rather they should be
read and modified through proper getters and setters.<br>
The constructor should accept the name (string) as the first argument, release_date
(string, the date format “01-19-2019” or “07-31-1997” i.e. “mm-dd-yyyy”) as the second
argument, and should raise ArgumentError (one of Ruby's built-in exception types) if
the name is nil, or the empty string or if release_date is nil or its format is incorrect.
Include a method released_on that returns a string in the following format (Assume the
date entered will lie between “01-01-1970” and “12-31-2020”):<br>
 &nbsp;&nbsp; ●  If release_date is invalid (such as “01-41-2019” or “02-29-2019”) return “ Invalid
Date ”.<br>
  &nbsp;&nbsp;●  If release_date is valid, and date is “01-15-2019”, (assuming name of the Movie
is EndGame ) return a string in this format: “ EndGame - January 15 2019 ” .<br>
Include a method is_released? that returns a string in the following format:
 &nbsp;&nbsp; ● If release_date is invalid (such as “01-41-2019” or “02-29-2019”) return “Invalid
Date”.<br>
 &nbsp;&nbsp; ● If release_date is valid, return the String “true” if the movie is already released;
else return the String “false” .<br><br>
Testing<br>
You should test all the methods of your code thoroughly. They should pass for all
general scenarios as well as edge cases. The test cases you use shouldn’t be part of
assignment submission.<br><br>
Scoring<br>
You have to code 5 methods and 1 class. Each of the methods is worth 5 points and the
class definition is worth 5 points as well. Your method needs to pass all of our test
cases to receive full credit.<br><br>
Submission<br>
Submit only the ruby_intro.rb file. You should rename the file to
ruby_intro_Teamname_unityID1_unityID2.rb before submitting.<br>
Example : ruby_intro_Team121_zhu6_xma21
You can see your team name in Expertiza by selecting “Your team” from the menu for
the current assignment.
