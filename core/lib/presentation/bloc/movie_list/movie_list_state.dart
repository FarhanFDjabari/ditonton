part of 'movie_list_bloc.dart';

abstract class MovieListState extends Equatable {
  const MovieListState();
}

class MovieListInitial extends MovieListState {
  @override
  List<Object> get props => [];
}

class MovieListError extends MovieListState {
  final String message;

  const MovieListError(this.message);

  @override
  List<Object> get props => [message];
}

class MovieListLoading extends MovieListState {
  @override
  List<Object> get props => [];
}

class MovieListLoaded extends MovieListState {
  final List<Movie> nowPlayingMovies;
  final List<Movie> popularMovies;
  final List<Movie> topRatedMovies;

  const MovieListLoaded(
      this.nowPlayingMovies, this.popularMovies, this.topRatedMovies);

  @override
  List<Object> get props => [nowPlayingMovies, popularMovies, topRatedMovies];
}
