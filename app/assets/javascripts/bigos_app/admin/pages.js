$(document).ready(function(){
    console.log("ready")
    $("a.remove_exist").on("click", function(){
        console.log("remove_exist click")
      $(this).closest("fieldset").remove()
    });
})