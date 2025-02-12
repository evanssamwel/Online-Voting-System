﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="editElections.aspx.cs" Inherits="editElections" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Edit Elections</title>
    <link href="http://fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic" rel="stylesheet" type="text/css" />
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/css/materialize.min.css" />
</head>
<body>
    <form id="form1" runat="server">
        <!--Nav bar-->
        <nav class="teal" role="navigation">
            <div class="nav-wrapper container">
                <a id="logo-container" href="Default.aspx" class="brand-logo">MATDAAN</a>
                <ul class="right hide-on-med-and-down">
                    <li><a href="addElections.aspx">ADD ELECTIONS</a></li>
                    <li><a href="editElections.aspx">EDIT ELECTIONS</a></li>
                    <li><a href="addCandidates.aspx">ADD CANDIDATES</a></li>
                </ul>

                <ul id="nav-mobile" class="side-nav">
                    <li><a href="addElections.aspx">ADD ELECTIONS</a></li>
                    <li><a href="editElections.aspx">EDIT ELECTIONS</a></li>
                    <li><a href="addCandidates.aspx">ADD CANDIDATES</a></li>
                </ul>
                <a href="#" data-activates="nav-mobile" class="button-collapse"><i class="material-icons">menu</i></a>
            </div>
        </nav>
        <!--Nav bar End-->

        <br /> <br />
        <div class="container">
            <h4><strong>EDIT YOUR ELECTIONS HERE:</strong></h4>
            <div class="row">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" DataKeyNames="id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="title" HeaderText="Title" SortExpression="title" />
                <asp:BoundField DataField="starttime" HeaderText="Start" SortExpression="starttime" />
                <asp:BoundField DataField="endtime" HeaderText="End" SortExpression="endtime" />
                <asp:BoundField DataField="descriptionelection" HeaderText="Description" SortExpression="descriptionelection" />
            </Columns>
        </asp:GridView>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=RAJAT\SQLEXPRESS;Initial Catalog=Voting;User ID=sa;Password=bl00dsql" ProviderName="System.Data.SqlClient" 
            SelectCommand="SELECT [id], [title], [starttime], [endtime], [descriptionelection] FROM [elections]"
            UpdateCommand = "UPDATE elections SET title = @title, starttime = @starttime, endtime = @endtime, descriptionelection = @descriptionelection where id = @id"
            DeleteCommand ="DELETE from elections where id = @id">

            <UpdateParameters>
                <asp:Parameter Name="title"/>
                <asp:Parameter Name="starttime" />
                <asp:Parameter Name="endtime"/>
                <asp:Parameter Name="descriptionelection"/>
            </UpdateParameters>
            <DeleteParameters>
                <asp:Parameter Name="id"/>
            </DeleteParameters>
        </asp:SqlDataSource>
            </div>
        </div>

    </form>
    <script src="Scripts/jquery-1.10.2.min.js" type="text/javascript"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/js/materialize.min.js"></script>
    <script src="Scripts/init.js" type="text/javascript"></script>    
</body>
</html>
