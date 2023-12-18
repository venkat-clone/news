import 'package:flutter/material.dart';

import '../../../../configurations/configurations.dart';

class FilterCategoryPage extends StatefulWidget {
  const FilterCategoryPage({super.key, required this.selectedCategoryList, required this.onSelectedCategoryListChanged});

  final List<String> selectedCategoryList;

  final ValueChanged<List<String>> onSelectedCategoryListChanged;

  @override
  State<FilterCategoryPage> createState() => _FilterCategoryPageState();
}

class _FilterCategoryPageState extends State<FilterCategoryPage> {

  final List<bool> value = List.generate(categoryList.length, (index) => false);

  @override
  void initState() {
    for (var element in categoryList) {
      if(widget.selectedCategoryList.contains(element)) {
        value[categoryList.indexOf(element)] = true;
      }
    }
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kPadding * 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Filter Category', style: Theme
              .of(context)
              .textTheme
              .headline6),
          const SizedBox(height: kPadding),
          Row(
              children: [
                Expanded(
                  child: TextButton(onPressed: () {
                    setState(() {
                      value.fillRange(0, value.length, false);
                    });
                  }, child: const Text('Clear All',style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700))),
                ),
                const VerticalDivider(
                  thickness: 1,
                  width: 1,
                  indent: 0,
                  endIndent: 1,
                  color: Colors.grey,
                ),
                Expanded(
                  child: TextButton(onPressed: () {
                    setState(() {
                      value.fillRange(0, value.length, true);
                    });
                  }, child: const Text('Select All', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700))),
                ),
              ]
          ),
          const SizedBox(height: kPadding),
          Expanded(
            child: ListView.builder(
              itemCount: value.length,
              itemBuilder: (context, index) {
                return CheckboxListTile(
                  value: value[index],
                  onChanged: (value) {
                    setState(() {
                      this.value[index] = value!;
                    });
                  },
                  title: Text(categoryList[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}