﻿function OrdersSort_Ascending() {
 var ATable= Sys.Browser("firefox").Page("http://stage-admanagement.asicentral.com/am/inventory").Panel(0).Panel(2).Panel(0).Panel(0).Panel(0).Table(0);
 Log.AppendFolder("ATable");
 //var j=Project.Variables.ColumnNumber;
 var j=1;
 var ValToCompare = ATable.Cell(2, j);
 Project.Variables.ColumnSorting = "";
 for (var i=2; i < 12; i++)
 {
    Log.AppendFolder("Row" + aqConvert.IntToStr(i-1));
    // Obtains a cell
    var cell=ATable.Cell(i, j);
    // Compare sorting
    if(Project.Variables.ColumnSorting=="" && (cell.innertext)<(ValToCompare.innertext))
    {
        Project.Variables.ColumnSorting= "Fail";
        Log.Message(Project.Variables.ColumnSorting);
    }
    ValToCompare=cell;
    Log.PopLogFolder();      
          Log.Message(cell.innertext);
          
 }
   if(Project.Variables.ColumnSorting=="") Project.Variables.ColumnSorting="Pass";
   Log.Message(Project.Variables.ColumnSorting);
}
