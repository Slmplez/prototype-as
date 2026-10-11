using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;
using Syncfusion.ComponentModel;
using Syncfusion.Drawing;

namespace Syncfusion.Windows.Forms;

public class GridVisualStylesOffice2007Black : Disposable, IVisualStylesDrawing
{
	private GridVisualStyles visualStyle;

	private static IconPaint iconPainter;

	public GridVisualStyles VisualStyle => visualStyle;

	public GridVisualStylesOffice2007Black(GridVisualStyles style)
	{
		visualStyle = style;
		if (iconPainter == null)
		{
			iconPainter = new IconPaint(SharedBaseAssembly.RootNamespace + ".Images.", SharedBaseAssembly.Assembly);
		}
	}

	public void DrawHeaderStyle(Graphics g, Rectangle rect, ThemedHeaderDrawing.HeaderState state)
	{
		ColorBlend colorBlend = new ColorBlend(12);
		colorBlend.Positions = new float[12]
		{
			0f, 0.1f, 0.15f, 0.2f, 0.25f, 0.45f, 0.54f, 0.65f, 0.75f, 0.8f,
			0.9f, 1f
		};
		if (rect.Height != 0 || rect.Width != 0)
		{
			switch (state)
			{
			case ThemedHeaderDrawing.HeaderState.Normal:
			{
				LinearGradientBrush linearGradientBrush3 = new LinearGradientBrush(rect, Color.FromArgb(248, 248, 248), Color.FromArgb(223, 223, 223), LinearGradientMode.Vertical);
				g.FillRectangle(linearGradientBrush3, rect);
				linearGradientBrush3.Dispose();
				break;
			}
			case ThemedHeaderDrawing.HeaderState.Pressed:
			{
				colorBlend.Colors = Off2007Colors.MouseDownColor;
				LinearGradientBrush linearGradientBrush2 = new LinearGradientBrush(rect, Color.Orange, Color.Firebrick, LinearGradientMode.Vertical);
				linearGradientBrush2.InterpolationColors = colorBlend;
				g.FillRectangle(linearGradientBrush2, rect);
				linearGradientBrush2.Dispose();
				break;
			}
			default:
			{
				colorBlend.Colors = Off2007Colors.MouseHOverColor;
				LinearGradientBrush linearGradientBrush = new LinearGradientBrush(rect, Color.FromArgb(255, 254, 228), Color.FromArgb(255, 230, 159), LinearGradientMode.Vertical);
				linearGradientBrush.InterpolationColors = colorBlend;
				g.FillRectangle(linearGradientBrush, rect);
				linearGradientBrush.Dispose();
				break;
			}
			}
		}
	}

	public bool GetHeaderBorderColors(out Color clrBottom, out Color clrRight, out Color clrInteriorFirst, out Color clrInteriorLast)
	{
		clrBottom = Color.FromArgb(182, 182, 182);
		clrRight = Color.FromArgb(182, 182, 182);
		clrInteriorFirst = Color.FromArgb(223, 223, 223);
		clrInteriorLast = Color.FromArgb(248, 248, 248);
		return true;
	}

	public void GetSortIconBrush(out Brush brush, out Pen pen)
	{
		brush = new SolidBrush(Color.FromArgb(145, 153, 164));
		pen = new Pen(Color.FromArgb(145, 153, 164));
	}

	public bool GetGroupDropAreaColors(out Color backColor, out Color headerBorderTop, out Color headerBorderLeft)
	{
		backColor = Color.FromArgb(240, 241, 242);
		headerBorderTop = Color.FromArgb(182, 182, 182);
		headerBorderLeft = Color.FromArgb(182, 182, 182);
		return true;
	}

