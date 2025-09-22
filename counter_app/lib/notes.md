//data structures in dart

lists -> ordered and can have duplicates

list names = ['mitch', 'john', 'sarah', 'mitch'];

names[0] -> 'mitch'
names[1] -> 'john'
names[2] -> 'sarah'
names[3] -> 'mitch'

you can also specify the type of data in the list:
list<int> numbers = [1,2,3,4,5];

for(int i = 0; i < names.length; i++) {
  print(names[i]);
}

sets -> unordered and cannot have duplicates

set<string> uniqueNames = ['mitch', 'john', 'sarah'];

maps -> key-value pairs

Map user = {
  'name': 'mitch',
  'age': 30,
  'isAdmin': true
};

print(user['name']); -> 'mitch'
print(user['age']); -> 30
print(user['isAdmin']); -> true



// gesturedetector -> widget that detects gestures
//examples: onTap, onDoubleTap, onLongPress, onPanUpdate, onPanEnd

body: center(
  child: GestureDetector(
    onTap: () {
      print('Container tapped');
    },
    child: Container(
      height: 200,
      width: 200,
      color: Colors.teal[800],
      child: Center(child: text('Tap me', style: TextStyle(color: Colors.white, fontSize: 24)),
    ),
  ),
),


// Columns and Rows

body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.star, color: Colors.white, size: 50),
                  Icon(Icons.star, color: Colors.white, size: 50),
                  Icon(Icons.star, color: Colors.white, size: 50),
                ],
              ),
              SizedBox(height: 20),
              Text(
                'Star Row',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.star, color: Colors.white, size: 50),
                  Icon(Icons.star, color: Colors.white, size: 50),
                  Icon(Icons.star, color: Colors.white, size: 50),
                ],
              ),
            ],
          ),
        ),

//columns and rows with expanded widget

body: Center(
          child: Column(
            children: [
              Expanded(
                child: Container(
                  color: Colors.teal[700],
                  child: Center(
                    child: Text(
                      '1',
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.teal[400],
                  child: Center(
                    child: Text(
                      '2',
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.teal[100],
                  child: Center(
                    child: Text(
                      '3',
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),


//listview

body: ListView(
          children: [
            Container(
              height: 250,
              color: Colors.teal[700],
              child: Center(
                child: Icon(Icons.favorite, color: Colors.white, size: 80),
              ),
            ),
            Container(
              height: 250,
              color: Colors.teal[400],
              child: Center(
                child: Icon(Icons.favorite, color: Colors.white, size: 80),
              ),
            ),
            Container(
              height: 250,
              color: Colors.teal[100],
              child: Center(
                child: Icon(Icons.favorite, color: Colors.white, size: 80),
              ),
            ),
            Container(
              height: 250,
              color: Colors.teal[700],
              child: Center(
                child: Icon(Icons.favorite, color: Colors.white, size: 80),
              ),
            ),
            Container(
              height: 250,
              color: Colors.teal[400],
              child: Center(
                child: Icon(Icons.favorite, color: Colors.white, size: 80),
              ),
            ),
            Container(
              height: 250,
              color: Colors.teal[100],
              child: Center(
                child: Icon(Icons.favorite, color: Colors.white, size: 80),
              ),
            ),
          ],
        ),

//listview builder

body: ListView.builder(
          itemCount: names.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 100,
                color: Colors.teal[700],
                child: Center(
                  child: Text(
                    names[index],
                    style: TextStyle(
                      color: Colors.teal[50],
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
 

//gridview

body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
          ),
          itemCount: 64,
          itemBuilder: (context, index) =>
              Container(color: Colors.teal[500], margin: EdgeInsets.all(2)),
        ),
 

//stack

body: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                  color: Colors.teal[800],
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.teal[400],
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              Icon(Icons.favorite, color: Colors.white, size: 100),
            ],
          ),
        ),

