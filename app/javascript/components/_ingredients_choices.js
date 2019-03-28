// adding the active class to something
const selects = document.querySelectorAll('.check-me');
function handleClick(e){
    this.parentElement.classList.toggle("active");
}
selects.forEach(select => select.addEventListener('click', handleClick))



// adding the active class to something
const selected = document.querySelectorAll('.collection_check_boxes');
function handlethisclick(e){
    this.parentElement.classList.toggle("active");
}
selected.forEach(select => select.addEventListener('click', handlethisclick))


// adding a new id to each form-item from the f.attribute for the ingredients
const form = document.querySelectorAll('.form-check');
form.forEach((f, index) => f.setAttribute("id", `w${index + 1}`))







const wine = document.querySelectorAll('.each-wine-home');
wine.forEach((y, index) => y.setAttribute("id", `x${index + 1}`))





const ingredient = document.querySelectorAll('.each-ingredient');
ingredient.forEach((i, index) => i.setAttribute("id", `i${index + 1}`))







// scrolling to ingredients index of the whine show when submitting the form
const ingredient_btn = document.getElementById("submit-btn-wine-ingredients");
// const ingredient_index = document.getElementById("ingredients-index-wine-show");
// function scrolldown(e) {
//   ingredient_btn.scrollIntoView({behavior: "smooth"});

// }

// ingredient_btn.addEventListener('click', scrolldown)
ingredient_btn.scrollIntoView({behavior: "smooth"});
