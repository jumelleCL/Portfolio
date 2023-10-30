/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package M02.A2;
import java.util.Scanner;
/**
 *
 * @author 34651
 */
public class Ex01_Calculadora {
    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        int num1, num2;
        String op = "";
        System.out.print("Primer numero: ");num1 = in.nextInt();
        System.out.print("Segundo numero: ");num2 = in.nextInt();
        in.nextLine();
        System.out.print("Operacion a realizar(+,-,*,/): ");op = in.nextLine();
        
        operacion(op, num1, num2);
    }
    
    public static void operacion(String op,int num1, int num2){
        switch(op){
            case "+" :{
                System.out.print("El resultado de "+num1+"+"+num2+" es "+(num1+num2)); 
                break;
             }
            case "-" :{
                System.out.print("El resultado de "+num1+"-"+num2+" es "+(num1-num2));
                break;
            }
            case "*" :{
                System.out.print("El resultado de "+num1+"*"+num2+" es "+(num1*num2));
                break;
            }
            case "/" :{
                System.out.print("El resultado de "+num1+"/"+num2+" es "+(num1/num2));
                break;
            }
            default: System.out.print("Operació incorrecta.");break;
        
        }
    }
}
