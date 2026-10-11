using System;
using System.Collections;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

[DocumentationExclude]
[ToolboxItem(false)]
public class DataButtonEdit : ButtonEdit
{
	private ButtonEditChildButton buttonLeftEnd;

	private ButtonEditChildButton buttonLeft;

	private ButtonEditChildButton buttonRight;

	private ButtonEditChildButton buttonRightEnd;

	private object dataSource;

	private BindingManagerBase dataManager;

	private Container components;

	public BindingManagerBase DataManager
	{
		get
		{
			if (dataManager != null)
			{
				return dataManager;
			}
			if (base.ParentForm != null && DataSource != null)
			{
				dataManager = base.ParentForm.BindingContext[DataSource];
			}
			return dataManager;
		}
		set
		{
			dataManager = value;
		}
	}

	[TypeConverter("System.Windows.Forms.Design.DataSourceConverter, System.Design")]
	[SRCategory("Data")]
	[RefreshProperties(RefreshProperties.Repaint)]
	[DefaultValue(null)]
	[SRDescription("Indicates the source of data for the DataButtonEdit")]
	public object DataSource
	{
		get
		{
			return dataSource;
		}
		set
		{
			if (value != null && (value is IList || value is IListSource))
			{
				dataSource = value;
			}
		}
	}

	public DataButtonEdit()
	{
		buttonLeftEnd = new ButtonEditChildButton();
		buttonLeft = new ButtonEditChildButton();
		buttonRight = new ButtonEditChildButton();
		buttonRightEnd = new ButtonEditChildButton();
		SuspendLayout();
		base.Buttons.Add(buttonLeftEnd);
		base.Buttons.Add(buttonLeft);
		base.Buttons.Add(buttonRight);
		base.Buttons.Add(buttonRightEnd);
		base.Controls.AddRange(new Control[4] { buttonRightEnd, buttonRight, buttonLeft, buttonLeftEnd });
		base.SelectionLength = 0;
		base.SelectionStart = 0;
		ShowTextBox = true;
		base.Size = new Size(200, 22);
		TextAlign = HorizontalAlignment.Left;
		buttonLeftEnd.BackColor = SystemColors.Control;
		buttonLeftEnd.ButtonAlign = ButtonAlignment.Left;
		buttonLeftEnd.ButtonEditParent = this;
		buttonLeftEnd.ButtonType = ButtonTypes.LeftEnd;
		buttonLeftEnd.Name = "buttonLeftEnd";
		buttonLeftEnd.PreferredWidth = 16;
		buttonLeftEnd.TabIndex = 1;
		buttonLeftEnd.Click += ButtonLeftEnd_Click;
		buttonLeft.BackColor = SystemColors.Control;
		buttonLeft.ButtonAlign = ButtonAlignment.Left;
		buttonLeft.ButtonEditParent = this;
		buttonLeft.ButtonType = ButtonTypes.Left;
		buttonLeft.Name = "buttonLeft";
		buttonLeft.PreferredWidth = 16;
		buttonLeft.TabIndex = 2;
		buttonLeft.Click += ButtonLeft_Click;
		buttonRight.BackColor = SystemColors.Control;
		buttonRight.ButtonAlign = ButtonAlignment.Right;
		buttonRight.ButtonEditParent = this;
		buttonRight.ButtonType = ButtonTypes.Right;
		buttonRight.Name = "buttonRight";
		buttonRight.PreferredWidth = 16;
		buttonRight.TabIndex = 3;
		buttonRight.Click += ButtonRight_Click;
		buttonRightEnd.BackColor = SystemColors.Control;
		buttonRightEnd.ButtonAlign = ButtonAlignment.Right;
		buttonRightEnd.ButtonEditParent = this;
		buttonRightEnd.ButtonType = ButtonTypes.RightEnd;
		buttonRightEnd.Name = "buttonRightEnd";
		buttonRightEnd.PreferredWidth = 16;
		buttonRightEnd.TabIndex = 4;
		buttonRightEnd.Click += ButtonRightEnd_Click;
		base.Controls.AddRange(new Control[4] { buttonLeftEnd, buttonLeft, buttonRight, buttonRightEnd });
		ResumeLayout(performLayout: false);
	}

	public void SetButtonsStatus()
	{
		_ = DataManager;
	}

	private void ButtonLeftEnd_Click(object sender, EventArgs e)
	{
		if (DataManager != null)
		{
			DataManager.Position = 0;
		}
	}

	private void ButtonLeft_Click(object sender, EventArgs e)
	{
		if (DataManager != null)
		{
			DataManager.Position--;
		}
	}

	private void ButtonRight_Click(object sender, EventArgs e)
	{
		if (DataManager != null)
		{
			DataManager.Position++;
		}
	}

	public void SetPosition(int newPosition)
	{
		try
		{
			DataManager.Position = newPosition;
		}
		catch
		{
		}
	}

	private void ButtonRightEnd_Click(object sender, EventArgs e)
	{
		if (dataSource is IList)
		{
			if (DataManager != null)
			{
				DataManager.Position = ((IList)DataSource).Count;
			}
		}
		else if (dataSource is IListSource)
		{
			IListSource listSource = dataSource as IListSource;
			IList list = listSource.GetList();
			if (DataManager != null)
			{
				DataManager.Position = list.Count;
			}
		}
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
	}
}
