import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(24.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Hossam M.Nasr",
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Text(
                  "Software Mobile Engineer | Flutter Developer",
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 24),
                ElevatedButton(onPressed: () async {
                  // Add your contact action here
                  final emailUri = Uri(
                    scheme: "mailto",
                    path: "info.hossammohammed@gmail.com",
                    query: "subject=Contact from Portfolio App",
                  );

                  if(await canLaunchUrl(emailUri)){
                    await launchUrl(emailUri);
                  }
                }, child: Text("Contact Me")),
                SizedBox(height: 40),
                Text(
                  "Projects",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 16),
                Text("• DRZN - E-commerce App"),
                Text("• PRINTABLE - Printing Service App"),
                Text("• JEYTAK - E-commerce App"),
                Text("• MAGHSOOL - Laundry Service App"),
                Text("• RISENOW - Advertising App"),
                Text("• HOSSAM M.NASR PORTFOLIO - Personal Portfolio App"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
