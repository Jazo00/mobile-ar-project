import 'package:flutter/material.dart';
//remove this sht
//redirect sa messages na mismo
class MessagesPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Messages Page'),
      ),
      body: const Center(
        child: Text('Welcome to your message page'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('lib/assets/home.png')), 
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('lib/assets/market.png')),
            label: 'Market',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('lib/assets/profile.png')), 
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('lib/assets/messages.png')), 
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('lib/assets/money.png')), 
            label: 'Transactions',
          ),
        ],
        currentIndex: 3,
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.pushNamed(context, '/main_page');
              break;
            case 1:
              Navigator.pushNamed(context, '/market');
              break;
            case 2:
              Navigator.pushNamed(context, '/profile');
              break;
            case 3:
              Navigator.pushNamed(context, '/messages');
              break;
            case 4:
              Navigator.pushNamed(context, '/transactions');
              break;
            default:
              Navigator.pushNamed(context, '/');
          }
        },
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}

