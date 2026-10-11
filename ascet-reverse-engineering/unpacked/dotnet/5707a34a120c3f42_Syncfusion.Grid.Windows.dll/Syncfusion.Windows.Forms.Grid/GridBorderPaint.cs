using System;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Drawing.Imaging;
using System.Security.Permissions;

namespace Syncfusion.Windows.Forms.Grid;

public sealed class GridBorderPaint
{
	[ThreadStatic]
	private static Bitmap[] borderBitmaps = null;

	private static object[] borderSpecs = new object[8]
	{
		new short[8] { 17, 17, 17, 17, 17, 17, 17, 17 },
		new short[8] { 85, 85, 85, 85, 85, 85, 85, 85 },
		new short[8] { 177, 177, 177, 177, 177, 177, 177, 177 },
		new short[8] { 81, 81, 81, 81, 81, 81, 81, 81 },
		new short[8] { 0, 0, 0, 255, 0, 0, 0, 255 },
		new short[8] { 0, 255, 0, 255, 0, 255, 0, 255 },
		new short[8] { 0, 0, 0, 255, 255, 0, 255, 255 },
		new short[8] { 0, 0, 0, 255, 0, 255, 0, 255 }
	};

	private GridBorderPaint()
	{
	}

	public static void DrawRectangle(Graphics g, GridBorder border, Rectangle r, Color backColor, GridBorderSide borderSide)
	{
		DrawRectangle(g, border, r, backColor, borderSide, usePenForThinLines: false);
	}

