function addBook(){
const adding=document.getElementById("cd");
if(adding.value===""){
    alert("No data should be added")
}
else{
const added=document.getElementById("add");
added.innerHTML+="<li>"+adding.value+"</li>"
}
}