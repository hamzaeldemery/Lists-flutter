import 'package:flutter/material.dart';

class Query extends StatefulWidget {
  final clubs; 
  const Query(this.clubs);

  @override
  QueryState createState() => QueryState(clubs);
}


class QueryState extends State<Query> {

  
  final myState = TextEditingController();
  final clubs; 

  @override
  void dispose() {
    myState.dispose();
    super.dispose();
  }

  QueryState(this.clubs);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:  <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 16),
          child: TextField(
            controller: myState,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter a number',
            ),
          ),
        ),
      ]
    );
  }
}