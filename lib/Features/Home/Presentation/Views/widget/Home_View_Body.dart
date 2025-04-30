import 'package:flutter/material.dart';
import 'package:tkuo/Core/Utilites/Assets.dart';
import 'package:tkuo/Core/Utilites/Styles.dart';
import 'package:tkuo/Features/Home/Presentation/Views/widget/Best_Seller_List_View_Item.dart';
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
