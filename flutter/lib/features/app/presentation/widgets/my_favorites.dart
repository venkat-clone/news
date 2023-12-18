import 'package:flutter/material.dart';

import '../../../../configurations/theme/size_constants.dart';

class MyFavorites extends StatefulWidget {
  const MyFavorites(
      {super.key, required this.favorites, required this.allTypes, required this.onChange});

  final List<String> favorites;
  final List<String> allTypes;
  final Function(List<String>) onChange;

  @override
  State<MyFavorites> createState() => _MyFavoritesState();
}

class _MyFavoritesState extends State<MyFavorites> {
  bool addElement = false;
  late final List<String> favorites;

  @override
  void initState() {
    favorites = [...widget.favorites];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final List<String> unAddedTypes = widget.allTypes
        .where((element) => !favorites.contains(element))
        .toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('My Favorites', style: Theme.of(context).textTheme.headline6),
        const SizedBox(height: kPadding),
        Wrap(
            spacing: kPadding * 0.75,
            runSpacing: 0,
            children: List<Widget>.generate(
                favorites.length,
                (index) => Chip(
                      label: Text(favorites[index]),
                      deleteIcon: Icon(
                        Icons.cancel_outlined,
                        size: 16,
                        color: Colors.red[400],
                      ),
                      onDeleted: () {
                        setState(() {
                          favorites.removeAt(index);
                        });
                        widget.onChange(favorites);
                      },
                    )).toList()
              ..add(GestureDetector(
                onTap: () {
                  setState(() {
                    addElement = !addElement;
                  });
                },
                child: Chip(
                  avatar: addElement
                      ? null
                      : const Icon(
                          Icons.add,
                          size: 16,
                          color: Colors.black,
                        ),
                  label: Text(addElement ? "Done" : "Add"),
                ),
              ))),
        if (addElement) ...[
          const SizedBox(height: kPadding),
          Text('All Categories', style: Theme.of(context).textTheme.headline6),
          const SizedBox(height: kPadding),
          Wrap(
              spacing: kPadding * 0.75,
              runSpacing: 0,
              children: List<Widget>.generate(
                  unAddedTypes.length,
                  (index) => GestureDetector(
                        onTap: () {
                          setState(() {
                            favorites.add(unAddedTypes[index]);
                            unAddedTypes.removeAt(index);
                          });
                          widget.onChange(favorites);
                        },
                        child: Chip(label: Text(widget.allTypes[index])),
                      )).toList()),
          if (unAddedTypes.isEmpty)
            Container(
                alignment: Alignment.center,
                child: Text('No more categories',
                    style: Theme.of(context).textTheme.bodySmall)),
        ]
      ],
    );
  }
}
