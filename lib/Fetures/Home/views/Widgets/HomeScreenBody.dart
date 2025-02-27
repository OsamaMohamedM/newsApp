import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapp/Core/cubit/NewsCubitCubit.dart';
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
          BlocBuilder<NewsCubit, NewsCubitState>(
            builder: (context, state) {
              if (state is NewsCubitSuccsses) {
                return ArticleItems(articles: state.article);
              } else if (state is NewCubitFaliure) {
                return SliverToBoxAdapter(
                  child: FailureWidget(
                      message: state.message,
                      onRetry: () {
                        BlocProvider.of<NewsCubit>(context).getData('eg');
                      }),
                );
              } else {
                return const SliverToBoxAdapter(child: CustomLoadingWidget());
              }
            },
          ),
        ],
      ),
    );
  }
}
