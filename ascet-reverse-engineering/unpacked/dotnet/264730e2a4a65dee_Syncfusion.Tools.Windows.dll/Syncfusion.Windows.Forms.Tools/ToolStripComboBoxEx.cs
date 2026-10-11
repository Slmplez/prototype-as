using System;
using System.ComponentModel;
using System.Drawing;
using System.Drawing.Design;
using System.Windows.Forms;
using System.Windows.Forms.Design;

namespace Syncfusion.Windows.Forms.Tools;

[Description("Represents Office 2007 Style combobox item.")]
[DefaultProperty("Items")]
[ToolboxBitmap(typeof(ToolStripComboBoxEx), "ToolboxIcons.ToolStripComboBoxEx.bmp")]
[ToolStripItemDesignerAvailability(ToolStripItemDesignerAvailability.ToolStrip | ToolStripItemDesignerAvailability.MenuStrip | ToolStripItemDesignerAvailability.ContextMenuStrip)]
public class ToolStripComboBoxEx : ToolStripControlHost
{
	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public ComboBox ComboBox => base.Control as ComboBox;

	[Description("Gets a collection of the items contained in this ToolStripComboBoxEx.")]
	[Editor("System.Windows.Forms.Design.ListControlStringCollectionEditor, System.Design", typeof(UITypeEditor))]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[Category("Data")]
	public ComboBox.ObjectCollection Items => ComboBox.Items;

	[DefaultValue(typeof(ComboBoxStyle), "DropDown")]
	[Category("Appearance")]
	[Description("Gets or sets a value specifying the style of the ToolStripComboBoxEx. ")]
	[RefreshProperties(RefreshProperties.Repaint)]
	public ComboBoxStyle DropDownStyle
	{
		get
		{
			return ComboBox.DropDownStyle;
		}
		set
		{
			ComboBox.DropDownStyle = value;
		}
	}

	[Description("Gets or sets a value indicating whether the ToolStripComboBoxEx currently displays its drop-down portion.")]
	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool DroppedDown
	{
		get
		{
			return ComboBox.DroppedDown;
		}
		set
		{
			ComboBox.DroppedDown = value;
		}
	}

	[Description("Gets or sets the maximum number of items to be shown in the drop-down portion of the ToolStripComboBoxEx.")]
	[Localizable(true)]
	[Category("Behavior")]
	[DefaultValue(8)]
	public int MaxDropDownItems
	{
		get
		{
			return ComboBox.MaxDropDownItems;
		}
		set
		{
			ComboBox.MaxDropDownItems = value;
		}
	}

