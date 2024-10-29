import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


// Screen 1: Phone Number Entry
class PhoneNumberScreen extends StatefulWidget {
  const PhoneNumberScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _PhoneNumberScreenState createState() => _PhoneNumberScreenState();
}

class _PhoneNumberScreenState extends State<PhoneNumberScreen> {
  final TextEditingController _phoneController = TextEditingController();

  void _continueToOtpScreen() {
    final phone = _phoneController.text;
    if (phone.length == 10) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => OtpScreen(phoneNumber: phone),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Please enter a valid 10-digit phone number")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 24, 30, 41),
      appBar: AppBar(backgroundColor: const Color.fromARGB(255, 24, 30, 41),
        title: const Text('Enter your phone Number',style: TextStyle(color:  Color.fromARGB(255, 90, 89, 89)),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Enter your 10-digit phone number',
              style: TextStyle(fontSize: 18.0,color: Color.fromARGB(255, 90, 89, 89)),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20.0),
            TextField(
              controller: _phoneController,
              maxLength: 10,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Phone Number',
              ),
            ),
            const SizedBox(height: 20.0),
                  SizedBox(width: 360,height: 50,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.yellow,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        onPressed: () {
                         _continueToOtpScreen();
                        },
                        child: Text(
                          'Login',
                          style: GoogleFonts.workSans(
                            color: const Color.fromARGB(255, 50, 50, 50),
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                  ),
            // ElevatedButton(
            //   onPressed: _continueToOtpScreen,
            //   child: Text('Continue'),
            // ),
          ],
        ),
      ),
    );
  }
}

// Screen 2: OTP Entry
class OtpScreen extends StatefulWidget {
  final String phoneNumber;

  const OtpScreen({super.key, required this.phoneNumber});

  @override
  // ignore: library_private_types_in_public_api
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final TextEditingController _otpController = TextEditingController();

  void _submitOtp() {
    final otp = _otpController.text;
    if (otp.length == 6) {
      // Add logic for OTP validation or next steps
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("OTP Submitted: $otp")),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Please enter a 6-digit OTP")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Enter OTP'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Enter the 6-digit OTP sent to ${widget.phoneNumber}',
              style: const TextStyle(fontSize: 18.0),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20.0),
            TextField(
              controller: _otpController,
              maxLength: 6,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'OTP',
              ),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: _submitOtp,
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
