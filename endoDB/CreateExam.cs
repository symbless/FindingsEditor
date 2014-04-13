﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace endoDB
{
    public partial class CreateExam : Form
    {
        private patient pt1;

        public CreateExam()
        {
            InitializeComponent();
            //cbExamType初期化
            this.cbExamType.DataSource = CLocalDB.localDB.Tables["exam_type"];
            this.cbExamType.ValueMember = "type_no";
            this.cbExamType.DisplayMember = "exam_name";
            this.cbExamType.SelectedIndex = -1;
            //cbWard初期化
            this.cbWard.DataSource = CLocalDB.localDB.Tables["ward"];
            this.cbWard.ValueMember = "ward_no";
            this.cbWard.DisplayMember = "ward";
            this.cbWard.SelectedIndex = -1;
            //cbDepartment初期化
            this.cbDepartment.DataSource = CLocalDB.localDB.Tables["department"];
            this.cbDepartment.ValueMember = "code";
            this.cbDepartment.DisplayMember = "name1";
            this.cbDepartment.SelectedIndex = -1;
            //cbOrderDr初期化
            this.cbOrderDr.DataSource = CLocalDB.localDB.Tables["orderDr"];
            this.cbOrderDr.DisplayMember = "op_name";
            cbOrderDr.SelectedIndex = -1;
            //this.cbOrderDr.Text = null;
        }

        private void btPtLoad_Click(object sender, EventArgs e)
        {
            ptLoad();
        }

        private void ptLoad()
        {
            if (this.tbPtId.Text.Length == 0)
            {
                MessageBox.Show(Properties.Resources.NoID, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }

            switch (patient.numberOfPatients(this.tbPtId.Text))
            {
                case 0:
                    MessageBox.Show(Properties.Resources.NoPatient, "Information", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    EditPt ep = new EditPt(this.tbPtId.Text, true, false);
                    ep.ShowDialog(this);
                    if (patient.numberOfPatients(this.tbPtId.Text) == 1)
                        ptLoad();
                    break;
                case 1:
                    pt1 = new patient(this.tbPtId.Text, false);
                    pt1.readPtData(pt1.ptID);
                    this.Pt_name.Text = pt1.ptName;
                    if (pt1.ptGender == patient.gender.female)
                    { this.Pt_gender.Text = Properties.Resources.Female; }
                    else
                    { this.Pt_gender.Text = Properties.Resources.Male; }
                    this.Pt_birthday.Text = pt1.ptBirthday.ToShortDateString();
                    this.Pt_age.Text = pt1.getPtAge().ToString();
                    break;
                default:
                    MessageBox.Show(Properties.Resources.DataBaseError, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    break;
            }
        }

        private void tbPtId_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyData == Keys.Enter)
                ptLoad();
        }

        private void btConfirm_Click(object sender, EventArgs e)
        {
            #region Error check
            if (this.tbPtId.Text.Length == 0)
            {
                MessageBox.Show(Properties.Resources.NoID, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }

            if (patient.numberOfPatients(this.tbPtId.Text) == 0)
            {
                MessageBox.Show(Properties.Resources.NoPatient, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }

            if (string.IsNullOrWhiteSpace(cbExamType.Text))
            {
                MessageBox.Show("[" + Properties.Resources.ExamType + "]" + Properties.Resources.NotSelected, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            #endregion

            string sql1 = "INSERT INTO exam(pt_id";
            string sql2 = " VALUES(:p0";

            if (this.tbPurpose.Text.Length != 0)
            {
                sql1 += ", purpose";
                sql2 += ", :p1";
            }

            if (this.cbOrderDr.Text.Length != 0)
            {
                sql1 += ", order_dr";
                sql2 += ", :p2";
            }

            sql1 += ", exam_day, exam_type, exam_status, exam_visible";
            sql2 += ", :p3, :p4, 0, true";

            if (!string.IsNullOrWhiteSpace(cbDepartment.Text))
            {
                sql1 += ", department";
                sql2 += ", " + cbDepartment.SelectedValue.ToString();
            }

            if (!string.IsNullOrWhiteSpace(cbWard.Text))
            {
                sql1 += ", ward_id";
                sql2 += ", '" + cbWard.SelectedValue.ToString() + "'";
            }

            string SQL = sql1 + ")" + sql2 + ");";
            switch (uckyFunctions.ExeNonQuery(SQL, this.tbPtId.Text,
                this.tbPurpose.Text,
                this.cbOrderDr.Text,
                this.dtpExamDate.Value.ToString(),
                this.cbExamType.SelectedValue.ToString()))
            {
                case uckyFunctions.functionResult.connectionError:
                    MessageBox.Show(Properties.Resources.ConnectFailed, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    break;
                case uckyFunctions.functionResult.failed:
                    MessageBox.Show(Properties.Resources.DataBaseError, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    break;
                case uckyFunctions.functionResult.success:
                    this.Close();
                    break;
            }
        }

        private void btPtEdit_Click(object sender, EventArgs e)
        {
            #region Error check
            if (this.tbPtId.Text.Length == 0)
            {
                MessageBox.Show(Properties.Resources.NoID, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            #endregion

            EditPt ep = new EditPt(tbPtId.Text, false, false);
            ep.ShowDialog(this);
            //Show new data.
            ptLoad();
        }
    }
}
