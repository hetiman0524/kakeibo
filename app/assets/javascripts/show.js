$(document).on('turbolinks:load', function(){
  $(".triangle-open").on("click", function(){
  console.log(".triangle-open")
  
  //詳細を取得、表示する
  let id = $(this).parent().data('cat-id');
  console.log(id);
  var gethidden = ($(this).parent().nextAll().slice(0, id));
  console.log($(gethidden));
  gethidden.removeClass("hidden");
  //△の三角形を取得、表示する
  var gettriangleclose = ($(this).next(".triangle-close"));
  gettriangleclose.removeClass("hidden");
  //▽の三角形を消す
  $(this).addClass("hidden");
  })

  $(".triangle-close").on("click", function(){
  console.log(".triangle-close")
  
  //詳細を取得、消す
  let id = $(this).parent().data('cat-id');
  var getshow = ($(this).parent().nextAll().slice(0, id));
  getshow.addClass("hidden")
  //▽の三角形を取得、表示する
  var gettriangleopen = ($(this).prev(".triangle-open"));
  gettriangleopen.removeClass("hidden")
  //△の三角形を消す
  $(this).addClass("hidden")
  })
});

