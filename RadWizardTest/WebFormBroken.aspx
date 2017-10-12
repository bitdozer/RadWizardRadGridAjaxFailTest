<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormBroken.aspx.cs" Inherits="RadWizardTest.WebFormBroken" MasterPageFile="MasterPage.master" %>

<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI, Version=2017.3.913.45, Culture=neutral, PublicKeyToken=121fae78165ba3d4" %>
<%@ Register Src="~/WebUserControl1.ascx" TagPrefix="uc1" TagName="WebUserControl1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="InnerContent" runat="Server">
    <h3>Broken Version</h3>
    <p>Click <strong>Documents</strong>, then click <strong>Add (+)</strong> and then click the Radio Buttons to see the edit form disappear.</p>
    <p>This is broken because we're removing one of the WizardSteps on Pre_Render</p>
    <asp:UpdatePanel runat="server">
        <ContentTemplate>
            <telerik:RadWizard runat="server" ID="rz1">
                <WizardSteps>
                    <telerik:RadWizardStep runat="server" ID="RadStepBasics" CausesValidation="True" StepType="Start" Title="Basics">
                    </telerik:RadWizardStep>
                    <telerik:RadWizardStep runat="server" ID="RadWizardLogos" StepType="Step" Title="Logo">
                    </telerik:RadWizardStep>
                    <telerik:RadWizardStep runat="server" ID="RadWizardDocuments" StepType="Step" Title="Documents">
                        <uc1:WebUserControl1 runat="server" id="WebUserControl1" OnLoad="WebUserControl1_OnLoad" />
                    </telerik:RadWizardStep>
                    <telerik:RadWizardStep runat="server" ID="RadWizardQuestions" StepType="Step" Title="Questions">
                    </telerik:RadWizardStep>
                    <telerik:RadWizardStep runat="server" ID="RadWizardEmail" StepType="Step" Title="Email">
                    </telerik:RadWizardStep>
                    <telerik:RadWizardStep runat="server" ID="RadWizardDevices" StepType="Finish" Title="Devices">
                    </telerik:RadWizardStep>
                </WizardSteps>
            </telerik:RadWizard>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
