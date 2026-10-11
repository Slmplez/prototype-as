using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Grid;

[DocumentationExclude]
internal class GridFilterBarCustomDlg : Form
{
	private Label label1;

	private GroupBox groupBox1;

	private ComboBox comboBox1;

	private RadioButton radioButton1;

	private RadioButton radioButton2;

	private ComboBox comboBox3;

	private Button okButton;

	private Button cancelButton;

	private TextBox textBox1;

	private TextBox textBox2;

	private Label label4;

	private Container components;

	internal Label colLabel;

	internal string FilterString;

	internal int _none_;

	internal int _custom_ = 1;

	internal int _equals_ = 2;

	internal int does_not_equal = 3;

	internal int is_greater_than = 4;

	internal int is_greater_than_or_equal_to = 5;

	internal int is_less_than = 6;

	internal int is_less_than_or_equal_to = 7;

	internal int begins_with = 8;

	internal int does_not_begin_with = 9;

	internal int ends_with = 10;

	internal int does_not_end_with = 11;

	internal int _contains_ = 12;

	internal int does_not_contain = 13;

	internal int Use_to_represent_any_series_of_characters = 14;

	internal int Show_rows_where = 15;

	internal GridFilterBarCustomDlg()
	{
		InitializeComponent();
		FilterString = string.Empty;
	}

