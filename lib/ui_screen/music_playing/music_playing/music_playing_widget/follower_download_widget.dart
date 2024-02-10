import 'package:flutter/material.dart';

class TopSecondWidget extends StatelessWidget {
  const TopSecondWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 20),
                  alignment:Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Bad Boy", style: TextStyle(color: Colors.white,fontSize: 22),),
                      Text("Singer Name • 123456 Followers", style: TextStyle(color: Colors.white,fontSize: 12),),
                    ],
                  ),
                ),
              ),
             Container(
               margin: EdgeInsets.only(right: 20),
               child:Icon(Icons.download, color: Colors.white,),
             )
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Row(
              children: [
                Expanded(
                  flex:2,
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("03:00",style: TextStyle(color: Colors.white,fontSize: 10),),
                    )
                ),
                Expanded(
                  flex: 6,
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: LinearProgressIndicator(
                      value: 0.5,
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white60,
                       backgroundColor: Colors.white24,
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("00:50",style: TextStyle(color: Colors.white,fontSize: 10),),
                    )
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
