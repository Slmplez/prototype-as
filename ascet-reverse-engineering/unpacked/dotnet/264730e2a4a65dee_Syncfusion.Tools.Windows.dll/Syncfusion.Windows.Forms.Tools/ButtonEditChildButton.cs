using System;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing;
using System.Drawing.Design;
using System.Windows.Forms;
using Syncfusion.Windows.Forms.Tools.Design;

namespace Syncfusion.Windows.Forms.Tools;

[Designer(typeof(ButtonEditChildButtonDesigner), typeof(IDesigner))]
[DesignTimeVisible(true)]
[ToolboxItem(false)]
public class ButtonEditChildButton : ButtonAdv
{
	private const int DefaultHeight = 17;

	private const int DefaultWidth = 18;

	private static readonly string[] s_names = new string[14]
	{
		string.Empty,
		"Calculator.bmp",
		"Currency.bmp",
		"Down.bmp",
		"ComboXPDown.bmp",
		"Up.bmp",
		"Left.bmp",
		"Right.bmp",
		"Redo.bmp",
		"Undo.bmp",
		"Check.bmp",
		"Browse.bmp",
		"Leftend.bmp",
		"Rightend.bmp"
	};

	private ButtonAlignment buttonAlign = ButtonAlignment.Right;

	private IButtonEditParent buttonEditParent;

	private int preferredWidth;

	private bool isButtonTypeChanged;

	internal string ChildButtonText;

	private bool m_bIsbuttonClicked;

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public IButtonEditParent ButtonEditParent
	{
		get
		{
			return buttonEditParent;
		}
		set
		{
			buttonEditParent = value;
		}
	}

	[Category("Appearance")]
	[Description("The preferred width is the desired width of the Button.")]
	[Browsable(true)]
	public int PreferredWidth
	{
		get
		{
			return preferredWidth;
		}
		set
		{
			preferredWidth = value;
			if (ButtonEditParent != null)
			{
				ButtonEditParent.ChildButtonSizeChanged(this, new Size(preferredWidth, 17));
			}
		}
	}

	[Category("Appearance")]
	[Description("Overrides the Size property. Set the Width through the PreferredWidth property.")]
	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public new Size Size
	{
		get
		{
			return base.Size;
		}
		set
		{
			if (value.Width > preferredWidth)
			{
				value.Width = preferredWidth;
			}
			if (ButtonEditParent != null)
			{
				ButtonEditParent.ChildButtonSizeChanged(this, value);
			}
			base.Size = value;
		}
	}

	[Description("Overrides the Location property. Cannot the changed.")]
	[Category("Appearance")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public new Point Location
	{
		get
		{
			return base.Location;
		}
		set
		{
			base.Location = value;
		}
	}

	[Category("Appearance - Styles")]
	[DefaultValue(ButtonTypes.Normal)]
	[Editor(typeof(ButtonEditTypeEditor), typeof(UITypeEditor))]
	[Browsable(true)]
	[TypeConverter(typeof(ButtonEditTypeEditor))]
	[Description("Specifies the ButtonType for this ButtonEditChildButton")]
	public override ButtonTypes ButtonType
	{
		get
		{
			return base.ButtonType;
		}
		set
		{
			base.ButtonType = value;
			if (ButtonType == ButtonTypes.Calculator && base.Width < 24)
			{
				PreferredWidth = 24;
				if (ButtonEditParent != null)
				{
					ButtonEditParent.ChildButtonSizeChanged(this, Size);
				}
			}
			isButtonTypeChanged = true;
		}
	}

	public new Image Image
	{
		get
		{
			if (isButtonTypeChanged)
			{
				isButtonTypeChanged = false;
				return GetButtonImage(ButtonType);
			}
			return base.Image;
		}
		set
		{
			if (base.Image != value)
			{
				base.Image = value;
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public new ButtonAppearance Appearance => base.Appearance;

	[Description("The alignment of the button with respect to the edit control.")]
	[Category("Appearance")]
	[DefaultValue(ButtonAlignment.Right)]
	[Browsable(true)]
	public ButtonAlignment ButtonAlign
	{
		get
		{
			return buttonAlign;
		}
		set
		{
			buttonAlign = value;
			if (ButtonEditParent != null)
			{
				ButtonEditParent.ChildButtonAlignmentChanged(this, ButtonAlign);
			}
		}
	}

	[Browsable(true)]
	[Category("Behavior")]
	[Description("Indicates whether the user can use the TAB key to give focus to the control.")]
	[DefaultValue(false)]
	public new bool TabStop
	{
		get
		{
			return base.TabStop;
		}
		set
		{
			base.TabStop = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public override bool UseVisualStyle
	{
		get
		{
			return base.UseVisualStyle;
		}
		set
		{
			base.UseVisualStyle = value;
		}
	}

	[Description("Determines the display of the control when users move the mouse over the control and click.")]
	[Browsable(true)]
	[Category("Appearance - Styles")]
	public new FlatStyle FlatStyle
	{
		get
		{
			return base.FlatStyle;
		}
		set
		{
			if (UseVisualStyle && value == FlatStyle.System)
			{
				throw new ArgumentException("FlatStyle cannot be System when UseVisualStyle is true");
			}
			base.FlatStyle = value;
		}
	}

	protected internal bool LastLeftButton
	{
		get
		{
			return GetIsLastLeftButton();
		}
		set
		{
			SetIsLastLeftButton(value);
		}
	}

	protected internal bool FirstRightButton
	{
		get
		{
			return GetIsFirstRightButton();
		}
		set
		{
			SetIsFirstRightButton(value);
		}
	}

	public ButtonEditChildButton()
		: base(isComboButton: true)
	{
		preferredWidth = 18;
		TabStop = false;
		Text = string.Empty;
		Size = new Size(18, 17);
		ButtonType = ButtonTypes.Normal;
		base.ImageAlign = ContentAlignment.MiddleCenter;
	}

	public void SetAppearance(ButtonAppearance appearance)
	{
		base.Appearance = appearance;
	}

	protected virtual Image GetButtonImage(ButtonTypes buttonType)
	{
		if (ButtonType != ButtonTypes.Normal)
		{
			Text = string.Empty;
		}
		else
		{
			Image = null;
			Text = ChildButtonText;
		}
		if (buttonType > ButtonTypes.Normal)
		{
			Image = ButtonEdit.GetImage(s_names[(int)buttonType]);
			return Image;
		}
		return null;
	}

	protected override void OnClick(EventArgs e)
	{
		m_bIsbuttonClicked = true;
		base.OnClick(e);
		if (base.Parent != null && !base.Parent.Focused)
		{
			((ButtonEdit)base.Parent).TextBox.Focus();
		}
	}

	protected override void OnMouseDown(MouseEventArgs e)
	{
		m_bIsbuttonClicked = false;
		base.OnMouseDown(e);
	}

	protected override void OnMouseUp(MouseEventArgs e)
	{
		if (FlatStyle == FlatStyle.System && !m_bIsbuttonClicked)
		{
			OnClick(EventArgs.Empty);
		}
		base.OnMouseUp(e);
	}
}
