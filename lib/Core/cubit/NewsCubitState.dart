part of 'NewsCubitCubit.dart';

abstract class NewsCubitState {}

final class NewsCubitInitial extends NewsCubitState {}

final class NewsCubitLoading extends NewsCubitState {}

final class NewsCubitSuccsses extends NewsCubitState {
  late final List<Article> article;
  NewsCubitSuccsses(this.article);
}

final class NewCubitFaliure extends NewsCubitState {
  final String message;
  NewCubitFaliure(this.message);
}
