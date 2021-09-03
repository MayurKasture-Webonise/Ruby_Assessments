# Ruby - Chapter 1 Assessment.


# Q.1) Compute the sum of cubes for a given range a through b. Write a method called sum_of_cubes to accomplish this task.
#      Example : Given range 1 to 3 the method should return 36.
# Answer -->

'''
def sum_of_cubes(a, b)
	temp = 0
    	for i in a..b
        	c = i ** 3
        	temp += c
    	end
     	return temp
end

sum = sum_of_cubes(1, 3)
puts sum
'''



# Q.2) Given an Array, return the elements that are present exactly once in the array. You need to write a method called
#      non_duplicated_values to accomplish this task. Example : Given [1,2,2,3,3,4,5], the method should return [1,4,5].  
# Answer -->

'''
def non_duplicated_values(list)
  list.find_all { |i| list.count(i) == 1 }
end

result = non_duplicated_values([1,2,2,3,3,4,5])
puts result
'''



# Q.3)  Given a sentence,return true if the sentence is a palindrome.You are supposed to write a method palindrome?to accomplish the task.
# Answer -->

''' 	
def check_palindrome(input_str)
	r_space = input_str.delete(' ')
	str = r_space.upcase
  	return str.eql? str.reverse
end

input = "Never odd or even"
result = check_palindrome(input)
puts result
'''



# Q.4) 9 is a Kaprekar number since 9 ^ 2 = 81 and 8 + 1 = 9, 297 is also Kaprekar number since 297 ^ 2 = 88209 and 88 + 209 = 297. 
#      In short, for a Kaprekar number k with n-digits, if you square it and add the right n digits to the left n or n-1 digits,
#      the resultant sum is k. Find if a given number is a Kaprekar number.
# Answer -->

'''
def is_kaprekar_number(k)
	#take a square
	square = k**2
	#convert into string & cal. lenght
  	digits = k.to_s.length
  	right_n_digits = square.to_s[(0-digits)..-1].to_i
  	left_digits = square.to_s[0..(1-digits)].to_i
  	sum = left_digits + right_n_digits
  
  if sum==k
    puts "#{k} : is a kaprekar number"
  else 
    puts "#{k} : is not kaprekar number"
  end
end 

result = is_kaprekar_number(9)
puts result
'''



string1 = "RUBY parses a file by looking for <br/> one of the special tags that tells it to start interpreting the text as RUBY code. The parser then executes all of the code it finds until it runs into a RUBY closing <br/>"

string2 = "RUBY does not require (or support) explicit type definition in variable declaration; a variable's type is determined by the context in which the variable is used."

 
# Q.5)  Find occurrence of RUBY from string 1.
# Answer -->

'''
def find_occurrence(string1, substr)
	return string1.scan(substr).size 
end

puts (find_occurrence(string1, "RUBY"))
'''



# Q.6) Find the position where RUBY occurs in the string 1.
# Answer -->

'''
def find_position(string1, sub_string)	
	x = string1.index(sub_string)
	while x >= 0
		puts x
		x = string1.index(sub_string,x+1)
	end
end

find_position(string1, "RUBY")
'''



# Q.7) Create array of words in string 1 & print them using a recursive function.
# Answer -->

'''
$arr = string1.split(" ")
$len = $arr.length
i=0
def str_recurse(i)
	
	if(i<$len)
		puts $arr[i]
		task(i+1)
	else
		return 0
	end
end
str_recurse(i)
'''



# Q.8) Capitalise string 1.
# Answer -->

'''
def str_capitalise(string1)
	str = string1.split(". ")
	new_str =""
	for i in str 
		temp = i.capitalize()
		new_str = new_str + temp + ". "
	end	
	puts new_str
end

str_capitalise(string1)
'''



# Q.9) Combine string 1 & 2.
# Answer -->

'''
def str_combine(string1,string2)
	return string1.concat(string2)
end
puts str_combine(string1,string2)
'''



# Q.10) Print current date.
# Ansewer -->

'''
require "date"
def current_date()
	current_time = DateTime.now
	return current_time.strftime "%d/%m/%Y"
end

puts current_date()
'''



# Q.11) print date format 12th Jan 2012.
# Answer -->

'''
require "date"
def date_formate()
	current_time = DateTime.now
	return current_time.strftime "%dth %b %Y"
end

puts date_formate()
'''



