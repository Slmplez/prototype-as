using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

public class OneNoteStyleRendererProperty : TabUIDefaultProperties
{
	public override bool DrawLeftToRight => false;

	public override SizeF GetOverlapSize(SizeF tabSize)
	{
		if (tabSize != SizeF.Empty)
		{
			float num = tabSize.Height * 4f / 3f - 3.33f;
			if (num < 6f)
			{
				num = 6f;
			}
			return new SizeF(num, 6f);
		}
		return new SizeF(OneNoteStyleRenderer.DefaultOverlapSizeX, 6f);
	}

	public override Color DefaultActiveTabColor(ITabPanelData panelData, ITabControl tabControl)
	{
		return Office2003Colors.MenuItemHotColorDark;
	}

	public override Color DefaultInactiveTabColor(ITabPanelData panelData, ITabControl tabControl)
	{
		return Office2003Colors.MenuMarginColorDark;
	}

	public override Color DefaultTabPanelBackgroundColor(ITabPanelData panelData, ITabControl tabControl)
	{
		return Office2003Colors.DockBarColorDark;
	}

	public override Color DefaultFixedSingleBorderColor(ITabPanelData panelData, ITabControl tabControl)
	{
		return Office2003Colors.SelBorderColor;
	}

	public override void OnPaintPanelBackground(ITabControl tabControl, Graphics g, Color bgColor, Rectangle bounds)
	{
		if (bounds.Height > 0 && bounds.Width > 0)
		{
			using (Brush brush = GetFillBrush(tabControl, bounds, bgColor))
			{
				g.FillRectangle(brush, bounds);
			}
		}
	}

	public override bool IsBackgroundSolid()
	{
		return false;
	}

	private Brush GetFillBrush(ITabControl tabControl, RectangleF rectFill, Color backColor)
	{
		Brush result = null;
		switch (((TabControlAdv)tabControl).Alignment)
		{
		case TabAlignment.Top:
			result = new LinearGradientBrush(rectFill, backColor, Color.White, LinearGradientMode.Vertical);
			break;
		case TabAlignment.Bottom:
			result = new LinearGradientBrush(rectFill, Color.White, backColor, LinearGradientMode.Vertical);
			break;
		case TabAlignment.Left:
			result = new LinearGradientBrush(rectFill, backColor, Color.White, LinearGradientMode.Horizontal);
			break;
		case TabAlignment.Right:
			result = new LinearGradientBrush(rectFill, Color.White, backColor, LinearGradientMode.Horizontal);
			break;
		}
		return result;
	}
}
