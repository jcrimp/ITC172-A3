using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnRegister_Click(object sender, EventArgs e)
    {
        //instatiate classes
        ShowTrackerEntities stdbe = new ShowTrackerEntities();
        KeyCode k = new KeyCode();
        int seed = k.GetKeyCode();//get the seed
        PasswordHash phash = new PasswordHash();

        try//try code for errors
        {
            //get the hashed password
            byte[] pass = phash.HashIt(txtConfirm.Text, seed.ToString());

            //assign values from the text boxes to the fields of the Reviewer Class
            Fan f = new Fan();
            FanLogin fl = new FanLogin();
     
            f.FanName =txtFirstName.Text + " " + txtLastName.Text;
            fl.FanLoginUserName = txtUserName.Text;
            f.FanEmail = txtEmail.Text;
            fl.FanLoginPasswordPlain = txtPassword.Text;
            fl.FanLoginRandom = seed;//assign the random seed to FanLoginRandom
            fl.FanLoginPasswordPlain = txtConfirm.Text;
            fl.FanLoginHashed = pass;
            fl.FanLoginDateAdded = DateTime.Now;
            fl.Fan = f;
            f.FanDateEntered = DateTime.Now;
            //save changes
            stdbe.Fans.Add(f);//Fans is a collection of Fan (once they are created)
            stdbe.FanLogins.Add(fl); 
            
            stdbe.SaveChanges();
            //lblErrorSuccess.Text = "You were successfully registered";
            Response.Redirect("Default.aspx?msg='You were successfully registered'");
            
        }

        catch(Exception ex)
        {
            lblErrorSuccess.Text = ex.Message;
        }
    }
}