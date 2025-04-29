import 'package:flutter/material.dart';
import 'package:tkuo/Core/Utilites/Assets.dart';
import 'package:tkuo/Core/Utilites/Styles.dart';
import 'package:tkuo/Features/Home/Presentation/Views/widget/Custom_App_Bar.dart';
import 'package:tkuo/Features/Home/Presentation/Views/widget/Featured_books_List_View.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeaturedBooksListView(),
          SizedBox(
            height: 50,
          ),
          Text(
            'Best Seller',
            style: Styles.textStyle18,
          ),
          SizedBox(
            height: 20,
          ),
          BestSellerListViewItem()
        ],
      ),
    );
  }
}

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
              Text(
                ' j.k rolyent',
                style: Styles.textStyle18,
              ),
              Row(
                children: [
                  Text(
                    ' 19.99 ',
                    style: Styles.textStyle18,
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
