import 'package:flutter/material.dart';
import 'package:merceria_fat/routes/app_routes.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  State<DrawerWidget> createState() => _DraerWidgetState();
}

class _DraerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              const DrawerHeader(
                margin: EdgeInsets.zero,
                decoration: BoxDecoration(
                  color: Color(0xFF3BAEBF)
                ),
                child:null,
              ),
              SizedBox(
                height: 500.0,
                child: ListView(
                  children :[
                    ListTile(
                      title: Text(AppRoutes.menuOptions[0].label),
                      leading: Icon(AppRoutes.menuOptions[0].icon),
                      onTap: () {
                      Navigator.pushNamed(context, AppRoutes.menuOptions[0].route);
                      }),
                    Divider(
                      ),
                    ListTile(
                    title: Text(AppRoutes.menuOptions[1].label),
                    leading: Icon(AppRoutes.menuOptions[1].icon),
                    onTap: () {
                      Navigator.pushNamed(context, AppRoutes.menuOptions[1].route);}),
                
                    

                    
                    
                    
                  
                    
                ]
              ),
              )
            ],
          ),
        );
  }
}