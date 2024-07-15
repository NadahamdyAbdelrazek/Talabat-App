import 'package:ecommerce_app/config/routes/routes.dart';
import 'package:ecommerce_app/core/enums/screen_status.dart';
import 'package:ecommerce_app/core/utils/app_colors.dart';
import 'package:ecommerce_app/features/login/data/datasource/remote/remote_login_ds_impl.dart';
import 'package:ecommerce_app/features/login/data/repository/login_repo_impl.dart';
import 'package:ecommerce_app/features/login/domain/usecases/login_usecase.dart';
import 'package:ecommerce_app/features/login/presentation/bloc/login_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          LoginBloc(LoginUseCase(
              LoginRepoImpl(RemoteLoginDsImpl())
          )),
      child: BlocConsumer<LoginBloc,LoginState>(
        listener: (context, state) {
          if(state.status== RequestStatus.loading){
            showDialog(context: context, builder: (context) => AlertDialog(
              title: Center(child: CircularProgressIndicator()),
            ),);
          }
          if(state.status== RequestStatus.success){
            Navigator.pushNamed(context, RoutesName.home);
          }
        } ,
        builder:(context, state) {
          return Scaffold(
            backgroundColor: AppColors.BackGround,
            body: Padding(
              padding: EdgeInsets.all(15.r),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Please sign in with your mail",
                    style: TextStyle(
                        color: AppColors.FontColor, fontSize: 5.sp),
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                  Text(
                    "User Name",
                    style: TextStyle(
                        color: AppColors.FontColor, fontSize: 10.sp),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  TextFormField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        hintText: "enter your email",
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
                  Text(
                    "Password",
                    style: TextStyle(
                        color: AppColors.FontColor, fontSize: 10.sp),
                  ),
                  SizedBox(
                    height: 15.h,
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
                    height: 40.h,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.all(15.r),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.r)),
                          backgroundColor: AppColors.FontColor,
                        ),
                        onPressed: () {
                          BlocProvider.of<LoginBloc>(context).add(
                              LoginButtonEvent(
                                  emailController.text,
                                  passwordController.text));
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(color: AppColors.blueColor),
                        )),
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 32.r),
                    child: Center(
                      child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, RoutesName.signUp);
                        },
                        child: Text.rich(TextSpan(children: [
                          TextSpan(
                            text: "Don’t have an account?",
                            style: TextStyle(
                                color: AppColors.FontColor, fontSize: 10.sp),
                          ),
                          TextSpan(
                            text: " " + 'Create Account',
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

        }
      ),
    );
  }
}
