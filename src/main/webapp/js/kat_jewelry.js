 // Scroll sticky navbar

const navbar = document.querySelector("#navbar");
// const sticky = navbar.offsetTop;
// console.log(sticky)
window.onscroll = function () {
  if (window.pageYOffset >= 100) {
    navbar.classList.add("sticky-top");
  } else {
    navbar.classList.remove("sticky-top");
  }
};


// Multiple item carousel boostrap

var multipleCardCarousel = document.querySelector(
    "#blog"
  );
  if (window.matchMedia("(min-width: 576px)").matches) {
    var carousel = new bootstrap.Carousel(multipleCardCarousel, {
      interval: false,
    });
    var carouselWidth = $("#blog .carousel-inner")[0].scrollWidth;
    var cardWidth = $("#blog .carousel-item").width();
    var scrollPosition = 0;
    $("#blog .carousel-control-next").on("click", function () {
        console.log("next")
      if (scrollPosition < carouselWidth - cardWidth * 4) {
        scrollPosition += cardWidth;
        $("#blog .carousel-inner").animate(
          { scrollLeft: scrollPosition },
          600
        );
      }
    });
    $("#blog .carousel-control-prev").on("click", function () {
      if (scrollPosition > 0) {
        console.log("pre")
        scrollPosition -= cardWidth;
        $("#blog .carousel-inner").animate(
          { scrollLeft: scrollPosition },
          600
        );
      }
    });
  } else {
    $(multipleCardCarousel).addClass("slide");
  }


// Loadmore feed back items
let loadMoreBtn = document.querySelector(".loadMore");
let currentItem =2;
loadMoreBtn.addEventListener('click', ()=>{
  let feedbackBox1 = [...document.querySelectorAll(".feedback .feedback-col .feedback-col1")];
  let feedbackBox2 = [...document.querySelectorAll(".feedback .feedback-col .feedback-col2")];
  let feedbackBox3 = [...document.querySelectorAll(".feedback .feedback-col .feedback-col3")];
  // console.log(feedbackBoxes);
  for (let i = currentItem; i < currentItem+1; i++) {
    feedbackBox1[i].style.display ="inline-block"; 
    feedbackBox2[i].style.display ="inline-block"; 
    feedbackBox3[i].style.display ="inline-block"; 
  };
  currentItem++;

  if(currentItem>= feedbackBox1.length){
    loadMoreBtn.style.display = "none"
  }


});
