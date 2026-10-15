<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact2.aspx.cs" Inherits="WebApplication1.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title">Töötaja Ametikoht.</h2>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Tootaja_AmetikohtID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Tootaja_AmetikohtID" HeaderText="Tootaja_AmetikohtID" ReadOnly="True" SortExpression="Tootaja_AmetikohtID" InsertVisible="False" />
                <asp:BoundField DataField="AmetiNimetus" HeaderText="AmetiNimetus" SortExpression="AmetiNimetus" />
                <asp:BoundField DataField="nimetus" HeaderText="nimetus" SortExpression="nimetus" />
                <asp:BoundField DataField="eesnimi" HeaderText="eesnimi" SortExpression="eesnimi" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PitsarestoranConnectionString2 %>" DeleteCommand="DELETE FROM [Tootaja_AmetikohtSet] WHERE [Tootaja_AmetikohtID] = @Tootaja_AmetikohtID" InsertCommand="INSERT INTO [Tootaja_AmetikohtSet] ([Tootaja_TootajaID], [Ameti_AmetiID], [AmetiNimetus]) VALUES (@Tootaja_TootajaID, @Ameti_AmetiID, @AmetiNimetus)" SelectCommand="SELECT Tootaja_AmetikohtSet.Tootaja_AmetikohtID, Tootaja_AmetikohtSet.AmetiNimetus, AmetiSet.nimetus, TootajaSet.eesnimi FROM Tootaja_AmetikohtSet INNER JOIN AmetiSet ON Tootaja_AmetikohtSet.Ameti_AmetiID = AmetiSet.AmetiID INNER JOIN TootajaSet ON Tootaja_AmetikohtSet.Tootaja_TootajaID = TootajaSet.TootajaID" UpdateCommand="UPDATE [Tootaja_AmetikohtSet] SET [Tootaja_TootajaID] = @Tootaja_TootajaID, [Ameti_AmetiID] = @Ameti_AmetiID, [AmetiNimetus] = @AmetiNimetus WHERE [Tootaja_AmetikohtID] = @Tootaja_AmetikohtID">
            <DeleteParameters>
                <asp:Parameter Name="Tootaja_AmetikohtID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Tootaja_TootajaID" Type="Int32" />
                <asp:Parameter Name="Ameti_AmetiID" Type="Int32" />
                <asp:Parameter Name="AmetiNimetus" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Tootaja_TootajaID" Type="Int32" />
                <asp:Parameter Name="Ameti_AmetiID" Type="Int32" />
                <asp:Parameter Name="AmetiNimetus" Type="String" />
                <asp:Parameter Name="Tootaja_AmetikohtID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    </main>
</asp:Content>
