using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Core.Licensing;
using Syncfusion.Documentation;
using Syncfusion.Windows.Forms.Localization;

namespace Syncfusion.Windows.Forms;

[Description("Represents a drop-down button control for selecting colors.")]
[ToolboxBitmap(typeof(ColorPickerButton), "ToolboxIcons.ColorPickerButton.bmp")]
public class ColorPickerButton : Button
{
	private PopupControlContainer dropdownContainer;

	private ColorUIControl colorUI;

	private bool bSelectedAsBackcolor;

	private bool bSelectedAsText;

	private static Size szDefault = new Size(208, 230);

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Description("Returns a reference to the drop-down ColorUIControl.")]
	public ColorUIControl ColorUI => colorUI;

	[Description("Gets or sets the size of the drop-down ColorUIControl.")]
	[Category("Layout")]
	public Size ColorUISize
	{
		get
		{
			return dropdownContainer.Size;
		}
		set
		{
			if (value == Size.Empty)
			{
				value = szDefault;
			}
			dropdownContainer.Size = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Description("Specifies whether the drop-down ColorUIControl is visible.")]
	[Browsable(false)]
	public virtual bool DroppedDown
	{
		get
		{
			if (DropDownContainer != null)
			{
				return DropDownContainer.IsShowing();
			}
			return false;
		}
		set
		{
			if (DroppedDown != value && FindFormHelper.FindForm(this) != null && DropDownContainer != null && dropdownContainer != null)
			{
				if (value)
				{
					dropdownContainer.ShowPopup(Point.Empty);
				}
				else
				{
					dropdownContainer.HidePopup(PopupCloseType.Canceled);
				}
			}
		}
	}

	[DefaultValue(false)]
	[Category("Appearance")]
	[Description("Specifies whether the SelectedColor is set as the button backcolor.")]
	public bool SelectedAsBackcolor
	{
		get
		{
			return bSelectedAsBackcolor;
		}
		set
		{
			bSelectedAsBackcolor = value;
			if (!value)
			{
				BackColor = SystemColors.Control;
			}
			else
			{
				BackColor = SelectedColor;
			}
		}
	}

	[Category("Appearance")]
	[Description("Specifies whether the button text will reflect the name of the SelectedColor.")]
	[DefaultValue(false)]
	public bool SelectedAsText
	{
		get
		{
			return bSelectedAsText;
		}
		set
		{
			bSelectedAsText = value;
			if (!value)
			{
				Text = base.Name;
			}
			else
			{
				Text = SelectedColor.Name;
			}
		}
	}

	[Description("Specifies the current selected color.")]
	[Category("Color Selection")]
	public Color SelectedColor
	{
		get
		{
			return colorUI.SelectedColor;
		}
		set
		{
			colorUI.SelectedColor = value;
			if (bSelectedAsBackcolor)
			{
				BackColor = value;
			}
			if (bSelectedAsText)
			{
				Text = value.Name;
			}
		}
	}

	[Category("Color Selection")]
	[Description("Specifies the color tabpages to be displayed by the drop-down ColorUIControl.")]
	[DefaultValue(ColorUIGroups.All)]
	public ColorUIGroups ColorGroups
	{
		get
		{
			return colorUI.ColorGroups;
		}
		set
		{
			colorUI.ColorGroups = value;
		}
	}

	[Description("Makes the tab associated with this colorgroup the selected tab in the drop-down ColorUIControl.")]
	[DefaultValue(typeof(ColorUISelectedGroup), "None")]
	[Category("Color Selection")]
	public ColorUISelectedGroup SelectedColorGroup
	{
		get
		{
			return colorUI.SelectedColorGroup;
		}
		set
		{
			colorUI.SelectedColorGroup = value;
		}
	}

	[Category("Appearance")]
	[Description("The text displayed on the drop-down ColorUIControl's custom colors tab.")]
	public string CustomTabName
	{
		get
		{
			return colorUI.CustomTabName;
		}
		set
		{
			colorUI.CustomTabName = value;
		}
	}

	[Description("The text displayed on the drop-down ColorUIControl's standard colors tab.")]
	[Category("Appearance")]
	public string StandardTabName
	{
		get
		{
			return colorUI.StandardTabName;
		}
		set
		{
			colorUI.StandardTabName = value;
		}
	}

	[Category("Appearance")]
	[Description("The text displayed on the drop-down ColorUIControl's system colors tab.")]
	public string SystemTabName
	{
		get
		{
			return colorUI.SystemTabName;
		}
		set
		{
			colorUI.SystemTabName = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public PopupControlContainer DropDownContainer
	{
		get
		{
			EnsureDropDownContainer();
			return dropdownContainer;
		}
	}

	[Description("The ColorSelected event occurs when a color is selected from the drop-down ColorUIControl.")]
	public event EventHandler ColorSelected;

	[DocumentationExclude]
	protected bool ShouldSerializeSelectedColor()
	{
		if (colorUI.SelectedColor == Color.Empty)
		{
			return false;
		}
		return true;
	}

	public virtual void ResetSelectedColor()
	{
		colorUI.ResetSelectedColor();
	}

	[DocumentationExclude]
	protected bool ShouldSerializeCustomTabName()
	{
		if (colorUI.CustomTabName.Equals(SR.GetString("ColorEditorPaletteTab")))
		{
			return false;
		}
		return true;
	}

	public virtual void ResetCustomTabName()
	{
		colorUI.ResetCustomTabName();
	}

	[DocumentationExclude]
	protected bool ShouldSerializeStandardTabName()
	{
		if (colorUI.StandardTabName.Equals(SR.GetString("ColorEditorStandardTab")))
		{
			return false;
		}
		return true;
	}

	public virtual void ResetStandardTabName()
	{
		colorUI.ResetStandardTabName();
	}

	[DocumentationExclude]
	protected bool ShouldSerializeSystemTabName()
	{
		if (colorUI.SystemTabName.Equals(SR.GetString("ColorEditorSystemTab")))
		{
			return false;
		}
		return true;
	}

	public virtual void ResetSystemTabName()
	{
		colorUI.ResetSystemTabName();
	}

	public ColorPickerButton()
	{
		try
		{
			AppDomain.CurrentDomain.AssemblyResolve += SharedBaseAssembly.AssemblyResolver;
			new LicensedComponent(typeof(ColorPickerButton));
		}
		finally
		{
			AppDomain.CurrentDomain.AssemblyResolve -= SharedBaseAssembly.AssemblyResolver;
		}
		EnsureDropDownContainer();
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing && dropdownContainer != null)
		{
			dropdownContainer.BeforePopup -= DropdownContainerBeforePopup;
			dropdownContainer.Popup -= DropdownContainerPopup;
			dropdownContainer.CloseUp -= DropdownContainerCloseUp;
			dropdownContainer.Dispose();
			dropdownContainer = null;
		}
		base.Dispose(disposing);
	}

	protected virtual PopupControlContainer CreateDropdownContainer()
	{
		PopupControlContainer popupControlContainer = new PopupControlContainer();
		popupControlContainer.FakeFocus = false;
		return popupControlContainer;
	}

	private void EnsureDropDownContainer()
	{
		if (dropdownContainer == null)
		{
			dropdownContainer = CreateDropdownContainer();
			dropdownContainer.Size = szDefault;
			dropdownContainer.ParentControl = this;
			dropdownContainer.BeforePopup += DropdownContainerBeforePopup;
			dropdownContainer.Popup += DropdownContainerPopup;
			dropdownContainer.CloseUp += DropdownContainerCloseUp;
			InitializeDropdownContainer();
		}
	}

	protected virtual void InitializeDropdownContainer()
	{
		if (dropdownContainer != null)
		{
			colorUI = new ColorUIControl();
			colorUI.ColorSelected += OnCUIColorSelected;
			colorUI.Dock = DockStyle.Fill;
			colorUI.Visible = true;
			dropdownContainer.Controls.Add(colorUI);
		}
	}

	private void OnCUIColorSelected(object sender, EventArgs e)
	{
		SelectedColor = colorUI.SelectedColor;
		DroppedDown = false;
		if (this.ColorSelected != null)
		{
			this.ColorSelected(this, EventArgs.Empty);
		}
	}

	[DocumentationExclude]
	protected virtual void DropdownContainerPopup(object sender, EventArgs e)
	{
		colorUI.Focus();
	}

	[DocumentationExclude]
	protected virtual void DropdownContainerBeforePopup(object sender, CancelEventArgs e)
	{
		if (dropdownContainer.PopupHost != null)
		{
			dropdownContainer.PopupHost.FormBorderStyle = FormBorderStyle.None;
		}
		colorUI.Start(ColorUI.SelectedColor);
	}

	[DocumentationExclude]
	protected virtual void DropdownContainerCloseUp(object sender, PopupClosedEventArgs e)
	{
		if (e.PopupCloseType == PopupCloseType.Done)
		{
			SelectedColor = colorUI.SelectedColor;
			DroppedDown = false;
		}
		Focus();
	}

	[DocumentationExclude]
	protected override void OnKeyDown(KeyEventArgs e)
	{
		bool flag = (Control.ModifierKeys & Keys.Alt) != 0;
		if (e.Handled)
		{
			return;
		}
		switch (e.KeyCode)
		{
		case Keys.Down:
			if (flag)
			{
				e.Handled = true;
				DroppedDown = !DroppedDown;
				return;
			}
			break;
		case Keys.F4:
			if (Control.ModifierKeys == Keys.None)
			{
				e.Handled = true;
				DroppedDown = !DroppedDown;
			}
			break;
		}
		base.OnKeyDown(e);
	}

	protected override void OnClick(EventArgs e)
	{
		DroppedDown = !DroppedDown;
		base.OnClick(e);
	}
}
