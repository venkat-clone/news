import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

import '../../../../configurations/configurations.dart';

class Categories extends StatefulWidget {
  const Categories({super.key, required this.categories, this.onSelected, this.selectedIndex=0});

  final List<String> categories;

  final Function(int index)? onSelected;
  final int selectedIndex;

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int selectedIndex = 0;

  @override
  void initState() {
    selectedIndex = widget.selectedIndex;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: kPadding * 5,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) => GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
            widget.onSelected?.call(index);
          },
          child: Container(
              padding: const EdgeInsets.symmetric(
                  vertical: kPadding, horizontal: kPadding * 2),
              decoration: BoxDecoration(
                color: selectedIndex == index
                    ? Theme.of(context).primaryColor
                    : Colors.grey[200],
                borderRadius: BorderRadius.circular(kPadding),
              ),
              alignment: Alignment.center,
              child: Text(widget.categories[index].capitalize,
                  style: Theme.of(context).textTheme.bodyText1?.copyWith(
                        color: selectedIndex == index ? Colors.white : null,
                        fontWeight:
                            selectedIndex == index ? FontWeight.w600 : null,
                      ))),
        ),
        separatorBuilder: (_, __) => const SizedBox(width: kPadding * 2),
        itemCount: widget.categories.length,
      ),
    );
  }
}
