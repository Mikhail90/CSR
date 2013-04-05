$(function() {
  $("#requests th a, #requests .pagination a").live("click", function() {
    $.getScript(this.href);
    return false;
  });
  $("#requests_search input").keyup(function() {
    $.get($("#requests_search").attr("action"), $("#requests_search").serialize(), null, "script");
    return false;
  });
});