	private static void PrintRectangle(Graphics g, GridBorder border, Rectangle r, Color backColor, GridBorderSide borderSide)
	{
		float num = 0.5f;
		float num2 = 0.5f;
		switch (border.Weight)
		{
		case GridBorderWeight.ExtraThin:
			num2 = 0.347222f;
			break;
		case GridBorderWeight.Thin:
			num2 = 0.694444f;
			break;
		case GridBorderWeight.Medium:
			num2 = 1.388889f;
			break;
		case GridBorderWeight.Thick:
			num2 = 2.083333f;
			break;
		case GridBorderWeight.ExtraThick:
			num2 = 2.777778f;
			break;
		case GridBorderWeight.ExtraExtraThick:
			num2 = 4.166667f;
			break;
		}
		float num3 = 0f;
		float num4 = num2;
		if (num2 < num)
		{
			num2 = 0f;
			num3 = num4;
		}
		RectangleF rect = new RectangleF(r.X, r.Y, (float)r.Width - num3, num2);
		RectangleF rect2 = new RectangleF(r.X, r.Y, num2, (float)r.Height - num3);
		RectangleF rect3 = new RectangleF((float)r.Right - num4, r.Y, num2, (float)r.Height - num3);
		RectangleF rect4 = new RectangleF(r.X, (float)r.Bottom - num4, (float)r.Width - num3, num2);
		Brush brush = null;
		Bitmap bitmap = null;
		Bitmap bitmap2 = null;
		switch (border.Style)
		{
		case GridBorderStyle.Solid:
		{
			if (num2 > num)
			{
				brush = new SolidBrush(border.Color);
				if ((borderSide & GridBorderSide.Left) != 0)
				{
					g.FillRectangle(brush, rect2);
				}
				if ((borderSide & GridBorderSide.Right) != 0)
				{
					g.FillRectangle(brush, rect3);
				}
				if ((borderSide & GridBorderSide.Top) != 0)
				{
					g.FillRectangle(brush, rect);
				}
				if ((borderSide & GridBorderSide.Bottom) != 0)
				{
					g.FillRectangle(brush, rect4);
				}
				brush.Dispose();
				break;
			}
			Pen pen3 = new Pen(border.Color);
			pen3.EndCap = LineCap.Flat;
			pen3.StartCap = LineCap.Flat;
			pen3.Width = num4;
			if ((borderSide & GridBorderSide.Left) != 0)
			{
				g.DrawLine(pen3, rect2.Location, new PointF(rect2.Left, rect2.Bottom));
			}
			if ((borderSide & GridBorderSide.Right) != 0)
			{
				g.DrawLine(pen3, rect3.Location, new PointF(rect3.Left, rect3.Bottom));
			}
			if ((borderSide & GridBorderSide.Top) != 0)
			{
				g.DrawLine(pen3, rect.Location, new PointF(rect.Right, rect.Top));
			}
			if ((borderSide & GridBorderSide.Bottom) != 0)
			{
				g.DrawLine(pen3, rect4.Location, new PointF(rect4.Right, rect4.Top));
			}
			pen3.Dispose();
			break;
		}
		case GridBorderStyle.Dashed:
		case GridBorderStyle.Dotted:
		case GridBorderStyle.DashDot:
		case GridBorderStyle.DashDotDot:
		{
			if ((borderSide & (GridBorderSide.Left | GridBorderSide.Right)) != 0)
			{
				bitmap2 = CreateBitmapFromBorderSpecs((int)(border.Style + 2));
			}
			if ((borderSide & (GridBorderSide.Top | GridBorderSide.Bottom)) != 0)
			{
				bitmap = CreateBitmapFromBorderSpecs((int)(border.Style - 2));
			}
			if (bitmap == null && bitmap2 == null)
			{
				break;
			}
			ColorMap colorMap = new ColorMap();
			colorMap.OldColor = Color.White;
			colorMap.NewColor = backColor;
			ColorMap colorMap2 = new ColorMap();
			colorMap2.OldColor = Color.Black;
			colorMap2.NewColor = border.Color;
			ColorMap[] remapTable = new ColorMap[2] { colorMap, colorMap2 };
			ImageAttributes imageAttributes = new ImageAttributes();
			imageAttributes.SetRemapTable(remapTable);
			if (bitmap2 != null)
			{
				TextureBrush textureBrush = new TextureBrush(bitmap2, new Rectangle(new Point(0, 0), bitmap2.PhysicalDimension.ToSize()), imageAttributes);
				textureBrush.WrapMode = WrapMode.Tile;
				if (num2 > 0f)
				{
					if ((borderSide & GridBorderSide.Left) != 0)
					{
						g.FillRectangle(textureBrush, rect2);
					}
					if ((borderSide & GridBorderSide.Right) != 0)
					{
						g.FillRectangle(textureBrush, rect3);
					}
				}
				else
				{
					Pen pen = new Pen(textureBrush);
					pen.EndCap = LineCap.Square;
					pen.StartCap = LineCap.Square;
					if ((borderSide & GridBorderSide.Left) != 0)
					{
						g.DrawLine(pen, rect2.Location, new PointF(rect2.Left, rect2.Bottom));
					}
					if ((borderSide & GridBorderSide.Right) != 0)
					{
						g.DrawLine(pen, rect3.Location, new PointF(rect3.Left, rect3.Bottom));
					}
					pen.Dispose();
				}
				textureBrush.Dispose();
			}
			if (bitmap == null)
			{
				break;
			}
			TextureBrush textureBrush2 = new TextureBrush(bitmap, new Rectangle(new Point(0, 0), bitmap.PhysicalDimension.ToSize()), imageAttributes);
			textureBrush2.WrapMode = WrapMode.Tile;
			if (num2 > 0f)
			{
				if ((borderSide & GridBorderSide.Top) != 0)
				{
					g.FillRectangle(textureBrush2, rect);
				}
				if ((borderSide & GridBorderSide.Bottom) != 0)
				{
					g.FillRectangle(textureBrush2, rect4);
				}
			}
			else
			{
				Pen pen2 = new Pen(textureBrush2);
				pen2.EndCap = LineCap.Square;
				pen2.StartCap = LineCap.Square;
				if ((borderSide & GridBorderSide.Top) != 0)
				{
					g.DrawLine(pen2, rect.Location, new PointF(rect.Right, rect.Top));
				}
				if ((borderSide & GridBorderSide.Bottom) != 0)
				{
					g.DrawLine(pen2, rect4.Location, new PointF(rect4.Right, rect4.Top));
				}
				pen2.Dispose();
			}
			textureBrush2.Dispose();
			break;
		}
		case GridBorderStyle.NotSet:
		case GridBorderStyle.None:
			break;
		}
	}

