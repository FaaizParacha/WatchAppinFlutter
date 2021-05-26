import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'firstClass.dart';

class SecondClass extends StatefulWidget {
  @override
  _SecondClassState createState() => _SecondClassState();
}

class _SecondClassState extends State<SecondClass> {
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: ()=> Navigator.pop(context),
                  icon: Icon(Icons.arrow_back_ios,color: Colors.white,),
                ),IconButton(
                  icon: Icon(Icons.shopping_cart_outlined,color: Colors.white,),
                ),
              ],
            ),
              Image.asset('assets/watch4.png'),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(width: 12),
                    RowContainer(containerImage: Image.asset('assets/watch1.png'),),
                    SizedBox(width: 12),
                    RowContainer(containerImage: Image.asset('assets/watch2.png'),),
                    SizedBox(width: 12),
                    RowContainer(containerImage: Image.asset('assets/watch1.png'),),
                    SizedBox(width: 12),
                    RowContainer(containerImage: Image.asset('assets/watch1.png'),),
                    SizedBox(width: 12),
                    RowContainer(containerImage: Image.asset('assets/watch1.png'),),
                    SizedBox(width: 12),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text('Mechanique Automatic',style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w800
                ),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Text('\$659.00',style: TextStyle(
                    color: Colors.red,
                ),),
              ),
              SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.all(Radius.circular(12))
                      ),
                      height: SizeConfig.blockSizeVertical * 8,
                      width: SizeConfig.blockSizeHorizontal * 75,
                      child: Center(
                        child: Text('Add to Cart',style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),),
                      ),
                    ),
                    onTap : () {
                      final snackBar = SnackBar(
                        duration: Duration(seconds: 1),
                        content: Text('Item added to cart'),
                        action: SnackBarAction(
                          label: 'Undo',
                          textColor: Colors.red,
                          onPressed: () {},
                        ),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    },
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.red,
                          width: 2,
                        ),
                        color: Colors.black,
                        borderRadius: BorderRadius.all(Radius.circular(12))
                    ),
                    height: SizeConfig.blockSizeVertical * 8,
                    width: SizeConfig.blockSizeHorizontal * 15,
                    child: IconButton(
                        icon: Icon(
                          Icons.favorite,
                          size: 28,
                          color: isPressed ? Colors.red : Colors.grey.shade700,
                        ),
                        onPressed: ()
                        {
                          final snackBar = SnackBar(
                            duration: Duration(seconds: 1),
                            content: Text('Item added to favourite'),
                            action: SnackBarAction(
                              label: 'Undo',
                              textColor: Colors.red,
                              onPressed: () {
                                setState(()
                                {
                                  //isPressed = ! isPressed;
                                });
                              },
                            ),
                          );
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                          setState(()
                          {
                            isPressed = ! isPressed;
                          });
                        }
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
class RowContainer extends StatelessWidget {
  final Image containerImage;

  const RowContainer({Key key, this.containerImage}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
          color: Colors.grey.shade800,
          borderRadius: BorderRadius.all(Radius.circular(12))
      ),
      height: SizeConfig.blockSizeVertical * 12,
      width: SizeConfig.blockSizeHorizontal * 18,
      child: Stack(
        alignment: Alignment.center,
        children: [
          containerImage
        ],
      ),
    );
  }
}