	public void DrawPushButtonStyle(Graphics g, Rectangle rect, ButtonState state)
	{
		if (rect.Height != 0 && rect.Width != 0)
		{
			switch (state)
			{
			case ButtonState.Flat:
				rect.Inflate(-1, -1);
				DrawingUtils.PaintButtonGradient(g, rect, Off2007Colors.BorderBlack, Off2007Colors.TopFirstBlack, Off2007Colors.TopLastBlack, Off2007Colors.BottomFirstBlack, Off2007Colors.BottomLastBlack, Off2007Colors.BottomLineBlack);
				break;
			case ButtonState.Normal:
				rect.Inflate(-1, -1);
				DrawingUtils.PaintButtonGradient(g, rect, Off2007Colors.BorderHover, Off2007Colors.TopFirstHoverColor, Off2007Colors.TopLastHoverColor, Off2007Colors.BottomFirstHoverColor, Off2007Colors.BottomLastHoverColor, Off2007Colors.BottomLineHoverColor);
				break;
			case ButtonState.Pushed:
				rect.Inflate(-1, -1);
				DrawingUtils.PaintButtonGradient(g, rect, Off2007Colors.BorderClicked, Off2007Colors.TopFirstClickedColor, Off2007Colors.TopLastClickedColor, Off2007Colors.BottomFirstClickedColor, Off2007Colors.BottomLastClickedColor, Off2007Colors.BottomLineClickedColor);
				break;
			}
		}
	}

	public void DrawComboBoxStyle(Graphics g, Rectangle rect, ThemedComboBoxDrawing.DropDownState state, Color clrBack)
	{
		Point empty = Point.Empty;
		if (rect.Height != 0 && rect.Width != 0)
		{
			switch (state)
			{
			case ThemedComboBoxDrawing.DropDownState.Normal:
			{
				rect.Inflate(-1, -1);
				Brush brush = new SolidBrush(clrBack);
				g.FillRectangle(brush, rect);
				brush.Dispose();
				break;
			}
			case ThemedComboBoxDrawing.DropDownState.Hot:
				rect.Inflate(-1, -1);
				DrawingUtils.PaintButtonGradient(g, rect, Off2007Colors.BorderHover, Off2007Colors.TopFirstHoverColor, Off2007Colors.TopLastHoverColor, Off2007Colors.BottomFirstHoverColor, Off2007Colors.BottomLastHoverColor, Off2007Colors.BottomLineHoverColor);
				break;
			case ThemedComboBoxDrawing.DropDownState.Pressed:
				rect.Inflate(-1, -1);
				DrawingUtils.PaintButtonGradient(g, rect, Off2007Colors.BorderClicked, Off2007Colors.TopFirstClickedColor, Off2007Colors.TopLastClickedColor, Off2007Colors.BottomFirstClickedColor, Off2007Colors.BottomLastClickedColor, Off2007Colors.BottomLineClickedColor);
				break;
			}
			string bitmapName = "Down.png";
			iconPainter.PaintIcon(g, rect, empty, bitmapName, Color.RoyalBlue);
		}
	}

	public void DrawSpinButtonStyle(Graphics g, Rectangle rect, ButtonID btnId, ButtonState btnState, Color clrBack)
	{
		Point offset = Point.Empty;
		if (btnId == ButtonID.Up)
		{
			offset = new Point(-1, -1);
		}
		if (rect.Height != 0 && rect.Width != 0)
		{
			switch (btnState)
			{
			case ButtonState.Flat:
			{
				Brush brush = new SolidBrush(clrBack);
				g.FillRectangle(brush, rect);
				brush.Dispose();
				break;
			}
			case ButtonState.Normal:
				DrawingUtils.PaintButtonGradient(g, rect, Off2007Colors.BorderHover, Off2007Colors.TopFirstHoverColor, Off2007Colors.TopLastHoverColor, Off2007Colors.BottomFirstHoverColor, Off2007Colors.BottomLastHoverColor, Off2007Colors.BottomLineHoverColor);
				break;
			case ButtonState.Pushed:
				offset = ((btnId != ButtonID.Up) ? new Point(1, 1) : new Point(0, 0));
				DrawingUtils.PaintButtonGradient(g, rect, Off2007Colors.BorderClicked, Off2007Colors.TopFirstClickedColor, Off2007Colors.TopLastClickedColor, Off2007Colors.BottomFirstClickedColor, Off2007Colors.BottomLastClickedColor, Off2007Colors.BottomLineClickedColor);
				break;
			}
			string bitmapName = ((btnId != ButtonID.Down) ? "Up.png" : "Down.png");
			iconPainter.PaintIcon(g, rect, offset, bitmapName, Color.RoyalBlue);
		}
	}

