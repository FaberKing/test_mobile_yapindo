import 'package:flutter/material.dart';
import 'package:test_mobile_yapindo/features/jurnal/presentation/view/journal_detail_page.dart';
import 'package:test_mobile_yapindo/features/jurnal/presentation/view/journal_home_page.dart';

class AppRoute {
  static const journalPage = '/';
  static const journalDetailPage = '/journal_detail';

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case journalPage:
        return MaterialPageRoute(
          builder: (context) => const JournalHomePage(),
        );
      case journalDetailPage:
        return MaterialPageRoute(
          builder: (context) => const JournalDetailPage(),
        );
      default:
        return _notFoundPage;
    }
  }

  static MaterialPageRoute get _notFoundPage => MaterialPageRoute(
        builder: (context) => const Scaffold(
          body: Center(
            child: Text('Not Found'),
          ),
        ),
      );
}
