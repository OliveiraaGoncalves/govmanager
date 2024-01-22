import 'package:core_network/core_network.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:govmanager/app/home/data/api/fuel_transaction_service.dart';
import 'package:govmanager/app/home/data/fuel_transaction_repository.dart';
import 'package:govmanager/app/home/domain/fuel_transaction_use_case.dart';
import 'package:govmanager/app/home/presentation/fuel_transaction_view_model.dart';
import 'package:govmanager/app/home/presentation/home_page.dart';

import 'constants/app_route.dart';

class AppModule extends Module {
  @override
  void routes(r) {
    r.child(AppRoute.home, child: (context) => const HomePage());
  }

  @override
  void binds(Injector i) {
    i.add(FuelTransactionViewModel.new);
    i.add<FuelTransactionUseCase>(FuelTransactionUseCaseImpl.new);
    i.add<FuelTransactionRepository>(FuelTransactionRepositoryImpl.new);

    i.addInstance(FuelTransactionService(ApplicationNetwork.createDio()));
    // i.add<OnboardingRepository>(OnboardingRepositoryImpl.new);
  }
}
