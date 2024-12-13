import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/footer_background.jpg'), // Path to your background image
          fit: BoxFit.cover,
        ),
      ),
      padding: EdgeInsets.all(16.0),
      child: Container(
        color: Color.fromRGBO(0, 0, 0, 0.7),
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Row to align Vidiyal Medical Mission and description horizontally
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween, // Space out the items
              crossAxisAlignment: CrossAxisAlignment.start, // Align them at the top
              children: [
                // Organization Name and Description (Left side)
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start, // Align text to the left
                    children: [
                      Text(
                        'Vidiyal Medical Mission',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'A non-profit organization that helps the poor destitute people. We are a group of doctors comprising of General Physicians, Diabetologist, Neuro Physician, Anesthetist, Pain and Palliative Care Expert, and a Physiotherapist taking care of the people in our trust.',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.0,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 150.0), // Space between description and contact info
                // Contact Section (Right side)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start, // Align contact info to the left within the column
                  children: [
                    Text(
                      'Contact',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      '+91 373646464\n+91 484746463\n+91 4673677826',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20.0),
            // Social Icons (Centered)
            Row(
              mainAxisAlignment: MainAxisAlignment.center, // Center social icons
              children: [
                IconButton(
                  icon: FaIcon(FontAwesomeIcons.facebook, color: Colors.blue),
                  onPressed: () {
                    // Add Facebook action here
                  },
                ),
                IconButton(
                  icon: FaIcon(FontAwesomeIcons.twitter, color: Colors.lightBlue),
                  onPressed: () {
                    // Add Twitter action here
                  },
                ),
                IconButton(
                  icon: FaIcon(FontAwesomeIcons.instagram, color: Colors.pink),
                  onPressed: () {
                    // Add Instagram action here
                  },
                ),
                IconButton(
                  icon: FaIcon(FontAwesomeIcons.youtube, color: Colors.red),
                  onPressed: () {
                    // Add YouTube action here
                  },
                ),
              ],
            ),
            SizedBox(height: 10.0),
            // Copyright Text Below Social Icons (Centered)
            Text(
              '© 2024 Vidiyal Medical Mission. All Rights Reserved.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14.0,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
