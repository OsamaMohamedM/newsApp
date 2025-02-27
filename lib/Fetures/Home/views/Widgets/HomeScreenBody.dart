import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapp/Fetures/Home/ViewModel/cubit/home_screen_cubit.dart';
import '../../../../Core/widgets/ArticleItem.dart';
import '../../../../Core/widgets/CustomLoadingWidgets.dart';
import '../../../../Core/widgets/FailureWidget.dart';
import 'TopSection.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TopSection(),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
          BlocBuilder<HomeScreenCubit, HomeScreenCubitState>(
            builder: (context, state) {
              if (state is HomeScreenCubitSuccsses) {
                return ArticleItems(articles: state.article);
              } else if (state is HomeScreenCubitFaliure) {
                return FailureWidget(
                    message: state.message,
                    onRetry: () {
                      BlocProvider.of<HomeScreenCubit>(context).getData('eg');
                    });
              } else {
                return const CustomLoadingWidget();
              }
            },
          ),
        ],
      ),
    );
  }
}
