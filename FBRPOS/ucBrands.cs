using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Data.Entity.Migrations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace FBRPOS
{
    public partial class ucBrands : UserControl
    {
        private POSDatabase2005Entities dbEntities = new POSDatabase2005Entities();
        public ucBrands()
        {
            InitializeComponent();
        }

        private void ucBrands_Load(object sender, EventArgs e)
        {
            btnNew.Image = Properties.Resources.New_file;
            btnSave.Image = Properties.Resources.Save;
            btnDelete.Image = Properties.Resources.Erase;
            btnClose.Image = Properties.Resources.Undo;
            this.AutoScaleMode = AutoScaleMode.None;
            this.Text = lblHeading.Text;

            Fill_cmbCategoryName();

            txtBrandID.Clear();
            txtBrandName.Clear();
            txtBrandID.Focus();
            btnSave.Text = "&Save";

            txtBrandID.Text = (Convert.ToInt16(dbEntities.Brands.Max(ca => ca.BrandCode)) + 1).ToString("0000");
            txtBrandName.Focus();
        }

        private void btnNew_Click(object sender, EventArgs e)
        {
            Fill_cmbCategoryName();

            txtBrandID.Clear();
            txtBrandName.Clear();
            txtBrandID.Focus();
            btnSave.Text = "&Save";

            txtBrandID.Text = (Convert.ToInt16(dbEntities.Brands.Max(ca => ca.BrandCode)) + 1).ToString("0000");
            txtBrandName.Focus();
        }
        private void Fill_cmbCategoryName()
        {
            var lst = dbEntities.Brands.ToList();

            cmbBrandName.DisplayMember = "BrandName";
            cmbBrandName.ValueMember = "BrandCode";
            cmbBrandName.DataSource = lst;

            //fpSpread1.DataSource = lst;

            cmbBrandName.SelectedIndex = 0;

        }

        private void btnSave_Click(object sender, EventArgs e)
        {

            if (txtBrandID.TextLength == 0)
            {
                MessageBox.Show("Please enter the Brand ID", "Error!", MessageBoxButtons.OK, MessageBoxIcon.Error);
                txtBrandID.Focus();
                return;
            }

            if (txtBrandName.TextLength == 0)
            {
                MessageBox.Show("Please enter the Brand Name", "Error!", MessageBoxButtons.OK, MessageBoxIcon.Error);
                txtBrandName.Focus();
                return;                
            }

            if (btnSave.Text == "&Save")
            {
                var bra = new Brand();
                bra.BrandCode = txtBrandID.Text;
                bra.BrandName = txtBrandName.Text;
                dbEntities.Brands.Add(bra);
                dbEntities.SaveChanges();
            }
            else
            {
                var bra = dbEntities.Brands.SingleOrDefault(c => c.BrandCode == txtBrandID.Text);
                bra.BrandName = txtBrandName.Text;
                dbEntities.Brands.AddOrUpdate(bra);
                dbEntities.SaveChanges();
            }
            btnNew_Click(sender, e);
        }

        private void btnDelete_Click(object sender, EventArgs e)
        {
            if (
                MessageBox.Show("Are you sure to delete this record?", "confirm", MessageBoxButtons.YesNo,
                    MessageBoxIcon.Question, MessageBoxDefaultButton.Button2) == DialogResult.Yes)
            {
                var bra = dbEntities.Brands.SingleOrDefault(b => b.BrandCode == txtBrandID.Text);
                dbEntities.Brands.Remove(bra);
                dbEntities.SaveChanges();
            }

            btnNew_Click(sender, e);
        }

        private void txtBrandID_Leave(object sender, EventArgs e)
        {
            var bra = dbEntities.Brands.Find(txtBrandID.Text);

            txtBrandName.Clear();
            btnSave.Text = "&Save";
            if (bra != null)
            {
                btnSave.Text = "&Update";
                txtBrandName.Text = bra.BrandName;
            }
        }

        private void btnClose_Click(object sender, EventArgs e)
        {
            this.Hide();
        }
    }
}
