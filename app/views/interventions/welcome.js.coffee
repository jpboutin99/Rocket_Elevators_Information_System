
# app/assets/javascripts/welcome.js.coffee
 
$ ->
  $(document).on 'change', '#customers_select', (evt) ->
    $.ajax 'update_buildings',
      type: 'GET'
      dataType: 'script'
      data: {
        customer_id: $("#customers_select option:selected").val()
      }
      error: (jqXHR, textStatus, errorThrown) ->
        console.log("AJAX Error: #{textStatus}")
      success: (data, textStatus, jqXHR) ->
        #console.log("Dynamic country select OK!")
