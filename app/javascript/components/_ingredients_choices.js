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



const ingredientlist = document.querySelectorAll(".i-name")
function checkcondition(x){
  if (x.innerHTML === "Heavy") {
    x.parentElement.classList.add("heavy");
  } else if (x.innerHTML === "Sweet") {
    x.parentElement.classList.add("sweet");
  } else if (x.innerHTML === "Earthy") {
    x.parentElement.classList.add("earthy");
  } else if (x.innerHTML === "Creamy") {
    x.parentElement.classList.add("creamy");
  } else if (x.innerHTML === "Strong") {
    x.parentElement.classList.add("strong");
  } else if (x.innerHTML === "Sparkling") {
    x.parentElement.classList.add("sparkling");
  } else if (x.innerHTML === "Acidic") {
    x.parentElement.classList.add("acidic");
  } else if (x.innerHTML === "Fruity") {
    x.parentElement.classList.add("fruity");
  }
}
ingredientlist.forEach(x => checkcondition(x))



// scrolling to ingredients index of the whine show when submitting the form
const ingredient_btn = document.getElementById("submit-btn-wine-ingredients");
// const ingredient_index = document.getElementById("ingredients-index-wine-show");
// function scrolldown(e) {
//   ingredient_btn.scrollIntoView({behavior: "smooth"});

// }

// ingredient_btn.addEventListener('click', scrolldown)
// ingredient_btn.scrollIntoView({behavior: "smooth"});
if (document.body.contains(ingredient_btn)) {
  ingredient_btn.scrollIntoView({behavior: "smooth"});
}




