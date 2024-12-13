import 'package:flutter/material.dart';
import 'footer.dart'; // Importing the Footer widget

class HomePageContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // First container with "Your donation makes changes"
                Container(
                  width: constraints.maxWidth,
                  height: constraints.maxHeight * 0.3,
                  color: Colors.blueGrey,
                  child: Center(
                    child: Text(
                      'Your donation makes changes',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),

                // Second container with two sections
                Container(
                  width: constraints.maxWidth,
                  color: Colors.white70,
                  child: Column(
                    children: [
                      // Row with two sections
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Left side: Donation details
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.all(16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'DOMESTIC',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(height: 8.0),
                                  Text(
                                    'Please take note, Indian donors are required to provide the following details as per the amended Government Act of 10 BD: Name, Address, Phone Number, PAN Card, Aadhar Card / Voters ID / Driving License. These details are essential for compliance purposes. Thank you for your understanding and cooperation.',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          // Right side: Account details
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.all(16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Domestic (Within India)',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(height: 8.0),
                                  Text(
                                    'mmmmmmm TRUST\n'
                                        'Indian Bank, Thirunagar, Madurai\n'
                                        'Account Number: 000000000\n'
                                        'IFSC Code: Icgy5674',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 16.0), // Add spacing below the row
                    ],
                  ),
                ),
                Container(
                  width: constraints.maxWidth,
                  color: Colors.white70,
                  child: Column(
                    children: [
                      // Row with two sections
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Left side: Donation details
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.all(16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'International\nImportant Notice: Changes to International Donation Method',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(height: 8.0),
                                  Text(
                                    'We regret to inform you that as per the recent circular issued by the Reserve Bank of India (RBI), international credit cards will no longer be accepted as a method of payment for international donations.We sincerely apologize for any inconvenience this may cause. To continue supporting our cause, we kindly request that you consider making donations via direct bank transfer.There will be no impact on domestic transfers, and you can continue to donate within the country using your preferred payment methods.We apologize once again for any inconvenience caused and appreciate your understanding.We kindly urge you to contribute through direct bank transfer to ensure uninterrupted support for our initiatives.',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          // Right side: Account details
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.all(16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'FCRA (Foreign Contribution Regulation Act) Account',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(height: 8.0),
                                  Text(
                                    'mmmmmmm TRUST\n'
                                        'Indian Bank, Thirunagar, Madurai\n'
                                        'Account Number: 000000000\n'
                                        'IFSC Code: Icgy5674\n'
                                    'Swift code: 0000',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 16.0), // Add spacing below the row
                    ],
                  ),
                ),
                Container(
                  width: constraints.maxWidth,
                  height: constraints.maxHeight * 0.3,
                  color: Colors.blueGrey,
                  child: Center(
                    child: Text(
                      'Your feedback is incredibly important to us as it helps us improve and continue to provide the best possible service. We would greatly appreciate it if you could take a moment to leave us a review on Google. Your review not only helps us grow but also assists other customers in making informed decisions. To leave a review, simply click the button below:',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),

                // Add the Footer widget here
                Footer(), // Footer widget from footer.dart
              ],
            ),
          );
        },
      ),
    );
  }
}
