function showSidebar() {
    var x = document.getElementById('sidebar')
    if(x.className == "sidebar"){
       x.className += " show";
    } else{
       x.className = "sidebar";
    }
 }
