


number = 10
counters = 0
#a function to reverse the number
def rev(x):
    string = str(x)
    rev = []
    for i in string:
        rev.insert(0,i)
    rev_num = "".join(rev)
    return rev_num

#loop through 10000
while number < 10000:
    isLychrel = True
    counter = 1
    #store the current number in a variable to be used check
    #the Lychrel
    num = number
    #execute this block while the number has not formed a Palindrom yet
    while(isLychrel and counter <= 50):
        rev_num = int(rev(num))
        added = rev_num + num
        added_str = str(added)
        added_rev_str = rev(added)

        if(added_str == added_rev_str):
            isLychrel = False
        num = added
        counter += 1
    #check if the number is a Lychrel
    if isLychrel:
        counters += 1
        print(counters, " the number is ", number)

    number += 1

print("There are ", counters, " Lychrel numbers")