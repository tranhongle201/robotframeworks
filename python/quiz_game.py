print(" welcome to quiz game: ")
playing= input("Do you want play games: ")
if(playing.upper() != "YES"):
    quit()
print("okay ! let's Play: ")
score=0
#Cau 1
print("Đâu là một loại hình chợ tạm tự phát thường xuất hiện trong các khu dân cư?")
print("A: Ếch")
print("B: Cóc")
print("C: Thằn lằn")
print("D: Nhái")
answer=input("Nhập vào đáp án của bạn(A->D):")
if(answer.upper()=="A"):
    print("Correct!")
    score+=1
else:
    print("Incorrect!")
#Cau 2
print("Đâu là tên một loại chợ?")
print("A: Ếch")
print("B: Nhái")
print("C: Thằn lằn")
print("D: Cóc")
answer=input("Nhập vào đáp án của bạn(A->D):")
if(answer.upper()=="D"):
    print("Correct!")
    score+=1
else:
    print("Incorrect!")

print("Finish game you have $s"+score)
print("Thanks you")