
import 'package:flutter/material.dart';
import 'package:greate_places/providers/great_places.dart';
import 'package:greate_places/utils/app_routes.dart';
import 'package:provider/provider.dart';

class PlacesListScreen extends StatelessWidget {
  const PlacesListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const Text(
          'Meus Lugares',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(AppRoutes.PLACE_FORM);
            },
            icon: const Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Consumer<GreatPlaces>(
        child: Center(
          child: Text('Nenhum local cadastrado'),
        ),
        builder: (ctx, greatePlaces, ch) => greatePlaces.itemsCount == 0
            ? ch!
            : ListView.builder(
                itemCount: greatePlaces.itemsCount,
                itemBuilder: (ctx, i) => ListTile(
                  leading: CircleAvatar(
                    backgroundImage: FileImage(
                      greatePlaces.itemByIndex(i).image
                    ),
                  ),
                  title: Text(greatePlaces.itemByIndex(i).title),
                  onTap: (){},
                ),
              ),
      ),
    );
  }
}
