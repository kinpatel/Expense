function populateYearSelect() 
 { 
   d = new Date(); 

   curr_year = d.getFullYear(); 

   for(i = 0; i < 4; i++) 
   { 
       document.getElementById('year').options[i] = new Option(curr_year-i,curr_year-i); 
   } 
   
 document.forms[0].month.selectedIndex = d.getMonth();
  } 
  
  function submit()
  {
  document.forms[0].target="_self";
  document.forms[0].submit();

  }
  
  window.onload=function() {  
	   populateYearSelect();
	   setSel();
	 }
	 
	 function setSel() {
	   var cook = getCookie('cook');
	   if (cook==null) return;
	   var theForm = document.forms[0];
	   var yyyy = cook.substring(0,4)
	   var mm = parseInt(cook.substring(4));
	   for(var i=0; i<4; i++) { 
	     if (yyyy== theForm.year.options[i].value) {
	        theForm.year.options[i].selectedIndex=i;
	        break;
	     } 
	   } 
	   theForm.month.selectedIndex=mm;
	 }
	 
	 function saveSelection(theForm) {
	   var cook = theForm.year.options[theForm.year.selectedIndex].value+''+theForm.month.options[theForm.month.selectedIndex].value;
	   setCookie('cook',cook);
	 }

