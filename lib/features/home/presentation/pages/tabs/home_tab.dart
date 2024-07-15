import 'dart:ui';

import 'package:ecommerce_app/core/utils/app_colors.dart';
import 'package:ecommerce_app/features/home/presentation/bloc/home_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../data/models/BrandModel.dart';

class HomeTab extends StatefulWidget {
  HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  int currentIndex = 0;
  List<String> imageUrls = [
    "https://www.alwatan.com.sa/uploads/images/2021/04/19/648980.jpeg",
    "https://cocoaesthetiques.com/cdn/shop/articles/acnetreatmentscalgary.jpg?v=1713637764",
    "https://www.awla.news/wp-content/uploads/2022/08/huawei-matebook-x-pro-5main62e7b7f376a9c-768x512-1-768x470.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
        listener: (context, state) {},
        builder: (context, state) {
          return SingleChildScrollView(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Stack(
                children: [
                  CarouselSlider(
                    options: CarouselOptions(
                      height: 200.h,
                      aspectRatio: 16 / 9,
                      viewportFraction: 0.93,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      enlargeCenterPage: true,
                      scrollDirection: Axis.horizontal,
                      onPageChanged: (index, reason) {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                    ),
                    items: imageUrls.map((imageUrl) {
                      return Container(
                          width: double.infinity,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child:
                                  Image.network(imageUrl, fit: BoxFit.cover)));
                    }).toList(),
                  ),
                  Positioned(
                      bottom: 20.h,
                      right: 0,
                      left: 0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: imageUrls.asMap().entries.map((entry) {
                          int index = entry.key;
                          return Container(
                              width: 10.w,
                              height: 10.h,
                              margin: EdgeInsets.symmetric(horizontal: 4.w),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: currentIndex == index
                                      ? AppColors.blueColor
                                      : Colors.white));
                        }).toList(),
                      )),
                  Padding(
                    padding: EdgeInsets.all(30.0.r),
                    child: Column(
                      children: [
                        Text(
                          "UP TO 25% OFF ",
                          style: TextStyle(
                              color: Color(0xff004182),
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          " 25% OFF ",
                          style: TextStyle(
                              color: Color(0xff004182),
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "For all Headphones ",
                          style: TextStyle(
                              color: Color(0xff004182),
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "& AirPods ",
                          style: TextStyle(
                              color: Color(0xff004182),
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 16.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Categories",
                      style: TextStyle(
                          color: AppColors.blueColor,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "view all",
                          style: TextStyle(
                              color: AppColors.blueColor,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w400),
                        ))
                  ],
                ),
              ),
              (state.categoreyModel != null)
                  ? catItem(state.categoreyModel?.data ?? [])
                  : Container(
                      height: 280.h,
                      child: Center(child: CircularProgressIndicator())),
              Padding(
                padding: EdgeInsets.only(left: 16.w),
                child: Row(
                  children: [
                    Text(
                      "Brands",
                      style: TextStyle(
                          color: AppColors.blueColor,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              (state.brandModel != null)
                  ? brandsWidget(state.brandModel?.data ?? [])
                  : Center(child: CircularProgressIndicator()),
              SizedBox(
                height: 20.h,
              ),
            ]),
          );
        });
  }

  Widget catItem(List<Data> data) => Container(
        height: 288.h,
        margin: EdgeInsets.only(left: 16.w),
        child: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          scrollDirection: Axis.horizontal,
          itemCount: data.length,
          itemBuilder: (context, i) {
            return Column(
              children: [
                Container(
                  width: 100.w,
                  height: 100.h,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: NetworkImage(data[i].image ?? ""),
                          fit: BoxFit.cover)),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Text(
                  data[i].name ?? "",
                  style: TextStyle(
                      color: AppColors.blueColor,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400),
                )
              ],
            );
          },
        ),
      );

  Widget brandsWidget(List<Data> data) => Container(
        height: 122.h,
        margin: EdgeInsets.only(left: 16.w, top: 16.h),
        child: ListView.separated(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          separatorBuilder: (context, index) => SizedBox(
            width: 16.w,
          ),
          itemCount: data.length,
          itemBuilder: (context, i) {
            return Container(
              width: 150.w,
              height: 122.h,
              padding: EdgeInsets.only(top: 8.h),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: NetworkImage(data[i].image ?? ""),
                      fit: BoxFit.cover)),
            );
          },
        ),
      );
}
