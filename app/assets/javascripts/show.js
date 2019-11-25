$(function()  {
  $(".triangle").on("click", function(){
  console.log(".triangle")
  //var select = $(".hidden").var();
  //const index = $(".content-show").index(select);

  //thisはclickしたtriangleを持っている
  //parentはthisの親、つまりcategory名と金額を指定している
  console.log($(this).parent());
  //hiddenを取得して、hiddenを消す

  //$('.hidden').removeClass("hidden");

  //$(this).removeClass("hidden");
  
  //$('.hidden').show();
  })
});