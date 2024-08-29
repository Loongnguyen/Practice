using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LuyenCode
{
    public partial class baitap1 : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void NumberButton_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            txtDisplay.Text += btn.Text;
        }

        protected void OperationButton_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            ViewState["FirstNumber"] = txtDisplay.Text;
            ViewState["Operator"] = btn.Text;
            txtDisplay.Text = string.Empty;
        }

        protected void btnEquals_Click(object sender, EventArgs e)
        {
            double firstNumber = Convert.ToDouble(ViewState["FirstNumber"]);
            double secondNumber = Convert.ToDouble(txtDisplay.Text);
            string operation = ViewState["Operator"].ToString();
            double result = 0;

            switch (operation)
            {
                case "+":
                    result = firstNumber + secondNumber;
                    break;
                case "-":
                    result = firstNumber - secondNumber;
                    break;
                case "*":
                    result = firstNumber * secondNumber;
                    break;
                case "/":
                    if (secondNumber != 0)
                    {
                        result = firstNumber / secondNumber;
                    }
                    else
                    {
                        txtDisplay.Text = "Không thể chia cho 0!";
                        return;
                    }
                    break;
            }

            txtDisplay.Text = result.ToString();
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtDisplay.Text = string.Empty;
            ViewState["FirstNumber"] = null;
            ViewState["Operator"] = null;
        }

    }
}