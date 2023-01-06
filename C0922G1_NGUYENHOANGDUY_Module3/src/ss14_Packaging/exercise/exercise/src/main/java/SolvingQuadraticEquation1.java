public class SolvingQuadraticEquation1 {
    public static void main(String[] args) {

    }
    public static void solvingQuadraticEquation(float a, float b, float c) {
        if (a == 0) {
            if (b == 0) {
                System.out.println("Phương trình vô nghiệm!");
            } else {
                System.out.println("Phương trình có một nghiệm: "
                        + "x = " + (-c / b));
            }
            return;
        }
        float delta = b * b - 4 * a * c;
        float number1;
        float number2;
        if (delta > 0) {
            number1 = (float) ((-b + Math.sqrt(delta)) / (2 * a));
            number2 = (float) ((-b - Math.sqrt(delta)) / (2 * a));
            System.out.println("Phương trình có 2 nghiệm là: " + "number1 = " + number1 + " và number2 = " + number2);
        } else if (delta == 0) {
            number1 = (-b / (2 * a));
            System.out.println("Phương trình có nghiệm kép: " + "number1 = number2 = " + number1);
        } else {
            System.out.println("Phương trình vô nghiệm!");
        }
    }
}
