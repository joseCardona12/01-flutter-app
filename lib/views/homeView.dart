import 'package:flutter/material.dart';
import 'package:project01/widgets/TweetCard.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black.withOpacity(0.5),
          elevation: 0,
          leading: const Padding(
            padding: EdgeInsets.all(12.0),
            child: CircleAvatar(
              radius: 10,
              backgroundImage: NetworkImage('https://images.pexels.com/photos/1239291/pexels-photo-1239291.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
            ),
          ),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Para ti'),
              Tab(text: 'Siguiendo'),
            ],
            labelColor: Colors.white,
            unselectedLabelColor: Colors.grey,
            indicatorColor: Colors.blue,
          ),
          actions: [
            IconButton(
              icon: const Icon(FontAwesomeIcons.xTwitter, color: Colors.white),
              onPressed: () {
                print("Hello world");
              },
            ),
            IconButton(
              icon: const Icon(Icons.more_vert, color: Colors.white),
              onPressed: () {},
            ),
          ],
        ),
        body: TabBarView(
          children: [
            // Para ti tab
            ListView(
              children: const [
                TweetCard(
                  username: 'Jose cardona',
                  isVerified: true,
                  handle: '@joseCardona',
                  timeAgo: '4h',
                  hasImage: true,
                  content: """See, this proves that I’m a time-traveling vampire alien! Even though I’m 5000 years old, I think I look much younger.""",
                ),
                TweetCard(
                  username: 'Hello',
                  isVerified: true,
                  handle: '@hello',
                  timeAgo: '1d',
                  content: "What's the worst th",
                ),
                TweetCard(
                  username: 'helloCrack',
                  isVerified: true,
                  handle: '@helloCrack',
                  timeAgo: '1d',
                  content: "Hello guys. I am learning new lenguage and Framework.",
                  hasImage: true,
                ),
              ],
            ),
            // Siguiendo tab
            const Center(
                child: Text('Hello This is a page test!',
                    style: TextStyle(color: Colors.white))),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.people_outline),
              label: 'Communities',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications_outlined),
              label: 'Notifications',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.mail_outline),
              label: 'Messages',
            ),
          ],
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
          },
          backgroundColor: Colors.blue,
          child: const Icon(Icons.add, color: Colors.white),
        ),
      ),
    );
  }
}
