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
public class Ex03_Figures3D {
    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        int figura;
        double radio, altura, aresta;
        System.out.println("Indique el tipo de figura 3D (cilindre(1), "
                + "hexaedre(2), tetraedre(3) o esfera(4))");
        figura = in.nextInt();
        if (figura == 1) {
            System.out.print("Indique el radio: ");
            radio = in.nextDouble();
            System.out.print("Indique la altura: ");
            altura = in.nextDouble();
            cilindre(radio,altura);
        }else if(figura == 2){
            System.out.print("Indique la aresta: ");
            aresta = in.nextDouble();
            hexaedre(aresta);
        }else if(figura == 3){
            System.out.print("Indique la aresta: ");
            aresta = in.nextDouble();
            tetraedre(aresta);
        }else if(figura == 4){
            System.out.print("Indique el radio: ");
            radio = in.nextDouble();
        }
        
        
    }
    public static void cilindre(double radio, double altura){
        System.out.println("Volumen: "+(Math.PI*Math.pow(radio, 2)*altura));
        System.out.println("Superficie: "+((2*Math.PI*radio*altura)+
                (2*Math.PI*Math.pow(radio, 2))));
    }
    public static void hexaedre(double aresta){
        System.out.println("Volumen: "+(Math.pow(aresta, 3)));
        System.out.println("Superficie: "+(6*Math.pow(aresta, 2)));
    }
    public static void tetraedre(double aresta){
        System.out.println("Volumen: "+((Math.sqrt(2)/12)*Math.pow
        (aresta, 3)));
        System.out.println("Superficie: "+(Math.sqrt(3)*(Math.pow
        (aresta, 2))));
    }
    public static void esfera(double radio){
        System.out.println("Superficie: "+(4*Math.PI*(radio)));
    }
}