	public void DrawCheckBoxStyle(Graphics g, Rectangle rect, ButtonState state, bool mixedState)
	{
		if (rect.Height == 0 || rect.Width == 0)
		{
			return;
		}
		try
		{
			Pen office2007BorderPen = GetOffice2007BorderPen(state);
			g.DrawRectangle(office2007BorderPen, rect.X, rect.Y, rect.Width - 1, rect.Height - 1);
			Color color;
			Color color2;
			if ((state & ButtonState.Inactive) > ButtonState.Normal)
			{
				color = Off2007Colors.CheckBoxInnerBorderInactive;
				color2 = Off2007Colors.CheckBoxFillInactive;
			}
			else if ((state & ButtonState.Flat) > ButtonState.Normal)
			{
				color = Off2007Colors.CheckBoxInnerBorderColorHot;
				color2 = Off2007Colors.CheckBoxFillColorHot;
			}
			else if ((state & ButtonState.Pushed) > ButtonState.Normal)
			{
				color = Off2007Colors.CheckBoxPushedBorderColor;
				color2 = Off2007Colors.CheckBoxPushedFillColor;
			}
			else
			{
				color = Office2007Colors.Default.DataTimePickerCheckBoxInnerRectBorderNormalColor;
				color2 = Office2007Colors.Default.DataTimePickerCheckBoxInnerRectFillNormalColor;
			}
			Rectangle rect2 = rect;
			LinearGradientBrush linearGradientBrush = new LinearGradientBrush(rect2, color, Color.White, LinearGradientMode.ForwardDiagonal);
			Pen pen = new Pen(linearGradientBrush);
			LinearGradientBrush linearGradientBrush2 = new LinearGradientBrush(rect2, color2, Color.White, LinearGradientMode.ForwardDiagonal);
			rect2.Inflate(-2, -2);
			rect2.Width--;
			rect2.Height--;
			g.DrawRectangle(pen, rect2);
			rect2.Inflate(-1, -1);
			rect2.Width++;
			rect2.Height++;
			g.FillRectangle(linearGradientBrush2, rect2);
			if ((state & ButtonState.Checked) > ButtonState.Normal)
			{
				Pen pen2 = new Pen(Off2007Colors.checkColor, 2f);
				Point[] points = new Point[3]
				{
					new Point(rect2.X, rect2.Y + rect2.Height / 2),
					new Point(rect2.X + rect2.Width / 2 - 1, rect2.Bottom - 2),
					new Point(rect2.Right - 1, rect2.Top - 1)
				};
				SmoothingMode smoothingMode = g.SmoothingMode;
				g.SmoothingMode = SmoothingMode.AntiAlias;
				g.DrawLines(pen2, points);
				g.SmoothingMode = smoothingMode;
				pen2.Dispose();
			}
			if (mixedState && (state & ButtonState.Inactive) <= ButtonState.Normal)
			{
				LinearGradientBrush linearGradientBrush3 = new LinearGradientBrush(rect2, Color.FromArgb(123, 203, 231), Color.FromArgb(33, 89, 140), LinearGradientMode.Vertical);
				Pen pen3 = new Pen(Color.FromArgb(41, 97, 140));
				g.DrawRectangle(pen3, rect2.X - 1, rect2.Y - 1, rect2.Width + 1, rect2.Height + 1);
				g.FillRectangle(linearGradientBrush3, rect2);
				pen3.Dispose();
				linearGradientBrush3.Dispose();
			}
			office2007BorderPen.Dispose();
			pen.Dispose();
			linearGradientBrush2.Dispose();
			linearGradientBrush.Dispose();
		}
		catch
		{
		}
	}

