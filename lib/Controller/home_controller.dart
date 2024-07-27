abstract class HomeController {
  call();
}

class HomeControllerImp extends HomeController {
  @override
  call() {
  }
 static List<String> homeImagePath = <String>[
    "health",
    "accident",
    "fire",
    "alert",
  ];
 static List<String> emergencySituationType = <String>[
    "MEDICAL",
    "ACCIDENT",
    "FIRE",
    "OTHER",
  ];
}
