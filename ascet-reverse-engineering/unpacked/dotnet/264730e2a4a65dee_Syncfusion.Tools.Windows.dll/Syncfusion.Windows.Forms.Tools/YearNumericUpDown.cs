using System.ComponentModel;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

[ToolboxItem(false)]
public class YearNumericUpDown : NumericUpDownExt
{
	protected override void DrawOffice2007ButtonBackground(Graphics g, Rectangle rect, ButtonID button, ButtonState state)
	{
		base.DrawOffice2007ButtonBackground(g, rect, button, state);
		Color empty = Color.Empty;
		Color empty2 = Color.Empty;
		Brush brush = new SolidBrush(SystemColors.Window);
		switch (state)
		{
		case ButtonState.Normal:
			empty = ((button == ButtonID.Up) ? Office2007Colors.Default.MenuItemLightColor : Office2007Colors.Default.MenuItemDarkColor);
			empty2 = ((button == ButtonID.Up) ? Office2007Colors.Default.MenuItemDarkColor : Office2007Colors.Default.MenuItemLightColor);
			brush = new LinearGradientBrush(rect, empty, empty2, LinearGradientMode.Vertical);
			break;
		case ButtonState.Pushed:
			empty = ((button == ButtonID.Up) ? Office2007Colors.Default.BarItemPressLightColor : Office2007Colors.Default.BarItemPressDarkColor);
			empty2 = ((button == ButtonID.Up) ? Office2007Colors.Default.BarItemPressDarkColor : Office2007Colors.Default.BarItemPressLightColor);
			brush = new LinearGradientBrush(rect, empty, empty2, LinearGradientMode.Vertical);
			break;
		}
		using (brush)
		{
			g.FillRectangle(brush, rect);
		}
	}

	protected override void DrawOffice2007ButtonBorder(Graphics g, Rectangle rect, ButtonID button, ButtonState state)
	{
		base.DrawOffice2007ButtonBorder(g, rect, button, state);
		Color color = Office2007Colors.Default.NumericUpDownBorderColor;
		switch (state)
		{
		case ButtonState.Normal:
			color = Office2007Colors.Default.BarItemHighlightBorderColor;
			break;
		case ButtonState.Pushed:
			color = Office2007Colors.Default.BarItemPressBorderColor;
			break;
		}
		using Pen pen = new Pen(color);
		g.DrawRectangle(pen, rect);
	}

	protected override void Buttons_Paint(object sender, PaintEventArgs e)
	{
		if (base.VisualStyle == VisualStyle.Office2007)
		{
			DrawOffice2007Buttons(e.Graphics);
		}
		else
		{
			base.Buttons_Paint(sender, e);
		}
	}
}
