import 'package:flutter/material.dart';
import 'package:flutter_opdracht_7/vehicle_model.dart';

/// documentation
/// This page shows details about the chosen vehicle from the list.
/// it shows: ['merk'],['type'],['kenteken'],['bouwjaar'],['kleur'],['datum/eerste/toelating'],['catalogus/prijs'],
///['bruto/Bpm'],['vermogen'],['aantal/deuren'],['aantal/wielen'],['aantal/zitplaatsen'],['Verval/Datum/apk'],['kenteken/reeks']
///

class DetailPage extends StatefulWidget {
  //Chosen car gets instantiated
  Rdw _car;

  DetailPage(this._car, {Key? key}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  var isLoaded = false;

  //Page with different information about the car
  @override
  Widget build(BuildContext context) {
    var bouwjaar = widget._car.datumEersteTenaamstellingInNederland.toString();
    var eersteToelating = widget._car.datumEersteToelating.toString();
    var vervalDatumApk = widget._car.vervaldatumApk.toString();
    return Scaffold(
      appBar: AppBar(
        title: Text(widget._car.merk.toString()),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                margin: const EdgeInsets.all(10.0),
                child: DataTable(
                  columns: [
                    DataColumn(
                        label: Text('Informatie Auto',
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold))),
                    DataColumn(label: Text('')),
                  ],
                  rows: [
                    DataRow(cells: [
                      DataCell(Text('Merk:',
                          style: TextStyle(fontWeight: FontWeight.w500))),
                      DataCell(Text(widget._car.merk.toString())),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Type:',
                          style: TextStyle(fontWeight: FontWeight.w500))),
                      DataCell(Text(widget._car.type.toString())),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Kentenken:',
                          style: TextStyle(fontWeight: FontWeight.w500))),
                      DataCell(Text(widget._car.kenteken.toString())),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Bouwjaar:',
                          style: TextStyle(fontWeight: FontWeight.w500))),
                      DataCell(Row(
                        children: [
                          Text(bouwjaar.substring(0,4)),
                        ],
                      )),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Kleur:',
                          style: TextStyle(fontWeight: FontWeight.w500))),
                      DataCell(Text(widget._car.eersteKleur.toString())),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Datum eerste toelating:',
                          style: TextStyle(fontWeight: FontWeight.w500))),
                      DataCell(Row(
                        children: [
                          Text(eersteToelating.substring(0,4)),
                          Text('-'),
                          Text(eersteToelating.substring(4,6)),
                          Text('-'),
                          Text(eersteToelating.substring(6,8)),
                        ],
                      )),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Catalogus prijs:',
                          style: TextStyle(fontWeight: FontWeight.w500))),
                      DataCell(Row(
                        children: [
                          Text('€ '),
                          Text(widget._car.catalogusprijs.toString()),
                        ],
                      )),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('brutoBpm:',
                          style: TextStyle(fontWeight: FontWeight.w500))),
                      DataCell(Row(
                        children: [
                          Text('€ '),
                          Text(widget._car.brutoBpm.toString()),
                        ],
                      )),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Vermogen:',
                          style: TextStyle(fontWeight: FontWeight.w500))),
                      DataCell(Text(widget._car.vermogenMassarijklaar.toString())),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Aantal deuren:',
                          style: TextStyle(fontWeight: FontWeight.w500))),
                      DataCell(Text(widget._car.aantalDeuren.toString())),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Aantal wielen:',
                          style: TextStyle(fontWeight: FontWeight.w500))),
                      DataCell(Text(widget._car.aantalWielen.toString())),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Aantal zitplaatsen:',
                          style: TextStyle(fontWeight: FontWeight.w500))),
                      DataCell(Text(widget._car.aantalZitplaatsen.toString())),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Verval Datum apk:',
                          style: TextStyle(fontWeight: FontWeight.w500))),
                      DataCell(Row(
                        children: [
                          Text(vervalDatumApk.substring(0,4)),
                          Text('-'),
                          Text(vervalDatumApk.substring(4,6)),
                          Text('-'),
                          Text(vervalDatumApk.substring(6,8)),
                        ],
                      )),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Kenteken reeks:',
                          style: TextStyle(fontWeight: FontWeight.w500))),
                      DataCell(Row(
                        children: [
                          //  (myInput,
                          // {
                          //   1: Text("Its one"),
                          //   2: Text("Its two"),
                          // }, Text("Default"));
                        ],
                      )),
                    ]),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


