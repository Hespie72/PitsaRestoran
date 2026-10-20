<%@ Page Title="Tootaja" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About3.aspx.cs" Inherits="WebApplication1.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title">Tarnija Koostisosa</h2>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Tarnija_KoostisosaID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Tarnija_KoostisosaID" HeaderText="Tarnija_KoostisosaID" InsertVisible="False" ReadOnly="True" SortExpression="Tarnija_KoostisosaID" />
                <asp:BoundField DataField="tarneriik" HeaderText="tarneriik" SortExpression="tarneriik" />
                <asp:BoundField DataField="tarnekuupaev" HeaderText="tarnekuupaev" SortExpression="tarnekuupaev" />
                <asp:BoundField DataField="kogus" HeaderText="kogus" SortExpression="kogus" />
                <asp:BoundField DataField="nimetus" HeaderText="nimetus" SortExpression="nimetus" />
                <asp:BoundField DataField="KoostisosaNimetus" HeaderText="KoostisosaNimetus" SortExpression="KoostisosaNimetus" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PitsarestoranConnectionString2 %>" DeleteCommand="DELETE FROM [Tarnija_KoostisosaSet] WHERE [Tarnija_KoostisosaID] = @Tarnija_KoostisosaID" InsertCommand="INSERT INTO [Tarnija_KoostisosaSet] ([tarneriik], [tarnekuupaev], [kogus], [Tarnija_TarnijaID], [Koostisosa_KoostisosaID]) VALUES (@tarneriik, @tarnekuupaev, @kogus, @Tarnija_TarnijaID, @Koostisosa_KoostisosaID)" SelectCommand="SELECT Tarnija_KoostisosaSet.Tarnija_KoostisosaID, Tarnija_KoostisosaSet.tarneriik, Tarnija_KoostisosaSet.tarnekuupaev, Tarnija_KoostisosaSet.kogus, TarnijaSet.nimetus, KoostisosaSet.nimetus AS KoostisosaNimetus FROM Tarnija_KoostisosaSet INNER JOIN TarnijaSet ON Tarnija_KoostisosaSet.Tarnija_TarnijaID = TarnijaSet.TarnijaID INNER JOIN KoostisosaSet ON Tarnija_KoostisosaSet.Koostisosa_KoostisosaID = KoostisosaSet.KoostisosaID" UpdateCommand="UPDATE [Tarnija_KoostisosaSet] SET [tarneriik] = @tarneriik, [tarnekuupaev] = @tarnekuupaev, [kogus] = @kogus, [Tarnija_TarnijaID] = @Tarnija_TarnijaID, [Koostisosa_KoostisosaID] = @Koostisosa_KoostisosaID WHERE [Tarnija_KoostisosaID] = @Tarnija_KoostisosaID">
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
