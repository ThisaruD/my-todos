import 'package:equatable/equatable.dart';

class Task extends Equatable {
  final String title;
  final int icon;
  final String color;
  final List<dynamic>? todos;

  //constructor
  const Task({
    required this.title,
    required this.icon,
    required this.color,
     this.todos,
  });

  //copy with method - since const replace existing variables
  Task copyWith({
    String? title,
    int? icon,
    String? color,
    List<dynamic>? todos,
  }) =>
      Task(
          title: title ?? this.title,
          icon: icon ?? this.icon,
          color: color ?? this.color,
          todos: todos ?? this.todos);

  //json data
  factory Task.formJson(Map<String, dynamic> json) => Task(
      title: json['title'],
      icon: json['icon'],
      color: json['color'],
      todos: json['todos']);

  Map<String, dynamic> toJson() =>{
    'title': title,
    'icon': icon,
    'color': color,
    'todos': todos
  };

  //work on contains func in controller addTask func
  @override
  List<Object?> get props => [title,icon,color];



}
