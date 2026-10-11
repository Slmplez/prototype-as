using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Grid;

internal class GridRangeInfoDropDownUserControl : UserControl
{
	private GridRangeInfo range;

	private IContainer components;

	private PropertyGrid propertyGrid1;

	private Button okButton;

	private Button cancelButton;

	private bool changed;

	public GridRangeInfo Range
	{
		get
		{
			return range;
		}
		set
		{
			range = value;
		}
	}

	public event EventHandler UserControlSave;

	public event EventHandler UserControlCancel;

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
		this.propertyGrid1 = new System.Windows.Forms.PropertyGrid();
		this.okButton = new System.Windows.Forms.Button();
		this.cancelButton = new System.Windows.Forms.Button();
		base.SuspendLayout();
		this.propertyGrid1.CommandsVisibleIfAvailable = false;
		this.propertyGrid1.Location = new System.Drawing.Point(12, 12);
		this.propertyGrid1.Name = "propertyGrid1";
		this.propertyGrid1.Size = new System.Drawing.Size(198, 190);
		this.propertyGrid1.TabIndex = 0;
		this.propertyGrid1.ToolbarVisible = false;
		this.okButton.DialogResult = System.Windows.Forms.DialogResult.OK;
		this.okButton.Location = new System.Drawing.Point(24, 208);
		this.okButton.Name = "okButton";
		this.okButton.Size = new System.Drawing.Size(75, 23);
		this.okButton.TabIndex = 1;
		this.okButton.Text = "&Ok";
		this.okButton.UseVisualStyleBackColor = true;
		this.okButton.Click += new System.EventHandler(okButton_Click);
		this.cancelButton.DialogResult = System.Windows.Forms.DialogResult.Cancel;
		this.cancelButton.Location = new System.Drawing.Point(122, 208);
		this.cancelButton.Name = "cancelButton";
		this.cancelButton.Size = new System.Drawing.Size(75, 23);
		this.cancelButton.TabIndex = 2;
		this.cancelButton.Text = "&Cancel";
		this.cancelButton.UseVisualStyleBackColor = true;
		this.cancelButton.Click += new System.EventHandler(cancelButton_Click);
		base.AutoScaleDimensions = new System.Drawing.SizeF(6f, 13f);
		base.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
		base.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
		base.Controls.Add(this.cancelButton);
		base.Controls.Add(this.okButton);
		base.Controls.Add(this.propertyGrid1);
		base.Name = "GridRangeInfoDropDownUserControl";
		base.Size = new System.Drawing.Size(222, 246);
		base.ResumeLayout(false);
	}

	public GridRangeInfoDropDownUserControl(GridRangeInfo range)
	{
		InitializeComponent();
		this.range = range;
		propertyGrid1.CommandsVisibleIfAvailable = false;
		propertyGrid1.PropertySort = PropertySort.NoSort;
		propertyGrid1.SelectedObject = this.range;
		propertyGrid1.PropertyValueChanged += propertyGrid1_PropertyValueChanged;
	}

	private void propertyGrid1_PropertyValueChanged(object s, PropertyValueChangedEventArgs e)
	{
		changed = true;
		range = (GridRangeInfo)propertyGrid1.SelectedObject;
	}

	private void okButton_Click(object sender, EventArgs e)
	{
		bool flag = changed;
		changed = false;
		if (flag && this.UserControlSave != null)
		{
			this.UserControlSave(this, EventArgs.Empty);
		}
		else if (this.UserControlCancel != null)
		{
			this.UserControlCancel(this, EventArgs.Empty);
		}
	}

	private void cancelButton_Click(object sender, EventArgs e)
	{
		changed = false;
		if (this.UserControlCancel != null)
		{
			this.UserControlCancel(this, EventArgs.Empty);
		}
	}

	public void SetValuesFromString(string val)
	{
		range = GridRangeInfo.Parse(val);
		propertyGrid1.SelectedObject = range;
		changed = false;
	}

	public string GetValuesToString()
	{
		return range.ToString();
	}
}
