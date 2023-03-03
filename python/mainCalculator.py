import Calculator
cal= Calculator.functionCal()
print("select  an operation to perform: ")
print("1. Add")
print("2. Subtract")
print("3. Multiply")
print("4. Divide")
operation = input()
if operation=="1":
    num1= input("input A number: ")
    num2= input("input A number: ")
    if num1.isdigit():
        num1= int(num1)
        #num2= int(num2)
        print("Tổng: "+cal.add(num1,num2))
    
elif operation=="2":
    num1= input("input A number: ")
    num2= input("input A number: ")
    if num1.isdigit():
        num1= int(num1)
        num2= int(num2)
        print("Hiệu: "+cal.Subtract(num1,num2))
elif operation=="3":
    num1= input("input A number: ")
    num2= input("input A number: ")
    if num1.isdigit():
        num1= int(num1)
        num2= int(num2)
        print("Nhân: "+cal.Multiply(num1,num2))
elif operation=="4":
    num1= input("input A number: ")
    num2= input("input A number: ")
    if num1.isdigit():
        num1= int(num1)
        num2= int(num2)
        print("Chia: "+cal.Divide(num1,num2))
else:
    print("invalid entry")