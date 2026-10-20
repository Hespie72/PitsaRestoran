<%@ Page Title="Tootaja" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About1.aspx.cs" Inherits="WebApplication1.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title">Tarnija</h2>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="TarnijaID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField DeleteText="Kustuta" EditText="Muuda" ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="TarnijaID" HeaderText="TarnijaID" ReadOnly="True" SortExpression="TarnijaID" />
                <asp:BoundField DataField="nimetus" HeaderText="nimetus" SortExpression="nimetus" />
                <asp:BoundField DataField="telefon" HeaderText="telefon" SortExpression="telefon" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:modelDBConnectionString1 %>" DeleteCommand="DELETE FROM [TarnijaSet] WHERE [TarnijaID] = @TarnijaID" InsertCommand="INSERT INTO [TarnijaSet] ([nimetus], [telefon]) VALUES (@nimetus, @telefon)" ProviderName="<%$ ConnectionStrings:modelDBConnectionString1.ProviderName %>" SelectCommand="SELECT [TarnijaID], [nimetus], [telefon] FROM [TarnijaSet]" UpdateCommand="UPDATE [TarnijaSet] SET [nimetus] = @nimetus, [telefon] = @telefon WHERE [TarnijaID] = @TarnijaID">
            <DeleteParameters>
                <asp:Parameter Name="TarnijaID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="nimetus" Type="String" />
                <asp:Parameter Name="telefon" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="nimetus" Type="String" />
                <asp:Parameter Name="telefon" Type="String" />
                <asp:Parameter Name="TarnijaID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
<br />
    <h2>Lisa tarnija</h2>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="TarnijaID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="50px" Width="125px">
        <AlternatingRowStyle BackColor="White" />
        <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
        <EditRowStyle BackColor="#2461BF" />
        <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="TarnijaID" HeaderText="TarnijaID" InsertVisible="False" ReadOnly="True" SortExpression="TarnijaID" />
            <asp:BoundField DataField="nimetus" HeaderText="nimetus" SortExpression="nimetus" />
            <asp:BoundField DataField="telefon" HeaderText="telefon" SortExpression="telefon" />
            <asp:CommandField InsertText="Lisa" NewText="Lisa" ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
</asp:DetailsView>
<br />
    </main>
</asp:Content>
