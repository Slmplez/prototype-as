using System;
using System.ComponentModel;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms;

[ToolboxItem(false)]
public class InternalArrowButton : InternalButton
{
	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public ArrowType Type => (ArrowType)base.Cookie;

	public InternalArrowButton(ArrowType type)
		: this(null, type)
	{
	}

	public InternalArrowButton(object owner, ArrowType type)
		: base(owner, type)
	{
	}

	public InternalArrowButton(object owner, ArrowType type, string tooltip)
		: base(owner, type, tooltip)
	{
	}

	public override string ToString()
	{
		return Enum.GetName(typeof(ArrowType), base.Cookie);
	}

	public override Size GetPreferredSize(Size maxSize)
	{
		return new Size(Math.Min(maxSize.Width, 19), maxSize.Height);
	}

	public override void Paint(Graphics g, Rectangle bounds, bool flatLook, Rectangle barArea)
	{
		try
		{
			InitToolTip(Rectangle.Intersect(bounds, barArea));
			if (!g.ClipBounds.IntersectsWith(bounds))
			{
				return;
			}
			ButtonState winFormButtonState = GetWinFormButtonState(flatLook);
			if (base.Owner is IInternalButtonParent internalButtonParent && XPThemes.IsThemedOS && XPThemes.IsThemeActive && internalButtonParent.ThemesEnabled)
			{
				base.ThemedDrawing.DrawPushButton(g, bounds, winFormButtonState);
			}
			else if (base.Style == TabBarSplitterStyle.Office2007)
			{
				Rectangle rect = bounds;
				using (Brush brush = new SolidBrush(Color.White))
				{
					g.FillRectangle(brush, rect);
				}
				using (Pen pen = new Pen(base.Office2007ColorTable.TabBarSplitterBorderColor))
				{
					g.DrawLine(pen, rect.Left, rect.Top, rect.Right, rect.Top);
					g.DrawLine(pen, rect.Left, rect.Bottom - 1, rect.Right, rect.Bottom - 1);
				}
				rect.Inflate(0, -2);
				rect.Height++;
				Color empty = Color.Empty;
				Color empty2 = Color.Empty;
				if (base.Pushed)
				{
					empty = base.Office2007ColorTable.TabBarSplitterButtonPushedStartColor;
					empty2 = base.Office2007ColorTable.TabBarSplitterButtonPushedEndColor;
				}
				else if (base.Hovered)
				{
					empty = base.Office2007ColorTable.TabBarSplitterButtonHoveredStartColor;
					empty2 = base.Office2007ColorTable.TabBarSplitterButtonHoveredEndColor;
				}
				else
				{
					empty = base.Office2007ColorTable.TabBarSplitterTabStartColor;
					empty2 = base.Office2007ColorTable.TabBarSplitterTabEndColor;
				}
				Rectangle rect2 = new Rectangle(rect.Left, rect.Top, rect.Width, rect.Height / 2);
				using (Brush brush2 = new SolidBrush(empty))
				{
					g.FillRectangle(brush2, rect2);
				}
				rect.Y--;
				rect2 = new Rectangle(rect.Left, rect.Top + rect.Height / 2, rect.Width, rect.Height / 2);
				using (LinearGradientBrush brush3 = new LinearGradientBrush(rect2, empty2, empty, LinearGradientMode.Vertical))
				{
					g.FillRectangle(brush3, rect2);
				}
				rect.Width--;
				if (base.Pushed || base.Hovered)
				{
					using Pen pen2 = new Pen(base.Office2007ColorTable.TabBarSplitterBorderColor);
					g.DrawRectangle(pen2, rect);
				}
			}
			else
			{
				ControlPaint.DrawButton(g, bounds, winFormButtonState);
			}
			if (bounds.Height < 10)
			{
				return;
			}
			IInternalArrowButtonParent internalArrowButtonParent = base.Owner as IInternalArrowButtonParent;
			Color arrowColor = ((internalArrowButtonParent == null) ? (base.Enabled ? SystemColors.WindowText : SystemColors.GrayText) : (base.Enabled ? internalArrowButtonParent.EnabledColor : internalArrowButtonParent.DisabledColor));
			if (base.Style == TabBarSplitterStyle.Office2007)
			{
				Color color = Color.FromArgb(141, 141, 141);
				arrowColor = (base.Enabled ? base.Office2007ColorTable.TabBarSplitterTextColor : color);
			}
			Point offset = new Point(0, 0);
			if (base.Pushed && base.Style != TabBarSplitterStyle.Office2007)
			{
				offset = new Point(1, 1);
			}
			ArrowType arrowType = (ArrowType)base.Cookie;
			if (internalArrowButtonParent is Control && ((Control)internalArrowButtonParent).RightToLeft == RightToLeft.Yes)
			{
				switch (arrowType)
				{
				case ArrowType.First:
					arrowType = ArrowType.Last;
					break;
				case ArrowType.Next:
					arrowType = ArrowType.Previous;
					break;
				case ArrowType.Previous:
					arrowType = ArrowType.Next;
					break;
				case ArrowType.Last:
					arrowType = ArrowType.First;
					break;
				}
			}
			ArrowPaint.DrawArrow(g, bounds, arrowType, offset, arrowColor);
		}
		finally
		{
			base.Dirty = false;
		}
	}
}
