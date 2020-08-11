import 'package:New/widgets/category_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Searchscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.grey,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: IconButton(icon: 
        Icon(Icons.home,size: 35,), onPressed: (){}),
      
      
        centerTitle: true,
        backgroundColor: Colors.black,
        title:Text('DOCTORS',
        style: TextStyle(
          
          fontSize:25,
          fontWeight:FontWeight.w600,
        ),) ,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.add,size: 35,), 
          onPressed: (){}
          ),

        ],
      

      ),

      body: Stack(
      
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.symmetric(horizontal:30,vertical:5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextField(
                    decoration:InputDecoration(
                    hintText:"Search Doctors",
                    icon:Icon(Icons.search),
                    border: InputBorder.none
                  ),
                    
                  ),
                  
                ),
            
            Expanded(
                child: Container(
                height: MediaQuery.of(context).size.height*0.765,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: <Widget>[Container(
                      width: MediaQuery.of(context).size.width*0.25,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(backgroundColor: Colors.lightGreen,
                          maxRadius: 35,
                          child: CircleAvatar(
                            backgroundColor: Colors.blue,
                            maxRadius: 30)
                            ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(backgroundColor: Colors.amber,maxRadius: 30),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(backgroundColor: Colors.lime,maxRadius: 30),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(backgroundColor: Colors.orange,maxRadius: 30),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(backgroundColor: Colors.indigo,maxRadius: 30),
                        ),
                      ],),
                      ),
                    Doctors()
                    ],
                    ),
                    ),
            ),
            
            
            
            
            
            ],
          ),
        ],

      
        
          
      ),
    
      
    );
  }
}

class Doctors extends StatelessWidget {
  const Doctors({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
     child: GridView.count(
        crossAxisCount:2,
        childAspectRatio: 0.85,
        children:[
           Cardcategory(
            title: "Ramesh Tamang",
            text:"Department:Skin",
            press:(){},

          ),
          
          Cardcategory(
             title: "Radha kunwar",
             text:"Department:Maternity",
            press:(){},

          ),
          Cardcategory(
             title: "Bimal Thapa",
             text:"Department:Bones",
            press:(){},

          ),
          Cardcategory(
             title: "Nirmal Singh",
             text:"Department:Pyshio",
             press:(){},
          ),
          Cardcategory(
             title: "Bimala Shrestha",
             text:"Department:ENT",
             press:(){},
          ),
          Cardcategory(
             title: "Anjan Kc",
             text:"Department:Skin",
             press:(){},
          ),

       ],
        
        ),
    );
  }
}

