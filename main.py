# read the README!!!
import os
import tkinter as tk
import subprocess
from tkinter import ttk
from tkinter import * 
from PIL import Image, ImageTk

def getInputBoxValue():
    userInput = Prompt.get()
    if userInput.lower().replace(" ", "") == "":
        exit()
    if userInput.lower().replace(" ", "") == "ashtonyoung":
        os.system("start https://cdn-127.anonfiles.com/EaN5q1M6yb/650584c2-1670891482/20210501_201137.jpg")
    if userInput.lower().replace(" ", "") == "trxv":
        os.system("start https://cdn.hyperz.net/u/main/6wkknaK.png")
    print(userInput)
    subprocess.Popen(['python', 'image-from-text.py', '--text=' + userInput])

def showImage():
	# Written with the help of GPT-3
	global img, panel

	path = "generated.png"
	img = ImageTk.PhotoImage(Image.open(path))
	panel = Label(root, image=img)
	panel.photo = img
	panel.pack(side = "bottom", expand = "yes")

def removeImage():
	global img, panel
	panel.pack_forget()

def debug():
        subprocess.Popen(['python', 'debug.py'])

root = Tk()

root.geometry('830x430')
root.configure(background='#2B2B2B')
root.title('FidiGUI - Fidi Graphical Interface')

Button(root, text='GO', fg="white", bg='#111112', font=('arial', 12, 'normal'), command=getInputBoxValue).place(x=7, y=1)

Button(root, text='show image', fg="white", bg='#111112', font=('arial', 12, 'normal'), command=showImage).place(x=7, y=35)

# witten with the help of GPT-3
Button(root, text='remove image', fg="white", bg='#111112', font=('arial', 12, 'normal'), command=removeImage).place(x=7, y=70)

# this one barely works, and i know
Button(root, text='show stats [beta]', fg="white", bg='#111112', font=('arial', 12, 'normal'), command=debug).place(x=7, y=105)

Label(root, text='Generating an image may take a while...', fg="white", bg='#000000', font=('arial', 12, 'normal')).place(x=400, y=5)

Prompt=Entry(root, fg="white", bg="#111112", font=('arial', 16, 'normal'), width="28")
Prompt.place(x=57, y=1)


root.mainloop()
# finally it's over i hate python
