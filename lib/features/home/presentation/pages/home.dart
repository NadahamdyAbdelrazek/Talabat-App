import 'package:ecommerce_app/core/api/api_manager.dart';
import 'package:ecommerce_app/core/components/reuseable_components.dart';
import 'package:ecommerce_app/core/enums/screen_status.dart';
import 'package:ecommerce_app/core/utils/app_colors.dart';
import 'package:ecommerce_app/features/home/data/data_sources/home_ds_impl.dart';
import 'package:ecommerce_app/features/home/data/repositories/home_repo_impl.dart';
import 'package:ecommerce_app/features/home/domain/use_cases/get_brands_usecase.dart';
import 'package:ecommerce_app/features/home/domain/use_cases/get_categoery_usecase.dart';
import 'package:ecommerce_app/features/home/presentation/bloc/home_bloc.dart';
import 'package:ecommerce_app/features/home/presentation/pages/tabs/fav_tab.dart';
import 'package:ecommerce_app/features/home/presentation/pages/tabs/home_tab.dart';
import 'package:ecommerce_app/features/home/presentation/pages/tabs/products_tab.dart';
import 'package:ecommerce_app/features/home/presentation/pages/tabs/profile_tab.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loader_overlay/loader_overlay.dart';

import '../../../../config.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<HomeBloc>()
        ..add(GetCategoriesEvent())
        ..add(GetProductsEvent())
        ..add(GetBrandsEvent())
      ..add(GetCartEvent()),
      child: BlocConsumer<HomeBloc, HomeState>(
        listener: (context, state) {
          setLoading(context, state.getCartItemStatus==RequestStatus.loading);
        },

          builder: (context, state) {
        return  LoaderOverlay(
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              leadingWidth: 50.w,
            ),
            bottomNavigationBar: BottomNavigationBar(
                backgroundColor: AppColors.BackGround,
                currentIndex: state.currentIndex,
                onTap: (value) {
                  BlocProvider.of<HomeBloc>(context).add(changeNavBar(value));
                },
                type: BottomNavigationBarType.fixed,
                showSelectedLabels: false,
                showUnselectedLabels: false,
                selectedItemColor: AppColors.FontColor,
                unselectedItemColor: Colors.grey,
                items: [
                  BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.production_quantity_limits), label: ""),
                  BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ""),
                  BottomNavigationBarItem(icon: Icon(Icons.person), label: "")
                ]),
            body: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          onTap: () {},
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(vertical: 5.h),
                              hintText: "what do you search for?",
                              hintStyle: TextStyle(
                                  color: Color(0xff06004F),
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w300),
                              prefixIcon: Icon(Icons.search),
                              prefixIconColor: AppColors.blueColor,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25),
                                  borderSide:
                                      BorderSide(color: AppColors.blueColor)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25),
                                  borderSide:
                                      BorderSide(color: AppColors.blueColor))),
                        ),
                      ),
                      SizedBox(width: 20.w),
                      InkWell(
                        onTap: () {},
                        child: Badge(
                          label: Text(state.cartItem.toString()),
                          child: Icon(
                            size: 33.sp,
                            Icons.shopping_cart,
                            color: AppColors.BackGround,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16.h),
                Expanded(child: tabs[state.currentIndex]),
              ],
            ),
          ),
        );
      }),
    );
  }

  List<Widget> tabs = [
    HomeTab(),
    ProductsTab(),
    FavTab(),
    ProfileTab(),
  ];
}
