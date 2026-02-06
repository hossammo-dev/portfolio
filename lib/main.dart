import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MainApp());
}

const List<Map<String, dynamic>> projects = [
  {
    "title": "DRZN - E-commerce App",
    "description":
        "A Flutter-based e-commerce application that offers a seamless shopping experience with a user-friendly interface, robust features, and efficient performance. It provides users with a wide range of products, secure payment options, and personalized recommendations, making it an ideal platform for online shopping.",
  },
  {
    "title": "PRINTABLE - Printing Service App",
    "description":
        "A Flutter-based printing service application that allows users to easily print documents and photos from their mobile devices. The app offers a user-friendly interface, various printing options, and seamless integration with popular cloud storage services, making it convenient for users to get their printing needs fulfilled on the go.",
  },
  {
    "title": "JEYTAK - E-commerce App",
    "description":
        "A Flutter-based e-commerce application that provides a seamless shopping experience with a user-friendly interface, robust features, and efficient performance. It offers a wide range of products, secure payment options, and personalized recommendations, making it an ideal platform for online shopping.",
  },
  {
    "title": "MAGHSOOL - Laundry Service App",
    "description":
        "A Flutter-based laundry service application that allows users to easily schedule laundry pickups and deliveries. The app offers a user-friendly interface, various service options, and seamless integration with popular payment gateways, making it convenient for users to get their laundry needs fulfilled on the go.",
  },
  {
    "title": "RISENOW - Advertising App",
    "description":
        "A Flutter-based advertising application that provides businesses with a platform to create and manage their advertising campaigns. The app offers a user-friendly interface, robust features for campaign creation and management, and seamless integration with popular advertising platforms, making it an ideal solution for businesses looking to promote their products or services effectively.",
  },
  {
    "title": "HOSSAM M.NASR PORTFOLIO - Personal Portfolio App",
    "description":
        "A Flutter-based personal portfolio application that showcases the skills, projects, and achievements of Hossam M.Nasr. The app features a clean and modern design, easy navigation, and responsive layout to provide an engaging experience for visitors interested in learning more about Hossam's work and expertise in software mobile engineering and Flutter development.",
  },
];

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
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
                Row(
                  mainAxisSize: MainAxisSize.min,
                  spacing: 12,
                  children: [
                    FaIcon(FontAwesomeIcons.linkedin, size: 20),
                    FaIcon(FontAwesomeIcons.whatsapp, size: 20),
                    FaIcon(FontAwesomeIcons.github, size: 20),
                    // FaIcon(FontAwesomeIcons., size: 20),
                  ],
                ),
                SizedBox(height: 24),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  spacing: 4,
                  children: [
                    Text("• 5+ years of experience in mobile app development"),
                    Text(
                      "• Proficient in Flutter, Dart, and cross-platform development",
                    ),
                    Text(
                      "• Strong background in UI/UX design and performance optimization",
                    ),
                    Text(
                      "• Passionate about creating high-quality, user-friendly applications",
                    ),
                  ],
                ),
                SizedBox(height: 24),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Skills",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 12),
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: [
                        Chip(label: Text("Flutter")),
                        Chip(label: Text("Dart")),
                        Chip(label: Text("REST APIs")),
                        Chip(label: Text("Clean Architecture")),
                        Chip(label: Text("Git")),
                        Chip(label: Text("Firebase")),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 24),
                ElevatedButton(
                  onPressed: () async {
                    // Add your contact action here
                    final emailUri = Uri(
                      scheme: "mailto",
                      path: "info.hossammohammed@gmail.com",
                      query: "subject=Contact from Portfolio App",
                    );

                    if (await canLaunchUrl(emailUri)) {
                      await launchUrl(emailUri);
                    }
                  },
                  child: Text("Contact Me"),
                ),
                SizedBox(height: 24),
                Text(
                  "Projects",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 16),
                GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 16,
                    childAspectRatio: 2.3,
                  ),
                  itemCount: projects.length,
                  itemBuilder: (context, index) => Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 4,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      spacing: 4,
                      children: [
                        Text(
                          "• ${projects[index]["title"]}",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(projects[index]["description"]),
                        const SizedBox(height: 4),

                        Row(
                          spacing: 12,
                          children: [
                            FaIcon(FontAwesomeIcons.googlePlay, size: 20),
                            FaIcon(FontAwesomeIcons.appStoreIos, size: 20),
                            FaIcon(FontAwesomeIcons.github, size: 20),
                            // FaIcon(FontAwesomeIcons., size: 20),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
