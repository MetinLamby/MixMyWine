const selects = document.querySelectorAll('.check-me');
function handleClick(e){
    this.parentElement.classList.toggle("active");
    // console.log("hello")
}
selects.forEach(select => select.addEventListener('click', handleClick))




const selected = document.querySelectorAll('.collection_check_boxes');
function handlethisclick(e){
    this.parentElement.classList.toggle("active");
    // console.log("hello")
}
selected.forEach(select => select.addEventListener('click', handlethisclick))



const form = document.querySelectorAll('.form-check');
form.forEach((f, index) => f.setAttribute("id", `w${index + 1}`))