	public void DrawRadioStyle(Graphics g, Rectangle rect, ButtonState state)
	{
		if (rect.Height == 0 || rect.Width == 0)
		{
			return;
		}
		try
		{
			SmoothingMode smoothingMode = g.SmoothingMode;
			g.SmoothingMode = SmoothingMode.AntiAlias;
			rect.Width -= 2;
			rect.Height -= 4;
			int num = rect.Height;
			if (rect.Height > 12)
			{
				num = 12;
			}
			Pen office2007BorderPen = GetOffice2007BorderPen(state);
			g.DrawEllipse(office2007BorderPen, rect.X, rect.Y, num, num);
			Color color;
			Color color2;
			if ((state & ButtonState.Pushed) > ButtonState.Normal)
			{
				color = Off2007Colors.CheckBoxPushedBorderColor;
				color2 = Off2007Colors.CheckBoxPushedFillColor;
			}
			else if ((state & ButtonState.Flat) > ButtonState.Normal)
			{
				color = Off2007Colors.CheckBoxInnerBorderColorHot;
				color2 = Off2007Colors.CheckBoxFillColorHot;
			}
			else
			{
				color = Office2007Colors.Default.DataTimePickerCheckBoxInnerRectBorderNormalColor;
				color2 = Office2007Colors.Default.DataTimePickerCheckBoxInnerRectFillNormalColor;
			}
			Rectangle rect2 = rect;
			LinearGradientBrush linearGradientBrush = new LinearGradientBrush(rect2, color, Color.White, LinearGradientMode.ForwardDiagonal);
			Pen pen = new Pen(linearGradientBrush);
			LinearGradientBrush linearGradientBrush2 = new LinearGradientBrush(rect2, color2, Color.White, LinearGradientMode.ForwardDiagonal);
			rect2.Inflate(-2, -2);
			rect2.Width--;
			rect2.Height--;
			g.DrawEllipse(pen, rect2.X, rect2.Y, num - 4, num - 4);
			rect2.Inflate(-1, -1);
			rect2.Width++;
			rect2.Height++;
			g.FillEllipse(linearGradientBrush2, rect2.X, rect2.Y, num - 5, num - 5);
			if ((state & ButtonState.Checked) > ButtonState.Normal)
			{
				rect2.Width--;
				rect2.Height--;
				Pen pen2 = new Pen(Color.FromArgb(30, 75, 105), 1.8f);
				g.DrawEllipse(pen2, rect2.X, rect2.Y, num - 6, num - 6);
				rect2.Inflate(-1, -1);
				Rectangle rect3 = new Rectangle(rect2.X, rect2.Y, num - 8, num - 8);
				LinearGradientBrush linearGradientBrush3 = new LinearGradientBrush(rect3, Color.FromArgb(198, 235, 254), Color.FromArgb(8, 130, 198), LinearGradientMode.ForwardDiagonal);
				g.FillEllipse(linearGradientBrush3, rect3);
				pen2.Dispose();
				linearGradientBrush3.Dispose();
			}
			g.SmoothingMode = smoothingMode;
			office2007BorderPen.Dispose();
			pen.Dispose();
			linearGradientBrush2.Dispose();
			linearGradientBrush.Dispose();
		}
		catch
		{
		}
	}

	private Pen GetOffice2007BorderPen(ButtonState buttonState)
	{
		if ((buttonState & ButtonState.Inactive) > ButtonState.Normal)
		{
			return new Pen(Off2007Colors.CheckBoxOuterBorderBlackInactive);
		}
		if ((buttonState & ButtonState.Flat) > ButtonState.Normal)
		{
			return new Pen(Off2007Colors.CheckBoxOuterBorderColorHot);
		}
		if ((buttonState & ButtonState.Pushed) > ButtonState.Normal)
		{
			return new Pen(Off2007Colors.CheckBoxOuterBorderColorHot);
		}
		return new Pen(Off2007Colors.CheckBoxOuterBorderBlackNormal);
	}
}
