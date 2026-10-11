using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;
using Syncfusion.ComponentModel;
using Syncfusion.Drawing;

namespace Syncfusion.Windows.Forms;

public class GridVisualStylesOffice2003 : Disposable, IVisualStylesDrawing
{
	private GridVisualStyles visualStyle;

	private static IconPaint iconPainter;

	private ThemedCheckBoxDrawing themedCheckDrawing;

	private ThemedRadioButtonDrawing themedRadioDrawing;

	public GridVisualStyles VisualStyle => GridVisualStyles.Office2003;

	public GridVisualStylesOffice2003(GridVisualStyles style)
	{
		visualStyle = style;
		if (iconPainter == null)
		{
			iconPainter = new IconPaint(SharedBaseAssembly.RootNamespace + ".Images.", SharedBaseAssembly.Assembly);
		}
	}

	protected override void Dispose(bool disposing)
	{
		if (themedCheckDrawing != null)
		{
			themedCheckDrawing.Dispose();
			themedCheckDrawing = null;
		}
		if (themedRadioDrawing != null)
		{
			themedRadioDrawing.Dispose();
			themedRadioDrawing = null;
		}
		base.Dispose(disposing);
	}

	public void DrawHeaderStyle(Graphics g, Rectangle rect, ThemedHeaderDrawing.HeaderState state)
	{
		Office2003Colors.UpdateMenuColors();
		switch (state)
		{
		case ThemedHeaderDrawing.HeaderState.Normal:
		{
			LinearGradientBrush linearGradientBrush = new LinearGradientBrush(rect, Office2003Colors.DockBarColorLight, Office2003Colors.GroupBarHeaderColorLight, LinearGradientMode.Vertical);
			g.FillRectangle(linearGradientBrush, rect);
			linearGradientBrush.Dispose();
			break;
		}
		case ThemedHeaderDrawing.HeaderState.Pressed:
		{
			SolidBrush solidBrush2 = new SolidBrush(Office2003Colors.PressedSelColor);
			g.FillRectangle(solidBrush2, rect);
			solidBrush2.Dispose();
			break;
		}
		default:
		{
			SolidBrush solidBrush = new SolidBrush(Office2003Colors.SelColor);
			g.FillRectangle(solidBrush, rect);
			solidBrush.Dispose();
			break;
		}
		}
	}

	public bool GetHeaderBorderColors(out Color clrBottom, out Color clrRight, out Color clrInteriorFirst, out Color clrInteriorLast)
	{
		clrBottom = Color.FromArgb(122, 121, 153);
		clrRight = Color.FromArgb(122, 121, 153);
		clrInteriorFirst = Office2003Colors.GroupBarHeaderColorLight;
		clrInteriorLast = Office2003Colors.DockBarColorLight;
		return true;
	}

	public void GetSortIconBrush(out Brush brush, out Pen pen)
	{
		brush = new SolidBrush(Color.FromArgb(160, Color.Black));
		pen = new Pen(Color.FromArgb(190, Color.Black));
	}

	public bool GetGroupDropAreaColors(out Color backColor, out Color headerBorderTop, out Color headerBorderLeft)
	{
		backColor = Office2003Colors.GroupBarHeaderColorLight;
		headerBorderTop = Color.FromArgb(122, 121, 153);
		headerBorderLeft = Color.FromArgb(122, 121, 153);
		return true;
	}

	public void DrawPushButtonStyle(Graphics g, Rectangle rect, ButtonState state)
	{
		Office2003Colors.UpdateMenuColors();
		switch (state)
		{
		case ButtonState.Flat:
		{
			LinearGradientBrush linearGradientBrush = new LinearGradientBrush(rect, Office2003Colors.DockBarColorLight, Office2003Colors.GroupBarHeaderColorLight, LinearGradientMode.Vertical);
			rect.Inflate(-1, -1);
			g.FillRectangle(linearGradientBrush, rect);
			ControlPaint.DrawBorder(g, rect, SystemColors.Highlight, ButtonBorderStyle.Solid);
			linearGradientBrush.Dispose();
			break;
		}
		case ButtonState.Normal:
		{
			SolidBrush solidBrush2 = new SolidBrush(Office2003Colors.SelColor);
			rect.Inflate(-1, -1);
			g.FillRectangle(solidBrush2, rect);
			ControlPaint.DrawBorder(g, rect, Office2003Colors.SelBorderColor, ButtonBorderStyle.Solid);
			solidBrush2.Dispose();
			break;
		}
		case ButtonState.Pushed:
		{
			SolidBrush solidBrush = new SolidBrush(Office2003Colors.PressedSelColor);
			rect.Inflate(-1, -1);
			g.FillRectangle(solidBrush, new Rectangle(rect.X + 1, rect.Y + 1, rect.Width - 1, rect.Height - 1));
			ControlPaint.DrawBorder(g, rect, Office2003Colors.SelBorderColor, ButtonBorderStyle.Solid);
			solidBrush.Dispose();
			break;
		}
		}
	}

