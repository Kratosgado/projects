
word = "HELLOWORLD"
word_count = dict()

for char in range(len(word)):
    if word[char] not in word_count:
        word_count[word[char]] = 1
    else:
        if word[char-1] == word[char]:
            word_count[word[char-1]] += 1


print(word_count)