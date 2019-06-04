import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('List View'),
      ),

      body: TheListView().build(),
    );
  }
}

class TheListView{
  Card makeViewCard(String image, String name){
    return Card(
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 8.0, 0.0, 8.0),
                  child: Container(
                    height: 90.0,
                    width: 90.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(image),
                            fit: BoxFit.scaleDown),
                        border:
                        Border.all(color: Colors.blueAccent, width: 2.0),
                        borderRadius: BorderRadius.circular(10.0)),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 225.00,
                height: 90.0,
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(name,
                            style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.w600)),
                        Text('.25 mi')
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          '6500 N Florida Ave Tampa FL',
                          style: TextStyle(fontSize: 14.0),
                        ),
                      ],
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Icon(
                            Icons.star,
                            size: 10.0,
                            color: Colors.orange,
                          ),
                          Icon(
                            Icons.star,
                            size: 10.0,
                            color: Colors.orange,
                          ),
                          Icon(
                            Icons.star,
                            size: 10.0,
                            color: Colors.orange,
                          ),
                          Icon(
                            Icons.star,
                            size: 10.0,
                            color: Colors.orange,
                          ),
                          Icon(
                            Icons.star_border,
                            size: 10.0,
                            color: Colors.blueAccent,
                          ),
                        ],
                      ),
                    ),
                    RaisedButton(
                        color: Colors.blueAccent,
                        onPressed: () {},
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(
                              5.0, 0.0, 5.0, 0.0),
                          child: Text(
                            'Hire Me Now!',
                            style: TextStyle(color: Colors.white),
                          ),
                        ))
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Column(
                children: <Widget>[
                  InkWell(
                    onTap: () {
                    },
                    child: Icon(
                      Icons.chevron_right,
                      size: 30.0,
                      color: Colors.blueAccent,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  ListView build(){
    return ListView(
      children: <Widget>[
        makeViewCard('assets/logo.png', 'Rody'),
        makeViewCard('assets/logo.png', 'Joe'),
        makeViewCard('assets/logo.png', 'Mike'),
        makeViewCard('assets/logo.png', 'Javi'),
        makeViewCard('assets/logo.png', 'Rody'),
        makeViewCard('assets/logo.png', 'Joe'),
        makeViewCard('assets/logo.png', 'Mike'),
        makeViewCard('assets/logo.png', 'Javi'),
        makeViewCard('assets/logo.png', 'Rody'),
        makeViewCard('assets/logo.png', 'Joe'),
        makeViewCard('assets/logo.png', 'Mike'),
        makeViewCard('assets/logo.png', 'Javi'),

        
      ],
    );
  }

}
