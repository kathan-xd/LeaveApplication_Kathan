```aspx
<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="leaveApplication.aspx.cs"
    Inherits="LeaveApplication_Kathan.leaveApplication" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Leave Application</title>

    <style type="text/css">
        body {
            font-family: Arial;
        }

        .form-box {
            width: 500px;
            margin: 30px;
        }

        .row {
            margin-bottom: 15px;
        }

        .output {
            margin-top: 20px;
            padding: 10px;
            border: 1px solid gray;
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">
        <div class="form-box">

            <h2>Employee Leave Application</h2>

            <div class="row">
                <asp:Label ID="lblNameTitle" runat="server"
                    Text="Employee Name :">
                </asp:Label>

                <asp:TextBox ID="txtEmpName" runat="server">
                </asp:TextBox>

                <asp:RequiredFieldValidator
                    ID="NameValidator"
                    runat="server"
                    ControlToValidate="txtEmpName"
                    ErrorMessage="Please enter employee name."
                    ForeColor="Red">
                </asp:RequiredFieldValidator>
            </div>

            <div class="row">
                <asp:Label ID="lblDateTitle" runat="server"
                    Text="Leave Date :">
                </asp:Label>

                <asp:Label ID="lblDate" runat="server"
                    ForeColor="Blue">
                </asp:Label>
            </div>

            <div class="row">
                <asp:Label ID="lblLeaveTitle" runat="server"
                    Text="Leave Type :">
                </asp:Label>

                <asp:DropDownList ID="ddlLeaveType" runat="server">
                    <asp:ListItem Value="">Select Leave Type</asp:ListItem>
                    <asp:ListItem>Casual Leave</asp:ListItem>
                    <asp:ListItem>Sick Leave</asp:ListItem>
                    <asp:ListItem>Emergency Leave</asp:ListItem>
                    <asp:ListItem>Personal Leave</asp:ListItem>
                </asp:DropDownList>

                <asp:RequiredFieldValidator
                    ID="LeaveTypeValidator"
                    runat="server"
                    ControlToValidate="ddlLeaveType"
                    InitialValue=""
                    ErrorMessage="Please select leave type."
                    ForeColor="Red">
                </asp:RequiredFieldValidator>
            </div>

            <div class="row">
                <asp:Label ID="lblReasonTitle" runat="server"
                    Text="Reason :">
                </asp:Label>

                <br />

                <asp:TextBox ID="txtReason" runat="server"
                    TextMode="MultiLine" Rows="4" Columns="40">
                </asp:TextBox>

                <asp:RequiredFieldValidator
                    ID="ReasonValidator"
                    runat="server"
                    ControlToValidate="txtReason"
                    ErrorMessage="Please enter a reason."
                    ForeColor="Red">
                </asp:RequiredFieldValidator>
            </div>

            <div class="row">
                <asp:Label ID="lblDaysTitle" runat="server"
                    Text="Number of Leave Days :">
                </asp:Label>

                <asp:TextBox ID="txtDays" runat="server"
                    TextMode="Number">
                </asp:TextBox>

                <asp:RequiredFieldValidator
                    ID="DaysRequiredValidator"
                    runat="server"
                    ControlToValidate="txtDays"
                    ErrorMessage="Enter number of leave days."
                    ForeColor="Red">
                </asp:RequiredFieldValidator>

                <asp:RangeValidator
                    ID="DaysRangeValidator"
                    runat="server"
                    ControlToValidate="txtDays"
                    MinimumValue="1"
                    MaximumValue="30"
                    Type="Integer"
                    ErrorMessage="Leave days should be between 1 and 30."
                    ForeColor="Red">
                </asp:RangeValidator>
            </div>

            <div class="row">
                <asp:CheckBox ID="chkRemember" runat="server"
                    Text="Remember my name">
                </asp:CheckBox>
            </div>

            <asp:Button ID="btnSubmit" runat="server"
                Text="Submit Leave Application"
                OnClick="btnSubmit_Click" />

            <br /><br />

            <asp:Label ID="lblData" runat="server"
                CssClass="output">
            </asp:Label>

        </div>
    </form>
</body>
</html>
