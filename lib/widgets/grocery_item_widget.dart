import 'package:flutter/material.dart';
import 'package:shopping_list/models/grocery_item.dart';

class GroceryItemWidget extends StatelessWidget {
  final GroceryItem groceryItem;
  const GroceryItemWidget({super.key, required this.groceryItem});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                    color: groceryItem.category.color,
                    shape: BoxShape.rectangle),
              ),
              Text(groceryItem.name),
            ],
          ),
          Text('${groceryItem.quantity}')
        ],
      ),
    );
  }
}
