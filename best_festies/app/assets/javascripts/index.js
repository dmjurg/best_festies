$(document).ready(function(){
  var currentIndex = 0;
  var items = $('.container div');
  var itemAmt = items.length;

  function cycleItems(){
    var item = $('.container div').eq(currentIndex);
    items.hide();
    item.css('display','inline-block');
  };

  var autoSlide = setInterval(function (){
    currentIndex += 1;
    if (currentIndex > itemAmt - 1) {
      currentIndex = 0;
    }
    cycleItems();
  }, 2000);
})
