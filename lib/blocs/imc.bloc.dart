import 'package:flutter_masked_text2/flutter_masked_text2.dart';

class ImcBloc {
  var heightCtrl = MaskedTextController(mask: '000');
  var weightCtrl = MaskedTextController(mask: '000');
  var result = "Preencha os dados para calcular o seu IMC";

  calculate() {
    double weight = double.parse(weightCtrl.text);
    double height = double.parse(heightCtrl.text);
    double imc = weight / ((height * height) / 100);

    if (imc < 18.6) {
      result = "Abaixo do Peso (${imc.toStringAsPrecision(2)})";
    } else if (imc >= 18.6 && imc < 24.9) {
      result = "Peso Ideal (${imc.toStringAsPrecision(2)})";
    } else if (imc >= 24.9 && imc < 34.9) {
      result = "Levemente acima do peso (${imc.toStringAsPrecision(2)})";
    } else if (imc >= 34.9 && imc <= 39.9) {
      result = "Obesidade Grau I (${imc.toStringAsPrecision(2)})";
    } else if (imc >= 40) {
      result = "Obesidade Grau II (${imc.toStringAsPrecision(2)})";
    }
  }
}
