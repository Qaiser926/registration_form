import 'package:clay_containers/widgets/clay_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

void main(){
  runApp(register_form());
}
class register_form extends StatefulWidget {
  const register_form({Key? key}) : super(key: key);

  @override
  _register_formState createState() => _register_formState();
}

class _register_formState extends State<register_form> {
  Color baseColor = Color(0xFFF2F2F2);
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:
      Scaffold(
        // appBar: AppBar(
        //   title: Text('Registeration Form', style: TextStyle(fontSize: 25)),
        // ),
        backgroundColor: baseColor,
        body:  ListView(
          children: [
            SizedBox(height: 10),
            Container(
                margin: EdgeInsets.only(top: 10),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClayContainer(
                          borderRadius: 40,
                            child: CircleAvatar(backgroundColor:  baseColor,maxRadius: 40,child: Text('Profile Image',style: TextStyle(color: Colors.grey),textAlign: TextAlign.center,))),
                      ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ClayContainer(
                      // width: 150,
                        // width: MediaQuery.of(context).size.width,
                        borderRadius: 10,
                        color: baseColor,
                        child: SizedBox(
                            child: Column(children: [
                              TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10.0),
                                        borderSide: BorderSide(
                                          width: 0,
                                          style: BorderStyle.none,
                                        )),
                                    labelText: 'Name',
                                    prefixIcon: Icon(Icons.person,color: Colors.grey,),
                                    hintText: 'Enter First Name',
                                  ))
                            ]))),
                  ),
                 ])),
            ////////////////////////////////////////////////////////
             Container(
                 child: Column(
                     mainAxisAlignment: MainAxisAlignment.spaceAround,
                     crossAxisAlignment: CrossAxisAlignment.center,
                     children: [
                       Column(children: [
                     Padding(
                       padding: const EdgeInsets.all(10.0),
                       child: ClayContainer(
                           borderRadius: 10,
                           color: baseColor,
                           child: SizedBox(
                               child: Column(children: [
                                 TextField(
                                     decoration: InputDecoration(
                                         border: OutlineInputBorder(
                                             borderRadius: BorderRadius.circular(10.0),
                                             borderSide: BorderSide(
                                               width: 0,
                                             style: BorderStyle.none,
                                             )),
                                         labelText: 'Email',
                                         prefixIcon: Icon(Icons.email,color: Colors.grey,),
                                         hintText: 'Enter Email'))
                               ]))),
                     ),
                     SizedBox(width: 20),
                     Padding(
                       padding: const EdgeInsets.all(10.0),
                       child: ClayContainer(
                           borderRadius: 10,
                           color: baseColor,
                           child: SizedBox(
                               child: Column(children: [
                                 TextField(
                                     decoration: InputDecoration(
                                         border: OutlineInputBorder(
                                             borderRadius: BorderRadius.circular(10.0),
                                             borderSide: BorderSide(
                                                 width: 0, style: BorderStyle.none)),
                                         prefixIcon: Icon(Icons.phone,color: Colors.grey,),
                                         labelText: 'Phone',
                                         hintText: 'Enter Phone'))
                               ]))),
                     )
                   ])
                 ])),
            // ////////////////////////////////////////////
             Container(
                 child: Column(children: [
                   Column(children: [

                     Padding(
                       padding: const EdgeInsets.all(10.0),
                       child: ClayContainer(
                           borderRadius: 10,
                           color: baseColor,
                           child: SizedBox(
                               child: Column(children: [
                                 TextField(
                                     decoration: InputDecoration(
                                         border: OutlineInputBorder(
                                             borderRadius: BorderRadius.circular(10.0),
                                             borderSide: BorderSide(
                                                 width: 0, style: BorderStyle.none)),
                                         labelText: 'Address',
                                         prefixIcon: Icon(Icons.add_location,color: Colors.grey,),
                                         hintText: 'Enter Address'))
                               ]))),
                     )
                   ])
                 ])),
            // /////////////////////////////////////////////////////
            SizedBox(height: 20),

            // SizedBox(height: 20),
            Container(
                // margin: EdgeInsets.only(left: 140),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,

                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10,right: 20),
                        child: Text(
                          'Gender',
                          style: TextStyle(fontSize: 20,color: Colors.grey),
                        ),
                      ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: NeumorphicRadio(
                        padding: EdgeInsets.all(20),
                        child: Column(
                            children: [Icon(Icons.account_box,color: Colors.grey,), Text('  Male  ', style: TextStyle(color: Colors.grey))])),
                  ),
                  SizedBox(width: 20),
                  NeumorphicRadio(
                      padding: EdgeInsets.all(20),
                      child: Column(children: [
                        Icon(Icons.account_box_outlined,color: Colors.grey,),
                        Text('Female', style: TextStyle(color: Colors.grey))
                      ]))
                ])),
            SizedBox(height: 20),
            Card(
              elevation: 8,
              child: NeumorphicButton(
                style: NeumorphicStyle(

                  shape: NeumorphicShape.flat,
                  color: baseColor,
                  depth: 8,
                  lightSource: LightSource.bottom,
                  shadowLightColor: Colors.white,
                  shadowDarkColor: Colors.white
                ),
                child: Text('Submit',textAlign: TextAlign.center, style: TextStyle(fontSize: 17,color: Colors.grey,letterSpacing: 2,height: 1)),
                onPressed: () {},
              ),
            )
          ],
        ),

      ),
    );
  }
}