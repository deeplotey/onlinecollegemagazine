/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

var xmlhttp;
function check_ajax()
{
    var ajaxRequest;  // The variable that makes Ajax possible!
	
	try
        {
		// Opera 8.0+, Firefox, Safari
		ajaxRequest = new XMLHttpRequest();
                return ajaxRequest;
	}
        catch (e)
        {
		// Internet Explorer Browsers
            try
            {
			ajaxRequest = new ActiveXObject("Msxml2.XMLHTTP");
                        return ajaxRequest;
            }
            catch (e) 
            {
		try{
			ajaxRequest = new ActiveXObject("Microsoft.XMLHTTP");
                        return ajaxRequest;
                  }
                  catch (e)
                  {
			// Something went wrong
			alert("Your browser broke!");
			return null;
		  }
            }
	}
 }
function good1(n)
 {
     var ajaxRequest=check_ajax();
      ajaxRequest.onreadystatechange = function()
        {
           if(ajaxRequest.readyState == 4 && ajaxRequest.status==200)
            {
                 document.getElementById("myDiv").innerHTML=ajaxRequest.responseText;
                                    
             }
          }
          if(n==7)
              {
                   ajaxRequest.open("POST", "b1_next_type.jsp?5", true);
              }
              else if(n==0)
                  {
                       ajaxRequest.open("POST", "b1_next_type.jsp?1", true);
                  }
          else
              {
                  ajaxRequest.open("POST", "b1_next_type.jsp?"+n, true);
              }
               ajaxRequest.send(null); 
   }

