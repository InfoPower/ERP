
function myCheckAll(varInd)
{
  $('input:checkbox').each(function(index) {
    
    if (index != 0)
      {
        
        if (varInd)
          {
            $(this).prop('checked',true);
          }
        else
          {
            $(this).prop('checked',false);
          }
      }
    
  });
}