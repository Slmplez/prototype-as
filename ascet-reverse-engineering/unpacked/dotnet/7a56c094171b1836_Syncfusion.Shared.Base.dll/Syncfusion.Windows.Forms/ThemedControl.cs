using System;
using System.ComponentModel;
using System.Security.Permissions;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms;

[ToolboxItem(false)]
public class ThemedControl : Control, IThemedControl
{
	private bool themesEnabled;

	[Description("Indicates whether themes are enabled for this control.")]
	public virtual bool ThemesEnabled
	{
		get
		{
			return themesEnabled;
		}
		set
		{
			if (themesEnabled != value)
			{
				themesEnabled = value;
				OnThemeChanged(EventArgs.Empty);
			}
		}
	}

	[Description("Fired when the ThemesEnabled property changes.")]
	public event EventHandler ThemeChanged;

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
}
