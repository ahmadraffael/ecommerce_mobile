import 'package:ecommerce_mobile/features/cart/screens/cart_screen.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFA451),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              decoration: BoxDecoration(color: Color(0xffFFA451)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 40.0, left: 20),
                        child: Container(
                          padding: EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Color(0xffffffff),
                          ),
                          child: InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            
                            child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(Icons.arrow_back, size: 20,),
                                  Text('Go back')
                                ]
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 25),
                  Image.asset(
                    'assets/images/food_01.png',
                    width: 176,
                    height: 176,
                  ),
                ],
              ),
            ),

            Container(
              height: MediaQuery.of(context).size.height * 0.6,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text('Quinoa Fruit Salad', style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 24
                    ),),
                    SizedBox(height: 24,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.white,
                                border: Border.all(
                                  color: Color(0xff111111)
                                )
                              ),
                              child: Icon(Icons.remove),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 24),
                              child: Text('1'),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Color(0xffFFF2E7),
                              ),
                              child: Icon(Icons.add, color: Color(0xffFFA451),),
                            )
                          ],
                        ),
                        Text('Rp20.000', style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18
                        ),)
                      ],
                    ),
                    SizedBox(height: 16,),
                    Divider(color: Colors.grey.withOpacity(0.2), thickness: 1.5,),
                    SizedBox(height: 16,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: Color(0xffFFA451),
                                width: 2,
                              ),
                            ),
                          ),
                          padding: EdgeInsets.only(bottom: 4),
                          child: Text(
                            'One Pack Contains:',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        SizedBox(height: 12,),
                        Text('Red Quinoa, Lime, Honey, Blueberries, Strawberries, Mango, Fresh mint.', style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400
                        ),)
                      ],
                    ),
                    SizedBox(height: 16,),
                    Divider(color: Colors.grey.withOpacity(0.2), thickness: 1.5,),
                    SizedBox(height: 16,),
                    Text('If you are looking for a new fruit salad to eat today, quinoa is the perfect brunch for you. make', style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400
                    ),),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 25),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 8,
              offset: Offset(0, -2),
            )
          ],
        ),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xffFFF2E7),
              ),
              child: Icon(Icons.favorite_border, color: Color(0xffFFA451)),
            ),
            SizedBox(width: 16),
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => CartScreen()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xffFFA451),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 16),
                ),
                child: Text(
                  'Add to basket',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
