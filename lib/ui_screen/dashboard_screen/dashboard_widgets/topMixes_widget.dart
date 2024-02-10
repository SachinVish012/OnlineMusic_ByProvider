import 'package:flutter/material.dart';

class TopMixesWidget extends StatelessWidget {
  const TopMixesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    return Container(
      //padding: EdgeInsets.all(16.0),
      margin: EdgeInsets.only(top: height/80),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // First Widget
          Container(
            padding: EdgeInsets.only(left: 16.0,right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Top Mixes',
                  style: TextStyle(fontSize: 20.0,color: Colors.white,fontWeight: FontWeight.bold),
                ),
                TextButton(
                  onPressed: () {

                  },
                  child: Text('See All',style: TextStyle(color: Colors.redAccent,fontWeight: FontWeight.bold),),
                ),
              ],
            ),
          ),
          //SizedBox(height: 5.0), // Adding some space between widgets

          // Second Widget
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CircleAvatarWidget(name: 'No Love',clr:Color(0xffff7777)),
                CircleAvatarWidget(name: 'If You',clr:Color(0xfffffa77)),
                CircleAvatarWidget(name: 'Elevated',clr:Color(0xff77ff95)),
                CircleAvatarWidget(name: 'Elevated',clr:Color(0xffff7777)),
                CircleAvatarWidget(name: 'If You',clr:Color(0xfffffa77)),
                CircleAvatarWidget(name: 'No Love',clr:Color(0xff77ff95)),
                CircleAvatarWidget(name: 'Elevated',clr:Color(0xffff7777)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


class CircleAvatarWidget extends StatelessWidget {
  final String name;
  Color clr;

  CircleAvatarWidget({required this.name,required this.clr});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                width: 100.0,
                height: 100.0,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10.0),
                    color: clr
                ),
              ),
              Container(
                width: 100.0, // Set the desired width
                height: 97.0,
                padding: EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.redAccent,// Set border radius if needed
                  image: DecorationImage(
                    image: AssetImage('assets/mix_image1.png'),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(left: 2,top: 4),
                  child: Text(name,style: TextStyle(color: Colors.white,fontSize: 12),)
              ),
            ],
          )
          /* SizedBox(height: 8.0),
          Text(name,style: TextStyle(color: Colors.white,fontSize: 12),),
          SizedBox(height: 2.0),
          Text("Singer",style: TextStyle(color: Colors.white,fontSize: 10),),*/
        ],
      ),
    );
  }
}
