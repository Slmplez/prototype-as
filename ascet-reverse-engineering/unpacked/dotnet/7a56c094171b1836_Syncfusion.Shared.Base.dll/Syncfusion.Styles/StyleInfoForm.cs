using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Styles;

public class StyleInfoForm : Form
{
	private Container components;

	private Button okButton;

	private Button applyButton;

	private StyleInfoPropertyGrid grid;

	private object customizer;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public Button ApplyButton => applyButton;

	public StyleInfoForm(object customizer)
	{
		InitializeComponent();
		this.customizer = customizer;
		grid.SelectedObject = customizer;
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
		this.components = new System.ComponentModel.Container();
		this.okButton = new System.Windows.Forms.Button();
		this.applyButton = new System.Windows.Forms.Button();
		this.grid = new Syncfusion.Styles.StyleInfoPropertyGrid();
		this.Text = "Options";
		base.MaximizeBox = false;
		base.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
		base.CancelButton = this.okButton;
		base.Icon = null;
		base.AcceptButton = this.okButton;
		base.ControlBox = false;
		base.MinimizeBox = false;
		base.ClientSize = new System.Drawing.Size(328, 325);
		this.okButton.Location = new System.Drawing.Point(232, 297);
		this.okButton.DialogResult = System.Windows.Forms.DialogResult.OK;
		this.okButton.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
		this.okButton.Size = new System.Drawing.Size(75, 23);
		this.okButton.TabIndex = 0;
		this.okButton.Anchor = System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right;
		this.okButton.Text = "OK";
		this.applyButton.Location = new System.Drawing.Point(132, 297);
		this.applyButton.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
		this.applyButton.Size = new System.Drawing.Size(75, 23);
		this.applyButton.TabIndex = 1;
		this.applyButton.Anchor = System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right;
		this.applyButton.Text = "Apply";
		this.grid.Location = new System.Drawing.Point(8, 8);
		this.grid.Text = "PropertyGrid";
		this.grid.Size = new System.Drawing.Size(312, 281);
		this.grid.CommandsVisibleIfAvailable = true;
		this.grid.TabIndex = 1;
		this.grid.AutoScrollMinSize = new System.Drawing.Size(0, 0);
		this.grid.Anchor = System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left | System.Windows.Forms.AnchorStyles.Right;
		this.grid.ToolbarVisible = false;
		base.Controls.Add(this.okButton);
		base.Controls.Add(this.applyButton);
		base.Controls.Add(this.grid);
	}
}
