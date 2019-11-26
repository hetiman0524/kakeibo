$(function()  {
  $(".triangle").on("click", function(){
  console.log(".triangle")
  //var select = $(".hidden").var();
  //const index = $(".content-show").index(select);

  //thisはclickしたtriangleを持っている
  //parentはthisの親、つまりcategory名と金額を指定している
  var select = ($(this).parent().next(".hidden"));
  select.removeClass("hidden");
  //hiddenを取得して、hiddenを消す
  //$(".hidden").addClass("hidden");
  
  //$('.hidden').show();
  })
});