# Q. 12) add 7 days in current date.
# Answer -->

'''
require "date"
def date_format()
	current_time = DateTime.now
	return current_time.next_day(7).strftime "%dth %b %Y"
end

puts date_format()
'''



# Q.13) Cut the string 1 into 4 parts & print it.
# Answer -->

'''
def str_division(string1)
	string1.split(" ",4)
end

puts str_division(string1)
'''



# Q.14) Divide the string 1 by occurrences of '.'. Combine the array in reverse word sequence
# Answer -->

'''
def str_occur_rev(string1)
	string1.split(".").reverse
end

puts str_occur_rev(string1)
'''



# Q.15) Remove the HTML characters from string.
# Answer -->

'''
def remove_html(string1)
	return string1.gsub(/<\/?[^>]*>/, "")
end

puts remove_html(string1)
'''



# Q.16) Print the 'RUBY' word from string 1 by traversing it using string functions.
# Answer -->

'''
def str_travers(string1)
	arr= string1.split(" ")
	arr.each do |word|
		if word.eql? "RUBY"
			puts word
		end
	end
end
str_travers(string1)
'''



# Q.17) Find the length of string 1 & 2.
# Answer -->

'''
def strSize(string1,string2)
	puts string1.length
	puts string2.length
end

strSize(string1,string2)
'''



# Q.18) Compare two dates. (12-04-2010 & 12-05-2011). Calculate the days between these two dates.
# Answer -->

'''
require "date"
def compare_date()
	puts (Date.new(2021, 01, 02) - Date.new(2020, 01, 01)).to_i
end
compare_date()
'''



# Q.19) Print date after 20 days from current date.
# Answer -->

'''
require "date"
def date_format()
	current_time = DateTime.now
	return current_time.next_day(20).strftime "%dth %b %Y"
end

puts date_format()
'''



# Q.20) Print date in array format.
# Answer -->

'''
require "date"
def date_arr_format()
	current_time = DateTime.now
	return current_time.to_s
end

puts date_arr_format()
'''



# Q.21) Print prime numbers from the given array.
# Answer -->

'''
require "prime"
def str_travers(arr)
	count=0
	i = 2
	for num in arr
		while(i<num)
			if (num%i==0)
				count+=1
			end
			i+=1
		end
	
	
		if count>1
			puts "#{num} is not a prime number"
		else
			puts "#{num} is a prime number"
		end
	end
end

str_travers([2, 3, 5, 7])
'''



# Q. 22) Write a program for fuel indication.
#        Ex: 0 -> Out of fuel, 1-10 -> Low, Please fill, 11-30 -> Good for now, 31-50 -> Almost Full, > 50 -> Full.
# Answer -->

'''
def check_fual(i)
	if i==0
		return "Out of fuel"
	end

	if i>=1 && i<=10
		return "Low, Please fill"
	end

	if i>=11 && i<=30
		return "Good for now"
	end

	if i>=31 && i<50
		return "Almost Full"
	end

	if i==50
		return "Full"
	end
end

puts check_fual(50)
'''



# Q. 23) Swap the given values(without the third variable)
# Answer -->

'''
def swap_variable(a,b)
	a = a+b   
	b = a-b    
	a = a-b
	puts a
	puts b
end
swap_variable(1,2)
'''



# Q. 24) Program to Randomly Select an Element From the Array
# Answer --> 

'''
arr = [1, 2, 3]

def select_random(arr)
	return arr.sample
end

puts select_random(arr)
'''



# Q.25) Program to Count the Number of Each Vowel.
# Answer --> 

'''
def vowels(string)
	count = string.scan(/[aeiou]/).count
	puts count
end

vowels("Welcome to webonise!")
'''



# Q.26) Program to Sort a Hash by Value.
# Answer -->

'''
def hash_sort()
	my_hash = Hash["one" => 1, "four" => 4, "three" => 3, "two" => 2, ]
	puts "#{my_hash.values.sort}" 
end

hash_sort()
'''



# Q.27) Program to Convert Two Arrays Into a Hash.
# Answer -->

'''
def combined_hash()
	key = ["one", "two"]
	value = ["a", "b"]
	hash = {}
	i = 0
	key.each do |k|
		hash[k] = value[i]
		i+=1
	end
	return hash
end
puts combined_hash()
'''
