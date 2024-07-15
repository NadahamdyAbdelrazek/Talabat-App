import 'package:bloc/bloc.dart';
import 'package:ecommerce_app/features/signup/domain/entities/SignUpRequest.dart';
import 'package:meta/meta.dart';

import '../../../../core/enums/screen_status.dart';
import '../../../../core/error/failures.dart';
import '../../../login/domain/entity/ResponceEntity.dart';
import '../../domain/use_cases/signup_usecase.dart';

part 'signup_event.dart';

part 'signup_state.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  SignUpUseCase signUpUseCase;

  SignupBloc(this.signUpUseCase) : super(SignUpInitState()) {
    on<SignupButtonEvent>((event, emit) async {
      emit(state.copWith(status: RequestStatus.loading));

      var result = await signUpUseCase(event.request);

      result.fold((l) {
        emit(state.copWith(status: RequestStatus.failure, failures: l));
      }, (r) {
        emit(state.copWith(status: RequestStatus.success, entity: r));
      });
    });
  }
}
