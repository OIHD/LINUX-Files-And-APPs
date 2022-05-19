from re import L
from sre_parse import State
from tkinter import *
from turtle import bgcolor
from tkinter import ttk


root = Tk()

root.title("Back up & Restore app")

def myClick():
    mylabelm0 = Label(root,text="")
    mylabelm1 = Label(root,text="STARTED")
    mylabelm2 = Label(root,text="Please Wait")
    mylabelm3 = Label(root,text="")
    mylabelm4 = Label(root,text="Installing at :")
    mylabelm5 = Label(root,text=e.get())
    mylabelm6 = Label(root,text="")

    mylabelm0.pack()
    mylabelm1.pack()
    mylabelm2.pack()
    mylabelm3.pack()
    mylabelm4.pack()
    mylabelm5.pack()
    mylabelm6.pack()

# Ana cerceve eklendi 
# anacerceve = ttk.Frame(root , padding="5 5 10 10")
# anacerceve.grid(column=0,row=0, sticky=(N,W,E,S))
# root.columnconfigure(0,weight=1)
# root.rowconfigure(0,weight=1)


# widget oluşturduk 
mylabel = Label(root,text="OIHD's backup and restore utility")
mylabel2 = Label(root,text="Version 1.0")
mylabel3 = Label(root,text="")
mylabel4 = Label(root,text="Install LOCATION:")
e = Entry(root,width=50)
e.insert(0,"$HOME/app")
mylabel5 = Label(root,text="")
mylabel6 = Label(root,text="")
myButton = Button(root, text="Restore NOW" ,padx= 30 ,pady=10 , command=myClick,fg="green",bg="#F2F2F2")

# Ekranda görünmesini sağladık
mylabel.pack()
mylabel2.pack()
mylabel3.pack()
mylabel4.pack()
e.pack()
mylabel5.pack()
myButton.pack()
mylabel6.pack()

root.mainloop()
