import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce_app/core/utils/app_colors.dart';
import 'package:ecommerce_app/features/home/presentation/bloc/home_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../data/models/ProductModel.dart';

class ProductItem extends StatelessWidget {
  final int index;
  final ProductModel? productModel;

  ProductItem({required this.index, required this.productModel, super.key});

  @override
  Widget build(BuildContext context) {
    var product = productModel?.data?[index];
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: EdgeInsets.only(
            left: index.isEven ? 16.w : 0, right: index.isOdd ? 16.w : 0),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.r),
              border: Border.all(width: 2.w, color: Colors.blueGrey)),
          child: Column(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.r)),
                      child: CachedNetworkImage(
                        imageUrl: product?.images?.first ?? "",
                        fit: BoxFit.fill,
                        width: double.infinity,
                        height: 191.h,
                        errorWidget: (context, url, error) => Icon(
                          Icons.error_outline,
                          size: 40.sp,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 10.0.h, horizontal: 7.w),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          padding: EdgeInsets.all(2.h.w),
                          margin: EdgeInsets.only(left: 6.w),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15.r),
                          ),
                          child: Icon(
                            Icons.favorite_outline,
                            color: AppColors.blueColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8.h),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 8.0.w),
                    child: Text(
                      product?.brand?.name ?? "",
                      style: TextStyle(color: AppColors.blueColor),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.0.w),
                    child: Text(
                      product?.description ?? "",
                      style: TextStyle(color: AppColors.blueColor),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Padding(
                    padding: EdgeInsets.only(bottom: 10.h, left: 2.w),
                    child: Row(
                      children: [
                        Text("EGP ${product?.price.toString() ?? ""} ",
                            style: TextStyle(color: AppColors.blueColor)),
                        SizedBox(width: 15.w),
                        Text("EGP 1200",
                            style: TextStyle(
                                fontSize: 15.sp,
                                color: AppColors.blueColor,
                                decoration: TextDecoration.lineThrough,
                                decorationColor: Color(0xff004182),decorationThickness: 2)),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.0.w, bottom: 13.h),
                    child: Row(
                      children: [
                        Text(
                          "Review",
                          style: TextStyle(color: AppColors.blueColor),
                        ),
                        SizedBox(
                          width: 4.w,
                        ),
                        Text(product?.ratingsAverage.toString() ?? "",
                            style: TextStyle(color: AppColors.blueColor)),
                        SizedBox(
                          width: 4.w,
                        ),
                        Icon(
                          Icons.star,
                          color: AppColors.yellowColor,
                        ),
                        Spacer(),
                        InkWell(
                          onTap: (){
                            BlocProvider.of<HomeBloc>(context).add(AddToCartEvent(product?.id??""));
                          },
                          child: Container(
                            padding: EdgeInsets.all(2.w.h),
                            margin: EdgeInsets.only(
                              right: 5.w,
                            ),
                            decoration: BoxDecoration(
                              color: AppColors.BackGround,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
