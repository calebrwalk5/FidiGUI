# read the README!!!
import os
import tkinter as tk
from tkinter import ttk
from tkinter import * 
from PIL import Image, ImageTk

def logWaitPlease():
	print("Please be patient, this may take awhile...")
	print("Please be patient, this may take awhile...")
	print("Please be patient, this may take awhile...")

def getInputBoxValue():
	cwd = os.getcwd()
	userInput = Prompt.get()
	if userInput.lower().replace(" ", "") == "ashtonyoung":
		os.system("start https://cdn-127.anonfiles.com/EaN5q1M6yb/650584c2-1670891482/20210501_201137.jpg")
	if userInput.lower().replace(" ", "") == "trxv":
		os.system("start https://cdn.hyperz.net/u/main/6wkknaK.png")
	print(userInput)
	os.system('python image-from-text.py --text="' + userInput + '"')
	return userInput

def showImage():
	path = "generated.png"
	img = ImageTk.PhotoImage(Image.open(path))
	panel = Label(root, image=img)
	panel.photo = img
	panel.pack(side = "bottom", expand = "yes")

root = Tk()

root.geometry('830x430')
root.configure(background='#2B2B2B')
root.title('FidiGUI - Fidi Graphical Interface')

Button(root, text='GO', fg="white", bg='#111112', font=('arial', 12, 'normal'), command=getInputBoxValue).place(x=7, y=1)

Button(root, text='show image', fg="white", bg='#111112', font=('arial', 12, 'normal'), command=showImage).place(x=7, y=34)

Button(root, text='Generating an image may take awhile...', fg="white", bg='#041130', font=('arial', 12, 'normal'), command=logWaitPlease).place(x=110, y=34)

Prompt=Entry(root, fg="white", bg="#111112", font=('arial', 16, 'normal'), width="28")
Prompt.place(x=57, y=1)


root.mainloop()
# finally it's over i hate python
