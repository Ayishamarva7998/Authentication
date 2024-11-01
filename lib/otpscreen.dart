// ignore_for_file: must_be_immutable


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class OtpScreen extends StatelessWidget {
  String verificationId;
  OtpScreen({super.key, required this.verificationId});

  TextEditingController otpcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return AlertDialog(
      backgroundColor: const Color.fromARGB(255, 24, 30, 41),
    
      
      // content: Lottie.asset(
      //   'assets/Animation - 1703263987973 (1) (1).json',
      //   height: 150,
      // ),
      actions: [
        TextFormField(
          controller: otpcontroller,
          // hinttext: "OTP",
          // fillcolor: const Color.fromRGBO(43, 40, 53, 1),
        ),
        const SizedBox(height: 20),
        GestureDetector(
          // onTap: () {
          //   verifyOtp(context, otpcontroller.text);
          // },
          child: Container(
            height: size.height * 0.07,
            width: size.width,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 143, 157, 221),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Center(
              child: Text(
                'Submit',
                style: GoogleFonts.ubuntu(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  // void verifyOtp(context, String userotp) {
  //   AuthService service = AuthService();
  //   service.verifyOtp(
  //       verificationId: verificationId,
  //       otp: userotp,
  //       onSuccess: () {
  //         Navigator.push(
  //             context,
  //             MaterialPageRoute(
  //               builder: (context) => HomePage(),
  //             ));
  //       });
  // }
}