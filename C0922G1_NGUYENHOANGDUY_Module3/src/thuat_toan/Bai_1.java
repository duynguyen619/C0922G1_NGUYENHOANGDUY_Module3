package thuat_toan;

import java.util.Scanner;

public class Bai_1 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int hight, k = 0;
        hight = 6;
        for (int i = hight; i >= 2; --i) {
            for (int space = 1; space <= hight - i; ++space) {
                System.out.print("  ");
            }
            for (int j = i; j <= 2 * i - 2; ++j) {
                System.out.print("* ");
            }
            for (int j = 0; j < i - 1; ++j) {
                System.out.print("* ");
            }
            System.out.println();
        }
        for (int i = 2; i <= hight; ++i, k = 0) {
            for (int space = 1; space <= hight - i; ++space) {
                System.out.print("  ");
            }
            while (k != 2 * i - 2) {
                System.out.print("* ");
                k++;
            }
            System.out.println();
        }
    }
}
