import 'package:flutter/material.dart';
import 'package:flutter_opdracht_7/Api_service.dart';
import 'package:flutter_opdracht_7/search.dart';
import 'package:flutter_opdracht_7/vehicle_model.dart';

import 'Detail_Page.dart';

///Documentation
///This home screen show a the list of vehicles from the api string.
///There is no query on this list.
///if tapped on one of the list tiles it will navigate to the detail page.
///The field that are displayed in the list tile are: ['merk'],['kenteken']
///

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  FetchVehicleList _vehicleList = FetchVehicleList();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Rdw Data'),
          actions: [
            IconButton(
              onPressed: () {
                showSearch(context: context, delegate: SearchUser());
              },
              icon: Icon(Icons.search_sharp),
            )
          ],
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          child: FutureBuilder<List<Rdw>>(
              future: _vehicleList.getuserList(),
              builder: (context, snapshot) {
                var data = snapshot.data;
                return ListView.builder(
                    itemCount: data?.length,
                    itemBuilder: (context, index) {
                      if (!snapshot.hasData) {
                        return Center(child: CircularProgressIndicator());
                      }
                      return Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListTile(
                            onTap: () {
                              Rdw car = data![index];
                              Navigator.push(context,
                                MaterialPageRoute(
                                    builder: (context) => DetailPage(car)),
                              );
                            },
                            title: Row(
                              children: [
                                Container(
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    color: Colors.deepPurpleAccent,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Center(
                                    child: Text(
                                      '',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 20),
                                Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '${data?[index].merk}',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        '${data?[index].kenteken}',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ])
                              ],
                            ),
                            // trailing: Text('More Info'),
                          ),
                        ),
                      );
                    });
              }),
        ),
      ),
    );
  }
}