	[SecurityPermission(SecurityAction.Demand, UnmanagedCode = true)]
	public static void DrawRectangle(Graphics g, GridBorder border, Rectangle r, Color backColor, GridBorderSide borderSide, bool usePenForThinLines)
	{
		if (usePenForThinLines)
		{
			PrintRectangle(g, border, r, backColor, borderSide);
			return;
		}
		new Point(r.X, r.Y);
		new Point(r.X, r.Right);
		new Point(r.Right, r.Bottom);
		new Point(r.X, r.Bottom);
		int num = 1;
		switch (border.Weight)
		{
		case GridBorderWeight.ExtraThin:
			num = 1;
			break;
		case GridBorderWeight.Thin:
			num = 1;
			break;
		case GridBorderWeight.Medium:
			num = 2;
			break;
		case GridBorderWeight.Thick:
			num = 3;
			break;
		case GridBorderWeight.ExtraThick:
			num = 4;
			break;
		case GridBorderWeight.ExtraExtraThick:
			num = 4;
			break;
		}
		int num2 = 0;
		int num3 = num;
		if (usePenForThinLines && num == 1)
		{
			num = 0;
			num2 = 1;
		}
		Rectangle rect = new Rectangle(r.X, r.Y, r.Width - num2, num);
		Rectangle rect2 = new Rectangle(r.X, r.Y, num, r.Height - num2);
		Rectangle rect3 = new Rectangle(r.Right - num3, r.Y, num, r.Height - num2);
		Rectangle rect4 = new Rectangle(r.X, r.Bottom - num3, r.Width - num2, num);
		Brush brush = null;
		Bitmap bitmap = null;
		Bitmap bitmap2 = null;
		switch (border.Style)
		{
		case GridBorderStyle.Solid:
		{
			if (num > 0)
			{
				brush = new SolidBrush(border.Color);
				if ((borderSide & GridBorderSide.Left) != 0)
				{
					g.FillRectangle(brush, rect2);
				}
				if ((borderSide & GridBorderSide.Right) != 0)
				{
					g.FillRectangle(brush, rect3);
				}
				if ((borderSide & GridBorderSide.Top) != 0)
				{
					g.FillRectangle(brush, rect);
				}
				if ((borderSide & GridBorderSide.Bottom) != 0)
				{
					g.FillRectangle(brush, rect4);
				}
				brush.Dispose();
				break;
			}
			Pen pen3 = new Pen(border.Color);
			pen3.EndCap = LineCap.Square;
			pen3.StartCap = LineCap.Square;
			if ((borderSide & GridBorderSide.Left) != 0)
			{
				g.DrawLine(pen3, rect2.Location, new Point(rect2.Left, rect2.Bottom));
			}
			if ((borderSide & GridBorderSide.Right) != 0)
			{
				g.DrawLine(pen3, rect3.Location, new Point(rect3.Left, rect3.Bottom));
			}
			if ((borderSide & GridBorderSide.Top) != 0)
			{
				g.DrawLine(pen3, rect.Location, new Point(rect.Right, rect.Top));
			}
			if ((borderSide & GridBorderSide.Bottom) != 0)
			{
				g.DrawLine(pen3, rect4.Location, new Point(rect4.Right, rect4.Top));
			}
			pen3.Dispose();
			break;
		}
		case GridBorderStyle.Dashed:
		case GridBorderStyle.Dotted:
		case GridBorderStyle.DashDot:
		case GridBorderStyle.DashDotDot:
		{
			if ((borderSide & (GridBorderSide.Left | GridBorderSide.Right)) != 0)
			{
				bitmap2 = CreateBitmapFromBorderSpecs((int)(border.Style + 2));
			}
			if ((borderSide & (GridBorderSide.Top | GridBorderSide.Bottom)) != 0)
			{
				bitmap = CreateBitmapFromBorderSpecs((int)(border.Style - 2));
			}
			if (bitmap == null && bitmap2 == null)
			{
				break;
			}
			ColorMap colorMap = new ColorMap();
			colorMap.OldColor = Color.White;
			colorMap.NewColor = backColor;
			ColorMap colorMap2 = new ColorMap();
			colorMap2.OldColor = Color.Black;
			colorMap2.NewColor = border.Color;
			ColorMap[] remapTable = new ColorMap[2] { colorMap, colorMap2 };
			ImageAttributes imageAttributes = new ImageAttributes();
			imageAttributes.SetRemapTable(remapTable);
			if (bitmap2 != null)
			{
				TextureBrush textureBrush = new TextureBrush(bitmap2, new Rectangle(new Point(0, 0), bitmap2.PhysicalDimension.ToSize()), imageAttributes);
				textureBrush.WrapMode = WrapMode.Tile;
				if (num > 0)
				{
					if ((borderSide & GridBorderSide.Left) != 0)
					{
						g.FillRectangle(textureBrush, rect2);
					}
					if ((borderSide & GridBorderSide.Right) != 0)
					{
						g.FillRectangle(textureBrush, rect3);
					}
				}
				else
				{
					Pen pen = new Pen(textureBrush);
					pen.EndCap = LineCap.Square;
					pen.StartCap = LineCap.Square;
					if ((borderSide & GridBorderSide.Left) != 0)
					{
						g.DrawLine(pen, rect2.Location, new Point(rect2.Left, rect2.Bottom));
					}
					if ((borderSide & GridBorderSide.Right) != 0)
					{
						g.DrawLine(pen, rect3.Location, new Point(rect3.Left, rect3.Bottom));
					}
					pen.Dispose();
				}
				textureBrush.Dispose();
			}
			if (bitmap != null)
			{
				TextureBrush textureBrush2 = new TextureBrush(bitmap, new Rectangle(new Point(0, 0), bitmap.PhysicalDimension.ToSize()), imageAttributes);
				textureBrush2.WrapMode = WrapMode.Tile;
				if (num > 0)
				{
					if ((borderSide & GridBorderSide.Top) != 0)
					{
						g.FillRectangle(textureBrush2, rect);
					}
					if ((borderSide & GridBorderSide.Bottom) != 0)
					{
						g.FillRectangle(textureBrush2, rect4);
					}
				}
				else
				{
					Pen pen2 = new Pen(textureBrush2);
					pen2.EndCap = LineCap.Square;
					pen2.StartCap = LineCap.Square;
					if ((borderSide & GridBorderSide.Top) != 0)
					{
						g.DrawLine(pen2, rect.Location, new Point(rect.Right, rect.Top));
					}
					if ((borderSide & GridBorderSide.Bottom) != 0)
					{
						g.DrawLine(pen2, rect4.Location, new Point(rect4.Right, rect4.Top));
					}
					pen2.Dispose();
				}
				textureBrush2.Dispose();
			}
			imageAttributes.Dispose();
			break;
		}
		case GridBorderStyle.NotSet:
		case GridBorderStyle.None:
			break;
		}
	}

	private static Bitmap CreateBitmapFromBorderSpecs(int n)
	{
		if (borderBitmaps == null)
		{
			borderBitmaps = new Bitmap[borderSpecs.Length];
		}
		if (borderBitmaps[n] == null)
		{
			IntPtr intPtr = NativeMethods.CreateBitmap(8, 8, 1, 1, (short[])borderSpecs[n]);
			if (intPtr != IntPtr.Zero)
			{
				borderBitmaps[n] = Image.FromHbitmap(intPtr);
			}
			NativeMethods.DeleteObject(intPtr);
		}
		return borderBitmaps[n];
	}
}
