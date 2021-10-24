part of 'top_rated_movies_bloc.dart';

abstract class TopRatedMoviesState extends Equatable {
  const TopRatedMoviesState();
}

class TopRatedMoviesInitial extends TopRatedMoviesState {
  @override
  List<Object> get props => [];
}

class TopRatedMoviesLoading extends TopRatedMoviesState {
  @override
  List<Object> get props => [];
}

class TopRatedMoviesLoaded extends TopRatedMoviesState {
  final List<Movie> movies;

  const TopRatedMoviesLoaded(this.movies);

  @override
  List<Object> get props => [movies];
}

class TopRatedMoviesError extends TopRatedMoviesState {
  final String message;

  const TopRatedMoviesError(this.message);

  @override
  List<Object> get props => [message];
}
