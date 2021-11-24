import 'Task.dart';
import 'todo.dart';
final myToDo = <Todo>[
  Todo("Mobile Application Programming", [
    Task("Deliverable #1: Project Proposal and Design", false),
    Task("Deliverable #2: Prototype 1", true),
    Task("Deliverable #3: Prototype 2", true),
    Task("Deliverable #4: Backend", true),
    Task("Deliverable #5: Release Version", true)
  ]),
  Todo("Internet Programming", [
    Task("Deliverable #1: Project Proposal and Design", false),
    Task("Deliverable #2: Prototype 1", false),
    Task("Deliverable #3: Prototype 2", true),
    Task("Deliverable #4: Backend", true),
    Task("Deliverable #5: Release Version", true)
  ]),
  Todo("Web Technology", [
    Task("Deliverable #1: Project Proposal and Design", false),
    Task("Deliverable #2: Prototype 1", false),
    Task("Deliverable #3: Prototype 2", false),
    Task("Deliverable #4: Backend", true),
    Task("Deliverable #5: Release Version", true)
  ]),
];