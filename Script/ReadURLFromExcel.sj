function ReadURL() 

{ 

 var Excel = Sys.OleObject("Excel.Application"); 

 Excel.Workbooks.Open("C:\\Users\\pakenapalli\\Desktop\\NewFolder\\LoginData1.xls"); 
 
//Read data to variable for Environment URL
Project.Variables.TestEnvironmentURL= Excel.Cells(2,4);
Log.Message(VarToStr(Project.Variables.TestEnvironmentURL));

 Excel.Quit(); 

} 
