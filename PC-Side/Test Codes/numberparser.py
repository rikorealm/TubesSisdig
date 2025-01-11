def numberparser(number):
    number = str(number)
    numberlist = list(number)
    integer_numberlist = [int(numberlist) for numberlist in numberlist]
    print(integer_numberlist)
    return(integer_numberlist)

parsed_number = numberparser(130)
for parsed_number in parsed_number:
    print(parsed_number)

numbertest = int(5/2)
print(numbertest)