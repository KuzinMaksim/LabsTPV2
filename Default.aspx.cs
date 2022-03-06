using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LabsTPV2
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void countButton_Click(object sender, EventArgs e)
        {
            if(Page.IsValid)
            { 
            int first = Convert.ToInt32(operandTB1.Text);
            double second = Convert.ToDouble(operandTB2.Text);
            if (isUnsigned.Checked) 
                first = (int)Convert.ToUInt32(operandTB1.Text);

                switch (dropDownList1.SelectedValue)
                {
                    case "+":
                        Response.Write($"<h1 style='margin-left:575px'> {first + second} </h1>");
                        break;
                    case "-":
                        Response.Write($"<h1 style='margin-left:575px'> {first - second} </h1>");
                        break;
                    case "*":
                        Response.Redirect("ResultForm.aspx?result=" + (first * second));
                        break;
                    default:
                        break;
                }
            }

        }


        protected void Custom1_ServerValidate(object source, ServerValidateEventArgs args)
        {

            try
            {


                double second = Convert.ToDouble(operandTB2.Text);
                args.IsValid = (second > -100000 & second < 100000);


            }

            catch (Exception)
            {

                args.IsValid = false;

            }

        }
    }
}