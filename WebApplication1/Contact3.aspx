<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact3.aspx.cs" Inherits="WebApplication1.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title">Tootaja Ametikoht Lisa.</h2>
    <p>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="Tootaja_AmetikohtID" DataSourceID="AmetiTootaja1" Height="50px" Width="125px">
            <Fields>
                <asp:BoundField DataField="Tootaja_AmetikohtID" HeaderText="Tootaja_AmetikohtID" InsertVisible="False" ReadOnly="True" SortExpression="Tootaja_AmetikohtID" />
                <asp:TemplateField HeaderText="Tootaja_TootajaID" SortExpression="Tootaja_TootajaID">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Tootaja_TootajaID") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="Tootaja" DataTextField="eesnimi" DataValueField="TootajaID" SelectedValue='<%# Bind("Tootaja_TootajaID") %>'>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="Tootaja" runat="server" ConnectionString="<%$ ConnectionStrings:PitsarestoranConnectionString2 %>" DeleteCommand="DELETE FROM [TootajaSet] WHERE [TootajaID] = @TootajaID" InsertCommand="INSERT INTO [TootajaSet] ([eesnimi], [perenimi], [isikukood]) VALUES (@eesnimi, @perenimi, @isikukood)" SelectCommand="SELECT * FROM [TootajaSet]" UpdateCommand="UPDATE [TootajaSet] SET [eesnimi] = @eesnimi, [perenimi] = @perenimi, [isikukood] = @isikukood WHERE [TootajaID] = @TootajaID">
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
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Tootaja_TootajaID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="AmetiNimetus" HeaderText="AmetiNimetus" SortExpression="AmetiNimetus" />
                <asp:TemplateField HeaderText="Ameti_AmetiID" SortExpression="Ameti_AmetiID">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Ameti_AmetiID") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="Ameti" DataTextField="nimetus" DataValueField="AmetiID" SelectedValue='<%# Bind("Ameti_AmetiID") %>'>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="Ameti" runat="server" ConnectionString="<%$ ConnectionStrings:PitsarestoranConnectionString2 %>" DeleteCommand="DELETE FROM [AmetiSet] WHERE [AmetiID] = @AmetiID" InsertCommand="INSERT INTO [AmetiSet] ([nimetus], [kirjeldus]) VALUES (@nimetus, @kirjeldus)" SelectCommand="SELECT * FROM [AmetiSet]" UpdateCommand="UPDATE [AmetiSet] SET [nimetus] = @nimetus, [kirjeldus] = @kirjeldus WHERE [AmetiID] = @AmetiID">
                            <DeleteParameters>
                                <asp:Parameter Name="AmetiID" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="nimetus" Type="String" />
                                <asp:Parameter Name="kirjeldus" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="nimetus" Type="String" />
                                <asp:Parameter Name="kirjeldus" Type="String" />
                                <asp:Parameter Name="AmetiID" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Ameti_AmetiID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="AmetiTootaja1" runat="server" ConnectionString="<%$ ConnectionStrings:PitsarestoranConnectionString2 %>" DeleteCommand="DELETE FROM [Tootaja_AmetikohtSet] WHERE [Tootaja_AmetikohtID] = @Tootaja_AmetikohtID" InsertCommand="INSERT INTO [Tootaja_AmetikohtSet] ([AmetiNimetus], [Tootaja_TootajaID], [Ameti_AmetiID]) VALUES (@AmetiNimetus, @Tootaja_TootajaID, @Ameti_AmetiID)" SelectCommand="SELECT * FROM [Tootaja_AmetikohtSet]" UpdateCommand="UPDATE [Tootaja_AmetikohtSet] SET [AmetiNimetus] = @AmetiNimetus, [Tootaja_TootajaID] = @Tootaja_TootajaID, [Ameti_AmetiID] = @Ameti_AmetiID WHERE [Tootaja_AmetikohtID] = @Tootaja_AmetikohtID">
            <DeleteParameters>
                <asp:Parameter Name="Tootaja_AmetikohtID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="AmetiNimetus" Type="String" />
                <asp:Parameter Name="Tootaja_TootajaID" Type="Int32" />
                <asp:Parameter Name="Ameti_AmetiID" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="AmetiNimetus" Type="String" />
                <asp:Parameter Name="Tootaja_TootajaID" Type="Int32" />
                <asp:Parameter Name="Ameti_AmetiID" Type="Int32" />
                <asp:Parameter Name="Tootaja_AmetikohtID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        &nbsp;</p>
    </main>
</asp:Content>
