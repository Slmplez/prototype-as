using System;
using System.ComponentModel.Design;
using System.Drawing;
using System.Runtime.InteropServices;
using System.Windows.Forms;
using Syncfusion.Documentation;
using Syncfusion.Runtime.InteropServices;
using Syncfusion.Windows.Forms.Tools.XPMenus;

namespace Syncfusion.Windows.Forms.Tools;

[DocumentationExclude]
public class CommandBarForm : Form, ICommandBarDesignerMouseHook
{
	protected static Cursor crDefault = null;

	protected static bool bSizing = false;

	protected static Point ptStart = Point.Empty;

	protected static CommandBarResizeType rtSizing = CommandBarResizeType.None;

	protected static Rectangle rcSizeBounds = Rectangle.Empty;

	protected CommandBarController cbController;

	protected ThemedControlDrawing tdWindow;

	protected ThemedControlDrawing tdRebar;

	public static bool Sizing => bSizing;

	private Office2007Colors Office2007ColorTable => (cbController == null) ? Office2007Colors.Default : cbController.Office2007ColorTable;

	public CommandBarForm(CommandBarController controller)
	{
		cbController = controller;
		SetStyle(ControlStyles.Selectable, value: false);
		SetStyle(ControlStyles.UserPaint | ControlStyles.AllPaintingInWmPaint | ControlStyles.DoubleBuffer, value: true);
		UpdateStyles();
		base.Visible = false;
		base.ShowInTaskbar = false;
		base.FormBorderStyle = FormBorderStyle.None;
		if (XPThemes.IsThemedOS)
		{
			tdWindow = new ThemedControlDrawing("WINDOW");
			tdRebar = new ThemedControlDrawing("REBAR");
		}
		Office2007Colors.ManagedColorsApplied += OnManagedColorsApplied;
	}

	private void OnManagedColorsApplied(Office2007Colors.ManagedColorsAppliedEventArgs args)
	{
		if (cbController != null && cbController.Style == VisualStyle.Office2007 && cbController.Office2007Theme == Office2007Theme.Managed)
		{
			Refresh();
		}
	}

	protected override void OnPaint(PaintEventArgs e)
	{
		if (XPThemes.IsThemedOS && XPThemes.IsThemeActive && cbController.ThemesEnabled && cbController.Style != VisualStyle.Office2007 && cbController.Style != VisualStyle.Office2007Outlook)
		{
			Rectangle clientRectangle = base.ClientRectangle;
			Rectangle rectangle = new Rectangle(clientRectangle.Left, clientRectangle.Top, 2, clientRectangle.Height);
			tdWindow.DrawThemeBackground(e.Graphics, 10, 2, rectangle);
			rectangle = new Rectangle(clientRectangle.Left, clientRectangle.Top, clientRectangle.Width, 2);
			tdWindow.DrawThemeBackground(e.Graphics, 2, 2, rectangle);
			rectangle = new Rectangle(clientRectangle.Right - 2, clientRectangle.Top, 2, clientRectangle.Height);
			tdWindow.DrawThemeBackground(e.Graphics, 11, 2, rectangle);
			rectangle = new Rectangle(clientRectangle.Left, clientRectangle.Bottom - 2, clientRectangle.Width, 2);
			tdWindow.DrawThemeBackground(e.Graphics, 12, 2, rectangle);
			Rectangle rectangle2 = Rectangle.Inflate(clientRectangle, -2, -2);
			tdRebar.DrawThemeBackground(e.Graphics, 6, 1, rectangle2);
		}
		else
		{
			Color borderColor = GetBorderColor(cbController.Style);
			Rectangle rect = new Rectangle(1, 1, base.ClientRectangle.Width - 2, base.ClientRectangle.Height - 2);
			Pen pen = new Pen(borderColor, 2f);
			e.Graphics.DrawRectangle(pen, rect);
			pen.Dispose();
		}
	}

	private Color GetBorderColor(VisualStyle style)
	{
		Color empty = Color.Empty;
		switch (style)
		{
		case VisualStyle.Office2003:
			return Office2003Colors.FloatingCommandBarCaptionColor;
		case VisualStyle.VS2005:
			return VS2005Colors.FloatBorderColor;
		case VisualStyle.Office2007:
		case VisualStyle.Office2007Outlook:
			return Office2007ColorTable.FloatBorderColor;
		default:
			return ControlPaint.Dark(SystemColors.Control, 0.2f);
		}
	}

