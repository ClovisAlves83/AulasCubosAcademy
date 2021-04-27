import 'package:aulas_cubos/Contador/ContadorModel.dart';

class ContadorController {
  final model = ContadorModel();

  String getCounter() {
    return model.counter.toString();
  }

  int incrementCounter(int index, int counter) {
    return model.incrementCounter(index, counter);
  }

  int incrementCounter2(int index) {
    return model.incrementCounter2(index);
  }
}
