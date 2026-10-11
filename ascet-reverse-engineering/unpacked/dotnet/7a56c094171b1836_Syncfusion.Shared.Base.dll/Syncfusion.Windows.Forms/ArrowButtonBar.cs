using System;
using System.ComponentModel;
using System.Drawing;
using System.Security.Permissions;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms;

[ToolboxItem(false)]
public class ArrowButtonBar : ButtonBar, IInternalArrowButtonParent, IInternalButtonParent, IThemedControl
{
	[DocumentationExclude]
	internal DisplayArrowButtons displayArrowButtons;

	[DocumentationExclude]
	internal Color enabledColor = SystemColors.WindowText;

	[DocumentationExclude]
	internal Color disabledColor = SystemColors.GrayText;

	private ArrowType enableButtonFlags = ArrowType.All;

	private bool themesEnabled;

	[Description("Indicates whether themes are enabled for this control.")]
	[DefaultValue(false)]
	public virtual bool ThemesEnabled
	{
		get
		{
			return themesEnabled;
		}
		set
		{
			themesEnabled = value;
			OnThemeChanged(EventArgs.Empty);
			Invalidate();
		}
	}

	[Description("Milliseconds to wait before firing scroll event.")]
	[DefaultValue(200)]
	public int RepeatClickDelay
	{
		get
		{
			return base.ButtonBarChild.RepeatClickDelay;
		}
		set
		{
			base.ButtonBarChild.RepeatClickDelay = value;
		}
	}

	[DefaultValue(20)]
	[Description("Shortest interval for firing scroll event.")]
	public int MinRepeatClickDelay
	{
		get
		{
			return base.ButtonBarChild.MinRepeatClickDelay;
		}
		set
		{
			base.ButtonBarChild.MinRepeatClickDelay = value;
		}
	}

	[Description("Specifies arrow buttons to be shown in an arrow bar.")]
	[DefaultValue(DisplayArrowButtons.None)]
	public virtual DisplayArrowButtons DisplayArrowButtons
	{
		get
		{
			return displayArrowButtons;
		}
		set
		{
			if (value != displayArrowButtons)
			{
				displayArrowButtons = value;
				InitBars();
				Refresh();
			}
		}
	}

	[DefaultValue(ArrowType.All)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public ArrowType EnableButtonFlags
	{
		get
		{
			return enableButtonFlags;
		}
		set
		{
			enableButtonFlags = value;
			InternalButton[] buttons = base.ButtonBarChild.Buttons;
			foreach (InternalButton internalButton in buttons)
			{
				if (internalButton != null && internalButton.Cookie is ArrowType)
				{
					ArrowType arrowType = (ArrowType)internalButton.Cookie;
					internalButton.Enabled = (enableButtonFlags & arrowType) != 0;
				}
			}
			if (base.ButtonBarChild.Dirty)
			{
				Invalidate();
			}
		}
	}

	[Description("The color of arrows in enabled buttons.")]
	[DefaultValue(typeof(Color), "WindowText")]
	public Color EnabledColor
	{
		get
		{
			return enabledColor;
		}
		set
		{
			enabledColor = value;
			Refresh();
		}
	}

	[Description("The color of arrows in disabled buttons.")]
	public Color DisabledColor
	{
		get
		{
			return disabledColor;
		}
		set
		{
			disabledColor = value;
			Refresh();
		}
	}

	protected virtual InternalButton[] NoArrowButtons => new InternalButton[0];

	protected virtual InternalButton[] SingleArrowButtons => new InternalButton[2]
	{
		new InternalArrowButton(this, ArrowType.Previous, "Scroll to previous tab."),
		new InternalArrowButton(this, ArrowType.Next, "Scroll to next tab.")
	};

	protected virtual InternalButton[] AllArrowButtons => new InternalButton[4]
	{
		new InternalArrowButton(this, ArrowType.First, "Scroll to first tab."),
		new InternalArrowButton(this, ArrowType.Previous, "Scroll to previous tab."),
		new InternalArrowButton(this, ArrowType.Next, "Scroll to next tab."),
		new InternalArrowButton(this, ArrowType.Last, "Scroll to last tab.")
	};

	[Description("Occurs when the user clicks on an arrow button.")]
	public event ArrowButtonEventHandler ArrowButtonClicked;

	[Description("Fired when the ThemesEnabled property changes.")]
	public event EventHandler ThemeChanged;

	protected virtual void OnArrowButtonClicked(ArrowButtonEventArgs e)
	{
		if (this.ArrowButtonClicked != null)
		{
			this.ArrowButtonClicked(this, e);
		}
	}

	[SecurityPermission(SecurityAction.LinkDemand, UnmanagedCode = true)]
	protected override void WndProc(ref Message m)
	{
		if (m.Msg == 794)
		{
			Invalidate();
		}
		base.WndProc(ref m);
	}

	protected virtual void OnThemeChanged(EventArgs e)
	{
		if (this.ThemeChanged != null)
		{
			this.ThemeChanged(this, e);
		}
	}

	protected override InternalButtonBar OnCreateButtonBarChild()
	{
		return new InternalButtonBar(this);
	}

	public virtual void OnClickedButton(InternalButton button)
	{
		InternalArrowButton internalArrowButton = button as InternalArrowButton;
		ArrowButtonEventArgs e = new ArrowButtonEventArgs(internalArrowButton.Type);
		OnArrowButtonClicked(e);
		_ = e.Cancel;
	}

	public virtual void InitBars()
	{
		InternalButtonBar buttonBarChild = base.ButtonBarChild;
		switch (displayArrowButtons)
		{
		case DisplayArrowButtons.All:
			buttonBarChild.Buttons = AllArrowButtons;
			break;
		case DisplayArrowButtons.None:
			buttonBarChild.Buttons = NoArrowButtons;
			break;
		default:
			buttonBarChild.Buttons = SingleArrowButtons;
			break;
		}
		buttonBarChild.Dirty = true;
		PerformLayout();
	}

	public void ResetEnabledColor()
	{
		EnabledColor = SystemColors.WindowText;
	}

	internal bool ShouldSerializeEnabledColor()
	{
		return EnabledColor != SystemColors.GrayText;
	}

	public void ResetDisabledColor()
	{
		DisabledColor = SystemColors.GrayText;
	}

	internal bool ShouldSerializeDisabledColor()
	{
		return DisabledColor != SystemColors.GrayText;
	}
}
