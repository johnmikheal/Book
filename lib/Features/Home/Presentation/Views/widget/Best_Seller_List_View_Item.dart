import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tkuo/Core/Utilites/Assets.dart';
import 'package:tkuo/Core/Utilites/Styles.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.circular(8),
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(AssetsData.Test),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .5,
                child: const Text(
                  'Harry Potter and the Goblent of Fire ',
                  style: Styles.textStyle20,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              const Text(
                ' j.k rolyent',
                style: Styles.textStyle14,
              ),
              SizedBox(
                height: 3,
              ),
              Row(
                children: [
                  Text(
                    '19.99 ',
                    style: Styles.textStyle20
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.euro),
                  Icon(
                    Icons.star,
                    color: Colors.amberAccent,
                  ),
                  Text('4.8'),
                  Text('(2390)')
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
