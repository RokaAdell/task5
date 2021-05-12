import 'package:flutter/material.dart';


void main() => runApp(Signup());

class MyApp extends StatefulWidget{
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
  
}

class _MyAppState extends State<MyApp> {
  String dropdownValue='kkk';
  String text1='Pizza';
   String text2='Meal';
    String text3='pizza';
  String m1='images/pizza.jpg';
  String m2='images/pizza2.jpg';
  String m3='images/pizza4.jpg';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
       home: Scaffold(
        appBar: AppBar(
        //leading:Icon(Icons.arrow_back_sharp),
        leading:
          IconButton(icon:Icon(Icons.arrow_back_sharp),
            onPressed: () {
                       
                          Navigator.pop(context);
                       
                     
                     },
          )
        ,
          title: Text("Restaurant menu",
          style: TextStyle(fontSize: 25)),
          centerTitle: true,
           backgroundColor: Colors.deepOrange,
        ),
        body: SingleChildScrollView(child: Column(children: [
          mycard(text1,m1),
          mycard(text2,m2),
          mycard(text3,m3),
          
        ],),),
      ),
      
    );
  }
  Widget mycard( text ,m){
    return Card(
            elevation:5,
             color: Colors.deepOrangeAccent,
            //margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 16.0),
             shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.circular(50.0),
            
             ),
            child:Container(
              width: 700,
              height: 230,
              
              child:Column(children: [
                Row(
                  //mainAxisAlignment:MainAxisAlignment.start,
                  children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                     // alignment: Alignment.center,
                     margin: EdgeInsets.only(left:30,top: 20,right: 20),
                     decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                     ),
                    child:Image.asset(m),
                       
                       
            
                 
                    ),
                  ),
                  
                     Expanded(
                       child: Container(
                       margin: EdgeInsets.only(bottom: 130, ),
                 
                        child: DropdownButton<String>(
            value: '1',
            style: TextStyle(color: Colors.lightGreen,fontSize: 35),
            onChanged: (value) {
              setState(() {
                
              });
            }, items: [],),
                    ),
                     ),
                  
                  
              
                 ],),
                 Row(
                   mainAxisAlignment:MainAxisAlignment.start,
                  
                   children: [
                     Container(
                       margin: EdgeInsets.only(left:20,top: 5),
                       child:  Text('$text',style: TextStyle(color: Colors.white),),)
                     
                   ]
                 )

              ],),
                

              
            )
          
          );
  }

     
      
  
 

}

class Signup extends StatefulWidget{
  // This widget is the root of your application.
  @override
  _SignupState createState() => _SignupState();
  
}

class _SignupState extends State<Signup> {
  Icon icon=Icon(Icons.visibility);
  @override
  Widget build(BuildContext context) {
     return MaterialApp(
    debugShowCheckedModeBanner: false,
        home: Scaffold(
         backgroundColor: Colors.amber[100],
       body: Column(
        
         children: [
          Expanded(
             flex: 3,
              child: Container(
               // alignment: Alignment.center,
              child: Text("Sign up",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color:Colors.black),),
              margin: EdgeInsets.only(left:20,top:200,right:20),
            ),
          ),
          SizedBox(
            
           height: 15.0,
          ),
          Expanded(
              child: Container(
              margin: EdgeInsets.all(5),
                child:TextField(
                      
                        //keyboardType: TextInputType.visiblePassword,
                      //  obscureText: true,
                        
                        decoration:InputDecoration(
                          prefixIcon:Icon(Icons.account_circle_rounded,),
                          hintText:"User Name",
                          border: new OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20.0)),
                         borderSide: new BorderSide(color: Colors.blueAccent)
                        ),
                          focusedBorder: OutlineInputBorder(
                           borderRadius: BorderRadius.all(Radius.circular(20.0)),
                           borderSide: BorderSide(color: Colors.pink),
                           ),
                          
                        ),
   ),
            ),
          ),
          //text(),
          Expanded(
              child: Container(
               margin: EdgeInsets.all(5),
                child:TextField(
                      
                        //keyboardType: TextInputType.visiblePassword,
                        //obscureText: true,
                        
                        decoration:InputDecoration(
                          prefixIcon:Icon(Icons.email,),
                          hintText:"Email",
                          border: new OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20.0)),
                         borderSide: new BorderSide(color: Colors.teal)
                        ),
                          focusedBorder: OutlineInputBorder(
                           borderRadius: BorderRadius.all(Radius.circular(20.0)),
                           borderSide: BorderSide(color: Colors.pink),
                           ),
                          
                        ),
   ),
            ),
          ),
          Expanded(
              child: Container(
               margin: EdgeInsets.all(5),
                child:TextField(
                      
                       // keyboardType: TextInputType.visiblePassword,
                        //obscureText: true,
                        
                        decoration:InputDecoration(
                           prefixIcon:Icon(Icons.lock),
                          hintText:"Password",
                          border: new OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20.0)),
                         borderSide: new BorderSide(color: Colors.teal)
                        ),
                          focusedBorder: OutlineInputBorder(
                           borderRadius: BorderRadius.all(Radius.circular(20.0)),
                           borderSide: BorderSide(color: Colors.pink),
                           ),
                         suffixIcon: 
                         IconButton(icon: icon,),
                           
                          
                         
                        ),
   ),
            
            
            ),
          ),
          Container(
                   margin: EdgeInsets.only(bottom:70),
                   child: RaisedButton(
                    
                     child: Text("CREATE ACCOUNT",style: TextStyle(color:Colors.white ,fontSize:15,
                     ), 
                     ),
                     onPressed: () {
                       
                         Navigator.pushNamed(context, "MyApp");
                       
                     
                     },
                     color: Colors.deepOrangeAccent,
                     splashColor: Colors.purple,
                     shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(50)
                     ),
                     ),
                   ),

                 ),
          
            
            
          


        ],),

      
       

      ),
     );


  }

}