	[Category("Behavior")]
	[DefaultValue(0)]
	[Localizable(true)]
	[Description("Gets or sets the maximum number of characters allowed in the editable portion of a combo box.")]
	public int MaxLength
	{
		get
		{
			return ComboBox.MaxLength;
		}
		set
		{
			ComboBox.MaxLength = value;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Description("Gets or sets the index specifying the currently selected item.")]
	public int SelectedIndex
	{
		get
		{
			return ComboBox.SelectedIndex;
		}
		set
		{
			ComboBox.SelectedIndex = value;
		}
	}

	[DefaultValue(false)]
	[Description("Gets or sets a value indicating whether the items in the ToolStripComboBox are sorted.")]
	[Category("Behavior")]
	public bool Sorted
	{
		get
		{
			return ComboBox.Sorted;
		}
		set
		{
			ComboBox.Sorted = value;
		}
	}

	protected override Size DefaultSize => new Size(100, 22);

	protected override Padding DefaultMargin
	{
		get
		{
			if (base.IsOnDropDown)
			{
				return new Padding(2);
			}
			return new Padding(1, 0, 1, 0);
		}
	}

	[Category("CatBehavior")]
	[Description("Occurs when the drop-down portion of a ToolStripComboBoxEx is shown.")]
	public event EventHandler DropDown;

	[Category("CatBehavior")]
	[Description("Occurs when the drop-down portion of the ToolStripComboBoxEx has closed.")]
	public event EventHandler DropDownClosed;

	[Category("CatBehavior")]
	[Description("Occurs when the value of the SelectedIndex property has changed.")]
	public event EventHandler SelectedIndexChanged;

	[Description("Occurs when the ToolStripComboBoxEx text has changed.")]
	[Category("CatBehavior")]
	public event EventHandler TextUpdate;

	public ToolStripComboBoxEx()
		: base(new ComboBoxEx(bIsStyled: true, bShowGripper: true))
	{
		ComboBox comboBox = ComboBox;
		if (comboBox != null)
		{
			comboBox.Font = SystemFonts.MenuFont;
		}
	}

	protected override void OnSubscribeControlEvents(Control control)
	{
		if (control is ComboBox comboBox)
		{
			comboBox.DropDown += HandleDropDown;
			comboBox.DropDownClosed += HandleDropDownClosed;
			comboBox.SelectedIndexChanged += HandleSelectedIndexChanged;
			comboBox.TextUpdate += HandleTextUpdate;
		}
		base.OnSubscribeControlEvents(control);
	}

	protected override void OnUnsubscribeControlEvents(Control control)
	{
		if (control is ComboBox comboBox)
		{
			comboBox.DropDown -= HandleDropDown;
			comboBox.DropDownClosed -= HandleDropDownClosed;
			comboBox.SelectedIndexChanged -= HandleSelectedIndexChanged;
			comboBox.TextUpdate -= HandleTextUpdate;
		}
		base.OnUnsubscribeControlEvents(control);
	}

	protected virtual void OnDropDown(EventArgs ea)
	{
		ToolStripDropDown parentDropDown = GetParentDropDown();
		if (parentDropDown != null)
		{
			parentDropDown.Closing += OnParentClosing;
			parentDropDown.Closed += OnParentClosed;
		}
		if (this.DropDown != null)
		{
			this.DropDown(this, ea);
		}
	}

	protected virtual void OnDropDownClosed(EventArgs ea)
	{
		if (this.DropDownClosed != null)
		{
			this.DropDownClosed(this, ea);
		}
	}

	protected virtual void OnSelectedIndexChanged(EventArgs ea)
	{
		if (this.SelectedIndexChanged != null)
		{
			this.SelectedIndexChanged(this, ea);
		}
	}

	protected virtual void OnTextUpdate(EventArgs ea)
	{
		if (this.TextUpdate != null)
		{
			this.TextUpdate(this, ea);
		}
	}

	private void HandleDropDown(object sender, EventArgs e)
	{
		OnDropDown(e);
	}

	private void HandleDropDownClosed(object sender, EventArgs e)
	{
		OnDropDownClosed(e);
	}

	private void HandleSelectedIndexChanged(object sender, EventArgs e)
	{
		OnSelectedIndexChanged(e);
	}

	private void HandleTextUpdate(object sender, EventArgs e)
	{
		OnTextUpdate(e);
	}

	private void OnParentClosing(object sender, ToolStripDropDownClosingEventArgs e)
	{
		ComboBox comboBox = ComboBox;
		if (comboBox != null && comboBox.DroppedDown)
		{
			e.Cancel = true;
		}
	}

	private void OnParentClosed(object sender, ToolStripDropDownClosedEventArgs e)
	{
		if (sender is ToolStripDropDown toolStripDropDown)
		{
			toolStripDropDown.Closing -= OnParentClosing;
			toolStripDropDown.Closed -= OnParentClosed;
		}
	}

	private ToolStripDropDown GetParentDropDown()
	{
		Control currentParent = GetCurrentParent();
		while (currentParent != null && !(currentParent is ToolStripDropDown))
		{
			currentParent = currentParent.Parent;
		}
		return currentParent as ToolStripDropDown;
	}

	private bool ShouldSerializeFont()
	{
		return !object.Equals(Font, SystemFonts.MenuFont);
	}
}
