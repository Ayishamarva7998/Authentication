import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Signup extends StatelessWidget {
  Signup({super.key});

    final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:   const Color.fromARGB(255, 24, 30, 41),
      appBar: AppBar(leading:IconButton(onPressed: (){
        Navigator.pop(context);
      }, icon: const Icon(Icons.arrow_back_ios_new))),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            
            const SizedBox(height: 40,),
         const Center(child: CircleAvatar(radius: 60,backgroundImage: AssetImage('assets/user (3).png'),)),
        
         const SizedBox(
          height: 60,),
           TextFormField(
                      controller: emailController,
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        labelText: 'Username',
                        labelStyle: const TextStyle(color: Colors.grey),
                        fillColor: Colors.white.withOpacity(0.1),
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(1),
                        ),
                      ),
                    ),
                    const SizedBox(height: 50,),
        
                    TextFormField(
                      controller: emailController,
                      obscureText: true,
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        labelText: 'Email',
                        labelStyle: const TextStyle(color: Colors.grey),
                        fillColor: Colors.white.withOpacity(0.1),
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    const SizedBox(height: 40,),

                       ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.yellow,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                          
                        ),
                        minimumSize: const Size(340, 50),
                      ),
                      onPressed: () {
                        // Placeholder for login action
                      },
                      child: Text(
                        'Signup',
                        style: GoogleFonts.workSans(
                          color: const Color.fromARGB(255, 50, 50, 50),
                          fontWeight: FontWeight.w500,
                          fontSize: 20
                        ),
                      ),
                    ),
        
        
                    
        
                    
          ],
        ),
      ),
    );
  }
}