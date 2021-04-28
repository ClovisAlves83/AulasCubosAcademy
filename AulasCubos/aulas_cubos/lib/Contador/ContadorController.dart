import 'package:aulas_cubos/Contador/ContadorModel.dart';

class ContadorController {
  final model = ContadorModel();

  String getCounter() {
    return model.counter.toString();
  }

  String getRandom() {
    return model.random.toString();
  }

  String getParImpar() {
    return model.parImpar;
  }

  int incrementCounter(int index, int counter) {
    return model.incrementCounter(index, counter);
  }

  int incrementCounter2(int index) {
    return model.incrementCounter2(index);
  }

  void pegarNumero() {
    model.pegarNumero();
  }
}
