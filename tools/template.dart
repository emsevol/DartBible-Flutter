import 'package:flutter/material.dart';
import 'config.dart';

class ToolTablet extends StatefulWidget {

  final Config _config;

  ToolTablet(this._config);

  @override
  ToolTabletState createState() => ToolTabletState(this._config);
}

class ToolTabletState extends State<ToolTablet> {

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  final Config _config;

  ToolTabletState(this._config);

  Widget _buildSearchBox() {
    return Container(
      alignment: Alignment.centerLeft,
      color: Colors.white,
      child: TextField(
        decoration:
        InputDecoration(border: InputBorder.none, hintText: ""),
        onSubmitted: (String value) {
          //if (value.isNotEmpty) _fetch(value);
        },
        //onChanged: ,
        //onTap: ,
        //onEditingComplete: ,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: _config.mainTheme,
      child: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          title: _buildSearchBox(),
          actions: <Widget>[
            IconButton(
              tooltip: "",
              icon: const Icon(Icons.add_to_home_screen),
              onPressed: () {
                //;
              },
            ),
          ],
        ),
        body: OrientationBuilder(
          builder: (context, orientation) {
            List<Widget> layoutWidgets = _buildLayoutWidgets(context);
            return (orientation == Orientation.portrait)
                ? Column(children: layoutWidgets)
                : Row(children: layoutWidgets);
          },
        ),
      ),
    );
  }

  Widget _wrap(Widget widget, int flex) {
    return Expanded(
      flex: flex,
      child: widget,
    );
  }

  Widget _buildDivider() {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: _config.myColors["grey"])
      ),
    );
  }

  List<Widget> _buildLayoutWidgets(BuildContext context) {
    return <Widget>[
      //
    ];
  }

}