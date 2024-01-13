import 'package:equatable/equatable.dart';

class MyUserEntity extends Equatable {
  final String userId;
  final String email;
  final String name;

  const MyUserEntity({required this.userId, required this.email, required this.name});

  @override
  List<Object?> get props => [userId, email, name];
}
