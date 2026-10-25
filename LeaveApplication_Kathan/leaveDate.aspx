<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="leaveDate.aspx.cs"
    Inherits="LeaveApplication_Kathan.leaveDate" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Leave Date Selection</title>

    <style type="text/css">
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f7fb;
            margin: 0;
            padding: 30px;
        }

        .container {
            max-width: 600px;
            margin: 20px auto;
            padding: 25px;
            background-color: white;
            border: 1px solid #ddd;
            border-radius: 8px;
        }

        .heading {
            display: block;
            font-size: 26px;
            font-weight: bold;
            margin-bottom: 20px;
            color: #222;
        }

        .calendar {
            border: 1px solid #3366cc;
            padding: 5px;
            margin-bottom: 15px;
        }

        .message {
            display: block;
            margin-top: 12px;
            margin-bottom: 15px;
        }

        .continue-button {
            padding: 9px 16px;
            font-size: 14px;
            cursor: pointer;
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">
        <div class="container">

            <asp:Label
                ID="lblHeading"
                runat="server"
                Text="Select Leave Date"
                CssClass="heading">
            </asp:Label>

            <asp:Calendar
                ID="Calendar1"
                runat="server"
                CssClass="calendar"
                BackColor="White"
                BorderColor="#3366CC"
                BorderWidth="1px"
                CellPadding="5"
                DayNameFormat="Short"
                Font-Names="Arial"
                Font-Size="10pt"
                ForeColor="#003399"
                Height="260px"
                Width="320px"
                OnSelectionChanged="Calendar1_SelectionChanged">

                <DayHeaderStyle
                    BackColor="#dbeafe"
                    ForeColor="#1e3a8a"
                    Font-Bold="True" />

                <NextPrevStyle
                    Font-Bold="True"
                    ForeColor="White" />

                <OtherMonthDayStyle
                    ForeColor="#aaaaaa" />

                <SelectedDayStyle
                    BackColor="#009999"
                    Font-Bold="True"
                    ForeColor="White" />

                <TitleStyle
                    BackColor="#003399"
                    ForeColor="White"
                    Font-Bold="True"
                    Height="35px" />

                <TodayDayStyle
                    BackColor="#bfdbfe"
                    ForeColor="#111827" />

                <WeekendDayStyle
                    BackColor="#f3f4f6" />

            </asp:Calendar>

            <asp:Label
                ID="Label1"
                runat="server"
                Text="Selected Date: No date selected"
                ForeColor="Blue">
            </asp:Label>

            <asp:Label
                ID="lblMessage"
                runat="server"
                CssClass="message"
                ForeColor="Red">
            </asp:Label>

            <asp:Button
                ID="Button1"
                runat="server"
                Text="Continue With Leave"
                CssClass="continue-button"
                OnClick="Button1_Click" />

        </div>
    </form>
</body>
</html>
