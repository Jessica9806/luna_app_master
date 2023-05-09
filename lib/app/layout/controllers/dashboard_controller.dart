part of dashboard;

class DashboardController extends GetxController {
  final scafoldKey = GlobalKey<ScaffoldState>();

  final dataProfil = const UserProfileData(
    image: AssetImage(ImageRasterPath.man),
    name: "Firgia",
    jobDesk: "Veterinarian Doctor",
  );

  final member = ["Avril Kimberly", "Michael Greg"];

  final dataTask = const TaskProgressData(totalTask: 5, totalCompleted: 1);

  final taskInProgress = [
    CardTaskData(
      label: "Determine meeting schedule",
      jobDesk: "System Analyst",
      dueDate: DateTime.now().add(const Duration(minutes: 50)),
    ),
    CardTaskData(
      label: "Personal branding",
      jobDesk: "Marketing",
      dueDate: DateTime.now().add(const Duration(hours: 4)),
    ),
    CardTaskData(
      label: "UI UX",
      jobDesk: "Design",
      dueDate: DateTime.now().add(const Duration(days: 2)),
    ),
    CardTaskData(
      label: "Determine meeting schedule",
      jobDesk: "System Analyst",
      dueDate: DateTime.now().add(const Duration(minutes: 50)),
    )
  ];

  final weeklyTask = [
    ListTaskAssignedData(
      icon: const Icon(EvaIcons.monitor, color: Colors.blueGrey),
      label: "Slicing UI",
      jobDesk: "Programmer",
      assignTo: "Alex Ferguso",
      editDate: DateTime.now().add(-const Duration(hours: 2)),
    ),
    ListTaskAssignedData(
      icon: const Icon(EvaIcons.star, color: Colors.amber),
      label: "Personal branding",
      jobDesk: "Marketing",
      assignTo: "Justin Beck",
      editDate: DateTime.now().add(-const Duration(days: 50)),
    ),
    const ListTaskAssignedData(
      icon: Icon(EvaIcons.colorPalette, color: Colors.blue),
      label: "UI UX ",
      jobDesk: "Design",
    ),
    const ListTaskAssignedData(
      icon: Icon(EvaIcons.pieChart, color: Colors.redAccent),
      label: "Determine meeting schedule ",
      jobDesk: "System Analyst",
    ),
  ];

  final taskGroup = [
    [
      ListTaskDateData(
        date: DateTime.now().add(const Duration(days: 2, hours: 10)),
        label: "5 posts on instagram",
        jobdesk: "Marketing",
      ),
      ListTaskDateData(
        date: DateTime.now().add(const Duration(days: 2, hours: 11)),
        label: "Platform Concept",
        jobdesk: "Animation",
      ),
    ],
    [
      ListTaskDateData(
        date: DateTime.now().add(const Duration(days: 4, hours: 5)),
        label: "UI UX Marketplace",
        jobdesk: "Design",
      ),
      ListTaskDateData(
        date: DateTime.now().add(const Duration(days: 4, hours: 6)),
        label: "Create Post For App",
        jobdesk: "Marketing",
      ),
    ],
    [
      ListTaskDateData(
        date: DateTime.now().add(const Duration(days: 6, hours: 5)),
        label: "2 Posts on Facebook",
        jobdesk: "Marketing",
      ),
      ListTaskDateData(
        date: DateTime.now().add(const Duration(days: 6, hours: 6)),
        label: "Create Icon App",
        jobdesk: "Design",
      ),
      ListTaskDateData(
        date: DateTime.now().add(const Duration(days: 6, hours: 8)),
        label: "Fixing Error Payment",
        jobdesk: "Programmer",
      ),
      ListTaskDateData(
        date: DateTime.now().add(const Duration(days: 6, hours: 10)),
        label: "Create Form Interview",
        jobdesk: "System Analyst",
      ),
    ]
  ];

  void onPressedProfil() {}

  void onSelectedMainMenu(int index, SelectionButtonData value) {
    switch (index) {
      case 0:
        Get.toNamed('/home');
        Get.snackbar(index.toString(), value.label);
        break;
      case 1:
        Get.toNamed('/appointment');
        Get.snackbar(index.toString(), value.label);
        break;
      case 2:
        Get.toNamed('/breed');
        Get.snackbar(index.toString(), value.label);
        break;
      case 3:
        Get.toNamed('/client');
        Get.snackbar(index.toString(), value.label);
        break;
      case 4:
        Get.toNamed('/clinic');
        Get.snackbar(index.toString(), value.label);
        break;
      case 5:
        Get.toNamed('/consultation');
        Get.snackbar(index.toString(), value.label);
        break;
      case 6:
        Get.toNamed('/detail-purchase');
        Get.snackbar(index.toString(), value.label);
        break;
      case 7:
        Get.toNamed('/detail-sale');
        Get.snackbar(index.toString(), value.label);
        break;
      case 8:
        Get.toNamed('/dewormer');
        Get.snackbar(index.toString(), value.label);
        break;
      case 9:
        Get.toNamed('/esthetic');
        Get.snackbar(index.toString(), value.label);
        break;
      case 10:
        Get.toNamed('/esthetic-has-type-service');
        Get.snackbar(index.toString(), value.label);
        break;
      case 11:
        Get.toNamed('/hospitalization');
        Get.snackbar(index.toString(), value.label);
        break;
      case 12:
        Get.toNamed('/laboratory');
        Get.snackbar(index.toString(), value.label);
        break;
      case 13:
        Get.toNamed('/patient');
        Get.snackbar(index.toString(), value.label);
        break;
      case 14:
        Get.toNamed('/pet-daycare');
        Get.snackbar(index.toString(), value.label);
        break;
      case 15:
        Get.toNamed('/product');
        Get.snackbar(index.toString(), value.label);
        break;
      case 16:
        Get.toNamed('/provider');
        Get.snackbar(index.toString(), value.label);
        break;
      case 17:
        Get.toNamed('/purchase');
        Get.snackbar(index.toString(), value.label);
        break;
      case 18:
        Get.toNamed('/sale');
        Get.snackbar(index.toString(), value.label);
        break;
      case 19:
        Get.toNamed('/species');
        Get.snackbar(index.toString(), value.label);
        break;
      case 20:
        Get.toNamed('/type-appointment');
        Get.snackbar(index.toString(), value.label);
        break;
      case 21:
        Get.toNamed('/type-dewormer');
        Get.snackbar(index.toString(), value.label);
        break;
      case 22:
        Get.toNamed('/type-service');
        Get.snackbar(index.toString(), value.label);
        break;
      case 23:
        Get.toNamed('/type-vaccine');
        Get.snackbar(index.toString(), value.label);
        break;
      case 24:
        Get.toNamed('/user');
        Get.snackbar(index.toString(), value.label);
        break;
      case 25:
        Get.toNamed('/vaccine');
        Get.snackbar(index.toString(), value.label);
        break;
      default:
    }

  }
  void onSelectedTaskMenu(int index, String label) {}

  void searchTask(String value) {}

  void onPressedTask(int index, ListTaskAssignedData data) {}
  void onPressedAssignTask(int index, ListTaskAssignedData data) {}
  void onPressedMemberTask(int index, ListTaskAssignedData data) {}
  void onPressedCalendar() {}
  void onPressedTaskGroup(int index, ListTaskDateData data) {}

  void openDrawer() {
    if (scafoldKey.currentState != null) {
      scafoldKey.currentState!.openDrawer();
    }
  }
}