import 'package:flutter/material.dart';
import 'package:tkuo/Core/Utilites/Styles.dart';
import 'package:tkuo/Features/Home/Presentation/Views/widget/Best_Seller_List_View.dart';
import 'package:tkuo/Features/Home/Presentation/Views/widget/Best_Seller_List_View_Item.dart';
import 'package:tkuo/Features/Home/Presentation/Views/widget/Custom_App_Bar.dart';
import 'package:tkuo/Features/Home/Presentation/Views/widget/Featured_books_List_View.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: CustomAppBar(),
              ),
              FeaturedBooksListView(),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Best Seller',
                  style: Styles.textStyle18,
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        const SliverFillRemaining(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: BestSellerListView(),
          ),
        )
      ],
    );
  }
}
