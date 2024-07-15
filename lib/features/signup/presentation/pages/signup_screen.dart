import 'package:ecommerce_app/core/error/failures.dart';
import 'package:ecommerce_app/core/utils/app_colors.dart';
import 'package:ecommerce_app/features/signup/data/data_sources/signup_ds.dart';
import 'package:ecommerce_app/features/signup/data/data_sources/signup_ds_impl.dart';
import 'package:ecommerce_app/features/signup/data/repositories/signup_repo_impl.dart';
import 'package:ecommerce_app/features/signup/domain/entities/SignUpRequest.dart';
import 'package:ecommerce_app/features/signup/domain/use_cases/signup_usecase.dart';
import 'package:ecommerce_app/features/signup/presentation/bloc/signup_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/routes/routes.dart';
import '../../../../core/enums/screen_status.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  TextEditingController userNameController = TextEditingController();
  TextEditingController PhoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          SignupBloc(SignUpUseCase(SignUpRepoImpl(SignUpDsImpl()))),
      child: BlocConsumer<SignupBloc, SignupState>(
        listener: (context, state) {
          if (state.status == RequestStatus.loading) {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: Text("Error"),
                content:Text(state.failures?.message?? "") ,
              ),
            );
          }
          if (state.status == RequestStatus.success) {
            Navigator.pushNamed(context, RoutesName.home);
          }
        },
        builder: (context, state) {
          return Scaffold(
            backgroundColor: AppColors.BackGround,
            body: Padding(
              padding: EdgeInsets.all(15.0.r),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Full Name",
                    style:
                        TextStyle(color: AppColors.FontColor, fontSize: 10.sp),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  TextFormField(
                    controller: userNameController,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                        hintText: "enter your full name",
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16))),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    "Mobile Number",
                    style:
                        TextStyle(color: AppColors.FontColor, fontSize: 10.sp),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  TextFormField(
                    controller: PhoneController,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                        hintText: "enter your mobile no.",
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16))),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    "E-mail address",
                    style:
                        TextStyle(color: AppColors.FontColor, fontSize: 10.sp),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  TextFormField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        hintText: "enter your email address",
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16))),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    "Password",
                    style:
                        TextStyle(color: AppColors.FontColor, fontSize: 10.sp),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  TextFormField(
                    controller: passwordController,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                        hintText: "enter your password",
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16))),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.all(15.r),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.r)),
                          backgroundColor: AppColors.FontColor,
                        ),
                        onPressed: () {
                          SignUpRequest request = SignUpRequest(
                            email: emailController.text,
                            phone: PhoneController.text,
                            name: userNameController.text,
                            password: passwordController.text
                          );
                          BlocProvider.of<SignupBloc>(context)
                              .add(SignupButtonEvent(request));
                        },
                        child: Text(
                          "Sign Up",
                          style: TextStyle(color: AppColors.blueColor),
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20.r),
                    child: Center(
                      child: InkWell(
                        onTap: () {
                          Navigator.pushNamedAndRemoveUntil(
                            context,
                            RoutesName.Login,
                            (route) => false,
                          );
                        },
                        child: Text.rich(TextSpan(children: [
                          TextSpan(
                            text: "I have an account.",
                            style: TextStyle(
                                color: AppColors.FontColor, fontSize: 10.sp),
                          ),
                          TextSpan(
                            text: " " + 'Login',
                            style: TextStyle(
                                color: AppColors.FontColor, fontSize: 10.sp),
                          )
                        ])),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
