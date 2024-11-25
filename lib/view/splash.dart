import 'package:cryptoapp/view/home_screen.dart';
import 'package:flutter/material.dart';


class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigateToDashboard();
  }

  Future<void> _navigateToDashboard() async {
    // Simulate a delay for the splash screen
    await Future.delayed(const Duration(seconds: 3));
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const TradingDashboard()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.white, // Background color
         child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Center content vertically
            children: [
              Image.asset(
                'assets/images/1.gif',
                width: 200, // Optional: Set width to control size
                height: 200, // Optional: Set height to control size
                fit: BoxFit.contain, // Prevent distortion
              ),
              const SizedBox(height: 20), // Optional: Spacing below the image
              const Text(
                'OpenTrade',
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
              const Text(
                'Loading...',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal, color: Color.fromRGBO(80, 77, 82, 0.8)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