	internal void SetStrings(string[] gridFilterBarStrings)
	{
		comboBox1.Items.AddRange(new object[13]
		{
			string.Empty,
			gridFilterBarStrings[_equals_],
			gridFilterBarStrings[does_not_equal],
			gridFilterBarStrings[is_greater_than],
			gridFilterBarStrings[is_greater_than_or_equal_to],
			gridFilterBarStrings[is_less_than],
			gridFilterBarStrings[is_less_than_or_equal_to],
			gridFilterBarStrings[begins_with],
			gridFilterBarStrings[does_not_begin_with],
			gridFilterBarStrings[ends_with],
			gridFilterBarStrings[does_not_end_with],
			gridFilterBarStrings[_contains_],
			gridFilterBarStrings[does_not_contain]
		});
		comboBox3.Items.AddRange(new object[13]
		{
			string.Empty,
			gridFilterBarStrings[_equals_],
			gridFilterBarStrings[does_not_equal],
			gridFilterBarStrings[is_greater_than],
			gridFilterBarStrings[is_greater_than_or_equal_to],
			gridFilterBarStrings[is_less_than],
			gridFilterBarStrings[is_less_than_or_equal_to],
			gridFilterBarStrings[begins_with],
			gridFilterBarStrings[does_not_begin_with],
			gridFilterBarStrings[ends_with],
			gridFilterBarStrings[does_not_end_with],
			gridFilterBarStrings[_contains_],
			gridFilterBarStrings[does_not_contain]
		});
		label4.Text = gridFilterBarStrings[Use_to_represent_any_series_of_characters];
		label1.Text = gridFilterBarStrings[Show_rows_where];
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing && components != null)
		{
			components.Dispose();
		}
		base.Dispose(disposing);
	}

	private void InitializeComponent()
	{
		this.label1 = new System.Windows.Forms.Label();
		this.colLabel = new System.Windows.Forms.Label();
		this.groupBox1 = new System.Windows.Forms.GroupBox();
		this.comboBox1 = new System.Windows.Forms.ComboBox();
		this.radioButton1 = new System.Windows.Forms.RadioButton();
		this.radioButton2 = new System.Windows.Forms.RadioButton();
		this.comboBox3 = new System.Windows.Forms.ComboBox();
		this.okButton = new System.Windows.Forms.Button();
		this.cancelButton = new System.Windows.Forms.Button();
		this.textBox1 = new System.Windows.Forms.TextBox();
		this.textBox2 = new System.Windows.Forms.TextBox();
		this.label4 = new System.Windows.Forms.Label();
		base.SuspendLayout();
		this.label1.Location = new System.Drawing.Point(24, 0);
		this.label1.Name = "label1";
		this.label1.Size = new System.Drawing.Size(100, 16);
		this.label1.TabIndex = 0;
		this.label1.Text = "Show rows where:";
		this.colLabel.AutoSize = true;
		this.colLabel.Location = new System.Drawing.Point(24, 16);
		this.colLabel.Name = "colLabel";
		this.colLabel.Size = new System.Drawing.Size(41, 13);
		this.colLabel.TabIndex = 1;
		this.colLabel.Text = "column";
		this.groupBox1.Location = new System.Drawing.Point(24, 24);
		this.groupBox1.Name = "groupBox1";
		this.groupBox1.Size = new System.Drawing.Size(365, 1);
		this.groupBox1.TabIndex = 2;
		this.groupBox1.TabStop = false;
		this.comboBox1.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
		this.comboBox1.Location = new System.Drawing.Point(24, 40);
		this.comboBox1.Name = "comboBox1";
		this.comboBox1.Size = new System.Drawing.Size(176, 21);
		this.comboBox1.TabIndex = 3;
		this.radioButton1.Checked = true;
		this.radioButton1.Location = new System.Drawing.Point(64, 72);
		this.radioButton1.Name = "radioButton1";
		this.radioButton1.Size = new System.Drawing.Size(48, 24);
		this.radioButton1.TabIndex = 5;
		this.radioButton1.TabStop = true;
		this.radioButton1.Text = "and";
		this.radioButton1.Click += new System.EventHandler(radioButton1_Click);
		this.radioButton2.Location = new System.Drawing.Point(128, 72);
		this.radioButton2.Name = "radioButton2";
		this.radioButton2.Size = new System.Drawing.Size(48, 24);
		this.radioButton2.TabIndex = 6;
		this.radioButton2.Text = "or";
		this.radioButton2.Click += new System.EventHandler(radioButton2_Click);
		this.comboBox3.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
		this.comboBox3.Location = new System.Drawing.Point(24, 104);
		this.comboBox3.Name = "comboBox3";
		this.comboBox3.Size = new System.Drawing.Size(176, 21);
		this.comboBox3.TabIndex = 7;
		this.okButton.Location = new System.Drawing.Point(248, 168);
		this.okButton.Name = "okButton";
		this.okButton.Size = new System.Drawing.Size(64, 23);
		this.okButton.TabIndex = 9;
		this.okButton.Text = "OK";
		this.okButton.Click += new System.EventHandler(okButton_Click);
		this.cancelButton.Location = new System.Drawing.Point(328, 168);
		this.cancelButton.Name = "cancelButton";
		this.cancelButton.Size = new System.Drawing.Size(64, 23);
		this.cancelButton.TabIndex = 10;
		this.cancelButton.Text = "Cancel";
		this.cancelButton.Click += new System.EventHandler(cancelButton_Click);
		this.textBox1.Location = new System.Drawing.Point(216, 40);
		this.textBox1.Name = "textBox1";
		this.textBox1.Size = new System.Drawing.Size(176, 20);
		this.textBox1.TabIndex = 4;
		this.textBox1.Text = string.Empty;
		this.textBox2.Location = new System.Drawing.Point(216, 104);
		this.textBox2.Name = "textBox2";
		this.textBox2.Size = new System.Drawing.Size(176, 20);
		this.textBox2.TabIndex = 8;
		this.textBox2.Text = string.Empty;
		this.label4.Location = new System.Drawing.Point(16, 144);
		this.label4.Name = "label4";
		this.label4.Size = new System.Drawing.Size(316, 16);
		this.label4.TabIndex = 14;
		this.label4.Text = "Use * to repesent any series of characters";
		base.ClientSize = new System.Drawing.Size(416, 197);
		base.Controls.AddRange(new System.Windows.Forms.Control[12]
		{
			this.label4, this.textBox2, this.textBox1, this.cancelButton, this.okButton, this.comboBox3, this.radioButton2, this.radioButton1, this.comboBox1, this.groupBox1,
			this.colLabel, this.label1
		});
		base.MaximizeBox = false;
		base.MinimizeBox = false;
		base.Name = "GridFilterBarCustomDlg";
		base.SizeGripStyle = System.Windows.Forms.SizeGripStyle.Hide;
		base.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
		this.Text = "Custom Row Filter";
		base.Icon = new System.Drawing.Icon(Syncfusion.GridWindowsAssembly.Assembly.GetManifestResourceStream(Syncfusion.GridWindowsAssembly.RootNamespace + ".Resources.sfgrid.ico"));
		base.Load += new System.EventHandler(GridFilterBarCustomDlg_Load);
		base.ResumeLayout(false);
	}

	private void GridFilterBarCustomDlg_Load(object sender, EventArgs e)
	{
		groupBox1.Location = new Point(groupBox1.Location.X + colLabel.Width, groupBox1.Location.Y);
		groupBox1.Width -= colLabel.Width;
	}

	private void okButton_Click(object sender, EventArgs e)
	{
		if (comboBox1.Text.Length > 0 && textBox1.Text.Length > 0)
		{
			FilterString = '[' + colLabel.Text + ']' + GetFilter(comboBox1.SelectedIndex, textBox1.Text);
		}
		if (comboBox3.Text.Length > 0 && textBox2.Text.Length > 0)
		{
			FilterString += (radioButton1.Checked ? " AND " : " OR ");
			object filterString = FilterString;
			FilterString = string.Concat(filterString, '[', colLabel.Text, ']', GetFilter(comboBox3.SelectedIndex, textBox2.Text));
		}
		base.DialogResult = DialogResult.OK;
		Close();
	}

	private void cancelButton_Click(object sender, EventArgs e)
	{
		Close();
	}

	private void radioButton1_Click(object sender, EventArgs e)
	{
		radioButton1.Checked = true;
		radioButton2.Checked = false;
	}

	private void radioButton2_Click(object sender, EventArgs e)
	{
		radioButton2.Checked = true;
		radioButton1.Checked = false;
	}

	private string GetFilter(int relation, string text)
	{
		string result = string.Empty;
		switch (relation)
		{
		case 1:
			result = " = '" + text + "'";
			break;
		case 2:
			result = " <> '" + text + "'";
			break;
		case 3:
			result = " > '" + text + "'";
			break;
		case 4:
			result = " >= '" + text + "'";
			break;
		case 5:
			result = " < '" + text + "'";
			break;
		case 6:
			result = " <= '" + text + "'";
			break;
		case 7:
			result = " LIKE '" + text + "*'";
			break;
		case 8:
			result = " NOT LIKE '" + text + "*'";
			break;
		case 9:
			result = " LIKE '*" + text + "'";
			break;
		case 10:
			result = " NOT LIKE '*" + text + "'";
			break;
		case 11:
			result = " LIKE '*" + text + "*'";
			break;
		case 12:
			result = " NOT LIKE '*" + text + "*'";
			break;
		}
		return result;
	}
}
