using System;

namespace LeaveApplication_Kathan
{
    public partial class leaveDate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            Label1.Text = "Selected Date: " +
                Calendar1.SelectedDate.ToString("dd/MM/yyyy");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Calendar1.SelectedDate == DateTime.MinValue)
            {
                lblMessage.Text = "Please select a leave date first.";
                return;
            }

            if (Calendar1.SelectedDate.Date < DateTime.Today)
            {
                lblMessage.Text = "Leave date cannot be in the past.";
                return;
            }

            Session["LeaveDate"] =
                Calendar1.SelectedDate.ToString("dd/MM/yyyy");

            Response.Redirect("leaveApplication.aspx");
        }
    }
}