	protected override void OnMouseDown(MouseEventArgs e)
	{
		base.OnMouseDown(e);
		if (cbController != null && !cbController.DesignTime)
		{
			HandleMouseDown(e.Button, PointToScreen(new Point(e.X, e.Y)));
		}
	}

	protected override void OnMouseMove(MouseEventArgs e)
	{
		base.OnMouseMove(e);
		if (cbController != null && !cbController.DesignTime)
		{
			HandleMouseMove(e.Button, PointToScreen(new Point(e.X, e.Y)));
		}
	}

	protected override void OnMouseUp(MouseEventArgs e)
	{
		base.OnMouseUp(e);
		if (cbController != null && !cbController.DesignTime)
		{
			HandleMouseUp(e.Button, PointToScreen(new Point(e.X, e.Y)));
		}
	}

	protected override void OnMouseLeave(EventArgs e)
	{
		base.OnMouseLeave(e);
		if (cbController != null && !cbController.DesignTime)
		{
			HandleMouseLeave();
		}
	}

	public void HandleMouseDown(MouseButtons button, Point ptscreen)
	{
		Point p = PointToClient(ptscreen);
		if (crDefault != null)
		{
			bSizing = true;
			ptStart = PointToScreen(p);
			CommandBar commandBar = base.Controls[0] as CommandBar;
			if (commandBar.bRestrictedSizing)
			{
				if (p.X <= 3)
				{
					rtSizing = CommandBarResizeType.Left;
				}
				else if (p.X >= base.Width - 3)
				{
					rtSizing = CommandBarResizeType.Right;
				}
				else if (p.Y <= 3)
				{
					rtSizing = CommandBarResizeType.Top;
				}
				else if (p.Y >= base.Height - 3)
				{
					rtSizing = CommandBarResizeType.Bottom;
				}
			}
			else if (p.X <= 3 && p.Y <= 3)
			{
				rtSizing = CommandBarResizeType.Top | CommandBarResizeType.Left;
			}
			else if (p.X >= base.Width - 3 && p.Y >= base.Height - 3)
			{
				rtSizing = CommandBarResizeType.Bottom | CommandBarResizeType.Right;
			}
			else if (p.X <= 3 && p.Y >= base.Height - 3)
			{
				rtSizing = CommandBarResizeType.Bottom | CommandBarResizeType.Left;
			}
			else if (p.X >= base.Width - 3 && p.Y <= 3)
			{
				rtSizing = CommandBarResizeType.Top | CommandBarResizeType.Right;
			}
			else if (p.X < 3)
			{
				rtSizing = CommandBarResizeType.Left;
			}
			else if (p.X > base.Width - 3)
			{
				rtSizing = CommandBarResizeType.Right;
			}
			else if (p.Y < 3)
			{
				rtSizing = CommandBarResizeType.Top;
			}
			else if (p.Y > base.Height - 3)
			{
				rtSizing = CommandBarResizeType.Bottom;
			}
			rcSizeBounds = base.Bounds;
		}
		if (base.Owner != null)
		{
			base.Owner.Focus();
		}
	}

