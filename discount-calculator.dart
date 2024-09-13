import 'dart:io';

void main() {
  stdout.write("กรุณากรอกราคาสินค้า: ");
  double price = double.parse(stdin.readLineSync()!);

  stdout.write("กรุณากรอกส่วนลด (%): ");
  double discount = double.parse(stdin.readLineSync()!);

  double discountedPrice = price - (price * (discount / 100));

  double vat = 0.07;
  double totalPrice = discountedPrice + (discountedPrice * vat);

  print("ราคาหลังหักส่วนลดและรวมภาษีมูลค่าเพิ่ม: ฿${totalPrice.toStringAsFixed(2)}");
}
