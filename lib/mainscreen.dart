import 'package:flutter/material.dart';
import 'package:newproject/authentication.dart';
import 'package:newproject/widgetdrawer.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:newproject/widgetnavigationbar.dart';

class AppScreen extends StatelessWidget {
  const AppScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "QuickHeal",
          style: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        actions: [
          IconButton(
              onPressed: () async {
                await FirebaseAuth.instance.signOut();
                Navigator.of(context, rootNavigator: true).pushReplacement(
                  MaterialPageRoute(
                      builder: (context) => const AuthenticationPage()),
                );
              },
              icon: const Icon(Icons.logout_outlined))
        ],
      ),
      drawer: const MainDrawer(),
      body: const BNavigation(),
    );
  }
}
