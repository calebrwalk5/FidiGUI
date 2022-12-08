import tkinter as tk
from tkinter import ttk
from tkinter import * 

# this is the function called when the button is clicked
def goFunction():
	print('clicked')


# this is a function to get the user input from the text input box
def getInputBoxValue():
	userInput = Prompt.get()
	return userInput



root = Tk()

# This is the section of code which creates the main window
root.geometry('830x430')
root.configure(background='#FFFFFF')
root.title('FidiGUI')


# This is the section of code which creates a button
Button(root, text='GO', bg='#000000', font=('arial', 12, 'normal'), command=goFunction).place(x=7, y=1)


# This is the section of code which creates a text input box
Prompt=Entry(root)
Prompt.place(x=57, y=1)


# This is the section of code which creates the a label
Label(root, text='FidiGUI', bg='#FFFFFF', font=('arial', 12, 'normal')).place(x=57, y=21)


root.mainloop()
