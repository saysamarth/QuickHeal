import 'package:flutter/material.dart';
import 'package:newproject/grid.dart';

class BNavigation extends StatefulWidget {
  const BNavigation({super.key});
  @override
  State<BNavigation> createState() {
    return _BNavigationState();
  }
}

class _BNavigationState extends State<BNavigation> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people_alt_outlined),
            label: 'Connection',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.emergency_outlined),
            label: 'Emergency',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
      body: <Widget>[
        ListView.builder(
          itemCount: 2,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 10,
              ),
              child: InkWell(
                onTap: () {},
                splashColor: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(16),
                child: Container(
                  padding: const EdgeInsets.all(17),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      colors: [
                        Theme.of(context)
                            .colorScheme
                            .onPrimaryContainer
                            .withOpacity(0.75),
                        Theme.of(context).colorScheme.primary.withOpacity(0.55),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'HOSPITAL NAME',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text(
                            'DOCTOR NAME',
                            style: TextStyle(fontSize: 13, color: Colors.white),
                          ),
                          Spacer(),
                          Text("DATE",
                              style:
                                  TextStyle(fontSize: 13, color: Colors.white))
                        ],
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
        const Text(
          'Connection',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        Scaffold(
          body: GridView(
            padding: const EdgeInsets.all(12),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
            ),
            children: const [
              Griditem(text: "SOS"),
              Griditem(text: "REPORT HARAZD"),
              Griditem(text: "CARE TEAM"),
              Griditem(text: "REMINDER"),
            ],
          ),
        )
      ][_selectedIndex],
    );
  }
}
