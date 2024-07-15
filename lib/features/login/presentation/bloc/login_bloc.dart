import 'package:bloc/bloc.dart';
import 'package:ecommerce_app/core/cache/shared_pref.dart';
import 'package:ecommerce_app/core/error/failures.dart';
import 'package:ecommerce_app/features/login/domain/entity/ResponceEntity.dart';
import 'package:ecommerce_app/features/login/domain/usecases/login_usecase.dart';
import 'package:meta/meta.dart';

import '../../../../core/enums/screen_status.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginUseCase loginUseCase;
  LoginBloc(this.loginUseCase) : super(LoginInitState()) {
    on<LoginButtonEvent>((event, emit) async {
      emit(state.copWith(status: RequestStatus.loading));

      var result = await loginUseCase(event.email, event.password);
      result.fold(
        (l) => emit(state.copWith(status: RequestStatus.failure, failures: l)),
        (r) {
          CacheHelper.saveData("Token", r.token);
          emit(state.copWith(status: RequestStatus.success, entity: r));

        }
      );
    });
  }
}
