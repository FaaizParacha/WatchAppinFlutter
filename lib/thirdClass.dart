import 'package:flutter/material.dart';

import 'firstClass.dart';

class ThirdClass extends StatefulWidget {

  @override
  _ThirdClassState createState() => _ThirdClassState();
}

class _ThirdClassState extends State<ThirdClass> {
  int _n = 0;
  int _n1 = 0;
  int _n2 = 0;
  void add() {
    setState(() {
      _n++;
    });
  }
  void add1() {
    setState(() {
      _n1++;
    });
  }
  void add2() {
    setState(() {
      _n2++;
    });
  }
  void minus() {
    setState(() {
      if (_n != 0)
        _n--;
    });
  }
  void minus2() {
    setState(() {
      if (_n1 != 0)
        _n1--;
    });
  }
  void minus3() {
    setState(() {
      if (_n2 != 0)
        _n2--;
    });
  }
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(

                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: ()=> Navigator.pop(context),
                        icon: Icon(Icons.arrow_back_ios,color: Colors.white,),
                      ),
                      SizedBox(
                        width:SizeConfig.screenWidth*0.3 ,
                      ),
                      Text('Cart',style: TextStyle(color: Colors.white,fontSize: 18),)
                    ],
                  ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey.shade800,
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      height: SizeConfig.blockSizeVertical * 10,
                      width: SizeConfig.blockSizeHorizontal * 16,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset(
                            'assets/watch2.png',
                            height: 60,
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            text: 'Span Chronograph\n',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
                        TextSpan(
                            text: 'Mens Watch\n',
                            style: TextStyle(
                              color: Colors.grey,
                            )),
                        TextSpan(
                            text: '\$659.00\n',
                            style: TextStyle(
                              color: Colors.red,
                            ))
                      ])),
                    ),
                    SizedBox(
                      width:SizeConfig.screenWidth*0.2 ,
                    ),
                    Container(
                      height: SizeConfig.blockSizeVertical * 10,
                      width: SizeConfig.blockSizeHorizontal * 6,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      child: Icon(Icons.remove,color: Colors.white,),
                      onTap: minus,
                    ),
                    Text('$_n',style: TextStyle(color: Colors.white),),
                    GestureDetector(child: Icon(Icons.add,color: Colors.white,),
                      onTap: add,
                    ),

                  ],
                ),
            )
          ],
        ),
              ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Divider(color: Colors.grey,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.grey.shade800,
                              borderRadius: BorderRadius.all(Radius.circular(12))
                          ),
                          height: SizeConfig.blockSizeVertical * 10,
                          width: SizeConfig.blockSizeHorizontal * 16,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Image.asset('assets/watch2.png',height: 60,)
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: RichText(
                              text: TextSpan(
                                  children: [
                                    TextSpan(text: 'Span Chronograph\n',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold
                                        )),
                                    TextSpan(text: 'Mens Watch\n',
                                        style: TextStyle(
                                          color: Colors.grey,
                                        )),
                                    TextSpan(text: '\$659.00\n',
                                        style: TextStyle(
                                          color: Colors.red,
                                        ))
                                  ]
                              )
                          ),
                        ),
                        SizedBox(
                          width:SizeConfig.screenWidth*0.2 ,
                        ),
                        Container(
                          height: SizeConfig.blockSizeVertical * 10,
                          width: SizeConfig.blockSizeHorizontal * 6,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.all(Radius.circular(8))
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                child: Icon(Icons.remove,color: Colors.white,),
                                onTap: minus2,
                              ),
                              Text('$_n1',style: TextStyle(color: Colors.white),),
                              GestureDetector(child: Icon(Icons.add,color: Colors.white,),
                                onTap: add1,
                              ),

                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Divider(color: Colors.grey,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.grey.shade800,
                              borderRadius: BorderRadius.all(Radius.circular(12))
                          ),
                          height: SizeConfig.blockSizeVertical * 10,
                          width: SizeConfig.blockSizeHorizontal * 16,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Image.asset('assets/watch2.png',height: 60,)
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: RichText(
                              text: TextSpan(
                                  children: [
                                    TextSpan(text: 'Span Chronograph\n',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold
                                        )),
                                    TextSpan(text: 'Mens Watch\n',
                                        style: TextStyle(
                                          color: Colors.grey,
                                        )),
                                    TextSpan(text: '\$659.00\n',
                                        style: TextStyle(
                                          color: Colors.red,
                                        ))
                                  ]
                              )
                          ),
                        ),SizedBox(
                          width:SizeConfig.screenWidth*0.2 ,
                        ),
                        Container(
                          height: SizeConfig.blockSizeVertical * 10,
                          width: SizeConfig.blockSizeHorizontal * 6,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.all(Radius.circular(8))
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                child: Icon(Icons.remove,color: Colors.white,),
                                onTap: minus3,
                              ),
                              Text('$_n2',style: TextStyle(color: Colors.white),),
                              GestureDetector(child: Icon(Icons.add,color: Colors.white,),
                                onTap: add2,
                              ),

                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Divider(color: Colors.grey,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Sub Total',style: TextStyle(
                      color: Colors.grey
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Discount',style: TextStyle(
                        color: Colors.red
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Divider(color: Colors.grey,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Total',style: TextStyle(
                        color: Colors.white,fontWeight: FontWeight.bold
                    ),),
                  ),
                  SizedBox(
                    height:SizeConfig.screenHeight*0.1 ,
                  ),
                  GestureDetector(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.all(Radius.circular(12))
                      ),
                      height: SizeConfig.blockSizeVertical * 8,
                      width: SizeConfig.blockSizeHorizontal * 95,
                      child: Center(
                        child: Text('Checkout',style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),),
                      ),
                    ),
                    onTap : () {},
                  ),
                ],
              ),
            ),
          ),
        )
    );
  }
}

