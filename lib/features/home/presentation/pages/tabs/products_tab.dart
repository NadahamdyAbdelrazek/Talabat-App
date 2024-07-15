import 'package:ecommerce_app/core/components/reuseable_components.dart';
import 'package:ecommerce_app/core/enums/screen_status.dart';
import 'package:ecommerce_app/features/home/presentation/bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/product_item.dart';

class ProductsTab extends StatelessWidget {
  const ProductsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc,HomeState>(
        listener: (context, state) {
          if(state.addToCart == RequestStatus.success){
            BlocProvider.of<HomeBloc>(context).add(GetCartEvent());
          }if(state.getCartItemStatus == RequestStatus.loading){
            setLoading(context, true);
          }else{
            setLoading(context, false);
          }
          ;
    }, builder: (context,state) {
      return GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: (192 / 250),
            crossAxisCount: 2,
            mainAxisSpacing: 16.h,
            crossAxisSpacing: 16.w,
          ),
          itemBuilder: (context, index) {
            return ProductItem(productModel:state.productModel, index: index,);
          },
          itemCount: state.productModel?.data?.length,
        );
      }
    );
  }
}
