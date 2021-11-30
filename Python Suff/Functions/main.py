# def multiplication(list_of_numbers):
#     answer = 1
#     for num in list_of_numbers:
#         answer = answer * num
#     return answer
#
#
# print(multiplication())
#
#
# def multi_args(*multiargs):
#     print(type(multiargs))
#     sum = 0
#     for arg in multiargs:
#         sum += arg
#     return sum


print("\nQ1a\n")


# Q1a: Write a function which takes in an integer as an argument and returns the divisors of that number as a list
# e.g. f(12) = [1, 2, 3, 4, 6, 12]
# hint: range(1, n) returns a collection of the numbers from 1 to n-1

# A1a:
def factors(num):
    result = []
    for i in range(1, num + 1):
        if num % i == 0:
            result.append(i)
    return result


print(factors(36))

print("\nQ1b\n")


# Q1b: Write a function which takes in two integers as arguments and returns true if one of the numbers
# is a factor of the other, false otherwise
# (bonus points if you call your previous function within this function

# A1b:
# def factor_2(num1, num2):
#     if num1 % num2 == 0:
#         return True
#     elif num2% num1 ==0:
#         return True
#     else:
#         return False
# print(factor_2(3,4))

def factor_2(num1, num2):
    if num1 in factors(num2):
        return True
    elif num2 in factors(num1):
        return True
    else:
        return False


print(factor_2(8,4))

print("\nQ2a\n")
# Q2a: write a function which takes a letter (as a string) as an input and outputs it's position in the alphabet



# A2a:
def index_num(letter):
    alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u",
                "v", "w", "x", "y", "z", " "]
    return alphabet.index(letter.lower())


print(index_num("b"))

print("\nQ2b\n")
# Q2b: create a function which takes a persons name as an input string and returns an
# ID number consisting of the positions of each letter in the name
# e.g. f("bob") = "1141" as "b" is in position 1 and "o" is in position 14

# A2b:


def id_num(name) -> str:
    id = ""
    for letter in name:
        position = str(index_num(letter))
        id = id + position
    print(id)


# def id_num(name):
#     for letter in name:
#         print(index_num(letter))

id_num("bob")

print("\nQ2c\n")
# Q2c: Create a function which turns this ID into a password. The function should subtract
# the sum of the numbers in the id that was generated from the whole number of the id.
# e.g. f("bob") -> 1134 (because bob's id was 1141 and 1+1+4+1 = 7 so 1141 - 7 = 1134)

# A2c:
def password(name):
    result=0
    for number in id_num(name):
        result = result + int(number)
        return result
    return str(int(id_num(name))-result)


print(password("bob"))


print("\nQ3a\n")
# Q3a: Write a function which takes an integer as an input, and returns true if the number is prime, false otherwise.

# A3a:
def prime(num):
    if num > 1:
        for i in range(2, num):
            if (num % i) == 0:
                print("Not a prime number")
                break
        else:
            print("it is a prime number")
    elif type(num) == str:
        print("Enter an integer")
    else:
        print("Not a prime number")

prime(19)

print("\nQ3b\n")
# Q3b: Now add some functionality to the function which does not error if the user inputs something other than a digit

# A3b:
