import 'package:flutter/material.dart';
import 'package:fluttervedio1/SecondClass.dart';
import 'package:fluttervedio1/thirdClass.dart';
class SizeConfig {
  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;
  static double blockSizeHorizontal;
  static double blockSizeVertical;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    blockSizeHorizontal = screenWidth / 100;
    blockSizeVertical = screenHeight / 100;
  }
}

class FirstClass extends StatefulWidget {
  @override
  _FirstClassState createState() => _FirstClassState();
}

class _FirstClassState extends State<FirstClass> {
  bool _hasBeenPressed1 = false;
  bool _hasBeenPressed2 = false;
  bool _hasBeenPressed3 = false;
  bool isPressed1 = false;
  bool isPressed1of1 = false;
  bool isPressed2 = false;
  bool isPressed2of2 = false;
  bool isPressed3 = false;
  bool isPressed3of3 = false;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
           Padding(
             padding: const EdgeInsets.only(left: 20, right: 15, top: 8,bottom: 8),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Row(
                   children: [
                     Image.asset('assets/plus.png', height: 30,),
                     Text('TISSOT',style: TextStyle(
                         fontWeight: FontWeight.bold,
                         fontSize: 20,
                         color: Colors.white
                     ),)

                   ],
                 ),

                IconButton(
                    onPressed: () =>  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ThirdClass()),
                    ),
                    icon: Icon((Icons.shopping_cart_outlined),color: Colors.white,)
                )
               ],
             ),
           ),
           Padding(
             padding: const EdgeInsets.only(left: 24, right: 24, top: 8,bottom: 8),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text('\t\tWatches',style: TextStyle(
                     fontWeight: FontWeight.bold,
                     fontSize: 20,
                     color: Colors.white
                 ),),
                 Row(
                   children: [
                     Icon((Icons.search_outlined),color: Colors.white,),
                     SizedBox(width: 10,),
                     Icon((Icons.assignment_rounded),color: Colors.white,)
                   ],
                 ),
               ],
             ),
           ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    child: Text('Popular',style: TextStyle(color: Colors.white),),
                    style: ElevatedButton.styleFrom(
                      //primary: Colors.grey, // background
                      primary: _hasBeenPressed1 ? Colors.red : Colors.grey.shade600,
                    ),
                    onPressed: () {
                      setState(() {
                       if(_hasBeenPressed1 ==_hasBeenPressed1){
                         _hasBeenPressed1 = true;
                         _hasBeenPressed2 = false;
                         _hasBeenPressed3 = false;
                       }
                      });
                    },
                  ),
                  ElevatedButton(
                    child: Text('   Men   ',style: TextStyle(color: Colors.white),),
                    style: ElevatedButton.styleFrom(
                      //primary: Colors.grey, // background
                      primary: _hasBeenPressed2 ? Colors.red : Colors.grey.shade600,
                    ),
                    onPressed: () {
                      setState(() {
                        if(_hasBeenPressed2 ==_hasBeenPressed2){
                          _hasBeenPressed2 = true;
                          _hasBeenPressed1 = false;
                          _hasBeenPressed3 = false;
                        }
                      });
                    },
                  ),
                  ElevatedButton(
                    child: Text(' Women ',style: TextStyle(color: Colors.white),),
                    style: ElevatedButton.styleFrom(
                      //primary: Colors.grey, // background
                      primary: _hasBeenPressed3 ? Colors.red : Colors.grey.shade600,
                    ),
                    onPressed: () {
                      setState(() {
                        if(_hasBeenPressed3 ==_hasBeenPressed3){
                          _hasBeenPressed3 = true;
                          _hasBeenPressed2 = false;
                          _hasBeenPressed1 = false;
                        }
                      });
                    },
                  ),

                ],
              ),
            ),
            ContainerWidget(
              Hearticon: IconButton(

                icon: Icon(
                  Icons.favorite,
                  color: isPressed1 ? Colors.red : Colors.grey.shade400,
                ),
                  onPressed: ()
                  {
                    setState(()
                    {
                     isPressed1 = ! isPressed1;
                    });
                  }
              ),
              ImageOfContainer1: Image.asset('assets/watch1.png'),
              Hearticon2: IconButton(

                  icon: Icon(
                    Icons.favorite,
                    color: isPressed1of1 ? Colors.red : Colors.grey.shade400,
                  ),
                  onPressed: ()
                  {
                    setState(()
                    {
                      isPressed1of1 = ! isPressed1of1;
                    });
                  }
              ),
              ImageofContainer2: Image.asset('assets/watch2.png'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('Strap Chronograph',
                    style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                  Text('Rolex Watches  ',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(' \$669.00',
                  style: TextStyle(color: Colors.red),),
                Text('\$999.00',style: TextStyle(color: Colors.red),),
              ],
            ),
            ContainerWidget(
              Hearticon: IconButton(

                  icon: Icon(
                   Icons.favorite,
                    color: isPressed2 ? Colors.red : Colors.grey.shade400,
                  ),
                  onPressed: ()
                  {
                    setState(()
                    {
                      isPressed2 = ! isPressed2;
                    });
                  }
              ),
              ImageOfContainer1: Image.asset('assets/watch3.png'),
              Hearticon2: IconButton(

                  icon: Icon(
                    Icons.favorite,
                    color: isPressed2of2 ? Colors.red : Colors.grey.shade400,
                  ),
                  onPressed: ()
                  {
                    setState(()
                    {
                      isPressed2of2 = ! isPressed2of2;
                    });
                  }
              ),
              ImageofContainer2: Image.asset('assets/watch1.png'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('Tissot Watches',
                    style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                  Text('Omega Watches',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(' \$669.00',
                  style: TextStyle(color: Colors.red),),
                Text('\$555.00',style: TextStyle(color: Colors.red),),
              ],
            ),
            ContainerWidget(
              Hearticon: IconButton(

                  icon: Icon(
                     Icons.favorite,
                    color: isPressed3 ? Colors.red : Colors.grey.shade400,
                  ),
                  onPressed: ()
                  {
                    setState(()
                    {
                      isPressed3 = ! isPressed3;
                    });
                  }
              ),
                ImageOfContainer1: Image.asset('assets/watch2.png'),
              Hearticon2: IconButton(

                  icon: Icon(
                    Icons.favorite,
                    color: isPressed3of3 ? Colors.red : Colors.grey.shade400,
                  ),
                  onPressed: ()
                  {
                    setState(()
                    {
                      isPressed3of3 = ! isPressed3of3;
                    });
                  }
              ),
                   ImageofContainer2: Image.asset('assets/watch3.png'),
              ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('Mechanic Automatic',
                    style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                  Text('Casio Watches',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(' \$925.00',
                  style: TextStyle(color: Colors.red),),
                Text('\$665.00',style: TextStyle(color: Colors.red),),
              ],
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}

class ContainerWidget extends StatelessWidget {
  final Image ImageOfContainer1;
  final Image ImageofContainer2;
  final IconButton Hearticon;
  final IconButton Hearticon2;

  const ContainerWidget({Key key, this.ImageOfContainer1, this.ImageofContainer2,this.Hearticon,this.Hearticon2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () =>  Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondClass()),
            ),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey.shade600,
                  borderRadius: BorderRadius.all(Radius.circular(12))
              ),

              height: SizeConfig.blockSizeVertical * 30,
              width: SizeConfig.blockSizeHorizontal * 40,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  ImageOfContainer1,
                  Align(
                    alignment: Alignment.topLeft,
                    child: Hearticon,
                  )
                ]
              ),
            ),
          ),
          GestureDetector(
            onTap: () =>  Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondClass()),
            ),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey.shade600,
                  borderRadius: BorderRadius.all(Radius.circular(12))
              ),

              height: SizeConfig.blockSizeVertical * 30,
              width: SizeConfig.blockSizeHorizontal * 40,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  ImageofContainer2,
                  Align(
                    alignment: Alignment.topLeft,
                    child: Hearticon2,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
