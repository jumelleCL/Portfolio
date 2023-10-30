import tkinter
from tkinter import *

ventana = tkinter.Tk()
ventana.title("Lista")

frame1 = Frame(ventana)
frame1.pack(pady=10)

def agregar_tarea():
    tareas.insert(END, textoTarea.get())
    textoTarea.delete(0, END)  # Limpia el campo de entrada después de agregar la tarea

def eliminar_tarea():
    selected_task_index = tareas.curselection()  # Obtiene el índice de la tarea seleccionada
    if selected_task_index:
        tareas.delete(selected_task_index)  # Elimina la tarea seleccionada
def terminada_tarea():
    selected_task_index = tareas.curselection()
    if selected_task_index:
        selected_task_index.configure()
textoTarea = Entry(frame1, font=("Calibri 12"), width=30)
textoTarea.pack(side=LEFT, padx=5)

add = Button(frame1, text="Add", width=5, height=2, command=agregar_tarea)
add.pack(side=RIGHT, padx=5)

frame2 = Frame(ventana)
frame2.pack(pady=10)

tareas = Listbox(frame2, bg="white", width=40, height=20)
tareas.pack(side=LEFT, padx=5)

delete = Button(frame2, text="Delete", width=5, height=2, command=eliminar_tarea)
delete.pack(side=RIGHT, padx=5)



ventana.mainloop()