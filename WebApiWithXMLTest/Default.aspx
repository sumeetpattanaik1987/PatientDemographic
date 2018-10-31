<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width:100%;">
    <tr>
        <td>ForeName :</td>
        <td><input id="txtForeName" type="text" /></td>
    </tr>
    <tr>
        <td>SurName :</td>
        <td><input id="txtSurName" type="text" /></td>
    </tr>
    <tr>
        <td>Date of Birth :</td>
        <td><input id="txtDOB" type="text" /></td>
    </tr>
    <tr>
        <td>Gender :</td>
        <td>
            <select id="ddlGender">
                <option value="value">Select</option>
                <option value="value">Male</option>
                <option value="value">Female</option>
            </select>
        </td>
    </tr>
    <tr>
        <td>Telephone Numbers :</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>Home :</td>
        <td><input id="txtHome" type="text" /></td>
    </tr>
    <tr>
        <td>Work :</td>
        <td><input id="txtWork" type="text" /></td>
    </tr>
    <tr>
        <td>Mobile :</td>
        <td><input id="txtMobile" type="text" /></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>
            <input id="btnSave" type="button" value="Save" /></td>
        <td>
            <input id="btnSearch" type="button" value="Fetch" /></td>
    </tr>
</table>
        </div>
    </form>
</body>
</html>
