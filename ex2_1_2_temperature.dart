class Temperature {
  double _celsius = 0.0;

  double get celsius => _celsius;

  set celsius(double value) {
    if (value < -273.15) {
      print(
        'ข้อผิดพลาด: อุณหภูมิตำกว่าศูนย์สัมบูรณ์ (-273.15°C) ไม่สามารถตั้งค่าได้',
      );
    } else {
      _celsius = value;
    }
  }

  double get fahrenheit => (_celsius * 9 / 5) + 32;
}

void main() {
  print('--- ทดสอบคลาส Temperature (Encapsulation) ---\n');

  Temperature temp = Temperature();

  print('1. ทดสอบตั้งค่าปกติ (35.0°C):');
  temp.celsius = 35.0;
  print('อุณหภูมิในระบบ: ${temp.celsius}°C');
  print('แปลงเป็นฟาเรนไฮต์: ${temp.fahrenheit}°F');
  print('-------------------------------------------');

  print('2. ทดสอบป้อนค่าต่ำกว่าศูนย์สัมบูรณ์ (-274.0°C):');
  temp.celsius = -274.0;
  print('ค่าปัจจุบันในระบบ (ไม่เปลี่ยน): ${temp.celsius}°C');
  print('-------------------------------------------');
}
