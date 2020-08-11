import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cardcategory extends StatelessWidget {
  
  final String title;
  final String text;
  final Function press;
  const Cardcategory({
   
    Key key, this.title, this.text, this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return ClipRRect(
      borderRadius: BorderRadius.circular(13),
          child: Container(
            
        margin: EdgeInsets.all(5),
        //padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color:Colors.white,
          borderRadius:BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 17),
              blurRadius: 17,
              spreadRadius: -23,
              color: Colors.grey

            ),
          ],
      ),
        child: Material(
          color: Colors.transparent,
                child: InkWell(
            onTap: press,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
            children:[
              Spacer(),
              Text(title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),),
              Text(text,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w700,
              ),),
            ],
      ),
                  ),
          ),
        ),

      ),
    );
  }
}