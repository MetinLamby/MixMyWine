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


const winetype = document.querySelectorAll('.winetype-link');
winetype.forEach((wt, index) => wt.setAttribute("id", `wt${index + 1}`))


const ingredientlist = document.querySelectorAll(".i-name")
function checkcondition(x){
  if (x.innerHTML === "Heavy") {
    x.parentElement.classList.add("heavy");
  } else if (x.innerHTML === "Sweet") {
    x.parentElement.classList.add("sweet");
  } else if (x.innerHTML === "Sour") {
    x.parentElement.classList.add("sour");
  } else if (x.innerHTML === "Creamy") {
    x.parentElement.classList.add("creamy");
  } else if (x.innerHTML === "Bitter") {
    x.parentElement.classList.add("bitter");
  } else if (x.innerHTML === "Sparkling") {
    x.parentElement.classList.add("sparkling");
  } else if (x.innerHTML === "Confetti") {
    x.parentElement.classList.add("confetti");
  } else if (x.innerHTML === "Fruity") {
    x.parentElement.classList.add("fruity");
  }
}
ingredientlist.forEach(x => checkcondition(x))



const ingredientlisttwo = document.querySelectorAll(".ingredient-name")
function checkconditiontwo(x){
  if (x.innerHTML === "Heavy") {
    x.classList.add("heavy");
  } else if (x.innerHTML === "Sweet") {
    x.classList.add("sweet");
  } else if (x.innerHTML === "Sour") {
    x.classList.add("sour");
  } else if (x.innerHTML === "Creamy") {
    x.classList.add("creamy");
  } else if (x.innerHTML === "Bitter") {
    x.classList.add("bitter");
  } else if (x.innerHTML === "Sparkling") {
    x.classList.add("sparkling");
  } else if (x.innerHTML === "Confetti") {
    x.classList.add("confetti");
  } else if (x.innerHTML === "Fruity") {
    x.classList.add("fruity");
  }
}
ingredientlisttwo.forEach(x => checkconditiontwo(x))


const wineindex = document.querySelectorAll(".wine-cards")
function checkconditionthree(x){
  if (x.querySelectorAll(".winename")[0].innerHTML === "Berlin") {
    x.querySelector(".winename").parentElement.parentElement.classList.add("berlin");

  } else if (x.querySelectorAll(".winename")[0].innerHTML === "Paris") {
    x.querySelector(".winename").parentElement.parentElement.classList.add("paris");

  } else if (x.querySelectorAll(".winename")[0].innerHTML === "New York") {
    x.querySelector(".winename").parentElement.parentElement.classList.add("new-york");

  } else if (x.querySelectorAll(".winename")[0].innerHTML === "London") {
    x.querySelector(".winename").parentElement.parentElement.classList.add("london");

  } else if (x.querySelectorAll(".winename")[0].innerHTML === "Istanbul") {
    x.querySelector(".winename").parentElement.parentElement.classList.add("istanbul");

  } else if (x.querySelectorAll(".winename")[0].innerHTML === "Rio") {
    x.querySelector(".winename").parentElement.parentElement.classList.add("rio");

  } else if (x.querySelectorAll(".winename")[0].innerHTML === "Shanghai") {
    x.querySelector(".winename").parentElement.parentElement.classList.add("shanghai");

  } else if (x.querySelectorAll(".winename")[0].innerHTML === "Moscow") {
    x.querySelector(".winename").parentElement.parentElement.classList.add("moscow");

  } else if (x.querySelectorAll(".winename")[0].innerHTML === "Sydney") {
    x.querySelector(".winename").parentElement.parentElement.classList.add("sydney");

  } else if (x.querySelectorAll(".winename")[0].innerHTML === "Rome") {
    x.querySelector(".winename").parentElement.parentElement.classList.add("rome");

  } else if (x.querySelectorAll(".winename")[0].innerHTML === "Tokyo") {
    x.querySelector(".winename").parentElement.parentElement.classList.add("tokyo");

  } else if (x.querySelectorAll(".winename")[0].innerHTML === "Mykonos") {
    x.querySelector(".winename").parentElement.parentElement.classList.add("mykonos");
  }
}
wineindex.forEach(x => checkconditionthree(x))





// const q = document.querySelectorAll(".wine-cards")

// q.forEach(q=>console.log(q.querySelectorAll(".winename")[0].innerHTML))






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




