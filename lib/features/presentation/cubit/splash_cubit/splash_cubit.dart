import 'package:assignment/features/presentation/cubit/splash_cubit/splash_state.dart';
import 'package:bloc/bloc.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(SplashInitial());

  Future<void> splashInit() async {
    try {
      emit(SplashLoading());
      Future.delayed(const Duration(milliseconds: 5000), () {
        emit(SplashLoaded());
      });
    } catch (e) {
      emit(SplashFailure(e.toString()));
    }
  }
}
