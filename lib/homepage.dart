import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Whatsapp'),
            centerTitle: false,
            backgroundColor: Colors.teal[600],
            bottom: TabBar(
              tabs: [
                Tab(
                  child: Text('Chats'),
                ),
                Tab(
                  child: Text('Calls'),
                ),
                Tab(
                  child: Text('Status'),
                )
              ],
            ),
            actions: [
              Icon(Icons.camera_alt_rounded),
              SizedBox(
                width: 15,
              ),
              Icon(Icons.search),
              PopupMenuButton(
                  itemBuilder: (
                context,
              ) =>
                      [
                        PopupMenuItem(value: 1, child: Text('New Group')),
                        PopupMenuItem(value: 2, child: Text('Settings')),
                        PopupMenuItem(value: 3, child: Text('Logout')),
                        PopupMenuItem(value: 4, child: Text('About')),
                      ]),
              SizedBox(
                width: 10,
              ),
            ],
          ),
          body: TabBarView(
            children: [
              ListView.builder(
                  itemCount: 50,
                  itemBuilder: (ctx, i) {
                    return ListTile(
                      leading: CircleAvatar(
                        radius: 60,
                        backgroundImage: NetworkImage(
                            'https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                      ),
                      title: Text('Md Asikuzzaman'),
                      subtitle: Text('See you again'),
                      trailing: Text('9.45 pm'),
                    );
                  }),
              Text('Calls'),
              Text('Status')
            ],
          ),
        ));
  }
}
