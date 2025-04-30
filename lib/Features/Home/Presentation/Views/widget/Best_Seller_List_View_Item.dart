import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tkuo/Core/Utilites/Assets.dart';
import 'package:tkuo/Core/Utilites/Styles.dart';
import 'package:tkuo/Features/Home/Presentation/Views/widget/Book_Rating.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115,
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
          const SizedBox(
            width: 30,
          ),
          Expanded(
            child: Column(
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
                Text(
                  ' j.k rolyent',
                  style: Styles.textStyle14.copyWith(color: Color(0xff707070)),
                ),
                const SizedBox(
                  height: 3,
                ),
                Row(
                  children: [
                    Text(
                      '19.99 ',
                      style: Styles.textStyle20
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    const Icon(Icons.euro),
                    const Spacer(
                      flex: 3,
                    ),
                    const BookRating(),
                    const Spacer(
                      flex: 2,
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
