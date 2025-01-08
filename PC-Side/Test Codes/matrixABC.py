A = [i for i in range (30)] # 30 element (input)
B = [0 for j in range (10)] # 10 element
C = [0 for k in range (30)] # 30 element (output)

print(A)
print(B)
print(C)

# proses masuk
startbaris = 0
batasatasA = len(A)
batasatasB = len(B)
batasatasC = len(C)

print(batasatasA, batasatasB, batasatasC)

asdf = input()
if asdf == "":  
    while (True):
        for i in range (batasatasB):
            barisnow = startbaris + i
            B[i] = A[barisnow]
        
        for i in range (batasatasB) :
            barisnow = startbaris + i
            C[barisnow] = B[i] - 1
        
        print(B)
        print(C)

        startbaris = startbaris + batasatasB
        asdf = input()
        if startbaris == batasatasA:
            break
        elif asdf == "stop":
            break