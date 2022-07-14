void main() {
  const a = {1, 3};
  const b = {3, 5};
  
print(a.difference(b)..addAll(b.difference(a)));

print((a.difference(b)..addAll(b.difference(a))).reduce((value, element) => value+element));
}
