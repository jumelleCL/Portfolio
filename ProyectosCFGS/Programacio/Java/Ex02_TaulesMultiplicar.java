/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package M02.A3;
import java.util.Scanner;
/**
 *
 * @author 34651
 */
public class Ex02_TaulesMultiplicar {
    public static Scanner in = new Scanner(System.in);
    public static void main(String[] args) {
        int numero;
        System.out.println("Quantes taules de multiplicar vols mostrar?");
        numero = in.nextInt();
        for (int i = 1; i <= numero; i+=4) {
            if (i+3 < numero) {
                mostrarBlocPantalla(i,i+3);
            }else{
                mostrarBlocPantalla(i,numero);
            }
        }
    }
    public static String muntarLineaTaulaMultiplicar(int taula, int n){
        String linea = String.format("%2d x %2d = %2d", taula,n,(taula*n));
        
        return linea;
    }
    public static String muntarLineaPantalla(int taulaInicial, int taulaFinal, int n){
        String linea = "";
        for (int i = taulaInicial; i <= taulaFinal; i++) {
            linea += muntarLineaTaulaMultiplicar(i,n);
            linea += "    ";
        }
        return linea;
    }
    public static void mostrarBlocPantalla(int taulaInicial, int taulaFinal){
        for (int i = 1; i <= 10; i++) {
            System.out.println(muntarLineaPantalla(taulaInicial,taulaFinal,i));
            System.out.println("");
        }
        System.out.println("");
    }
    
}
