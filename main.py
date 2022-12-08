import tkinter as tk
from tkinter import ttk
from tkinter import * 

def goFunction():
	print(userInput)

def getInputBoxValue():
	userInput = Prompt.get()
	print(userInput)
	return userInput

def printInput():
    inp = inputtxt.get(1.0, "end-1c")
    lbl.config(text = "Provided Input: "+userInput)

root = Tk()

root.geometry('830x430')
root.configure(background='#FFFFFF')
root.title('FidiGUI')

Button(root, text='GO', bg='#00FF00', font=('arial', 12, 'normal'), command=getInputBoxValue).place(x=7, y=1)

Prompt=Entry(root)
Prompt.place(x=57, y=1)

Label(root, text='Prompt', bg='#FFFFFF', font=('arial', 12, 'normal')).place(x=57, y=21)


root.mainloop()
