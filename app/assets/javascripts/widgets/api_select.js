// local var
// @var sales_channel_apis_url string


$(document).ready(
  function() {
    $("#sales_channel_id").change(
      function() {
        if ($(this).val() == 0) {
          $(this).next("select").children().remove();
          return false;
        }
        $.ajax(
          {
            url: sales_channel_apis_url + "?sales_channel_id=" + $(this).val(),
            success: function(data) {
              $("#sales_channel_id").next("select").children().remove();
              for (var i = 0; i < data.length; i++ ) {
                var name = data[i].name;
                var id = data[i].id;
                $("#sales_channel_id").next("select").append("<option value=\"" + id + "\">" + name + "</option>");
              }
            }
          }
        );
        return true;
      });
  }
);
