<%@ Page Title="Si Solutions | Sign in" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="sign_in.aspx.cs" Inherits="sign_in" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="loginstatus_pholder" runat="Server">

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="maincontent1pholder" runat="Server">
    <h1>Sign in</h1>
    <h2>Existing user?</h2>


    <form id="frmLogin" runat="server">
        <asp:Panel ID="pnlLogin" runat="server">
            <asp:Login ID="Login1" runat="server" RenderOuterTable="False">
                <LayoutTemplate>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="login" CssClass="errorMessages" />

                    <div>
                        <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">User Name:</asp:Label>

                        <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="login">*</asp:RequiredFieldValidator>
                    </div>

                    <div>
                        <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>

                        <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="login">*</asp:RequiredFieldValidator>
                    </div>

                    <div>
                        <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                    </div>

                    <div>
                        <asp:CheckBox ID="RememberMe" runat="server" Text="Remember me" />
                        <asp:Button ID="LoginButton" runat="server" CommandName="Login" Text="Log In" ValidationGroup="login" OnClick="LoginButton_Click" />
                        <asp:Button ID="btnLogout" runat="server" Text="Logout" OnClick="btnLogout_Click" />
                    </div>


                </LayoutTemplate>

            </asp:Login>
            You are logged in as: <asp:LoginName ID="LoginName1" runat="server" />
            <asp:LoginStatus ID="LoginStatus1" runat="server" />
        </asp:Panel>

        <h1>Sign up</h1>
        <h2>Register as a new user</h2>

        <asp:Panel ID="pnlRegister" runat="server">
            <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" BorderStyle="None" BorderWidth="0px" CellPadding="-1" CellSpacing="-1" EnableTheming="True">

                <WizardSteps>
                    <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server">

                        <ContentTemplate>
                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="register" CssClass="errorMessages" />
                            Sign Up for Your New Account
                                <div>
                                    <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">User Name:</asp:Label>

                                    <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="register">*</asp:RequiredFieldValidator>
                                </div>

                            <div>
                                <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>

                                <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="register">*</asp:RequiredFieldValidator>
                            </div>

                            <div>
                                <asp:Label ID="ConfirmPasswordLabel" runat="server" AssociatedControlID="ConfirmPassword">Confirm Password:</asp:Label>

                                <asp:TextBox ID="ConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server" ControlToValidate="ConfirmPassword" ErrorMessage="Confirm Password is required." ToolTip="Confirm Password is required." ValidationGroup="register">*</asp:RequiredFieldValidator>
                            </div>

                            <div>
                                <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email">E-mail:</asp:Label>

                                <asp:TextBox ID="Email" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="EmailRequired" runat="server" ControlToValidate="Email" ErrorMessage="E-mail is required." ToolTip="E-mail is required." ValidationGroup="register">*</asp:RequiredFieldValidator>
                            </div>

                            <div>
                                <asp:Label ID="QuestionLabel" runat="server" AssociatedControlID="Question">Security Question:</asp:Label>

                                <asp:TextBox ID="Question" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="QuestionRequired" runat="server" ControlToValidate="Question" ErrorMessage="Security question is required." ToolTip="Security question is required." ValidationGroup="register">*</asp:RequiredFieldValidator>
                            </div>

                            <div>
                                <asp:Label ID="AnswerLabel" runat="server" AssociatedControlID="Answer">Security Answer:</asp:Label>

                                <asp:TextBox ID="Answer" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="AnswerRequired" runat="server" ControlToValidate="Answer" ErrorMessage="Security answer is required." ToolTip="Security answer is required." ValidationGroup="register">*</asp:RequiredFieldValidator>
                            </div>

                            <div>
                                <asp:CompareValidator ID="PasswordCompare" runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword" Display="Dynamic" ErrorMessage="The Password and Confirmation Password must match." ValidationGroup="register"></asp:CompareValidator>
                            </div>
                            <div>
                                <asp:Literal ID="ErrorMessage" runat="server" EnableViewState="False"></asp:Literal>
                            </div>

                        </ContentTemplate>
                        <CustomNavigationTemplate>

                            <asp:Button ID="StepNextButton" runat="server" CommandName="MoveNext" Text="Create User" ValidationGroup="register" />

                        </CustomNavigationTemplate>
                    </asp:CreateUserWizardStep>
                    <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server">
                        <ContentTemplate>
                            Your account has been successfully created.

                            <asp:Button ID="ContinueButton" runat="server" CausesValidation="False" CommandName="Continue" Text="Continue" ValidationGroup="register" OnClick="ContinueButton_Click" />

                        </ContentTemplate>
                    </asp:CompleteWizardStep>
                </WizardSteps>
                <FinishNavigationTemplate>
                    <asp:Button ID="FinishPreviousButton" runat="server" CausesValidation="False" CommandName="MovePrevious" Text="Previous" />
                    <asp:Button ID="FinishButton" runat="server" CommandName="MoveComplete" Text="Finish" />
                </FinishNavigationTemplate>
                <StartNavigationTemplate>
                    <asp:Button ID="StartNextButton" runat="server" CommandName="MoveNext" Text="Next" />
                </StartNavigationTemplate>
                <StepNavigationTemplate>
                    <asp:Button ID="StepPreviousButton" runat="server" CausesValidation="False" CommandName="MovePrevious" Text="Previous" />
                    <asp:Button ID="StepNextButton" runat="server" CommandName="MoveNext" Text="Next" />
                </StepNavigationTemplate>
            </asp:CreateUserWizard>
        </asp:Panel>
        <div>
        </div>
    </form>
</asp:Content>
