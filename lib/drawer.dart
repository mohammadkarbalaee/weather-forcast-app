import 'package:flutter/material.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color(0xffe7ee40),
        child: ListView(
          children: [
            Container(
              height: 150,
              child: ClipRRect(
                child: Image(
                  fit: BoxFit.fitHeight,
                  image: AssetImage('assets/images/icon.png'),
                ),
              ),
            ),
            NavigationDrawerItem(
                'Settings',
                Icon(Icons.settings,size: 25,color: Colors.black54,),
                    (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Scaffold(
                            body: Container(
                              child: Center(child: Text('')),
                            ),
                          )
                      )
                  );
                }
            ),
            NavigationDrawerItem(
                'Contact us',
                Icon(Icons.add_ic_call,size: 25,color: Colors.black54,),
                    (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Scaffold(
                            body: Container(
                              child: Center(child: Text('')),
                            ),
                          )
                      )
                  );
                }
            ),
            NavigationDrawerItem(
                'About',
                Icon(Icons.insert_comment_outlined,size: 25,color: Colors.black54,),
                    (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Scaffold(
                            body: Container(
                              child: Center(child: Text('')),
                            ),
                          )
                      )
                  );
                }
            ),
            NavigationDrawerItem(
                'Rate us',
                Icon(Icons.recommend,size: 25,color: Colors.black54,),
                    (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Scaffold(
                            body: Container(
                              child: Center(child: Text('')),
                            ),
                          )
                      )
                  );
                }
            ),
          ],
        ),
      ),
    );
  }
}

class NavigationDrawerItem extends StatelessWidget {
  var title;
  var icon;
  var onTap;

  NavigationDrawerItem(this.title,this.icon,this.onTap);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        elevation: 10,
        child: ListTile(
          leading: icon,
          title: Text(
            title,
            style: TextStyle(
                fontSize: 20,
                color: Colors.black54
            ),
          ),
          onTap: onTap,
        ),
      ),
    );
  }
}