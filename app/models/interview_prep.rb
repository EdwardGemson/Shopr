 Implement an algorithm to determine if a string has all unique characters. 

What if
you can not use additional data structures?


def is_unique(string)
	h = Hash.new
	string_index = 0
	until string_index == string.length - 1
		h[string[string_index]] += 1
		if h[string[string_index]].count > 1 
			return false
		end
		string_index ++
	end
	return true
end


is_unique("edward")

h = ['e', 1]
h = [('e', 1), ('d', 1)]
h = [('e', 1), ('d', 1), ('w', 1) ]
h = [('e', 1), ('d', 1), ('w', 1), ('a', 1) ]
h = [('e', 1), ('d', 1), ('w', 1), ('a', 1), ('r', 1) ]
h = [('e', 1), ('d', 2), ('w', 1), ('a', 1), ('r', 1) ]
false

 Write code to reverse a C-Style String. (C-String means that “abcd” is represented as
five characters, including the null character.)

def reverse_string(string)
	reversed_string = []
	stringdex = string.length - 1
	until reversed_string.length == string.length
		reversed_string << string[stringdex]
		stringdex --
	end
	reversed_string.join("")
end


reverse_string("a, b, c, d, null")
reversed_string["null"]
reversed_string["null", "d"]
reversed_string["null", "d", "c"]
reversed_string["null", "d", "c", "b"]
reversed_string["null", "d", "c", "b", "a"]
reversed_string["null, d, c, b, a"]


 Design an algorithm and write code to remove the duplicate characters in a string
without using any additional bu#er. NOTE: One or two additional variables are fine.
An extra copy of the array is not.
FOLLOW UP
Write the test cases for this method.

def remove_dupes(string)
	x = 0
	y = 1
	holder = ""
	until y == string.length - 1
		if string[x] > string[y] # if e > d
			holder = string[x]  # e is held
			string.at[y] = (string[x]) # d replaces e 
			string.at[x + 1] = holder # e moves behind d
		elsif 
			string[y] == string[x] # ex d = d 
			string.delete_at[x] # first d is deleted - deie
			x = x - 1 # offsets the x ++ y ++
			y = y - 1 # because the total string is shorter, indexes shouldn't increase 
		end
		x ++
		y ++
	end
	string
end

remove_dupes("eddie")
	x = e
	y = d 
	d < e #true 
	holder = e 
	e is replaced by d 
	e goes behind d 
	dedie 
	ddeie 
	ddeei 
	#iteration ends
remove_dupes("dogfish")
	x = d 
	y = o 
	not larger not equal 
	x = o 
	y = g 
	not larger not equal 
	..
	return dogfish 
remove_dupes("aaaaa")
	x = a
	y = a 
	a = a 
	remove first a 
	aaaa 
	remove first a 
	..
	return a 

def are_anagrams(string1, string2)

end













