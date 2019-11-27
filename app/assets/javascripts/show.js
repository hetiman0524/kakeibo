$(function()  {
  $(".triangle-open").on("click", function(){
  console.log(".triangle-open")
  
  //thisはclickしたtriangleを持っている
  //parentはthisの親、つまりcategory名と金額を指定している
  var gethidden = ($(this).parent().next(".hidden"));
  var gettriangleclose = ($(this).next(".triangle-close"));
  gethidden.removeClass("hidden");
  $(this).addClass("open");
  gettriangleclose.removeClass("close");
  })

  $(".triangle-close").on("click", function(){
  console.log(".triangle-close")
  
  var getcontentshow = ($(this).parent().next(".content-show"));
  var gettriangleopen = ($(this).prev(".triangle-open"));
  getcontentshow.addClass("hidden")
  gettriangleopen.removeClass("open")
  $(this).addClass("hidden")
  })
});

