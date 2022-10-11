
setTimeout(index, 1);
function home(element){
    var onpage = document.getElementById("onpage");
    var home = document.getElementById("home");
    onpage.style.animationName = "up";
    setTimeout(change, 500,onpage, home);
};
//function for the index screen
function index(){
    var background = document.getElementById("background").style;
    background.height = "60%";
    background.width = "100%";
}


function change(from, to) {
    from.innerHTML = to.innerHTML;
    to.style.display = "block";
};

