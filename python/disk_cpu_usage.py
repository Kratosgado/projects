


number = 10
counters = 0
def rev(x):
    string = str(x)
    rev = []
    for i in string:
        rev.insert(0,i)
    rev_num = "".join(rev)
    return rev_num

while number < 10000:
    isLychrel = True
    counter = 1
    num = number
    while(isLychrel and counter <= 50):
        rev_num = int(rev(num))
        added = rev_num + num
        added_str = str(added)
        added_rev_str = rev(added)

        if(added_str == added_rev_str):
            isLychrel = False
        num = added
        counter += 1
    if isLychrel:
        counters += 1
        print(counters, " the number is ", number)

    number += 1

print("There are ", counters, " Lychrel numbers")