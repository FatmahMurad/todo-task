# Todo App ✅

![image1](https://user-images.githubusercontent.com/84308096/160113038-312e1517-63bb-4c6a-9c4f-8d4c36032e0b.png)

### 💡Hint:

The [Checkbox](https://api.flutter.dev/flutter/material/Checkbox-class.html) widget.

## 🍋 Instructions

Fork and clone [this](https://github.com/JoinCODED/Task-Flutter-Provider-TodoApp) into your development folder.

1. Let's create our provider with the needed logic in it, install the `provider` package.

```shell
flutter pub add provider
```

2. In your `provider` folder, create a file named `todo_provider.dart`.
3. In your `todo_provider.dart` import the material package and your `Todo` model.
4. Create your provider that extends `ChangeNotifier`.
5. Create you `todos` list and initialize it with one `Todo` object to help us with testing our code.

```dart
  var todos = [
    Todo(id: 1, title: "first todo"),
  ];
```

6. It's time to use our provider, in your `main.dart` import the `provider` package.

```dart
import 'package:provider/provider.dart';
```

7. In your `runApp` function, replace the content with `ChangeNotifierProvider` widget with a create property that takes the `context` as an argument and returns our `TodoProvider`, and a `child` that takes our `MyApp()`.

8. Import the `provider` package and our `TodoProvider` in `home_page.dart`.

9. That widget should be a `ListView.builder` widget that returns a `TodoTile` and passing the `todo` object from our provider using the `index`.

12. Save your code, and test your app, you should see the `todo` we added in the provider.

13. Back to our `todo_provider.dart`, let's create a method `addTodo` for adding a `todo`, this method will take a `String` `title` argument, and will generate an `id` for our `todo`, then we will insert this new to do to our `todos` list.

14. Don't forget to call `notifyListeners()`.

15. Back to our `add_page.dart` button `onPressed` method, call our provider `addTodo` method, and pass it the the value of our `TextField` controller.

16. Now we need to go back to our `home_page`, so use the `pop` method. Check you app to make sure todos are being added.

17. The last thing to do is to change the `done` status of our todo using the `Checkbox` widget.

18. First, we need to create a method for that in our `todo_provider.dart`, this method takes an `id` as an argument, and looks for the `todo` with the same `id` within our `todos` list, and switch it's `done` property value to `true` or `false`.

19. Don't forget to call `notifyListeners()`.

# todo-task
