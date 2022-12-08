import tkinter as tk
from tkinter import ttk
from tkinter import * 

def goFunction():
	print('clicked')

def getInputBoxValue():
	userInput = Prompt.get()
	return userInput

root = Tk()

root.geometry('830x430')
root.configure(background='#FFFFFF')
root.title('FidiGUI')

Button(root, text='GO', bg='#00FF00', font=('arial', 12, 'normal'), command=goFunction).place(x=7, y=1)

Prompt=Entry(root)
Prompt.place(x=57, y=1)

Label(root, text='FidiGUI', bg='#FFFFFF', font=('arial', 12, 'normal')).place(x=57, y=21)


root.mainloop()
