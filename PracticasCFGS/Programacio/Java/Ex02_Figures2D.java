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
public class Ex02_Figures2D {

    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        int figura, lado1, lado2;
        double altura, ancho, radio;
        
        System.out.print("Indique un tipo de figura 2D(quadrat(1), rectangle(2)"
                + ", triangle isòsceles(3) o cercle(4))");
        figura = in.nextInt();
        
        if (figura == 1) {
            System.out.print("Diga la medida de un lado: ");
            lado1 = in.nextInt();
            cuadrado(lado1);
        } else if (figura == 2) {
            System.out.println("Indique la medida de un lado: ");
            lado1 = in.nextInt();
            System.out.print("Indique la medida de otro");
            lado2 = in.nextInt();
            rectangulo(lado1,lado2);
        } else if (figura == 3) {
            System.out.println("Indique la altura del triangulo: ");
            altura = in.nextDouble();
            System.out.println("Indique el ancho del triangulo: ");
            ancho = in.nextDouble();
            triangulo(altura, ancho);
        }else if(figura == 4){
            System.out.println("Indique el radio del circulo: ");
            radio = in.nextDouble();
            circulo(radio);
        }

    }

    public static void cuadrado(int lado1) {
        System.out.println("Area: "+(lado1*lado1));
        System.out.println("Perimetro: "+(lado1*4));
    }
    public static void rectangulo(int lado1, int lado2){
        System.out.println("Area: "+(lado1*lado2));
        System.out.println("Perimetro: "+((2*lado1)+(2*lado2)));
    }
    public static void triangulo(double altura,double ancho){
        System.out.println("Area: "+(ancho*2+altura));
        System.out.println("Perimetro: "+((altura*ancho)/2));
    }
    public static void circulo(double radio){
        System.out.println("Area: "+(Math.PI*radio*radio));
        System.out.println("Perimetro: "+(2*Math.PI*radio));
    }
    
}
