import 'package:resume_builder_app/utils/icon_utils.dart';

class BuildOption {
  final String icon;
  final String name;
  final String route;

  BuildOption({
    required this.icon,
    required this.name,
    required this.route,
  });
}

class MyRoutes {
  static String home = '/';
  static String workspace = 'resume_workspace';
  static String pdfPage = 'pdf_page';
  static List<BuildOption> buildOptions = [
    BuildOption(
      icon: iconPath + "contact-books.png",
      name: "Contact info",
      route: "contact_info",
    ),
    BuildOption(
      icon: iconPath + "briefcase.png",
      name: "Carrier Objective",
      route: "carrier_objective",
    ),
    BuildOption(
      icon: iconPath + "user.png",
      name: "Personal Details",
      route: "personal_details",
    ),
    BuildOption(
      icon: iconPath + "mortarboard.png",
      name: "Education",
      route: "education",
    ),
    BuildOption(
      icon: iconPath + "thinking.png",
      name: "Experience",
      route: "experience",
    ),
    BuildOption(
      icon: iconPath + "experience.png",
      name: "Technical Skills",
      route: "technical_skills",
    ),
    BuildOption(
      icon: iconPath + "open-book.png",
      name: "Interest/Hobbies",
      route: "interest_hobbies",
    ),
    BuildOption(
      icon: iconPath + "project.png",
      name: "Projects",
      route: "projects",
    ),
    BuildOption(
      icon: iconPath + "achievement.png",
      name: "Achievements",
      route: "achievements",
    ),
    BuildOption(
      icon: iconPath + "handshake.png",
      name: "References",
      route: "references",
    ),
    BuildOption(
      icon: iconPath + "declaration.png",
      name: "Declaration",
      route: "declaration",
    ),
  ];
}
