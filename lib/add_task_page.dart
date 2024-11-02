import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'task_model.dart';

class AddTaskPage extends StatelessWidget {
  const AddTaskPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Add New Task'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: const InputDecoration(labelText: 'Task Name'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final taskName = controller.text;
                if (taskName.isNotEmpty) {
                  Provider.of<TaskProvider>(context, listen: false).addTask(taskName);
                  Navigator.pop(context);
                }
              },
              child: const Text('Add Task'),
            ),
          ],
        ),
      ),
    );
  }
}
