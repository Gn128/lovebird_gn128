import 'package:flutter/material.dart';
import 'package:lovebird_gn128/createAccount/partner.dart';

class LoveBirdIdentityScreen extends StatelessWidget {
  const LoveBirdIdentityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20.0, top: 50.0),
          child: Column(
            children: [
              // Progress bar at the top
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 15,
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius:
                          BorderRadius.circular(10.0), // Outer rounded corners
                      child: Container(
                        color: const Color(0xFF3628DD)
                            .withOpacity(0.19), // Background color
                      ),
                    ),
                    // Inner progress bar
                    ClipRRect(
                      borderRadius:
                          BorderRadius.circular(10.0), // Inner rounded corners
                      child: Container(
                        width: MediaQuery.of(context).size.width *
                            0.2, // Set width to represent progress
                        color: const Color(0xFF3628DD), // Progress color
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              // Title
              Row(children: [
                const Text(
                  'Your Love Bird Identity',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(width: 10),
                Image.asset('assets/images/icons/smile.png', width: 30),
              ]),
              const SizedBox(height: 10),
              // Subtitle
              const Text(
                'Create a unique nickname that represents you, it’s how others will know and remember you.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 40),
              // Nickname Text Field
              Container(
                width: screenSize.width * 0.9,
                height: screenSize.width * 0.3,
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 10.0),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(54, 40, 221, 0.19),
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(
                      color: const Color.fromRGBO(54, 40, 221, 1), width: 1),
                ),
                child: const Center(
                  child: TextField(
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.black, // Blue color for input text
                      fontWeight: FontWeight.bold, // Bold input text
                    ),
                    decoration: InputDecoration(
                      hintText: 'Nickname',
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                        fontSize: 25,
                        color: Color.fromRGBO(23, 14, 121, 0.173),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 400),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CelebrateYouScreen()),
                  );
                },
                child: Container(
                  width: screenSize.width * 0.8,
                  height: screenSize.height * 0.05,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(54, 40, 221, 1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Center(
                    child: Text('Continue',
                        style: TextStyle(color: Colors.white, fontSize: 18)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CelebrateYouScreen extends StatelessWidget {
  const CelebrateYouScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            right: 20.0,
            left: 20,
            top: 50.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Progress bar at the top
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 15,
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius:
                          BorderRadius.circular(10.0), // Outer rounded corners
                      child: Container(
                        color: const Color(0xFF3628DD)
                            .withOpacity(0.19), // Background color
                      ),
                    ),
                    // Inner progress bar
                    ClipRRect(
                      borderRadius:
                          BorderRadius.circular(10.0), // Inner rounded corners
                      child: Container(
                        width: MediaQuery.of(context).size.width *
                            0.25, // Set width to represent progress
                        color: const Color(0xFF3628DD), // Progress color
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 40),
              // Title
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Let\'s celebrate you',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(width: 10),
                  Icon(
                    Icons.cake,
                    color: Colors.redAccent,
                    size: 28,
                  ),
                ],
              ),
              const SizedBox(height: 30),
              // Birthday Cake Image
              Image.asset(
                'assets/images/cake.png',
                height: screenSize.height * 0.25,
                fit: BoxFit.contain,
              ),
              const SizedBox(height: 30),
              // Date Fields
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Month field
                  _buildDateField(context, 'MM'),
                  // Day field
                  _buildDateField(context, 'DD'),
                  // Year field
                  _buildDateField(context, 'YYYY'),
                ],
              ),
              const SizedBox(height: 300),
              // Continue Button
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Gender()),
                  );
                },
                child: Container(
                  width: screenSize.width * 0.8,
                  height: screenSize.height * 0.06,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(54, 40, 221, 1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Center(
                    child: Text(
                      'Continue',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Method to build date fields (MM, DD, YYYY)
  Widget _buildDateField(BuildContext context, String hint) {
    return Container(
      width: 80,
      height: 50,
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color.fromRGBO(54, 40, 221, 1),
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: TextField(
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            hintText: hint,
            border: InputBorder.none,
            hintStyle: const TextStyle(
              fontSize: 18,
              color: Color.fromRGBO(56, 53, 53, 1),
            ),
          ),
          keyboardType: TextInputType.number,
        ),
      ),
    );
  }
}