	public void HandleMouseMove(MouseButtons button, Point ptscreen)
	{
		CommandBar commandBar = base.Controls[0] as CommandBar;
		CommandBarExt commandBarExt = base.Controls[0] as CommandBarExt;
		Bar bar = null;
		if (commandBarExt != null)
		{
			bar = commandBarExt.Bar;
		}
		if (!commandBar.FloatModeWrapping)
		{
			return;
		}
		Point point = PointToClient(ptscreen);
		if (!bSizing)
		{
			if (commandBar.DesignProcess)
			{
				return;
			}
			if (commandBar.bRestrictedSizing)
			{
				if (point.X <= 3 || point.X >= base.Width - 3)
				{
					if (!(crDefault == null))
					{
						return;
					}
					if (bar != null)
					{
						if (bar.AllowResizing)
						{
							crDefault = Cursor;
							Cursor = Cursors.SizeWE;
						}
						else
						{
							Cursor = crDefault;
						}
					}
					else
					{
						crDefault = Cursor;
						Cursor = Cursors.SizeWE;
					}
				}
				else if (point.Y <= 3 || point.Y >= base.Height - 3)
				{
					if (!(crDefault == null))
					{
						return;
					}
					if (bar != null)
					{
						if (bar.AllowResizing)
						{
							crDefault = Cursor;
							Cursor = Cursors.SizeNS;
						}
						else
						{
							Cursor = crDefault;
						}
					}
					else
					{
						crDefault = Cursor;
						Cursor = Cursors.SizeNS;
					}
				}
				else if (crDefault != null)
				{
					Cursor = crDefault;
					crDefault = null;
				}
			}
			else
			{
				if (commandBar is ControlBar)
				{
					return;
				}
				if ((point.X <= 3 && point.Y <= 3) || (point.X >= base.Width - 3 && point.Y >= base.Height - 3))
				{
					if (crDefault == null)
					{
						crDefault = Cursor;
						Cursor = Cursors.SizeNWSE;
					}
				}
				else if ((point.X <= 3 && point.Y >= base.Height - 3) || (point.X >= base.Width - 3 && point.Y <= 3))
				{
					if (crDefault == null)
					{
						crDefault = Cursor;
						Cursor = Cursors.SizeNESW;
					}
				}
				else if (point.X < 3 || point.X > base.Width - 3)
				{
					if (crDefault == null)
					{
						crDefault = Cursor;
						Cursor = Cursors.SizeWE;
					}
				}
				else if (point.Y < 3 || point.Y > base.Height - 3)
				{
					if (crDefault == null)
					{
						crDefault = Cursor;
						Cursor = Cursors.SizeNS;
					}
				}
				else if (crDefault != null)
				{
					Cursor = crDefault;
					crDefault = null;
				}
			}
		}
		else
		{
			if (bar == null || !bar.AllowResizing)
			{
				return;
			}
			Rectangle rectangle = rcSizeBounds;
			int num = ptscreen.X - ptStart.X;
			int num2 = ptscreen.Y - ptStart.Y;
			ptStart = ptscreen;
			if (rtSizing == CommandBarResizeType.Top)
			{
				rectangle.Y += num2;
				rectangle.Height = ((num2 < 0) ? (rectangle.Height + Math.Abs(num2)) : (rectangle.Height - Math.Abs(num2)));
			}
			else if (rtSizing == CommandBarResizeType.Bottom)
			{
				rectangle.Height += num2;
			}
			else if (rtSizing == CommandBarResizeType.Left)
			{
				rectangle.X += num;
				rectangle.Width = ((num < 0) ? (rectangle.Width + Math.Abs(num)) : (rectangle.Width - Math.Abs(num)));
			}
			else if (rtSizing == CommandBarResizeType.Right)
			{
				rectangle.Width += num;
			}
			else if (rtSizing == (CommandBarResizeType.Top | CommandBarResizeType.Left))
			{
				rectangle.X += num;
				rectangle.Width = ((num < 0) ? (rectangle.Width + Math.Abs(num)) : (rectangle.Width - Math.Abs(num)));
				rectangle.Y += num2;
				rectangle.Height = ((num2 < 0) ? (rectangle.Height + Math.Abs(num2)) : (rectangle.Height - Math.Abs(num2)));
			}
			else if (rtSizing == (CommandBarResizeType.Top | CommandBarResizeType.Right))
			{
				rectangle.Width += num;
				rectangle.Y += num2;
				rectangle.Height = ((num2 < 0) ? (rectangle.Height + Math.Abs(num2)) : (rectangle.Height - Math.Abs(num2)));
			}
			else if (rtSizing == (CommandBarResizeType.Bottom | CommandBarResizeType.Right))
			{
				rectangle.Width += num;
				rectangle.Height += num2;
			}
			else if (rtSizing == (CommandBarResizeType.Bottom | CommandBarResizeType.Left))
			{
				rectangle.X += num;
				rectangle.Width = ((num < 0) ? (rectangle.Width + Math.Abs(num)) : (rectangle.Width - Math.Abs(num)));
				rectangle.Height += num2;
			}
			rcSizeBounds = rectangle;
			if (commandBar.bRestrictedSizing)
			{
				int captionHeight = CommandBar.CaptionHeight;
				Size size = new Size(base.Width - 4, base.Height - captionHeight - 4);
				Size floatWrapSize = commandBar.GetFloatWrapSize(new Size(rectangle.Width - 4, rectangle.Height - 4), rtSizing);
				int formMinWidth = CommandBar.FormMinWidth;
				floatWrapSize.Width = ((floatWrapSize.Width < formMinWidth) ? formMinWidth : floatWrapSize.Width);
				if (floatWrapSize != size)
				{
					if (rtSizing == CommandBarResizeType.Top)
					{
						base.Top += size.Height - floatWrapSize.Height;
					}
					else if (rtSizing == CommandBarResizeType.Left)
					{
						base.Left += size.Width - floatWrapSize.Width;
					}
					base.Size = new Size(floatWrapSize.Width + 4, floatWrapSize.Height + captionHeight + 4);
					if (rtSizing == CommandBarResizeType.Left || rtSizing == CommandBarResizeType.Right)
					{
						rcSizeBounds.Height = base.Bounds.Height;
					}
					else
					{
						rcSizeBounds.Width = base.Bounds.Width;
					}
					commandBar.rcFloat = base.Bounds;
				}
			}
			else
			{
				ControlBar controlBar = commandBar as ControlBar;
				if (rcSizeBounds.Width >= controlBar.MinimumSize.Width && rcSizeBounds.Width <= controlBar.MaximumSize.Width && rcSizeBounds.Height >= controlBar.MinimumSize.Height && rcSizeBounds.Height <= controlBar.MaximumSize.Height)
				{
					base.Bounds = rcSizeBounds;
					commandBar.rcFloat = base.Bounds;
					Refresh();
				}
			}
		}
	}

