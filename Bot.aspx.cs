using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WS_api
{
    public partial class Bot : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                testShow();
            }
        }

        protected void txtK_TextChanged(object sender, EventArgs e)
        {
            lblShow.Text = txtK.Text;
        }
        protected void testShow()
        {
            lblShow.Text = txtK.Text;

        }

        protected void btnShow_Click(object sender, EventArgs e)
        {
            testShow();
        }
    }
}