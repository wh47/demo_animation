import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:flutter_application_1/pages/container.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemCount: 10,
        separatorBuilder: (context, index) => SizedBox(height: 8),
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: Container(
              margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: ListTile(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SplashContainer())),
                contentPadding: EdgeInsets.symmetric(horizontal: 14.0),
                leading: FadeIn(
                  duration: Duration(milliseconds: 3000),
                  child: CircleAvatar(
                    child: Text((index + 1).toString()),
                  ),
                ),
                title: FadeIn(
                  duration: Duration(milliseconds: 3000),
                  child: Text('Item ${index + 1}'),
                ),
                subtitle: FadeIn(
                  duration: Duration(milliseconds: 3000),
                  child: Text('select the tile for container'),
                ),
                trailing: FadeIn(
                  // Wrap the button container with FadeIn widget
                  duration:
                      Duration(milliseconds: 3000), // Set animation duration
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 36,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey[900],
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        'Button',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
