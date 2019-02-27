function manage(param_div_id) {
  var stock=prompt("Your new Stock","");
  var a=document.getElementById(param_div_id).textContent ;
document.getElementById(param_div_id).innerHTML=eval(stock)+eval(a);
}
