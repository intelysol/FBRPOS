using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.Entity.Migrations;
using System.Data.SqlClient;
using System.Drawing;
using System.Text;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace FBRPOS
{
    public partial class frmItemCategory : Form
    {
        private POSDatabase2005Entities dbEntities=new POSDatabase2005Entities();

        public frmItemCategory()
        {
            InitializeComponent();
        }

        private void btnNew_Click(object sender, EventArgs e)
        {
            txtCatID.Clear();
            txtCategoryName.Clear();
            txtCategoryName.Focus();

            btnSave.Text = "&Save";

        }


        private void Fill_cmbCategoryName()
        {
            var lst = dbEntities.CategorySetups.ToList();

            cmbCategoryName.DisplayMember = "CategoryName";
            cmbCategoryName.ValueMember = "CategoryCode";
            cmbCategoryName.DataSource = lst;

            //gridControl1.DataSource = lst;

            if (cmbCategoryName.Items.Count > 0)
            {
                cmbCategoryName.SelectedIndex = 0;
            }

        }

        private void frmItemCategory_Load(object sender, EventArgs e)
        {
            btnNew.Image = Properties.Resources.New_file;
            btnSave.Image = Properties.Resources.Save;
            btnDelete.Image = Properties.Resources.Erase;
            btnClose.Image = Properties.Resources.Undo;
            this.AutoScaleMode =AutoScaleMode.None;
            this.Text = lblHeading.Text;

            Fill_cmbCategoryName();

            txtCatID.Clear();
            txtCategoryName.Clear();
            txtCatID.Focus();

            txtCatID.Text = (Convert.ToInt16(dbEntities.CategorySetups.Max(ca => ca.CategoryCode)) + 1).ToString("0000");
            txtCategoryName.Focus();

        }

        private void btnSave_Click(object sender, EventArgs e)
        {

        }

        private void btnDelete_Click(object sender, EventArgs e)
        {

        }

        private void txtCatID_Leave(object sender, EventArgs e)
        {

            var cat = dbEntities.CategorySetups.Find(txtCatID.Text);

            txtCategoryName.Clear();
            btnSave.Text = "&Save";
            if (cat != null)
            {
                btnSave.Text = "&Update";
                txtCategoryName.Text = cat.CategoryName;
            }
            
        }

        private void btnClose_Click(object sender, EventArgs e)
        {
            this.Close();
            Application.Exit();
        }

        private void cmbBrandName_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtCatID.Text = cmbCategoryName.SelectedValue.ToString();
            txtCatID_Leave(sender, e);
        }

    
    }
}