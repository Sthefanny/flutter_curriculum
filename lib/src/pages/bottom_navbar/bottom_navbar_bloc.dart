import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:rxdart/rxdart.dart';

enum NavBarItem {
  LATEST_EXPERIENCES,
  SKILLS,
  SUMMARY,
  EDUCATION,
  LANGUAGES,
}

const Map<NavBarItem, String> NavBarItemDescription = {
  NavBarItem.SUMMARY: "Summary",
  NavBarItem.LATEST_EXPERIENCES: "Latest Experiences",
  NavBarItem.SKILLS: "Skills",
  NavBarItem.EDUCATION: "Education",
  NavBarItem.LANGUAGES: "Languages",
};

class BottomNavbarBloc extends BlocBase {
  int actualItem = NavBarItem.SUMMARY.index;

  final _navBarController = BehaviorSubject<NavBarItem>.seeded(NavBarItem.SUMMARY);

  Observable<NavBarItem> get navbarItem => _navBarController.stream;

  Function(NavBarItem) get changeItem => _navBarController.sink.add;

  void pickItem(int i) {
    if (i != actualItem) {
      switch (i) {
        case 0:
          changeItem(NavBarItem.LATEST_EXPERIENCES);
          actualItem = NavBarItem.LATEST_EXPERIENCES.index;
          break;
        case 1:
          changeItem(NavBarItem.SKILLS);
          actualItem = NavBarItem.SKILLS.index;
          break;
        case 3:
          changeItem(NavBarItem.EDUCATION);
          actualItem = NavBarItem.EDUCATION.index;
          break;
        case 4:
          changeItem(NavBarItem.LANGUAGES);
          actualItem = NavBarItem.LANGUAGES.index;
          break;
        case 2:
        default:
          actualItem = NavBarItem.SUMMARY.index;
          changeItem(NavBarItem.SUMMARY);
          break;
      }
    }
  }

  @override
  void dispose() {
    _navBarController.close();
    super.dispose();
  }
}
