void main(){
    final sum = (num a ,num b) => a + b;
    final diff = (num a ,num b) => a - b;
    final div = (num a ,num b) => a / b;
    final mult = (num a ,num b) => a * b;
    final pov = (num a, num b){
        final number = a;
        for (int i = 1; i < b; i ++){
            a = a * number;
        }
        return a;
    };
    print(calculate(3,8, sum));
    print(calculate(3,8, diff));
    print(calculate(3,8, div));
    print(calculate(3,8, mult));
    print(calculate(4,4, pov));
}

num calculate(num a, num b, num Function(num a, num b)action)=> action(a,b);
