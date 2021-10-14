import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessengerScreen extends StatelessWidget {
  const MessengerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20.0,
              backgroundImage: NetworkImage(
                  'https://cdn.britannica.com/84/73184-004-E5A450B5/Sunflower-field-Fargo-North-Dakota.jpg'),
            ),
            SizedBox(
              width: 15.0,
            ),
            Text(
              'Chat',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ],
        ),
        actions: [
          CircleAvatar(
              radius: 18.0,
              backgroundColor: Colors.black,
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.camera_alt,
                    color: Colors.white,
                  ))),
          SizedBox(
            width: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: CircleAvatar(
                radius: 18.0,
                backgroundColor: Colors.black,
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.edit,
                      color: Colors.white,
                    ))),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.teal.withOpacity(0.5),
              ),
              child: Row(
                children: [
                  Icon(Icons.search),
                  SizedBox(width: 10.0,),
                  Text('Search'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      width: 80.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: [
                              CircleAvatar(
                                radius: 24.0,
                                backgroundImage: NetworkImage(
                                    'https://cdn.britannica.com/84/73184-004-E5A450B5/Sunflower-field-Fargo-North-Dakota.jpg'),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 5.0),
                                child: CircleAvatar(
                                  radius: 6.0,
                                  backgroundColor: Colors.black,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 5.5),
                                child: CircleAvatar(
                                  radius: 5.0,
                                  backgroundColor: Colors.green,
                                ),
                              ),


                            ],
                          ),
                          Text('shenouda Karam',
                          //textAlign: TextAlign.start,
                          maxLines: 2,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 80.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: [
                              CircleAvatar(
                                radius: 24.0,
                                backgroundImage: NetworkImage(
                                    'https://cdn.britannica.com/84/73184-004-E5A450B5/Sunflower-field-Fargo-North-Dakota.jpg'),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 5.0),
                                child: CircleAvatar(
                                  radius: 6.0,
                                  backgroundColor: Colors.black,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 5.5),
                                child: CircleAvatar(
                                  radius: 5.0,
                                  backgroundColor: Colors.green,
                                ),
                              ),


                            ],
                          ),
                          Text('shenouda Karam',
                            //textAlign: TextAlign.start,
                            maxLines: 2,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 80.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: [
                              CircleAvatar(
                                radius: 24.0,
                                backgroundImage: NetworkImage(
                                    'https://cdn.britannica.com/84/73184-004-E5A450B5/Sunflower-field-Fargo-North-Dakota.jpg'),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 5.0),
                                child: CircleAvatar(
                                  radius: 6.0,
                                  backgroundColor: Colors.black,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 5.5),
                                child: CircleAvatar(
                                  radius: 5.0,
                                  backgroundColor: Colors.green,
                                ),
                              ),


                            ],
                          ),
                          Text('shenouda Karam',
                            //textAlign: TextAlign.start,
                            maxLines: 2,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 80.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: [
                              CircleAvatar(
                                radius: 24.0,
                                backgroundImage: NetworkImage(
                                    'https://cdn.britannica.com/84/73184-004-E5A450B5/Sunflower-field-Fargo-North-Dakota.jpg'),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 5.0),
                                child: CircleAvatar(
                                  radius: 6.0,
                                  backgroundColor: Colors.black,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 5.5),
                                child: CircleAvatar(
                                  radius: 5.0,
                                  backgroundColor: Colors.green,
                                ),
                              ),


                            ],
                          ),
                          Text('shenouda Karam',
                            //textAlign: TextAlign.start,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 80.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: [
                              CircleAvatar(
                                radius: 24.0,
                                backgroundImage: NetworkImage(
                                    'https://cdn.britannica.com/84/73184-004-E5A450B5/Sunflower-field-Fargo-North-Dakota.jpg'),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 5.0),
                                child: CircleAvatar(
                                  radius: 6.0,
                                  backgroundColor: Colors.black,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 5.5),
                                child: CircleAvatar(
                                  radius: 5.0,
                                  backgroundColor: Colors.green,
                                ),
                              ),


                            ],
                          ),
                          Text('shenouda Karam',
                            //textAlign: TextAlign.start,
                            maxLines: 2,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 80.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: [
                              CircleAvatar(
                                radius: 24.0,
                                backgroundImage: NetworkImage(
                                    'https://cdn.britannica.com/84/73184-004-E5A450B5/Sunflower-field-Fargo-North-Dakota.jpg'),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 5.0),
                                child: CircleAvatar(
                                  radius: 6.0,
                                  backgroundColor: Colors.black,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 5.5),
                                child: CircleAvatar(
                                  radius: 5.0,
                                  backgroundColor: Colors.green,
                                ),
                              ),


                            ],
                          ),
                          Text('shenouda Karam',
                            //textAlign: TextAlign.start,
                            maxLines: 2,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 80.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: [
                              CircleAvatar(
                                radius: 24.0,
                                backgroundImage: NetworkImage(
                                    'https://cdn.britannica.com/84/73184-004-E5A450B5/Sunflower-field-Fargo-North-Dakota.jpg'),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 5.0),
                                child: CircleAvatar(
                                  radius: 6.0,
                                  backgroundColor: Colors.black,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 5.5),
                                child: CircleAvatar(
                                  radius: 5.0,
                                  backgroundColor: Colors.green,
                                ),
                              ),


                            ],
                          ),
                          Text('shenouda Karam shehata',
                            //textAlign: TextAlign.start,
                            maxLines: 2,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                CircleAvatar(
                  radius: 20.0,
                  backgroundImage: NetworkImage(
                      'https://cdn.britannica.com/84/73184-004-E5A450B5/Sunflower-field-Fargo-North-Dakota.jpg'),
                ),
                SizedBox(width: 10.0,),
                Container(
                  width:90.0,
                  child: Column(
                    children: [
                      Text('Shenouda Karam',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis
                        ,style: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.bold,
                      ),),
                      Row(
                        children: [
                          Text(
                            'How Are You?',
                            maxLines: 2,
                              overflow:TextOverflow.ellipsis
  ,
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
