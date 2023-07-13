class MyRoutes{
  static String home = '/';
  static String resumeWorkspace = 'resume_workspace';
  static String SplashScreen = 'Splash_Screen';

  static String iconPath = "assets/icons/";

  static List<Map< String, dynamic >> buildOptions = [
    {
      'name': 'contact_info',
      'title': 'Contact Info',
      'icon': '${iconPath}contact_detail-removebg-preview (1).png',
    },
    {
      'name': 'carrier_objective',
      'title': 'Carrier Objective',
      'icon': '${iconPath}briefcase.png',
    },
    {
      'name': 'personal_details',
      'title': 'Personal Details',
      'icon': '${iconPath}account.png',
    },
    {
      'name': 'education',
      'title': 'Education',
      'icon': '${iconPath}graduation-cap.png',
    },
    {
      'name': 'experiences',
      'title': 'Experiences',
      'icon': '${iconPath}logical-thinking.png',
    },
    {
      'name': 'technical_skills',
      'title': 'Technical Skills',
      'icon': '${iconPath}certificate.png',
    },
    {
      'name': 'interest/hobbies',
      'title': 'Interest/Hobbies',
      'icon': '${iconPath}open-book.png',
    },
    {
      'name': 'projects',
      'title': 'Projects',
      'icon': '${iconPath}project-management.png',
    },
    {
      'name': 'achievements',
      'title': 'Achievements',
      'icon': '${iconPath}experience.png',
    },
    {
      'name': 'references',
      'title': 'References',
      'icon': '${iconPath}handshake.png',
    },
    {
      'name': 'declaration',
      'title': 'Declaration',
      'icon': '${iconPath}declaration.png',
    },


  ];
}