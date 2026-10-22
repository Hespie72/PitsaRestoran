<%@ Page Title="Tootaja" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About2.aspx.cs" Inherits="WebApplication1.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title">Koostisosa</h2>
<p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="KoostisosaID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField DeleteText="Kustuta" EditText="Muuda" ShowDeleteButton="True" ShowEditButton="True" CancelText="Tühista" UpdateText="Uuenda" />
            <asp:BoundField DataField="KoostisosaID" HeaderText="KoostisosaID" ReadOnly="True" SortExpression="KoostisosaID" />
            <asp:BoundField DataField="nimetus" HeaderText="nimetus" SortExpression="nimetus" />
            <asp:TemplateField HeaderText="kehtivusaeg" SortExpression="kehtivusaeg">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" TextMode="Date" Text='<%# Bind("kehtivusaeg") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" CssClass="form-control" TextMode="Date" Text='<%# Bind("kehtivusaeg") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PitsarestoranConnectionString2 %>" DeleteCommand="DELETE FROM [KoostisosaSet] WHERE [KoostisosaID] = @KoostisosaID" InsertCommand="INSERT INTO [KoostisosaSet] ([nimetus], [kehtivusaeg]) VALUES (@nimetus, @kehtivusaeg)" ProviderName="<%$ ConnectionStrings:PitsarestoranConnectionString2.ProviderName %>" SelectCommand="SELECT [KoostisosaID], [nimetus], [kehtivusaeg] FROM [KoostisosaSet]" UpdateCommand="UPDATE [KoostisosaSet] SET [nimetus] = @nimetus, [kehtivusaeg] = @kehtivusaeg WHERE [KoostisosaID] = @KoostisosaID">
        <DeleteParameters>
            <asp:Parameter Name="KoostisosaID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="nimetus" Type="String" />
            <asp:Parameter Name="kehtivusaeg" Type="DateTime" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="nimetus" Type="String" />
            <asp:Parameter Name="kehtivusaeg" Type="DateTime" />
            <asp:Parameter Name="KoostisosaID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</p>
    <h2>Lisa tootaja</h2>
    <p>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="KoostisosaID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="50px" Width="125px">
            <AlternatingRowStyle BackColor="White" />
            <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
            <EditRowStyle BackColor="#2461BF" />
            <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="KoostisosaID" HeaderText="KoostisosaID" InsertVisible="False" ReadOnly="True" SortExpression="KoostisosaID" />
                <asp:BoundField DataField="nimetus" HeaderText="nimetus" SortExpression="nimetus" />
                <asp:TemplateField HeaderText="kehtivusaeg" SortExpression="kehtivusaeg">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" TextMode="Date" Text='<%# Bind("kehtivusaeg") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" TextMode="Date" Text='<%# Bind("kehtivusaeg") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" CssClass="form-control" TextMode="Date" Text='<%# Bind("kehtivusaeg") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField NewText="Lisa" ShowInsertButton="True" CancelText="Tühista" InsertText="Lisa" />
            </Fields>
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
        </asp:DetailsView>
    </p>
    <p>&nbsp;</p>
    </main>
</asp:Content>