	public void DrawComboBoxStyle(Graphics g, Rectangle rect, ThemedComboBoxDrawing.DropDownState state, Color clrBack)
	{
		Office2003Colors.UpdateMenuColors();
		Point offset = Point.Empty;
		switch (state)
		{
		case ThemedComboBoxDrawing.DropDownState.Normal:
		{
			LinearGradientBrush linearGradientBrush = new LinearGradientBrush(rect, Office2003Colors.DockBarColorLight, Office2003Colors.GroupBarHeaderColorLight, LinearGradientMode.Vertical);
			rect.Inflate(-1, -1);
			g.FillRectangle(linearGradientBrush, rect);
			ControlPaint.DrawBorder(g, rect, SystemColors.Highlight, ButtonBorderStyle.Solid);
			linearGradientBrush.Dispose();
			break;
		}
		case ThemedComboBoxDrawing.DropDownState.Hot:
		{
			SolidBrush solidBrush2 = new SolidBrush(Office2003Colors.SelColor);
			rect.Inflate(-1, -1);
			g.FillRectangle(solidBrush2, rect);
			ControlPaint.DrawBorder(g, rect, Office2003Colors.SelBorderColor, ButtonBorderStyle.Solid);
			solidBrush2.Dispose();
			break;
		}
		case ThemedComboBoxDrawing.DropDownState.Pressed:
		{
			SolidBrush solidBrush = new SolidBrush(Office2003Colors.PressedSelColor);
			rect.Inflate(-1, -1);
			g.FillRectangle(solidBrush, new Rectangle(rect.X + 1, rect.Y + 1, rect.Width - 1, rect.Height - 1));
			ControlPaint.DrawBorder(g, rect, Office2003Colors.SelBorderColor, ButtonBorderStyle.Solid);
			offset = new Point(1, 1);
			solidBrush.Dispose();
			break;
		}
		}
		string bitmapName = "downFill.png";
		iconPainter.PaintIcon(g, rect, offset, bitmapName, Color.Black);
	}

	public void DrawSpinButtonStyle(Graphics g, Rectangle rect, ButtonID btnId, ButtonState btnState, Color clrBack)
	{
		Office2003Colors.UpdateMenuColors();
		Point offset = Point.Empty;
		if (btnId == ButtonID.Up)
		{
			offset = new Point(-1, -1);
		}
		switch (btnState)
		{
		case ButtonState.Flat:
		{
			LinearGradientBrush linearGradientBrush = ((btnId != ButtonID.Down) ? new LinearGradientBrush(rect, Office2003Colors.GroupBarHeaderColorLight, Office2003Colors.DockBarColorLight, LinearGradientMode.Vertical) : new LinearGradientBrush(rect, Office2003Colors.DockBarColorLight, Office2003Colors.GroupBarHeaderColorLight, LinearGradientMode.Vertical));
			g.FillRectangle(linearGradientBrush, rect);
			ControlPaint.DrawBorder(g, rect, SystemColors.Highlight, ButtonBorderStyle.Solid);
			linearGradientBrush.Dispose();
			break;
		}
		case ButtonState.Normal:
		{
			SolidBrush solidBrush2 = new SolidBrush(Office2003Colors.SelColor);
			g.FillRectangle(solidBrush2, rect);
			ControlPaint.DrawBorder(g, rect, Office2003Colors.SelBorderColor, ButtonBorderStyle.Solid);
			solidBrush2.Dispose();
			break;
		}
		case ButtonState.Pushed:
		{
			offset = ((btnId != ButtonID.Up) ? new Point(1, 1) : new Point(0, 0));
			SolidBrush solidBrush = new SolidBrush(Office2003Colors.PressedSelColor);
			g.FillRectangle(solidBrush, new Rectangle(rect.X + 1, rect.Y + 1, rect.Width - 1, rect.Height - 1));
			ControlPaint.DrawBorder(g, rect, Office2003Colors.SelBorderColor, ButtonBorderStyle.Solid);
			solidBrush.Dispose();
			break;
		}
		}
		string bitmapName = ((btnId != ButtonID.Down) ? "upFill.png" : "downFill.png");
		iconPainter.PaintIcon(g, rect, offset, bitmapName, Color.Black);
	}

