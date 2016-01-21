function ReadDataFromExcel() 

{ 

 var Excel = Sys.OleObject("Excel.Application"); 

 Excel.Workbooks.Open("C:\\Users\\pakenapalli\\Desktop\\NewFolder\\LoginData.xls"); 
 
//Read data to variable for user role ESP ADMG EAT
Project.Variables.ESP_EAT_ASINumberVar= Excel.Cells(2,1)
Project.Variables.ESP_EAT_UserNameVar= Excel.Cells(2,2)
Project.Variables.ESP_EAT_PasswordVar= Excel.Cells(2,3)

//Read data to variable for user role ESP ADMG Sales
Project.Variables.ESP_Sales_ASINumberVar= Excel.Cells(3,1)
Project.Variables.ESP_Sales_UserNameVar= Excel.Cells(3,2)
Project.Variables.ESP_Sales_PasswordVar= Excel.Cells(3,3)

//Read data to variable for user role SGR ADMG EAT
Project.Variables.SGR_EAT_ASINumberVar= Excel.Cells(4,1)
Project.Variables.SGR_EAT_UserNameVar= Excel.Cells(4,2)
Project.Variables.SGR_EAT_PasswordVar= Excel.Cells(4,3)

//Read data to variable for user role SGR ADMG Sales
Project.Variables.SGR_Sales_ASINumberVar= Excel.Cells(5,1)
Project.Variables.SGR_Sales_UserNameVar= Excel.Cells(5,2)
Project.Variables.SGR_Sales_PasswordVar= Excel.Cells(5,3)

 Excel.Quit(); 

} 
