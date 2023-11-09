#include <iostream>
#include <stdlib.h>
#include <ostream>
#include <vector>
#include <algorithm>


using namespace std;

struct Tarea {
    string tarea;
    bool completada;
};

int main() {
    vector<Tarea> tareas;
    string opcion;

    while (opcion != "7") {
        cout << "Bienvenido/a a su lista de tareas.\n";
        cout << "Que desea hacer?\n";
        cout << "1. Ver tareas\n2. Añadir una tarea\n3. Eliminar una tarea\n4. Marcar una tarea como completa\n5. Editar una tarea\n6. Ordenar la lista\n7. Salir\n";

        cin >> opcion;
        system("cls");  

        if (opcion == "1") {
            string opcionVer;
            cout << "Desea ver:\n1. Todas las tareas\n2. Ver tareas incompletas\n3. Tareas completadas\n";
            cin >> opcionVer;

            if (opcionVer == "1") {
                cout << "Lista de tareas:\n";
                for (int i = 0; i < tareas.size(); i++) {
                    cout << i + 1 << ". " << tareas[i].tarea << "\n";
                }
                cout << "\n";
            } else if (opcionVer == "2") {
                cout << "Tareas no completadas:\n";
                for (int i = 0; i < tareas.size(); i++) {
                    if (!tareas[i].completada) {
                        cout << i + 1 << ". " << tareas[i].tarea << "\n";
                    }
                }
                cout << "\n";
            } else if (opcionVer == "3") {
                cout << "Tareas completadas:\n";
                for (int i = 0; i < tareas.size(); i++) {
                    if (tareas[i].completada) {
                        cout << i + 1 << ". " << tareas[i].tarea << "\n";
                    }
                }
                cout << "\n";
            } else {
                cout << "Número incorrecto. Se le regresa al menú inicial.\n";
            }
        } else if (opcion == "2") {
            string nuevaTarea;
            cout << "Escriba su nueva tarea:\n";
            cin.ignore();  // Para manejar espacios en blanco en la entrada.
            getline(std::cin, nuevaTarea);
            tareas.push_back({nuevaTarea, false});
            cout << "Tarea añadida.\n";
        } else if (opcion == "3") {
            if (tareas.empty()) {
                cout << "No hay tareas para eliminar.\n";
            } else {
                cout << "Lista de tareas:\n";
                for (int i = 0; i < tareas.size(); i++) {
                    cout << i + 1 << ". " << tareas[i].tarea << "\n";
                }
                cout << "\n";
                int eliminar;
                cout << "Digite el número de la tarea a eliminar:\n";
                cin >> eliminar;
                if (eliminar > 0 && eliminar <= tareas.size()) {
                    tareas.erase(tareas.begin() + (eliminar - 1));
                    cout << "Se ha eliminado la tarea de la lista.\n";
                } else {
                    cout << "Número de tarea inválido.\n";
                }
            }
        } else if (opcion == "4") {
            cout << "Lista de tareas:\n";
            for (int i = 0; i < tareas.size(); i++) {
                cout << i + 1 << ". " << tareas[i].tarea << "\n";
            }
            cout << "\n";
            int completar;
            cout << "Digite el número de su tarea completada:\n";
            cin >> completar;
            if (completar > 0 && completar <= tareas.size()) {
                tareas[completar - 1].completada = true;
                cout << "Tarea marcada como completada.\n";
            } else {
                std::cout << "Número de tarea inválido.\n";
            }
        } else if (opcion == "5") {
            cout << "Lista de tareas:\n";
            for (int i = 0; i < tareas.size(); i++) {
                cout << i + 1 << ". " << tareas[i].tarea << "\n";
            }
            cout << "\n";
            int numeroTarea;
            cout << "Digite el número de la tarea a editar:\n";
            cin >> numeroTarea;
            if (numeroTarea > 0 && numeroTarea <= tareas.size()) {
                string nuevaTarea;
                cout << "Escriba la nueva tarea:\n";
                cin.ignore();
                getline(std::cin, nuevaTarea);
                tareas[numeroTarea - 1].tarea = nuevaTarea;
                cout << "Tarea editada.\n";
            } else {
                cout << "Número de tarea inválido.\n";
            }
        } else if (opcion == "6") {
            sort(tareas.begin(), tareas.end(), [](const Tarea& a, const Tarea& b) {
                return a.tarea < b.tarea;
            });
            cout << "Tareas ordenadas de manera alfabética.\n";
        } else if (opcion == "7") {
            break;
        } else {
            cout << "Opción no válida. Por favor indique lo que desea con solo el número de su respectiva opción.\n";
        }
    }

    system("cls");  
    cout << "Adiós! Esperamos su regreso.\n";

    return 0;
}
