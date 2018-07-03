
$( document ).on('turbolinks:load', function() {
  //
  $(".kinds-titles").first().addClass('active');

  $(".kind-row").hide();
  $(".kind-row").first().hide();

  $(".kinds-titles").click(function() {

      var target = $(this).data('target');
      console.log(target);
      $(".kinds-titles").removeClass('active');
      $('h4.kind-' + target).addClass('active');
      $('.kind-row').hide();
      $('div.kind-' + target).show();

  });

})

