# read the README!!!
import os
import tkinter as tk
from tkinter import ttk
from tkinter import * 
from PIL import Image, ImageTk

def getInputBoxValue():
	cwd = os.getcwd()
	userInput = Prompt.get()
	print(userInput)
	os.system('python image-from-text.py --text="' + userInput + '"')
	return userInput

def printInput():
    inp = inputtxt.get(1.0, "end-1c")
    lbl.config(text = "Provided Input: "+userInput)

def showImage():
	path = "generated.png"
	img = ImageTk.PhotoImage(Image.open(path))
	panel = Label(root, image=img)
	panel.photo = img
	panel.pack(side = "bottom", expand = "yes")

root = Tk()

root.geometry('830x430')
root.configure(background='#808080')
root.title('FidiGUI')

Button(root, text='GO', bg='#00FF00', font=('arial', 12, 'normal'), command=getInputBoxValue).place(x=7, y=1)

Button(root, text='show image', bg='#00FFFF', font=('arial', 12, 'normal'), command=showImage).place(x=7, y=30)

Prompt=Entry(root)
Prompt.place(x=57, y=1)


root.mainloop()
# finally it's over i hate python