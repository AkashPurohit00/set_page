import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings",style:TextStyle(fontSize:40,fontWeight:FontWeight.bold),),
        leading: IconButton(
          onPressed: (){},
          icon: Icon(Icons.settings,color: Colors.deepPurple,),
        ),
      ),
      body:Container(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            SizedBox(height:40 ,),
            Row(
              children: [
                Icon(Icons.person,
                color: Colors.deepPurple,
                ),
                SizedBox(width: 10,),
                Text("Your Id",style: TextStyle(fontSize:22,fontWeight: FontWeight.bold),)

              ],
            ),
            Divider(height: 20,thickness:1 ,),
            SizedBox(height: 10,),
            buildAccountOption(context,"Change Password",),
            SizedBox(height: 8,),
            buildAccountOption(context,"Delete Account"),
            SizedBox(height: 8,),
            buildAccountOption(context,"Log Out"),
            SizedBox(height: 8,),
            buildAccountOption(context,"Language"),
            SizedBox(height: 8,),
            buildAccountOption(context,"Help"),
            SizedBox(height: 8,),
            buildAccountOption(context,"Others"),






          ],
        ),
      ) ,



    );
  }


    Widget buildAccountOption(BuildContext context,String title){
    return ElevatedButton(
      onPressed: (){},
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical:8, horizontal: 20 ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [
            Text(title,style:TextStyle(fontSize: 20,
            fontWeight: FontWeight.w500,
            color:Colors.deepPurple ) ,),
            Icon(Icons.arrow_forward_ios,color: Colors.grey,),
          ],
        ),

      ),


    );
  }

}
