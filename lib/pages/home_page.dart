import 'package:flutter/material.dart';
import 'package:sweet_sheet/widgets/bottom_sheet.dart';
import 'package:sweet_sheet/widgets/large_button.dart';

class HomePage extends StatefulWidget {
  final String title;

  HomePage({this.title});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final MyBottomSheet _myBottomSheet = MyBottomSheet();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            LargeButton(
              context: context,
              text: 'Simple sheet',
              onClick: () {
                _myBottomSheet.showSweetBottomSheet(
                    context: context,
                    title: "Lorem Ipsum",
                    description:
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. no you condimentum finibus ut ut lorem. Ut pellentesque mauris ut arcu rutrum, at tincidunt arcu tincidunt ',
                    type: BottomSheetType.SUCCESS,
                    actions: [
                      FlatButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text('CANCEL'),
                      ),
                      FlatButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text('CONTINUER'),
                      ),
                    ]);
              },
            ),
            LargeButton(
              context: context,
              text: 'Alerte avec icone',
              onClick: () {
                _myBottomSheet.showSweetBottomSheet(
                    context: context,
                    title: "Supprimer ce post?",
                    description:
                        "Cette action supprimera definitivement ce post",
                    type: BottomSheetType.DANGER,
                    haveIcon: true,
                    icon: Icons.delete,
                    actions: [
                      FlatButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text('CANCEL'),
                      ),
                      FlatButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text('SUPPRIMER'),
                      ),
                    ]);
              },
            ),

            LargeButton(
              context: context,
              text: 'Warning avec icone',
              onClick: () {
                _myBottomSheet.showSweetBottomSheet(
                    context: context,
                    title: "Attention",
                    description:
                    'Your app is not connected to internet actually, please turn on Wifi/Celullar data.',
                    type: BottomSheetType.WARNING,
                    haveIcon: true,
                    icon: Icons.portable_wifi_off,
                    actions: [
                      FlatButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text('CANCEL'),
                      ),
                      FlatButton.icon(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        label: Text('OPEN SETTING'),
                        icon: Icon(Icons.open_in_new),
                      ),
                    ]);
              },
            ),


            LargeButton(
              context: context,
              text: "Nice sheet",
              onClick: () {
                _myBottomSheet.showSweetBottomSheet(
                    context: context,
                    title: "Connect your watch",
                    description:
                    'To import your health data, you have to connect your smartwatch fist.',
                    type: BottomSheetType.NICE,
                    haveIcon: true,
                    icon: Icons.watch,
                    actions: [
                      FlatButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text('CANCEL'),
                      ),
                      FlatButton.icon(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        label: Text('CONNECT'),
                        icon: Icon(Icons.open_in_new),
                      ),
                    ]);
              },
            ),
          ],
        ),
      ),
    );
  }
}
