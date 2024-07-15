import 'package:bloc/bloc.dart';
import 'package:ecommerce_app/core/error/failures.dart';
import 'package:ecommerce_app/features/home/data/models/BrandModel.dart';
import 'package:ecommerce_app/features/home/data/models/CategoreyModel.dart';
import 'package:ecommerce_app/features/home/data/models/ProductModel.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/enums/screen_status.dart';
import '../../domain/use_cases/add_to_cart.dart';
import '../../domain/use_cases/get_brands_usecase.dart';
import '../../domain/use_cases/get_cart_usecase.dart';
import '../../domain/use_cases/get_categoery_usecase.dart';
import '../../domain/use_cases/get_products_usecase.dart';

part 'home_event.dart';

part 'home_state.dart';

part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  GetBrandsUseCase getBrandsUseCase;
  GetCategoryUseCase getCategoryUseCase;
  GetProductsUseCase getProductsUseCase;
  AddToCartUseCase addToCartUseCase;
  GetCartItemUseCase getCartItemUseCase;

  HomeBloc(
      {required this.getBrandsUseCase,
        required this.getCartItemUseCase,
      required this.getCategoryUseCase,
        required this.addToCartUseCase,
      required this.getProductsUseCase})
      : super(const HomeState()) {
    on<GetBrandsEvent>((event, emit) async {
      emit(state.copyWith(getBrandsStatus: RequestStatus.loading));
      var result = await getBrandsUseCase();
      result.fold((l) {
        emit(state.copyWith(
            getBrandsStatus: RequestStatus.failure, brandFailure: l));
      }, (r) {
        emit(state.copyWith(
            getBrandsStatus: RequestStatus.success, brandModel: r));
      });
    });
    on<GetCategoriesEvent>((event, emit) async {
      emit(state.copyWith(getCategoriesStatus: RequestStatus.loading));
      var result = await getCategoryUseCase();
      result.fold((l) {
        emit(state.copyWith(
            getCategoriesStatus: RequestStatus.failure, categoryFailure: l));
      }, (r) {
        emit(state.copyWith(
            getCategoriesStatus: RequestStatus.success, categoreyModel: r));
      });
    });
    on<GetProductsEvent>((event, emit) async {
      emit(state.copyWith(getProductsStatus: RequestStatus.loading));
      var result = await getProductsUseCase();
      result.fold((l) {
        emit(state.copyWith(
            getProductsStatus: RequestStatus.failure, productFailure: l));
      }, (r) {
        emit(state.copyWith(
            getProductsStatus: RequestStatus.success, productModel: r));
      });
    });
    on<changeNavBar>((event, emit) {
      emit(state.copyWith(currentIndex: event.index));
    });
    on<AddToCartEvent>((event, emit) async{
      emit(state.copyWith(addToCart: RequestStatus.loading));
      var result=await addToCartUseCase(event.productId);
      result.fold((l) {
        emit(state.copyWith(addToCart: RequestStatus.failure));

      }, (r) {
        emit(state.copyWith(addToCart: RequestStatus.success));

      });
    }
    );
    on<GetCartEvent>((event, emit)async {
      emit(state.copyWith(getCartItemStatus: RequestStatus.loading,
        addToCart: RequestStatus.init
      ));
      var result=await getCartItemUseCase();
      result.fold((l) {
        emit(state.copyWith(getCartItemStatus: RequestStatus.failure));

      }, (r) {
        emit(state.copyWith(getCartItemStatus: RequestStatus.success,cartItem: r.numOfCartItems??0));

      });

    });
  }
}
