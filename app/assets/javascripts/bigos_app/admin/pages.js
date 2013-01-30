$(document).ready(function(){
    $("a.remove_exist").on("click", function(){
        console.log("remove_exist click")
      $(this).closest("fieldset").remove()
    });
})