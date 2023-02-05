package soru4;
class StarPattern {
  public static void main(String[] args) {
    for (int i = 0; i <= 10; i+=2) {
      System.out.print("* ");
      for (int j = 1; j < i; j++) {
        System.out.print("* ");
      }
      System.out.println();
    }
  }
}