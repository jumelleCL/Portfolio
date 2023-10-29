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
public class Ex07_SudokuCorrecte {
    // 9 x 9 
    public static Scanner in = new Scanner(System.in);
    public static void main(String[] args) {
        int sudoku[][];
        boolean valida = true;
        sudoku = llegirSudoku(); 
        
        if (sudokuCorrecte(sudoku)) {
            System.out.println("SI");
        }else{
            System.out.println("NO");
        }
        
    }
    public static boolean sudokuCorrecte(int [][]sudoku){
        boolean valida = true;
            for (int i = 0; i < 9 && valida; i++) {
            valida = esFilaValida(sudoku, i);
           }
            for (int i = 0; i < 9 && valida; i++) {
                valida = esColumnaValida(sudoku, i);
            }
            for (int i = 0; i < 9 && valida; i+=3) {
                for (int j = 0; j < 9; j+=3) {
                    valida = esRegioValida(sudoku,i,j);
                }
            }
            
            return valida;
    }
    public static int [][]llegirSudoku(){
        int [][]sudoku = new int [9][9];
        for (int i = 0; i < sudoku.length; i++) {
            for (int j = 0; j < sudoku[0].length; j++) {
                sudoku[i][j]= in.nextInt();
            }
        }
        return sudoku;
    };
    public static boolean esFilaValida(int[][]sudoku,int fila){
        boolean valida = true;
        for (int i = 0; i < sudoku.length; i++) {
            for (int j = 0; j < sudoku.length; j++) {
                if (j!=i) {
                  if (sudoku[i][fila]==sudoku[j][fila]) {
                    valida = false;
                    }else{
                      valida = true;
                  }
                }
            }
        }
        return valida;
    };
    public static boolean esColumnaValida(int[][] sudoku, int columna){
        boolean valida = true;
        for (int i = 0; i < sudoku[0].length; i++) {
            for (int j = 0; j < sudoku[0].length; j++) {
                if (j!=i) {
                  if (sudoku[columna][i]==sudoku[columna][j]) {
                    valida = false;
                    }else{
                      valida = true;
                  }
                }
            }
        }
        return valida;
    };
    public static boolean esRegioValida(int[][] sudoku, int filaInicial, int columnaInicial){
        boolean [] cifras = new boolean[9];
        boolean valida = true;
        for (int i = filaInicial; i < filaInicial +3; i++) {
            for (int j = columnaInicial; j < columnaInicial +3; j++) {
                int n = sudoku [i][j];
                if (cifras[n-1]==false) {
                    cifras[n-1]=true;
                }else{
                    valida = false;
                }
            }
            return valida;
        }
        
        return valida;
    };
//4 1 3 8 2 5 6 7 9 5 6 7 1 4 9 8 3 2 2 8 9 7 3 6 1 4 5 1 9 5 4 6 2 7 8 3 7 2 6 9 8 3 5 1 4 3 4 8 5 1 7 2 9 6 8 5 1 6 9 4 3 2 7 9 7 2 3 5 8 4 6 1 6 3 4 2 7 1 9 5 8
}
