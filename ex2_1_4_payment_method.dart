abstract class PaymentMethod {
  void pay(double amount);
}

class CreditCard implements PaymentMethod {
  @override
  void pay(double amount) => print('จ่ายด้วยบัตรเครดิต: $amount บาท');
}

class PromtPay implements PaymentMethod {
  void pay(double amount) => print('จ่ายด้วย PromtPay: $amount บาท');
}

class CashOnDelivery implements PaymentMethod {
  void pay(double amount) => print('จ่ายเงินปลายทาง: $amount บาท');
}

void main() {
  print('--- ระบบเลือกช่องทางการชำระเงิน (Abstract & Interface) ---\n');
  List<PaymentMethod> methods = [CreditCard(), PromtPay(), CashOnDelivery()];

  for (var method in methods) {
    method.pay(590);
  }
}
