<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControl2.ascx.cs" Inherits="RadWizardTest.WebUserControl2" %>
<asp:UpdatePanel runat="server">
    <ContentTemplate>
        <h4>Hello</h4>
        <asp:RadioButtonList runat="server" ID="rb1" AutoPostBack="True" OnSelectedIndexChanged="OnSelectedIndexChanged">
            <Items>
                <asp:ListItem Value="Type1">Type 1</asp:ListItem>
                <asp:ListItem Value="Type2">Type 2</asp:ListItem>
            </Items>
        </asp:RadioButtonList>
        <asp:PlaceHolder runat="server" ID="phType1" Visible="False">Type 111111111111111111</asp:PlaceHolder>
        <asp:PlaceHolder runat="server" ID="phType2" Visible="False">Type 222222222222222222222222222222222222222222</asp:PlaceHolder>
    </ContentTemplate>
</asp:UpdatePanel>
