import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff040D1C),
      appBar: AppBar(
        backgroundColor: const Color(0xff0D1F37),
        title: Text(
          'Hossam Mohammad',
          style: Theme.of(
            context,
          ).textTheme.titleMedium?.copyWith(color: Colors.white),
        ),
        actions: [
          Text(
            'Projects',
            style: Theme.of(
              context,
            ).textTheme.titleMedium?.copyWith(color: Colors.white),
          ),
          const SizedBox(width: 16),
          Text(
            'Experience',
            style: Theme.of(
              context,
            ).textTheme.titleMedium?.copyWith(color: Colors.white),
          ),
          const SizedBox(width: 16),
          Text(
            'Skills',
            style: Theme.of(
              context,
            ).textTheme.titleMedium?.copyWith(color: Colors.white),
          ),
          const SizedBox(width: 16),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: const Color(0xff0C1B33),
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: const Color(0xff416088)),
            ),
            child: Text(
              'Contact',
              style: TextStyle(
                fontSize: 14,
                color: const Color(0xff416088),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(width: 32),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(
          top: 50,
          left: 32,
          right: 32,
          bottom: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 32,
              children: [
                Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    color: const Color(0xff040D1C),
                    border: Border.all(
                      color: const Color(0xff447EC3),
                      width: 3,
                    ),
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xff052856),
                        blurRadius: 20,
                        spreadRadius: 10,
                      ),
                    ],
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: const Color(0xff122741),
                        width: 6,
                      ),
                      image: const DecorationImage(
                        image: NetworkImage(
                          'https://plus.unsplash.com/premium_photo-1664536392896-cd1743f9c02c?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  spacing: 6,
                  children: [
                    Text(
                      'Hossam Moahmmad',
                      style: TextStyle(
                        fontSize: 48,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'Software Mobile Engineer | Flutter Developer',
                      style: TextStyle(
                        fontSize: 18,
                        color: const Color(0xffA4AAB6),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      spacing: 8,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 10,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: const Color(0xff416088)),
                          ),
                          child: Row(
                            children: [
                              const FaIcon(
                                FontAwesomeIcons.github,
                                color: Color(0xff416088),
                                size: 16,
                              ),
                              const SizedBox(width: 8),
                              Text(
                                'GitHub',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xff416088),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 10,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: const Color(0xff416088)),
                          ),
                          child: Row(
                            children: [
                              const FaIcon(
                                FontAwesomeIcons.linkedin,
                                color: Color(0xff416088),
                                size: 16,
                              ),
                              const SizedBox(width: 8),
                              Text(
                                'LinkedIn',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xff416088),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 40),
            Stack(
              children: [
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: const Color(0xff0D1B33),
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: const Color(0xff416088)),
                  ),
                  child: Text(
                    'Results-oriented Flutter Engineer with over 4 years of practical experience in developing scalable cross-platform applications. Proven track record of delivering 15+ apps and deploying 5+ to Play Store and App Store. Expert in Clean Architecture, BLoC state management, and creating multi-tenant apps using Flavors from a single codebase. Skilled in re-writing legacy code to improve performance and maintainability. Passionate about writing clean, testable code and delivering high-quality digital solutions.',
                    style: TextStyle(
                      fontSize: 14,
                      color: const Color(0xff85888F),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Positioned(
                  top: -10,
                  left: -10,
                  child: Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      color: const Color(0xff416088),
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: const Color(0xff0D1B33),
                        width: 3,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              spacing: 16,
              children: [
                const Text(
                  'Projects',
                  style: TextStyle(
                    fontSize: 32,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    childAspectRatio: 1.25,
                  ),
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: const Color(0xff0D1B33),
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: const Color(0xff416088)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        spacing: 4,
                        children: [
                          Container(
                            height: 250,
                            // width: double.maxFinite,
                            padding: const EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              color: const Color(0xff040D1C),
                              borderRadius: BorderRadius.circular(8),
                              image: const DecorationImage(
                                image: NetworkImage(
                                  'https://ms.hsoubcdn.com/uploads/thumbnails/760024/65b8b1b7a6994/talabatcover.png',
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Text(
                            'Talabat Clone',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            'A food delivery app clone built with Flutter, featuring a clean architecture and BLoC state management. The app supports multiple tenants using Flavors, allowing for easy customization and deployment from a single codebase.',
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 14,
                              color: const Color(0xff85888F),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
