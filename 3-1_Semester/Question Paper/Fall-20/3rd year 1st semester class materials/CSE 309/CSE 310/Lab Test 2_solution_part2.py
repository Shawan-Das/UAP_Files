import countwords
f = open("output.txt","w")
while True:
    word = input("Input a word: ")
    result = countwords.countWords("words.txt")
    if word == "-1":
        break
    else:
        if word in result.keys():
            f.write(word+" "+str(result[word])+"\n")
        else:
            print("The word doesnot exists")
f.close()