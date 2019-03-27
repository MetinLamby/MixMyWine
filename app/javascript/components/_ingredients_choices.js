const selects = document.querySelectorAll('.check-me');
function handleClick(e){
    this.parentElement.classList.toggle("active");
    // console.log("hello")
}
selects.forEach(select => select.addEventListener('click', handleClick))

