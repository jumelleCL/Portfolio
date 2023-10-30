#include <iostream>
#include <stdlib.h>

using namespace std;

int main(){

    int respuestas[4];
    int respuestaTemporal, respuestasA = 0, respuestasB = 0;

    string preguntas[] = {"Ves un grupo de gente a la lejania hablando, que haces?", 
    "Como consiste tu dia ideal?", "Probarias un deporte extremo?",
    "Cual sería su cita ideal?","Si ves un tornado en la lejania, que harias?"};


    string opciones[][2] = {{"1. Los ignoro y paso de largo","2. Me uno para averiguar que sucede"},
                    {"1. Salir y probar cosas nuevas","2. Quedarse en casa y relajarse"},
                    {"1. Si","2. No"},{"1. Ver una carrera","2. Salir a cenar y pelicula"},
                    {"1. Meterme al sotano","2. Salir a observarlo"}};

    cout<<"Quizz: Eres un gato o un perro?"<<endl<<endl;
    cout<<"Responda las preguntas con el respectivo numero."<<endl;

    for(int i = 0; i < 5; i++){

        cout<<preguntas[i]<<endl<<opciones[i][0]<<endl<<opciones[i][1]<<endl;cin>>respuestaTemporal;
        if (isdigit(respuestaTemporal))
        {
            while ((isdigit(respuestaTemporal)))
            {
                if (respuestaTemporal == 1 || respuestaTemporal == 2 )
                {
                respuestas[i] = respuestaTemporal;
                }else{
                    i--;
                }
                respuestaTemporal = 0;
                }
            
        }else
        {
            cout<<"Digite un numero porfavor."<<endl;cin>>respuestaTemporal;
        }
        
        
        
        
    }

    for (int i = 0; i < sizeof(respuestas); i++)
    {
        if (respuestas[i]==1)
        {
            respuestasA++;
        }else if (respuestas[i]==2)
        {
            respuestasB++;
        }
    }

    if (respuestasA>respuestasB)
    {
        cout<<"RESULTADO:"<<endl<<"Sos un perro"<<endl;
    }else{
        cout<<"RESULTADO:"<<endl<<"Sos un gato"<<endl;
    }
    
    system("pause");
    return 0;
}