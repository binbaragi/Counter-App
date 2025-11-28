# Flutter & Dart Notes

## 📌 Dart Data Structures
Essas são as estruturas básicas de dados usadas em Dart. Elas armazenam coleções de valores de diferentes formas, dependendo da sua necessidade.

### **Lists**
- Ordered
- Allow duplicates
```dart
List names = ['mitch', 'john', 'sarah', 'mitch'];

names[0]; // 'mitch'
names[1]; // 'john'
```
Typed lists:
```dart
List<int> numbers = [1,2,3,4,5];
```
Looping:
```dart
for (int i = 0; i < names.length; i++) {
  print(names[i]);
}
```

### **Sets**
- Unordered
- No duplicates
```dart
Set<String> uniqueNames = {'mitch', 'john', 'sarah'};
```

### **Maps**
- Key–value pairs
```dart
Map user = {
  'name': 'mitch',
  'age': 30,
  'isAdmin': true,
};

user['name']; // 'mitch'
user['age'];  // 30
```

---

## 👆 GestureDetector
O `GestureDetector` é um widget que detecta interações do usuário, como toques, arrastar, pressionar e mais. Ele envolve outro widget e transforma gestos em ações.
Widget that detects gestures: `onTap`, `onDoubleTap`, `onLongPress`, `onPanUpdate`, `onPanEnd`.
```dart
GestureDetector(
  onTap: () => print('Container tapped'),
  child: Container(
    height: 200,
    width: 200,
    color: Colors.teal[800],
    child: Center(
      child: Text('Tap me', style: TextStyle(color: Colors.white, fontSize: 24)),
    ),
  ),
);
```

---

## 📐 Columns & Rows
Rows e Columns organizam widgets na tela em linhas e colunas. São fundamentais para criar layouts estruturados no Flutter.
```dart
Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.star, size: 50, color: Colors.white),
        Icon(Icons.star, size: 50, color: Colors.white),
        Icon(Icons.star, size: 50, color: Colors.white),
      ],
    ),
    SizedBox(height: 20),
    Text('Star Row', style: TextStyle(fontSize: 24, color: Colors.white)),
  ],
);
```

### **Using Expanded**
```dart
Column(
  children: [
    Expanded(child: Container(color: Colors.teal[700], child: Center(child: Text('1')))),
    Expanded(child: Container(color: Colors.teal[400], child: Center(child: Text('2')))),
    Expanded(child: Container(color: Colors.teal[100], child: Center(child: Text('3')))),
  ],
);
```

---

## 📜 ListView
O `ListView` é usado para criar listas roláveis, perfeitas para mostrar muitos itens de forma eficiente.
### **Static ListView**
```dart
ListView(
  children: [
    Container(height: 250, color: Colors.teal[700]),
    Container(height: 250, color: Colors.teal[400]),
    Container(height: 250, color: Colors.teal[100]),
  ],
);
```

### **ListView.builder**
```dart
ListView.builder(
  itemCount: names.length,
  itemBuilder: (context, index) {
    return Container(
      height: 100,
      color: Colors.teal[700],
      child: Center(
        child: Text(names[index], style: TextStyle(fontSize: 28)),
      ),
    );
  },
);
```

---

## 🟩 GridView
O `GridView` organiza widgets em formato de grade, ideal para galerias, menus ou qualquer conteúdo em colunas múltiplas.
```dart
GridView.builder(
  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 4,
  ),
  itemCount: 64,
  itemBuilder: (context, index) => Container(
    margin: EdgeInsets.all(2),
    color: Colors.teal[500],
  ),
);
```

---

## 🧱 Stack
O `Stack` permite sobrepor widgets uns sobre os outros, útil para criar elementos visuais complexos como banners, avatares e camadas decorativas.
```dart
Stack(
  alignment: Alignment.center,
  children: [
    Container(height: 250, width: 250, color: Colors.teal[800]),
    Container(height: 150, width: 150, color: Colors.teal[400]),
    Icon(Icons.favorite, size: 100, color: Colors.white),
  ],
);
```

---

## 📎 AppBar Leading
O atributo `leading` define o ícone ou widget que aparece à esquerda da AppBar, normalmente usado para menu ou botão de voltar.
```dart
leading: Icon(Icons.menu, color: Colors.white),
```

---

## 📂 Drawer
O Drawer é um menu lateral que desliza da esquerda. É ótimo para navegação global do aplicativo.
```dart
Drawer(
  backgroundColor: Colors.teal[100],
  child: Column(
    children: [
      DrawerHeader(child: Icon(Icons.favorite, size: 48)),

      ListTile(
        leading: Icon(Icons.home),
        title: Text('HOME'),
        onTap: () {
          Navigator.pop(context);
          Navigator.pushNamed(context, '/homepage');
        },
      ),

      ListTile(
        leading: Icon(Icons.settings),
        title: Text('SETTINGS'),
        onTap: () {
          Navigator.pop(context);
          Navigator.pushNamed(context, '/settingspage');
        },
      ),
    ],
  ),
);
```

---

## 🔽 BottomNavigationBar
A barra de navegação inferior permite alternar rapidamente entre páginas principais do app.
```dart
BottomNavigationBar(
  currentIndex: _selectedIndex,
  onTap: _navigateBottomBar,
  items: [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
    BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
    BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
  ],
);
```

### **Changing Pages**
```dart
class FirstPage extends StatefulWidget {
  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() => _selectedIndex = index);
  }

  final List _pages = [HomePage(), SettingsPage(), ProfilePage()];
}
```

---

## 🛣 Routes
As rotas definem para onde a navegação do app pode ir, permitindo trocar telas usando nomes ao invés de instâncias diretas.
```dart
routes: {
  '/firstpage': (context) => FirstPage(),
  '/homepage': (context) => HomePage(),
  '/settingspage': (context) => SettingsPage(),
  '/profilepage': (context) => ProfilePage(),
},
```

---

> Documento organizado automaticamente a partir das suas anotações originais.

g