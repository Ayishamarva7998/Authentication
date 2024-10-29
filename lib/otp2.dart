import 'package:flutter/material.dart';

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
    if (otp.length == 4) {
      // Add logic for OTP validation or next steps
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("OTP Submitted: $otp")),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Please enter a 4-digit OTP")),
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
              'Enter the 4-digit OTP sent to ${widget.phoneNumber}',
              style: const TextStyle(fontSize: 18.0),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20.0),
            TextField(
              controller: _otpController,
              maxLength: 4,
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
