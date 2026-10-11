using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

[Description("Represents a Panel derived control to use with Essential Tools Docking Windows framework.")]
[ToolboxBitmap(typeof(DockingClientPanel), "ToolboxIcons.dockingpanel.bmp")]
public class DockingClientPanel : Panel
{
	private bool bSizeToFit;

	private BorderStyle borderStyle = BorderStyle.FixedSingle;

	[DefaultValue(true)]
	[Localizable(true)]
	public override bool AutoScroll
	{
		get
		{
			return base.AutoScroll;
		}
		set
		{
			base.AutoScroll = value;
		}
	}

	[DefaultValue(false)]
	[Category("Syncfusion Docking")]
	[Description("Gets or sets a value indicating whether the control is sized to fill the form's client area.")]
	public bool SizeToFit
	{
		get
		{
			return bSizeToFit;
		}
		set
		{
			if (base.DesignMode && bSizeToFit != value)
			{
				bSizeToFit = value;
				if (value && base.Parent != null)
				{
					base.Parent.Width--;
					base.Parent.Width++;
				}
			}
		}
	}

	[Category("Syncfusion Docking")]
	[DefaultValue(BorderStyle.FixedSingle)]
	[Description("The border style of the control.")]
	public new BorderStyle BorderStyle
	{
		get
		{
			return borderStyle;
		}
		set
		{
			if (BorderStyle != value)
			{
				if (!Enum.IsDefined(typeof(BorderStyle), value))
				{
					throw new InvalidEnumArgumentException("value", (int)value, typeof(BorderStyle));
				}
				if (value == BorderStyle.Fixed3D)
				{
					borderStyle = value;
					base.BorderStyle = BorderStyle.Fixed3D;
					UpdateStyles();
				}
				else if (borderStyle == BorderStyle.Fixed3D)
				{
					borderStyle = value;
					UpdateStyles();
				}
				else
				{
					borderStyle = value;
					Invalidate(invalidateChildren: false);
				}
			}
		}
	}

	[Browsable(false)]
	[DocumentationExclude]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public override AnchorStyles Anchor
	{
		get
		{
			return base.Anchor;
		}
		set
		{
			base.Anchor = value;
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	[Browsable(false)]
	[DocumentationExclude]
	public override DockStyle Dock
	{
		get
		{
			return base.Dock;
		}
		set
		{
		}
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			if (base.Parent != null)
			{
				base.Parent.Controls.Remove(this);
			}
			for (int i = 0; i < base.Controls.Count; i++)
			{
				base.Controls[i].Dispose();
			}
			base.Controls.Clear();
		}
		base.Dispose(disposing);
	}

	public DockingClientPanel()
	{
		base.Dock = DockStyle.None;
		base.Anchor = AnchorStyles.Top | AnchorStyles.Left;
		AutoScroll = true;
	}

	protected override void OnParentChanged(EventArgs e)
	{
		base.OnParentChanged(e);
		if (base.Parent == null)
		{
			return;
		}
		if (base.DesignMode)
		{
			if (base.Parent is Form && (base.Parent as Form).IsMdiContainer)
			{
				throw new ApplicationException("Error - A DockingClientPanel control should not be added to an MDIContainer form.");
			}
		}
		else
		{
			bSizeToFit = true;
		}
	}

	protected override void SetBoundsCore(int x, int y, int width, int height, BoundsSpecified specified)
	{
		if (borderStyle == BorderStyle.FixedSingle)
		{
			Region region = new Region(base.ClientRectangle);
			region.Exclude(Rectangle.Inflate(base.ClientRectangle, -2, -2));
			Invalidate(region, invalidateChildren: false);
			base.SetBoundsCore(x, y, width, height, specified);
			region = new Region(base.ClientRectangle);
			region.Exclude(Rectangle.Inflate(base.ClientRectangle, -2, -2));
			Invalidate(region, invalidateChildren: false);
		}
		else
		{
			base.SetBoundsCore(x, y, width, height, specified);
		}
	}

	protected override void OnPaint(PaintEventArgs e)
	{
		if (borderStyle == BorderStyle.FixedSingle)
		{
			Color color = SystemColors.ControlDark;
			if (BackColor != SystemColors.Control)
			{
				color = ControlPaint.Dark(BackColor);
			}
			Pen pen = new Pen(color, 1f);
			Graphics graphics = e.Graphics;
			Rectangle clientRectangle = base.ClientRectangle;
			graphics.DrawLine(pen, new Point(clientRectangle.Left, clientRectangle.Bottom), new Point(clientRectangle.Left, clientRectangle.Top));
			graphics.DrawLine(pen, new Point(clientRectangle.Left, clientRectangle.Top), new Point(clientRectangle.Right - 1, clientRectangle.Top));
			graphics.DrawLine(pen, new Point(clientRectangle.Right - 1, clientRectangle.Top), new Point(clientRectangle.Right - 1, clientRectangle.Bottom - 1));
			graphics.DrawLine(pen, new Point(clientRectangle.Left, clientRectangle.Bottom - 1), new Point(clientRectangle.Right - 1, clientRectangle.Bottom - 1));
			pen.Dispose();
		}
		base.OnPaint(e);
	}

	protected override Point ScrollToControl(Control activeControl)
	{
		Invalidate();
		return base.ScrollToControl(activeControl);
	}

	protected override void WndProc(ref Message m)
	{
		if ((m.Msg == 276 || m.Msg == 277 || m.Msg == 522) && borderStyle == BorderStyle.FixedSingle)
		{
			Region region = new Region(base.ClientRectangle);
			region.Exclude(Rectangle.Inflate(base.ClientRectangle, -2, -2));
			Invalidate(region, invalidateChildren: false);
			base.WndProc(ref m);
			region = new Region(base.ClientRectangle);
			region.Exclude(Rectangle.Inflate(base.ClientRectangle, -2, -2));
			Invalidate(region, invalidateChildren: false);
		}
		else
		{
			base.WndProc(ref m);
		}
	}
}
