<%@ Page Title="Tootaja" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="WebApplication1.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.</h2>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="TootajaID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="TootajaID" HeaderText="TootajaID" ReadOnly="True" SortExpression="TootajaID" />
                <asp:BoundField DataField="eesnimi" HeaderText="eesnimi" SortExpression="eesnimi" />
                <asp:BoundField DataField="perenimi" HeaderText="perenimi" SortExpression="perenimi" />
                <asp:BoundField DataField="isikukood" HeaderText="isikukood" SortExpression="isikukood" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PitsarestoranConnectionString2 %>" DeleteCommand="DELETE FROM [TootajaSet] WHERE [TootajaID] = @TootajaID" InsertCommand="INSERT INTO [TootajaSet] ([eesnimi], [perenimi], [isikukood]) VALUES (@eesnimi, @perenimi, @isikukood)" ProviderName="<%$ ConnectionStrings:PitsarestoranConnectionString2.ProviderName %>" SelectCommand="SELECT [TootajaID], [eesnimi], [perenimi], [isikukood] FROM [TootajaSet]" UpdateCommand="UPDATE [TootajaSet] SET [eesnimi] = @eesnimi, [perenimi] = @perenimi, [isikukood] = @isikukood WHERE [TootajaID] = @TootajaID">
            <DeleteParameters>
                <asp:Parameter Name="TootajaID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="eesnimi" Type="String" />
                <asp:Parameter Name="perenimi" Type="String" />
                <asp:Parameter Name="isikukood" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="eesnimi" Type="String" />
                <asp:Parameter Name="perenimi" Type="String" />
                <asp:Parameter Name="isikukood" Type="String" />
                <asp:Parameter Name="TootajaID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
        <h3>Your application description page.</h3>
        <p>Use this area to provide additional information.</p>
    </main>
</asp:Content>
