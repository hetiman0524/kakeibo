$(function()  {
  $(".triangle-open").on("click", function(){
  console.log(".triangle-open")
  
  //詳細を取得、表示する
  var gethidden = ($(this).parent().next(".show"));
  gethidden.removeClass("show");
  //△の三角形を取得、表示する
  var gettriangleclose = ($(this).next(".triangle-close"));
  gettriangleclose.removeClass("close");
  //▽の三角形を消す
  $(this).addClass("open");
  })

  $(".triangle-close").on("click", function(){
  console.log(".triangle-close")
  
  //詳細を取得、消す
  var getshow = ($(this).parent().next(".content-show"));
  getshow.addClass("show")
  //▽の三角形を取得、表示する
  var gettriangleopen = ($(this).prev(".triangle-open"));
  gettriangleopen.removeClass("open")
  //△の三角形を消す
  $(this).addClass("close")
  })
});