	public void DrawCheckBoxStyle(Graphics g, Rectangle rect, ButtonState state, bool mixedState)
	{
		if (rect.Height == 0 || rect.Width == 0)
		{
			return;
		}
		bool flag = false;
		Color color;
		if ((state & ButtonState.Pushed) > ButtonState.Normal)
		{
			color = Off2003Colors.CheckBoxPushedFillColor;
		}
		else if ((state & ButtonState.Flat) <= ButtonState.Normal)
		{
			color = (((state & ButtonState.Inactive) <= ButtonState.Normal) ? Off2003Colors.CheckBoxFillNormal : Color.Transparent);
		}
		else
		{
			flag = true;
			color = Off2003Colors.CheckBoxFillColorHot;
		}
		Rectangle rectangle = rect;
		using (LinearGradientBrush brush = new LinearGradientBrush(rectangle, color, Color.White, 45f))
		{
			rectangle.Inflate(-1, -1);
			g.FillRectangle(brush, rectangle);
		}
		Rectangle rectangle2 = rectangle;
		rectangle2.Inflate(-2, -2);
		if ((state & ButtonState.Checked) > ButtonState.Normal)
		{
			Point[] points = new Point[3]
			{
				new Point(rectangle.X, rectangle.Y + rectangle.Height / 2 - 2),
				new Point(rectangle.X + rectangle.Width / 2 - 1, rectangle.Bottom - 4),
				new Point(rectangle.Right - 1, rectangle.Top + 1)
			};
			Pen pen = (((state & ButtonState.Inactive) <= ButtonState.Normal) ? new Pen(Off2003Colors.CheckColor, 2f) : new Pen(Off2003Colors.CheckColorInactive, 2f));
			SmoothingMode smoothingMode = g.SmoothingMode;
			g.SmoothingMode = SmoothingMode.AntiAlias;
			g.SetClip(rectangle2);
			g.DrawLines(pen, points);
			g.SmoothingMode = smoothingMode;
			g.ResetClip();
		}
		if (mixedState && (state & ButtonState.Inactive) <= ButtonState.Normal)
		{
			using Brush brush2 = new SolidBrush(Off2003Colors.CheckColor);
			g.FillRectangle(brush2, rectangle2);
		}
		if (flag)
		{
			rectangle.Width--;
			rectangle.Height--;
			using (LinearGradientBrush brush3 = new LinearGradientBrush(rectangle, Off2003Colors.CheckBoxInnerBorderColorHot, Color.White, 225f))
			{
				using Pen pen2 = new Pen(brush3, 2.5f);
				g.DrawRectangle(pen2, rectangle);
			}
			rectangle.Width++;
			rectangle.Height++;
		}
		Pen pen3 = (((state & ButtonState.Inactive) <= ButtonState.Normal) ? new Pen(Off2003Colors.CheckBoxOuterBorderColor) : new Pen(Off2003Colors.CheckBoxOuterBorderColorInactive));
		g.DrawRectangle(pen3, rect.X, rect.Y, rect.Width - 1, rect.Height - 1);
	}

	public void DrawRadioStyle(Graphics g, Rectangle rect, ButtonState state)
	{
		if (rect.Height == 0 || rect.Width == 0)
		{
			return;
		}
		SmoothingMode smoothingMode = g.SmoothingMode;
		g.SmoothingMode = SmoothingMode.AntiAlias;
		rect.Offset(1, 0);
		rect.Width -= 3;
		rect.Height -= 2;
		_ = Off2003Colors.CheckBoxOuterBorderColor;
		Color color = Off2003Colors.CheckBoxFillNormal;
		bool flag = false;
		if ((state & ButtonState.Pushed) > ButtonState.Normal)
		{
			color = Off2003Colors.CheckBoxPushedFillColor;
		}
		else
		{
			_ = state & ButtonState.Flat;
			_ = 0;
		}
		using (LinearGradientBrush brush = new LinearGradientBrush(rect, color, Color.White, 45f))
		{
			g.FillEllipse(brush, rect);
		}
		using (Pen pen = new Pen(Off2003Colors.CheckBoxOuterBorderColor))
		{
			g.DrawEllipse(pen, rect);
		}
		if ((state & ButtonState.Checked) > ButtonState.Normal)
		{
			RectangleF rect2 = rect;
			rect2.Offset(3.3f, 3.3f);
			rect2.Width = 5f;
			rect2.Height = 5f;
			using LinearGradientBrush brush2 = new LinearGradientBrush(rect2, Color.Green, Color.LightGreen, 225f);
			g.FillEllipse(brush2, rect2);
		}
		g.SmoothingMode = smoothingMode;
	}
}
