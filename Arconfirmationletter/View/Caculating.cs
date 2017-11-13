using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace arconfirmationletter.View
{
    public partial class Caculating : Form
    {

     //   public delegate void CloseFormDelegate();
      //  public CloseFormDelegate myDelegate;
       public bool coplshow { get; set; }
       public bool Isdone()
        {
          if (coplshow == true)
            { 
            return true;
            }else
            {
                return false;
            }

        }

        public Caculating()
        {
            InitializeComponent();

           

        }

    

        private void pictureBox1_LoadCompleted(object sender, AsyncCompletedEventArgs e)
        {

        }

        private void Caculating_Load(object sender, EventArgs e)
        {
         //   myDelegate new CloseFormDelegate(closeMyFrom);

        }

        private void Caculating_Shown(object sender, EventArgs e)
        {
            this.coplshow = true;
        }
    }
}
