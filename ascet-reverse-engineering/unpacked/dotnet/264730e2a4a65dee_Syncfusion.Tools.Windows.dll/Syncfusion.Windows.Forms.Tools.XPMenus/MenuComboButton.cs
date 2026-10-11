using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;
using Syncfusion.Windows.Forms.Grid;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

internal class MenuComboButton : GridCellComboBoxButton
{
	private const int c_offsetRTL = 1;

	private bool m_bDrawSelectedBackground;

	internal bool m_bDroppedDown;

	public MenuComboButton(GridCellRendererBase control)
		: base(control)
	{
	}

	public override int HitTest(int rowIndex, int colIndex, MouseEventArgs e, IMouseController controller)
	{
		if (base.Grid is MenuGrid { Customizing: false } menuGrid)
		{
			ComboBoxBarItem comboBoxBarItem = null;
			if (rowIndex > 0 && rowIndex <= menuGrid.parentItem.Items.Count)
			{
				comboBoxBarItem = menuGrid.parentItem.Items[rowIndex - 1] as ComboBoxBarItem;
			}
			if (comboBoxBarItem != null && !comboBoxBarItem.Editable)
			{
				return 7;
			}
			return base.HitTest(rowIndex, colIndex, e, controller);
		}
		return 0;
	}

	public override void Draw(Graphics g, int rowIndex, int colIndex, bool bActive, GridStyleInfo style)
	{
		MenuGridControlBase menuGridControlBase = base.Grid as MenuGridControlBase;
		VisualStyle visualStyle = menuGridControlBase?.Style ?? VisualStyle.Default;
		if (visualStyle == VisualStyle.Office2007 && (!menuGridControlBase.ThemesEnabled || !menuGridControlBase.IsVistaOS))
		{
			if (menuGridControlBase != null)
			{
				m_bDrawSelectedBackground = menuGridControlBase.HighlightRange.Top == rowIndex;
			}
			base.Draw(g, rowIndex, colIndex, bActive, style);
			return;
		}
		bool flag = !style.Clickable;
		bool bRTL = base.Grid.IsRightToLeft();
		IsMouseDown(rowIndex, colIndex);
		bool flag2 = !menuGridControlBase.Customizing && menuGridControlBase.HighlightRange.Top == rowIndex;
		Rectangle adjustedRect = GetAdjustedRect(flag2, bRTL);
		Rectangle brushRect = GetBrushRect();
		Brush brush = null;
		if (!flag)
		{
			brush = ((!menuGridControlBase.ThemesEnabled || !menuGridControlBase.IsVistaOS) ? (flag2 ? GetComboButtonHighlightBrush(visualStyle, adjustedRect) : GetComboButtonBrush(visualStyle, brushRect)) : (flag2 ? ((Brush)new LinearGradientBrush(adjustedRect, VistaMenuColors.SelBGColorLight, VistaMenuColors.SelBGColorDark, LinearGradientMode.Vertical)) : ((Brush)new SolidBrush(menuGridControlBase.BackColor))));
		}
		else
		{
			Color comboButtonHighlightColor = GetComboButtonHighlightColor(visualStyle);
			comboButtonHighlightColor = Color.FromArgb(125, comboButtonHighlightColor);
			brush = new SolidBrush(comboButtonHighlightColor);
		}
		adjustedRect.Y--;
		adjustedRect.Height += 3;
		using (brush)
		{
			g.FillRectangle(brush, adjustedRect);
		}
		if (flag2)
		{
			Pen pen = ((!menuGridControlBase.ThemesEnabled || !menuGridControlBase.IsVistaOS) ? GetComboButtonBorderPen(visualStyle) : new Pen(VistaMenuColors.SelBorderColor));
			using (pen)
			{
				g.DrawRectangle(pen, adjustedRect);
			}
		}
		Rectangle arrowRect = GetArrowRect(bRTL);
		DrawDropDownArrow(g, arrowRect, flag);
	}

	private Rectangle GetAdjustedRect(bool bHovering, bool bRTL)
	{
		Rectangle result = Bounds;
		if (bHovering)
		{
			if (bRTL)
			{
				result.X -= 2;
				result.Width++;
			}
			result.Y -= 2;
			result.Height += 3;
			result.Width++;
		}
		else if (!bRTL)
		{
			result.X++;
			result.Width--;
		}
		return result;
	}

