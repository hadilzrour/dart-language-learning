import 'dart:io';
import 'package:manager_task/task.dart';

void main() {
  List<Task> tasks = [];

  while (true) {
    print("Que voulez-vous faire ?\n"
        "1. Ajouter une tâche\n"
        "2. Marquer une tâche comme terminée\n"
        "3. Afficher les tâches\n"
        "4. Quitter");

    String choice = stdin.readLineSync()!;

    switch (choice) {
      case '1':
        print("Entrez la description de la tâche : ");
        String taskDescription = stdin.readLineSync()!;
        tasks.add(Task(taskDescription));
        print("Tâche ajoutée !");
        break;
      case '2':
        if (tasks.isEmpty) {
          print("La liste des tâches est vide.");
        } else {
          print("Voici la liste des tâches :");
          displayTasks(tasks);
          print(
              "Entrez l'index de la tâche que vous voulez marquer comme terminée :");
          int index = int.parse(stdin.readLineSync()!);
          if (index >= 0 && index < tasks.length) {
            tasks[index].isDone = true;
            print("Tâche marquée comme terminée !");
          } else {
            print("Index invalide !");
          }
        }
        break;
      case '3':
        if (tasks.isEmpty) {
          print("La liste des tâches est vide.");
        } else {
          print("Voici la liste des tâches :");
          displayTasks(tasks);
        }
        break;
      case '4':
        print("Au revoir !");
        return;
      default:
        print("Choix invalide !");
    }
  }
}

void displayTasks(List<Task> tasks) {
  for (int i = 0; i < tasks.length; i++) {
    Task task = tasks[i];
    String status = task.isDone ? "Terminée" : "En cours";
    print("$i. [${status.toUpperCase()}] ${task.description}");
  }
}
