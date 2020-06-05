import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
//  const ReusableCard({
//    Key key,
//  }) : super(key: key);
// we don't need this constructor, because the key is used to
// track the state of widghets tha are moving in the screen
  ReusableCard({@required this.colour, this.cardChild, this.onPress});

  final Color colour; // final makes this property immutable
  final Widget cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: colour,
        ),
      ),
    );
  }
}

//      floatingActionButton: Theme(
//        data: ThemeData(accentColor: Colors.purple),
//        child: FloatingActionButton(
//          child: Icon(Icons.add),
//        ),
//      ),



//Function GestureDetector (Gender selectedGender) {
//  setState(() {
//    selectedGender = Gender.female;
//  });
//}

