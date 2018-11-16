 $(function() {
   return $(document).on('change', '#customer_select', function(evt) {
      return $.ajax('/update_buildings', {
             type: 'GET',
       dataType: 'script',
       data: {
         customers: $("#customer_select option:selected").val()
       },
       error: function(jqXHR, textStatus, errorThrown) {
         return console.log("AJAX Error: " + textStatus);
       },
       success: function(data, textStatus, jqXHR) {
         return console.log("Bonjour!");
         
 
       }
     });
   });
  });   
    
  $(function() {
    return $(document).on('change', '#building_select', function(evt) {
       return $.ajax('/update_batteries', {
              type: 'GET',
        dataType: 'script',
        data: {
          buildings: $("#building_select option:selected").val()
        },
        error: function(jqXHR, textStatus, errorThrown) {
          return console.log("AJAX Error: " + textStatus);
        },
        success: function(data, textStatus, jqXHR) {
          return console.log("Bonjour!");
          
  
        }
      });
    });
   });   
     

   $(function() {
    return $(document).on('change', '#battery_select', function(evt) {
       return $.ajax('/update_columns', {
              type: 'GET',
        dataType: 'script',
        data: {
          batteries: $("#battery_select option:selected").val()
        },
        error: function(jqXHR, textStatus, errorThrown) {
          return console.log("AJAX Error: " + textStatus);
        },
        success: function(data, textStatus, jqXHR) {
          return console.log("Bonjour!");
          
  
        }
      });
    });
   });   
     
   $(function() {
    return $(document).on('change', '#column_select', function(evt) {
       return $.ajax('/update_elevators', {
              type: 'GET',
        dataType: 'script',
        data: {
          columns: $("#column_select option:selected").val()
        },
        error: function(jqXHR, textStatus, errorThrown) {
          return console.log("AJAX Error: " + textStatus);
        },
        success: function(data, textStatus, jqXHR) {
          return console.log("Bonjour!");
          
  
        }
      });
    });
   }); 