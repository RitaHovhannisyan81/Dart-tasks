void main(){
    //List<String> names= ["Ann","John","Lui","Sara"];
    final names = <String>["Ann","John","Lui","Sara"];
    names.add("Jane");
    print(names);
    names.remove("John");
    print(names);
    names.removeAt(1);
    print(names);
    names[0] = "Mike";
    print(names);
    names.addAll(["Liza","Garry","Marta"]);
    print(names);
    print(names.contains("Ann"));//cucakum ka? Ann anun@
    print(names.length);
    print(names.indexOf("Liza"));

}