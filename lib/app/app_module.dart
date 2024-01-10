import 'package:flutter_modular/flutter_modular.dart';
import 'package:govmanager/app/home/presentation/home_page.dart';

import 'constants/app_route.dart';

class AppModule extends Module {
  @override
  void routes(r) {
    r.child(AppRoute.home, child: (context) => const HomePage());
  }

  @override
  void binds(Injector i) {
    // i.add(OnboardingViewModel.new);
    // i.add<OnboardingUseCase>(OnboardingUseCaseImpl.new);
    // i.add<OnboardingRepository>(OnboardingRepositoryImpl.new);
  }
}
