class KalkulatorSederhana {
  double tambah(double a, double b) => a + b;
  double kurang(double a, double b) => a - b;
  double perkalian(double a, double b) => a * b;
  double pembagian(double a, double b) {
    if (b == 0) {
      throw DataValidationException('Tidak dapat membagi dengan 0');
    }
    return a/b;
  }
}

class DataValidationException implements Exception{
  final String message;

  DataValidationException(this.message);

  @override
  String toString() {
    return 'DataValidationException: $message';
  }
}

void validateData(String? data) {
  if (data == null || data.trim().isEmpty) {
    throw DataValidationException('Input tidak boleh kosong!');
  }
}

void validateDataNumber(String? data) {
  double? parsedNumber = double.tryParse(data!.trim());
  if (parsedNumber == null) {
    throw DataValidationException('Input harus berupa angka!');
  }
}