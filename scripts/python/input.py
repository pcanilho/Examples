
print; 
print;
print "##########################################"
print "############ PYTHON INPUT TEST ###########"
print "##########################################"
print "#### COMMANDS                         ####"
print "####                                  ####"
print "#### 1)Help                           ####"
print "#### 2)User                           ####"
print "#### 3)Python Examples                ####"
print "#### 4)Exit                           ####"
print "##########################################"
usr_inpt = raw_input("input> ")

# Add function
def add():
 from random import randint
 x = randint(0,100)
 y = randint(0,100)
 print "x:",x,"\ny:", y
 return "Result",x+y

# Sub function
def sub():
 from random import randint
 x = randint(0,100)
 y = randint(0,100)
 print "x:",x,"\ny:", y
 return "Result",x-y



def print_input(usr_inpt):
 var=usr_inpt
 if var == "1":
   print "Help is coming soon!"
   print_input(raw_input("input> "))
 elif var == "2":
   print "root"
   print_input(raw_input("input> "))
 elif var == "3":
   print "1) add(x,y) -> r=x+y\n2) sub(x,y) -> r=x-y"
   ex = raw_input("input/example> ")
   if ex == "1":
    print add()
    print_input(raw_input("input> "))
   elif ex == "2":
    print sub()
    print_input(raw_input("input> "))
   else:
    print_input(raw_input("Wrong input.\ninput> "))
 elif var == "4": 
   print "Terminating..."  
   yn = raw_input("Are you sure you want to quit? y/n> ")   
   if yn == "y": 
    print "Success."     
    import sys
    sys.exit()
   elif yn == "n":
    print "Aborted."
    print_input(raw_input("input> "))
   else:
    print "Wrong input."
    print_input(raw_input("input> "))
 else:
   print "Wrong input."
   print_input(raw_input("input> "))
 return
 
print_input(usr_inpt)

