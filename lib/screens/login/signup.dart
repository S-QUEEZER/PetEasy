import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grow_pet/constants/colors.dart';
import 'package:grow_pet/screens/login/signin.dart';
import 'package:grow_pet/screens/navbar/navbar.dart';
import 'package:grow_pet/widgets/textfield.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  final TextEditingController usernamecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 32.0.h, bottom: 31.h),
                child: Center(
                  child: Text(
                    "Hello!",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 23.sp,
                        fontFamily: 'RobotoRegular'),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 133.w, right: 97.w),
                child: Container(
                  height: 192.h,
                  width: 198.w,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/images/login_illustration.png",
                          ),
                          fit: BoxFit.cover)),
                ),
              ),
              SizedBox(
                height: 49.h,
              ),
              TextFieldContainer(
                hinttext: 'User Name',
                controller: usernamecontroller,
                textInputType: TextInputType.text,
              ),
              SizedBox(
                height: 20.h,
              ),
              TextFieldContainer(
                hinttext: 'Email Address',
                controller: emailcontroller,
                isPass: true,
                textInputType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: 20.h,
              ),
              TextFieldContainer(
                hinttext: 'Password',
                controller: passwordcontroller,
                textInputType: TextInputType.text,
              ),
              SizedBox(
                height: 40.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 34.0.w),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ButtonNavBar()));
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 58.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: pinkShade,
                      borderRadius: BorderRadius.circular(7.r),
                    ),
                    child: Text(
                      "Let's Sign up now",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16.sp,
                          color: Colors.white,
                          fontFamily: 'ArialBold'),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 48.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 45.w),
                child: Row(
                  children: [
                    const Image(image: AssetImage("assets/images/left.png")),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.w),
                      child: Text(
                        "Or continue with",
                        style: TextStyle(
                            fontFamily: "RobotoRegular", fontSize: 14.sp),
                      ),
                    ),
                    const Image(image: AssetImage("assets/images/right.png"))
                  ],
                ),
              ),
              SizedBox(
                height: 44.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 53.w),
                child: Row(
                  children: [
                    Container(
                      height: 59.h,
                      width: 84.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7.r),
                          border: Border.all(
                              color: const Color(0xffD3D3D3),
                              width: 1.w,
                              style: BorderStyle.solid),
                          image: const DecorationImage(
                              image: AssetImage("assets/images/google.png"))),
                    ),
                    SizedBox(
                      width: 35.w,
                    ),
                    Container(
                      height: 59.h,
                      width: 84.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7.r),
                          border: Border.all(
                              color: const Color(0xffD3D3D3),
                              width: 1.w,
                              style: BorderStyle.solid),
                          image: const DecorationImage(
                              image: AssetImage("assets/images/facebook.png"))),
                    ),
                    SizedBox(
                      width: 35.w,
                    ),
                    Container(
                      height: 59.h,
                      width: 84.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7.r),
                          border: Border.all(
                              color: const Color(0xffD3D3D3),
                              width: 1.w,
                              style: BorderStyle.solid),
                          image: const DecorationImage(
                              image: AssetImage("assets/images/apple.png"))),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 49.h,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignInScreen()));
                    // ? navigate to the sign up screen
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account? ',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: const Color(0xff453E4E),
                            fontSize: 14.sp,
                            fontFamily: 'RobotoRegular'),
                      ),
                      Text(
                        'Sign in',
                        style: TextStyle(
                            color: pinkShade,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'HelveticaRegular'),
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
