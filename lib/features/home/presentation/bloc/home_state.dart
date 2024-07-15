part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
   @Default(RequestStatus.init) RequestStatus getBrandsStatus,
   @Default(0)int currentIndex,
   @Default(0)int cartItem,
   @Default(RequestStatus.init) RequestStatus getProductsStatus,
    @Default(RequestStatus.init) RequestStatus getCategoriesStatus,
   @Default(RequestStatus.init) RequestStatus addToCart,
   @Default(RequestStatus.init) RequestStatus getCartItemStatus,
    BrandModel? brandModel,
    CategoreyModel? categoreyModel,
    ProductModel? productModel,
    Failures? brandFailure,
    Failures? categoryFailure,
   Failures? productFailure,
}

      ) = _HomeState;
}
