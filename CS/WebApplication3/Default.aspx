<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication3._Default" %>

<%@ register Assembly="DevExpress.Web.v13.1" Namespace="DevExpress.Web.ASPxEditors"
    TagPrefix="dxe" %>

<%@ register Assembly="DevExpress.Web.v13.1" Namespace="DevExpress.Web.ASPxGridView"
    TagPrefix="dxwgv" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <script type="text/javascript">
      function ProcessSelect (editor)
      {
         //grid.PerformCallback(editor.GetChecked());
      }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <dxwgv:aspxgridview ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" ClientInstanceName="grid" EnableViewState="False" OnCustomCallback="ASPxGridView1_CustomCallback" KeyFieldName="CategoryID" >
        <columns>
          <dxwgv:gridviewdatatextcolumn FieldName="CategoryID" VisibleIndex="0">
          </dxwgv:gridviewdatatextcolumn>
          <dxwgv:gridviewdatatextcolumn FieldName="CategoryName" VisibleIndex="1">
          </dxwgv:gridviewdatatextcolumn>
          <dxwgv:gridviewdatatextcolumn FieldName="Description" VisibleIndex="2">
          </dxwgv:gridviewdatatextcolumn>
        </columns>
        </dxwgv:aspxgridview>
        <asp:accessdatasource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/categories.mdb"
            SelectCommand="SELECT [CategoryID], [CategoryName], [Description] FROM [Categories]"></asp:accessdatasource>
    </div>
    </form>
</body>
</html>