	private Rectangle GetBrushRect()
	{
		Rectangle result = Bounds;
		result.Y--;
		return result;
	}

	private Rectangle GetArrowRect(bool bRTL)
	{
		Rectangle result = Bounds;
		if (bRTL)
		{
			result.X--;
		}
		return result;
	}

	private void DrawDropDownArrow(Graphics g, Rectangle rect, bool disabled)
	{
		Point[] dropDownBorderBounds = ComboBoxItemRenderer.GetDropDownBorderBounds(rect);
		using GraphicsPath graphicsPath = new GraphicsPath();
		graphicsPath.AddLines(dropDownBorderBounds);
		using Brush brush = new SolidBrush(disabled ? Color.FromArgb(125, SystemColors.ControlText) : SystemColors.ControlText);
		using Region region = new Region(graphicsPath);
		g.FillRegion(brush, region);
	}

	public override void DrawButton(Graphics g, Rectangle rect, ButtonState buttonState, GridStyleInfo style)
	{
		if (base.Grid is MenuGridControlBase { Style: VisualStyle.Office2007 })
		{
			rect.Y--;
			rect.Height += 3;
			bool flag = base.Grid.IsRightToLeft();
			if (flag)
			{
				rect.X--;
			}
			Office2007MenuPainter.DrawComboButton(g, rect, buttonState, m_bDroppedDown, m_bDrawSelectedBackground, flag);
		}
	}

	protected override void OnClicked(GridCellEventArgs e)
	{
		m_bDroppedDown = !m_bDroppedDown;
		base.OnClicked(e);
	}

	private Color GetComboButtonHighlightColor(VisualStyle style)
	{
		Color empty = Color.Empty;
		return style switch
		{
			VisualStyle.Office2003 => Office2003Colors.SelColor, 
			VisualStyle.Office2007Outlook => Office2007OutlookColors.MenuSelectedItemColor, 
			VisualStyle.VS2005 => VS2005Colors.MenuSelectedItemColor, 
			_ => MenuColors.SelColor, 
		};
	}

	private Brush GetComboButtonHighlightBrush(VisualStyle style, Rectangle rect)
	{
		Brush brush = null;
		return style switch
		{
			VisualStyle.Office2003 => new SolidBrush(Office2003Colors.SelColor), 
			VisualStyle.Office2007Outlook => new LinearGradientBrush(rect, Office2007OutlookColors.DropDownHighlightLightColor, Office2007OutlookColors.DropDownHighlightDarkColor, LinearGradientMode.Vertical), 
			VisualStyle.VS2005 => new LinearGradientBrush(rect, VS2005Colors.DropDownHighlightLightColor, VS2005Colors.DropDownHighlightDarkColor, LinearGradientMode.Vertical), 
			_ => new SolidBrush(MenuColors.SelColor), 
		};
	}

	private Brush GetComboButtonBrush(VisualStyle style, Rectangle rect)
	{
		Brush brush = null;
		return style switch
		{
			VisualStyle.Office2003 => new SolidBrush(SystemColors.Control), 
			VisualStyle.Office2007Outlook => new LinearGradientBrush(rect, Office2007OutlookColors.ComboButtonLightColor, Office2007OutlookColors.ComboButtonDarkColor, LinearGradientMode.Vertical), 
			VisualStyle.VS2005 => new LinearGradientBrush(rect, VS2005Colors.DDBarItemLightColor, VS2005Colors.DDBarItemDarkColor, LinearGradientMode.Vertical), 
			_ => new SolidBrush(SystemColors.Control), 
		};
	}

	private Pen GetComboButtonBorderPen(VisualStyle style)
	{
		Pen pen = null;
		if (base.Grid is MenuGridControlBase { ThemesEnabled: not false, IsVistaOS: not false })
		{
			return new Pen(VistaMenuColors.SelBorderColor);
		}
		return style switch
		{
			VisualStyle.Office2003 => new Pen(Office2003Colors.SelBorderColor), 
			VisualStyle.Office2007Outlook => new Pen(Office2007OutlookColors.MenuSelectedItemBorderColor), 
			VisualStyle.VS2005 => new Pen(VS2005Colors.MenuSelectedItemBorderColor), 
			_ => new Pen(MenuColors.SelBorderColor), 
		};
	}
}
