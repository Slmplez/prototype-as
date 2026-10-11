using System;
using System.ComponentModel;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

[ToolboxItem(false)]
internal class XPButton : ButtonAdv, IThemedControl
{
	protected bool isPushed;

	protected bool isFocused;

	protected bool isHover;

	protected ThemedXPButtonDrawing themedDrawing;

	protected bool themesEnabled = true;

	[DefaultValue(true)]
	[Category("Appearance")]
	public bool ThemesEnabled
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

	[Browsable(false)]
	[DocumentationExclude]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool Hover
	{
		get
		{
			return isHover;
		}
		set
		{
			if (base.Enabled && value != Hover)
			{
				isHover = value;
				Invalidate();
				OnStateChanged();
			}
		}
	}

	[DocumentationExclude]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool Pushed
	{
		get
		{
			return isPushed;
		}
		set
		{
			if (base.Enabled && value != Pushed)
			{
				isPushed = value;
				Invalidate();
				OnStateChanged();
			}
		}
	}

	public event EventHandler ThemeChanged;

	public XPButton()
	{
		if (XPThemes.IsThemedOS)
		{
			SetStyle(ControlStyles.UserPaint | ControlStyles.AllPaintingInWmPaint | ControlStyles.DoubleBuffer, value: true);
			themedDrawing = new ThemedXPButtonDrawing(this, "BUTTON");
		}
	}

	protected override void WndProc(ref Message m)
	{
		if (m.Msg == 794 && themedDrawing != null)
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

	protected override void OnPaint(PaintEventArgs e)
	{
		if (UseVisualStyle)
		{
			base.OnPaint(e);
		}
		else
		{
			OnPaint3D(e);
		}
	}

	protected virtual void OnPaint3D(PaintEventArgs e)
	{
		_ = base.ClientSize.Height / 2;
		if (XPThemes.IsThemedOS && XPThemes.IsThemeActive && ThemesEnabled)
		{
			themedDrawing.DrawXPButton(e.Graphics, base.ClientRectangle);
		}
		else
		{
			base.OnPaint(e);
		}
	}

	[DocumentationExclude]
	public virtual void OnStateChanged()
	{
	}

	protected override void OnMouseDown(MouseEventArgs e)
	{
		base.OnMouseDown(e);
		if (e.Button == MouseButtons.Left)
		{
			Pushed = true;
		}
	}

	protected override void OnMouseUp(MouseEventArgs e)
	{
		base.OnMouseUp(e);
		if (e.Button == MouseButtons.Left)
		{
			Pushed = false;
		}
	}

	protected override void OnMouseEnter(EventArgs e)
	{
		base.OnMouseEnter(e);
		Hover = true;
	}

	protected override void OnMouseLeave(EventArgs e)
	{
		base.OnMouseLeave(e);
		Hover = false;
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing && themedDrawing != null)
		{
			themedDrawing.Dispose();
			themedDrawing = null;
		}
		base.Dispose(disposing);
	}
}