	public void HandleMouseUp(MouseButtons button, Point ptscreen)
	{
		if (bSizing)
		{
			bSizing = false;
			ptStart = Point.Empty;
			rcSizeBounds = Rectangle.Empty;
			rtSizing = CommandBarResizeType.None;
		}
	}

	public void HandleDoubleClick(Point ptscreen)
	{
	}

	public void HandleMouseLeave()
	{
		if (crDefault != null)
		{
			Cursor = crDefault;
			crDefault = null;
		}
		if (CommandBar.bDragging || CommandBar.ptDeltaOff != Point.Empty)
		{
			CommandBar.bDragging = false;
			CommandBar.ptDeltaOff = Point.Empty;
		}
	}

	protected override void SetBoundsCore(int x, int y, int width, int height, BoundsSpecified specified)
	{
		base.SetBoundsCore(x, y, width, height, specified);
		if (base.Controls.Count > 0)
		{
			CommandBar commandBar = base.Controls[0] as CommandBar;
			commandBar.Location = new Point(2, 2);
			commandBar.Size = new Size(base.ClientRectangle.Width - 4, base.ClientRectangle.Height - 4);
			commandBar.rcFloat = base.Bounds;
			Invalidate(invalidateChildren: false);
		}
	}

	protected override void WndProc(ref Message m)
	{
		if ((long)m.Msg == 33025)
		{
			ISelectionService selectionService = cbController.GetDesignerService(typeof(ISelectionService)) as ISelectionService;
			selectionService.SetSelectedComponents(new object[1] { base.Owner }, SelectionTypes.Click);
			Dispose();
			return;
		}
		if (m.Msg == 70)
		{
			Syncfusion.Runtime.InteropServices.NativeMethods.WINDOWPOS wINDOWPOS = (Syncfusion.Runtime.InteropServices.NativeMethods.WINDOWPOS)Marshal.PtrToStructure(m.LParam, typeof(Syncfusion.Runtime.InteropServices.NativeMethods.WINDOWPOS));
			Rectangle virtualScreen = SystemInformation.VirtualScreen;
			if (wINDOWPOS.x > virtualScreen.Right - 10)
			{
				if (wINDOWPOS.x > virtualScreen.Right)
				{
					wINDOWPOS.x = virtualScreen.Right - base.Size.Width;
				}
				else
				{
					wINDOWPOS.x = virtualScreen.Right - 10;
				}
			}
			if (wINDOWPOS.y > virtualScreen.Bottom - 10)
			{
				if (wINDOWPOS.y > virtualScreen.Bottom)
				{
					wINDOWPOS.y = virtualScreen.Bottom - base.Size.Height;
				}
				else
				{
					wINDOWPOS.y = virtualScreen.Bottom - 10;
				}
			}
			Marshal.StructureToPtr((object)wINDOWPOS, m.LParam, fDeleteOld: false);
		}
		else if (m.Msg == 24 && m.WParam.ToInt32() != 0 && m.LParam.ToInt32() == 3 && base.Controls.Count > 0 && !base.Controls[0].Visible)
		{
			return;
		}
		base.WndProc(ref m);
	}

	protected override void Dispose(bool disposing)
	{
		if (tdWindow != null)
		{
			tdWindow.Dispose();
			tdWindow = null;
			tdRebar.Dispose();
			tdRebar = null;
		}
		cbController = null;
		Office2007Colors.ManagedColorsApplied -= OnManagedColorsApplied;
		base.Dispose(disposing);
	}
}
