import 'package:flutter/material.dart';

class Query extends StatefulWidget {
  final clubs; 
  Query(this.clubs);

  @override
  QueryState createState() => QueryState(clubs);
}


class QueryState extends State<Query> {

  
  final myState = TextEditingController();
  final clubs; 
  bool isAnswer = false;
  String answer = "";
  
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
        Column(
          children:[
            if(!isAnswer)
            ...[
              Text(
              'Choose a number?',
              style: Theme.of(context).textTheme.headline4,
            ),
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
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 25),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.red),
                    onPressed: () => { 
                      
                      if((int.parse(myState.text)) > clubs.length || (int.parse(myState.text)) <  0 ){
                        setState((){
                          isAnswer = true;
                          answer = "There is only ${clubs.length} clubs";
                        }),
                      }
                      else{
                        setState((){
                          isAnswer = true;
                          answer = clubs[(int.parse(myState.text))-1];
                        }),
                      }
                    },
                    child: Text("Enter"),
                  ),
              ),
            ]else 
            ...[
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 25),
                  child: Text(answer)
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.red),
                onPressed: () => { 
                      setState((){
                          isAnswer = false;
                      }),
                },
                child: Text("Return"),
              ),
            ]
          ],
        )
      ],
          
        
    );
  }
}