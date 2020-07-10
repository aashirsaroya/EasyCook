import 'package:flutter/material.dart';
import 'package:meals/widgets/main_drawer.dart';
class FiltersScreen extends StatefulWidget {

  static const routeName = '/filters';

  @override
  _FiltersScreenState createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  var _glutenFree = false;
  var _vegetarian = false;
  var _vegan = false;
  var _lactoseFree = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Filters!!'),
      ),
      drawer: MainDrawer(),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            child: Text('Adjust your meal selection',
            style: Theme.of(context).textTheme.title,
            ),
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                SwitchListTile(
                  title: Text('Gluten-Free'),
                  value: _glutenFree,
                  subtitle: Text('Only includes gluten-free meals'),
                  onChanged: (newValue){
                    setState(() {
                      _glutenFree = newValue;
                    });
                  },
                ),
                SwitchListTile(
                  title: Text('Vegetarian'),
                  value: _vegetarian,
                  subtitle: Text('Only includes vegetarian meals'),
                  onChanged: (newValue){
                    setState(() {
                      _vegetarian = newValue;
                    });
                  },
                ),
                SwitchListTile(
                  title: Text('Vegan'),
                  value: _vegan,
                  subtitle: Text('Only include vegan meals'),
                  onChanged: (newValue){
                    setState(() {
                      _vegan = newValue;
                    });
                  },
                ),
                SwitchListTile(
                  title: Text('Lactose-Free'),
                  value: _lactoseFree,
                  subtitle: Text('Only include lactose-free meals'),
                  onChanged: (newValue){
                    setState(() {
                      _lactoseFree = newValue;
                    });
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
