part of 'home_screen_cubit.dart';

abstract class HomeScreenCubitState {}

final class HomeScreenCubitInitial extends HomeScreenCubitState {}

final class HomeScreenCubitLoading extends HomeScreenCubitState {}

final class HomeScreenCubitSuccsses extends HomeScreenCubitState {
  late final List<Article> article;
  HomeScreenCubitSuccsses(this.article);
}

final class HomeScreenCubitFaliure extends HomeScreenCubitState {
  final String message;
  HomeScreenCubitFaliure( this.message);
}
