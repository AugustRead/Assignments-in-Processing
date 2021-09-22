/*int a = (int)random(1,10);
 int b = (int)random(1,10);
 
 
 if (a+b == 10 || a == 10 || b == 10) {
 println("Succes");
 } else {
 println("Failure");
 }
 print(a,b);
 */

int x = (int)random(30);
int y = (int)random(30);
int z = (int)random(30);

if (x+y+z == 30) {
  if (x == 10 || x == 20 || x == 30 || y == 10 || y == 20 || y == 30 || z == 10 || z == 20 || z == 30) {
    println("Failure");
  } else {
    println("Succes");
  } 
}
else {
println("Failure");
}

print(x,y,z);
