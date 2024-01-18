import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';

extension ModularExtensions on  BuildContext{
  T viewModel<T extends ChangeNotifier>() => Modular.get<T>();
}