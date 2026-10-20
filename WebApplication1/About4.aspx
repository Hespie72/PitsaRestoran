<%@ Page Title="Tootaja" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About4.aspx.cs" Inherits="WebApplication1.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title">Lisa Tarnija Koostisosades</h2>
    <p>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="Tarnija_KoostisosaID" DataSourceID="SqlDataSource1_TarnijaKoostisosa" Height="50px" Width="256px" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
            <EditRowStyle BackColor="#2461BF" />
            <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="Tarnija_KoostisosaID" HeaderText="Tarnija_KoostisosaID" InsertVisible="False" ReadOnly="True" SortExpression="Tarnija_KoostisosaID" />
                <asp:BoundField DataField="tarneriik" HeaderText="tarneriik" SortExpression="tarneriik" />
                <asp:BoundField DataField="tarnekuupaev" HeaderText="tarnekuupaev" SortExpression="tarnekuupaev" />
                <asp:BoundField DataField="kogus" HeaderText="kogus" SortExpression="kogus" />
                <asp:TemplateField HeaderText="Tarnija_TarnijaID" SortExpression="Tarnija_TarnijaID">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Tarnija_TarnijaID") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1_tarnija" DataTextField="nimetus" DataValueField="TarnijaID" SelectedValue='<%# Bind("Tarnija_TarnijaID") %>'>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1_tarnija" runat="server" ConnectionString="<%$ ConnectionStrings:PitsarestoranConnectionString2 %>" DeleteCommand="DELETE FROM [TarnijaSet] WHERE [TarnijaID] = @TarnijaID" InsertCommand="INSERT INTO [TarnijaSet] ([nimetus], [telefon]) VALUES (@nimetus, @telefon)" SelectCommand="SELECT * FROM [TarnijaSet]" UpdateCommand="UPDATE [TarnijaSet] SET [nimetus] = @nimetus, [telefon] = @telefon WHERE [TarnijaID] = @TarnijaID">
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
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Tarnija_TarnijaID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Koostisosa_KoostisosaID" SortExpression="Koostisosa_KoostisosaID">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Koostisosa_KoostisosaID") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1_Koostisosa" DataTextField="nimetus" DataValueField="KoostisosaID" SelectedValue='<%# Bind("Koostisosa_KoostisosaID") %>'>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1_Koostisosa" runat="server" ConnectionString="<%$ ConnectionStrings:PitsarestoranConnectionString2 %>" DeleteCommand="DELETE FROM [KoostisosaSet] WHERE [KoostisosaID] = @KoostisosaID" InsertCommand="INSERT INTO [KoostisosaSet] ([nimetus], [kehtivusaeg]) VALUES (@nimetus, @kehtivusaeg)" SelectCommand="SELECT * FROM [KoostisosaSet]" UpdateCommand="UPDATE [KoostisosaSet] SET [nimetus] = @nimetus, [kehtivusaeg] = @kehtivusaeg WHERE [KoostisosaID] = @KoostisosaID">
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
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Koostisosa_KoostisosaID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ShowInsertButton="True" NewText="Lisa" />
            </Fields>
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1_TarnijaKoostisosa" runat="server" ConnectionString="<%$ ConnectionStrings:PitsarestoranConnectionString2 %>" DeleteCommand="DELETE FROM [Tarnija_KoostisosaSet] WHERE [Tarnija_KoostisosaID] = @Tarnija_KoostisosaID" InsertCommand="INSERT INTO [Tarnija_KoostisosaSet] ([tarneriik], [tarnekuupaev], [kogus], [Tarnija_TarnijaID], [Koostisosa_KoostisosaID]) VALUES (@tarneriik, @tarnekuupaev, @kogus, @Tarnija_TarnijaID, @Koostisosa_KoostisosaID)" SelectCommand="SELECT * FROM [Tarnija_KoostisosaSet]" UpdateCommand="UPDATE [Tarnija_KoostisosaSet] SET [tarneriik] = @tarneriik, [tarnekuupaev] = @tarnekuupaev, [kogus] = @kogus, [Tarnija_TarnijaID] = @Tarnija_TarnijaID, [Koostisosa_KoostisosaID] = @Koostisosa_KoostisosaID WHERE [Tarnija_KoostisosaID] = @Tarnija_KoostisosaID">
            <DeleteParameters>
                <asp:Parameter Name="Tarnija_KoostisosaID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="tarneriik" Type="String" />
                <asp:Parameter Name="tarnekuupaev" Type="String" />
                <asp:Parameter Name="kogus" Type="String" />
                <asp:Parameter Name="Tarnija_TarnijaID" Type="Int32" />
                <asp:Parameter Name="Koostisosa_KoostisosaID" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="tarneriik" Type="String" />
                <asp:Parameter Name="tarnekuupaev" Type="String" />
                <asp:Parameter Name="kogus" Type="String" />
                <asp:Parameter Name="Tarnija_TarnijaID" Type="Int32" />
                <asp:Parameter Name="Koostisosa_KoostisosaID" Type="Int32" />
                <asp:Parameter Name="Tarnija_KoostisosaID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>&nbsp;</p>
    </main>
</asp:Content>
