def countWords(fileName):
    file = open(fileName)
    lines = file.readlines()
    #print(lines)
    for i in range(len(lines)-1):
        lines[i] = lines[i][0:-1]
    #print(lines)
    words = []
    for x in lines:
        words.append(x.lower())
    dict = {}
    for x in words:
        dict[x] = words.count(x)
    file.close()
    return dict