<%@ page title="Contact Us | Boyga Website Design, Development and Consulting | Omaha, Nebraska" language="C#" masterpagefile="~/Site.master" autoeventwireup="true" inherits="Contact, App_Web_jabpe03d" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" Runat="Server">
    <h3>Contact</h3>
        <div id="Information">
            <div id="ValidationErrors" class="row" runat="server"><asp:ValidationSummary ID="VS" ShowSummary="true" runat="server" /><div id="ErrorMsg" class="ErrorMsg" visible="false" runat="server"></div></div>
            
            <div class="row">
                <asp:Label ID="lblName" runat="server" AssociatedControlID="tbName" CssClass="lbl" Text="Name:">Name:</asp:Label><asp:TextBox ID="tbName" runat="server" TabIndex="1" MaxLength="50" CssClass="tb-name"></asp:TextBox>
                <asp:RequiredFieldValidator EnableClientScript="true" ID="rfvName" CssClass="redB" Display="Dynamic" SetFocusOnError="true" ControlToValidate="tbName" Text="*" ErrorMessage="Your Name is required." runat="server" />
            </div>
            <div class="row">
                <asp:Label ID="lblURL" runat="server" AssociatedControlID="tbURL" CssClass="lbl" Text="Website:">Website:</asp:Label><asp:TextBox ID="tbURL" runat="server" TabIndex="2" MaxLength="100" CssClass="tb-url">(It's okay if you don't have one yet)</asp:TextBox>
            </div>
            <div class="row">
                <asp:Label ID="lblEmail" runat="server" AssociatedControlID="tbEmail" CssClass="lbl" Text="Email:">Email:</asp:Label><asp:TextBox ID="tbEmail" runat="server" TabIndex="3" MaxLength="60" CssClass="tb-email"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvEmail" CssClass="redB" Display="Dynamic" EnableClientScript="true" SetFocusOnError="true" ControlToValidate="tbEmail" Text="*" ErrorMessage="Your email address is required." runat="server" />
                <asp:RegularExpressionValidator ID="revEmail" CssClass="redB" EnableClientScript="true" Display="Dynamic" SetFocusOnError="true" ControlToValidate="tbEmail" Text="*" ErrorMessage="Email address is invalid." ValidationExpression="^([0-9a-zA-Z]([-.\w]*[0-9a-zA-Z])*@([0-9a-zA-Z][-\w]*[0-9a-zA-Z]\.)+[a-zA-Z]{2,9}){0,1}$" runat="server" />
            </div>
            <div class="row">
                <asp:Label ID="lblInfo" runat="server" AssociatedControlID="tbInfo" CssClass="lbl" Text="Message:">Message:</asp:Label><asp:TextBox ID="tbInfo" runat="server" TabIndex="4" MaxLength="350" TextMode="MultiLine" CssClass="tb-info"></asp:TextBox>
                <asp:RequiredFieldValidator EnableClientScript="true" ID="rfvInfo" CssClass="redB" Display="Dynamic" SetFocusOnError="true" ControlToValidate="tbInfo" Text="*" ErrorMessage="Please leave a message so I know what you need." runat="server" />
            </div>
            <div class="row">
                <asp:Button ID="btnSubmit" runat="server" OnClick="Submit" TabIndex="5" CssClass="btn" Text="Submit" />
            </div>
            <div class="row">
                <asp:Label ID="lblStatus" runat="server"></asp:Label>
            </div>
        </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphScripts" Runat="Server">
</asp:Content>

