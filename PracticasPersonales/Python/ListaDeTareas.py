import os

tareas = list()

print("Bienvenido/a a su lista de tareas.\n")
print("Que desea hacer?\n")
opcion = input("1. Ver tareas\n2. Añadir una tarea\n3. Eliminar una tarea\n4. Marcan una tarea como completa\n5. Editar una tarea\n6. Ordenar la lista\n7. Salir\n")


while opcion != "7":
    os.system('cls' if os.name == 'nt' else 'clear')
    if opcion == "1":
        opcionVer = int(input("Desea ver: \n1. Todas las tareas\n2.Ver tareas incompletas\n3.Tareas completadas\n"))
        if(opcionVer==1):
            print("Lista de tareas:")
            for i, tarea in enumerate(tareas, start=1):
                print(f"{i}. {tarea['tarea']}") 
            print()
        elif(opcionVer==2):
            print("Tareas no completadas:\n")
            for i, tarea in enumerate(tareas):
                    if not tarea['completada']:
                        print(f"{i+1}. {tarea['tarea']}")
            print()
        elif(opcionVer==3):
            print("Tareas completadas:\n")
            for i, tarea in enumerate(tareas):
                    if tarea['completada']:
                        print(f"{i+1}. {tarea['tarea']}")
            print()
        else:
             print("Numero incorrecto. Se le regresa al menu inicial.")
    elif opcion=="2":
        tarea = input("Escriba su nueva tarea:\n")
        tareas.append({'tarea':tarea, 'completada':False})
        print("Tarea añadida.\n")
    elif opcion=="3":
        if len(tareas) == 0:
            print("No hay tareas para eliminar.\n")
        else:
            print("Lista de tareas:")
            for i, tarea in enumerate(tareas, start=1):
                print(f"{i}. {tarea['tarea']}") 
            print()
            eliminar = int(input("Digite el numero de la tarea a eliminar:\n"))
            if eliminar > 0 and eliminar <= len(tareas):
                    tarea_eliminada = tareas.pop(eliminar-1)
                    print(f"Se ha eliminado la tarea '{tarea_eliminada}' de la lista.\n")
            else:
                print("Número de tarea inválido.\n")
    elif opcion=="4":
        print("Lista de tareas:")
        for i, tarea in enumerate(tareas, start=1):
            print(f"{i}. {tarea['tarea']}") 
        print()
        completar = int(input("Digite el numero de su tarea completada:\n"))
        tareas[completar-1]['completada']=True
        print("Tarea marcada como completada.\n")
    elif opcion =="5":
        print("Lista de tareas:")
        for i, tarea in enumerate(tareas, start=1):
            print(f"{i}. {tarea['tarea']}") 
        print()
        numero_tarea = int(input("Digite el numero de la tarea a editar:\n"))
        nueva_tarea = input("Escriba la nueva tarea:\n")
        tareas[numero_tarea-1]['tarea'] = nueva_tarea
        print("Tarea editada.\n")
    elif opcion=="6":
        tareas.sort(key=lambda x: x['tarea'])
        print("Tareas ordenadas de manera alfabeticamente.")
    elif opcion=="7":
        break
    else:
         print("Opcion no valida. Por favor indique lo que desea con solo el numero de su respectiva opcion.\n")
    
    opcion = input("1. Ver tareas\n2. Añadir una tarea\n3. Eliminar una tarea\n4. Marcan una tarea como completa\n5. Editar una tarea\n6. Ordenar la lista\n7. Salir\n")

os.system('cls' if os.name == 'nt' else 'clear')
print("Adios! Esperamos su regreso")