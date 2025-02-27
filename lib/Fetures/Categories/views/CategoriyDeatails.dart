import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapp/Core/data/Models/NewsModel/news_app_model/article.dart';
import 'package:newsapp/Fetures/Home/views/Widgets/ListViewItem.dart';

import '../../../Core/cubit/NewsCubitCubit.dart';
import '../../../Core/widgets/CustomLoadingWidgets.dart';
import '../../../Core/widgets/FailureWidget.dart';

class CategoriyDeatails extends StatelessWidget {
  CategoriyDeatails({super.key, required this.category});
  final String category;
  late final List<Article> articles;
  @override
  Widget build(BuildContext context) {
    context.read<NewsCubit>().getData(category);
    return BlocBuilder<NewsCubit, NewsCubitState>(
      builder: (context, state) {
        if (state is NewsCubitSuccsses) {
          articles = state.article;
          print("sddddddddddddddddddddddddd");
          print(articles.length);
          return ListView.builder(
              itemCount: articles.length,
              itemBuilder: (context, index) {
                print("s");
                return Column(
                  children: [
                    ListViewItem(article: articles[index]),
                    const Divider(),
                  ],
                );
              });
        } else if (state is NewCubitFaliure) {
          return SliverToBoxAdapter(
            child: FailureWidget(
                message: state.message,
                onRetry: () {
                  BlocProvider.of<NewsCubit>(context).getData('');
                }),
          );
        } else {
          return const SliverToBoxAdapter(child: CustomLoadingWidget());
        }
      },
    );
  }
}
