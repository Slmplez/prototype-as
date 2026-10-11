using System;
using System.Windows.Forms;
using Syncfusion.Drawing;

namespace Syncfusion.Windows.Forms;

internal class SizeBox : Control
{
	private Control target;

	private FormWindowState parentFormWindowState;

	private SizeGripStyle sizeGripStyle;

	private ThemedScrollBarDrawing _themedScrollBarDrawing;

	public FormWindowState ParentFormWindowState
	{
		get
		{
			return parentFormWindowState;
		}
		set
		{
			parentFormWindowState = value;
			Invalidate();
		}
	}

	public SizeGripStyle SizeGripStyle
	{
		get
		{
			return sizeGripStyle;
		}
		set
		{
			sizeGripStyle = value;
		}
	}

	private bool ShowSizeGrip
	{
		get
		{
			if (ScrollControl.IgnoreSizeGripStyleHideShow)
			{
				return CanResizeThroughSizeBox();
			}
			return sizeGripStyle switch
			{
				SizeGripStyle.Auto => CanResizeThroughSizeBox(), 
				SizeGripStyle.Hide => false, 
				SizeGripStyle.Show => true, 
				_ => false, 
			};
		}
	}

	private ThemedScrollBarDrawing themedScrollBarDrawing
	{
		get
		{
			if (XPThemes.IsThemedOS && XPThemes.IsAppThemed)
			{
				if (_themedScrollBarDrawing == null)
				{
					_themedScrollBarDrawing = new ThemedScrollBarDrawing(this);
				}
			}
			else if (_themedScrollBarDrawing == null)
			{
				_themedScrollBarDrawing = new ThemedScrollBarDrawing(this);
			}
			return _themedScrollBarDrawing;
		}
	}

	public SizeBox(Control target)
	{
		this.target = target;
		base.TabStop = false;
		SetStyle(ControlStyles.ResizeRedraw | ControlStyles.Selectable | ControlStyles.UserMouse, value: false);
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			if (_themedScrollBarDrawing != null)
			{
				_themedScrollBarDrawing.Dispose();
				_themedScrollBarDrawing = null;
			}
			target = null;
		}
		base.Dispose(disposing);
	}

	private bool CanResizeThroughSizeBox()
	{
		if ((sizeGripStyle != SizeGripStyle.Hide || ScrollControl.IgnoreSizeGripStyleHideShow) && parentFormWindowState != FormWindowState.Maximized && RightToLeft != RightToLeft.Yes && target.Parent != null && target.Parent is Form && (target.Dock == DockStyle.Fill || target.Dock == DockStyle.Bottom || target.Dock == DockStyle.Right))
		{
			if (target.Parent.ClientRectangle.Bottom == target.Bounds.Bottom)
			{
				return target.Parent.ClientRectangle.Right == target.Bounds.Right;
			}
			return false;
		}
		return false;
	}

	protected override void OnPaint(PaintEventArgs e)
	{
		if (ShowSizeGrip)
		{
			bool bDrawMirrored = RightToLeft == RightToLeft.Yes;
			using CMirroredDrawer cMirroredDrawer = new CMirroredDrawer(e.Graphics, base.ClientRectangle, bDrawMirrored, bOSSupports: false);
			if (target is IThemedControl && XPThemes.IsThemedOS && ((IThemedControl)target).ThemesEnabled)
			{
				themedScrollBarDrawing.DrawSizeBox(cMirroredDrawer.VirtualGfx, cMirroredDrawer.VirtualBounds);
			}
			else
			{
				ControlPaint.DrawSizeGrip(cMirroredDrawer.VirtualGfx, BackColor, cMirroredDrawer.VirtualBounds);
			}
		}
		base.OnPaint(e);
	}

	protected override void WndProc(ref Message m)
	{
		int msg = m.Msg;
		if (msg == 132)
		{
			base.WndProc(ref m);
			if (m.Result.ToInt32() == 1 && CanResizeThroughSizeBox())
			{
				m.Result = new IntPtr(17);
			}
		}
		else
		{
			base.WndProc(ref m);
		}
	}
}
