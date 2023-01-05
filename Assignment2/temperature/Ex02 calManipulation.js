// let num=document.getElementById("inFahren").value
// console.log(num)
// function onClick(num) {
//   let num=parseInt(num)
//   let number= document.getElementById("inFahren").innerHTML=(num*1.8)+32
//   alert(number)
// }



// alert("this is a temperature calculator")
// let num=prompt("enter the temperature in degree celcius")
// if(confirm("do you want to convert the temperature?"))
// {
//     num=num*1.8+32
//     document.write(num)
// }
// else{
//     alert("it will not convert")
// }


function temperature(cel){
    return (cel*1.8)+32
}
console.log(temperature(32));
function onClick(){
    let tem=document.getElementById("in").value;
    let t=temperature(tem)
    alert(t)
    document.getElementById("cd").innerText=t
}