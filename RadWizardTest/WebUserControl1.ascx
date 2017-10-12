<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControl1.ascx.cs" Inherits="RadWizardTest.WebUserControl1" %>
<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI, Version=2017.3.913.45, Culture=neutral, PublicKeyToken=121fae78165ba3d4" %>
<h3>Grid</h3>
<asp:ScriptManagerProxy runat="server" ID="scriptProxy"></asp:ScriptManagerProxy>

<telerik:RadGrid runat="server" ID="rg1" AllowPaging="True" ShowFooter="true" AutoGenerateEditColumn="False"
                 AllowSorting="True" AutoGenerateColumns="False" ShowStatusBar="true" OnNeedDataSource="rg1_OnNeedDataSource">
    <MasterTableView InsertItemDisplay="Top" InsertItemPageIndexAction="ShowItemOnCurrentPage" CommandItemDisplay="Top" DataKeyNames="Id">
        <Columns>
        <telerik:GridEditCommandColumn UniqueName="EditCommandColumn">
        </telerik:GridEditCommandColumn>
            </Columns>
        <EditFormSettings EditFormType="WebUserControl" UserControlName="WebUserControl2.ascx">
            <EditColumn UniqueName="EditCommandColumn1">
            </EditColumn>
        </EditFormSettings>
    </MasterTableView>
</telerik:RadGrid>