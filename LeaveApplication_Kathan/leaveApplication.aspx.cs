using System;

namespace LeaveApplication_Kathan
{
    public partial class leaveApplication : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["LeaveDate"] != null)
                    lblDate.Text = Session["LeaveDate"].ToString();

                if (Request.Cookies["EmployeeName"] != null)
                    txtEmpName.Text = Request.Cookies["EmployeeName"].Value;
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                if (chkRemember.Checked)
                {
                    Response.Cookies["EmployeeName"].Value = txtEmpName.Text;
                    Response.Cookies["EmployeeName"].Expires =
                        DateTime.Now.AddDays(30);
                }

                lblData.Text =
                    "<h3>Leave Application Submitted</h3>" +
                    "<b>Employee Name:</b> " + Server.HtmlEncode(txtEmpName.Text) +
                    "<br /><b>Leave Date:</b> " + Server.HtmlEncode(lblDate.Text) +
                    "<br /><b>Leave Type:</b> " +
                    Server.HtmlEncode(ddlLeaveType.SelectedItem.Text) +
                    "<br /><b>Number of Days:</b> " + Server.HtmlEncode(txtDays.Text) +
                    "<br /><b>Reason:</b> " + Server.HtmlEncode(txtReason.Text);
            }
        }
    }
}
