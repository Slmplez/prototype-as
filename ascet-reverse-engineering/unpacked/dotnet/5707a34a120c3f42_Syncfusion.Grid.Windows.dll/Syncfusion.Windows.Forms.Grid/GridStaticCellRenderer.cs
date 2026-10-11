using System;
using System.Drawing;
using System.Drawing.Text;
using System.Windows.Forms;
using Syncfusion.Diagnostics;
using Syncfusion.Drawing;

namespace Syncfusion.Windows.Forms.Grid;

public class GridStaticCellRenderer : GridCellRendererBase
{
	public GridStaticCellRenderer(GridControlBase grid, GridCellModelBase cellModel)
		: base(grid, cellModel)
	{
		base.SupportsEditing = GetType() != typeof(GridStaticCellRenderer);
	}

	protected override void OnDraw(Graphics g, Rectangle clientRectangle, int rowIndex, int colIndex, GridStyleInfo style)
	{
		bool drawDisabled = false;
		string empty = string.Empty;
		if (clientRectangle.IsEmpty)
		{
			return;
		}
		int imageIndex = style.ImageIndex;
		if (imageIndex != -1)
		{
			ImageList imageList = style.ImageList;
			if (imageList != null && imageIndex < imageList.Images.Count)
			{
				Rectangle cellBoundsCoreInt = GetCellBoundsCoreInt(rowIndex, colIndex, nonClientIfVisible: true);
				Rectangle cellBoundsCoreInt2 = GetCellBoundsCoreInt(rowIndex, colIndex, nonClientIfVisible: false);
				if (!g.ClipBounds.IsEmpty)
				{
					cellBoundsCoreInt2.Intersect(Rectangle.Ceiling(g.ClipBounds));
				}
				if (cellBoundsCoreInt2.Contains(cellBoundsCoreInt))
				{
					DrawImage(g, imageList, imageIndex, cellBoundsCoreInt, base.Grid.IsRightToLeft());
				}
				else if (cellBoundsCoreInt2.IntersectsWith(cellBoundsCoreInt))
				{
					DrawImage(g, imageList, imageIndex, cellBoundsCoreInt, cellBoundsCoreInt2, base.Grid.IsRightToLeft());
				}
			}
		}
		Rectangle textRectangle = RemoveMargins(clientRectangle, style);
		if (textRectangle.IsEmpty)
		{
			return;
		}
		bool flag = false;
		if (style.ImageFromByteArray && style.CellValueType == typeof(byte[]))
		{
			try
			{
				object cellValue = style.CellValue;
				Image image = ImageUtil.ConvertToImage(cellValue);
				if (image != null)
				{
					Rectangle cellBoundsCoreInt3 = GetCellBoundsCoreInt(rowIndex, colIndex, nonClientIfVisible: false);
					bool isTextRightToLeft = (style.RightToLeft == RightToLeft.Inherit && base.Grid.IsRightToLeft()) || style.RightToLeft == RightToLeft.Yes;
					GridImageUtil.DrawImage(image, cellBoundsCoreInt3, g, clientRectangle, style, isTextRightToLeft);
					flag = true;
				}
			}
			catch (Exception ex)
			{
				Console.WriteLine("Image conversion from ByteArray failed. Set GridStyleInfo.ImageFromByteArray = false; to prevent this exception.");
				TraceUtil.TraceExceptionCatched(ex);
				if (!ExceptionManager.RaiseExceptionCatched(this, ex))
				{
					throw;
				}
			}
		}
		if (flag)
		{
			return;
		}
		try
		{
			empty = ((!ShouldDrawEditing(rowIndex, colIndex)) ? base.Model.GetFormattedOrActiveTextAt(rowIndex, colIndex, style) : ControlText);
		}
		catch (Exception ex2)
		{
			TraceUtil.TraceExceptionCatched(ex2);
			if (!ExceptionManager.RaiseExceptionCatched(this, ex2))
			{
				throw;
			}
			empty = style.Text;
			drawDisabled = true;
		}
		if (style.HasError)
		{
			empty = style.Error;
			drawDisabled = true;
		}
		if (empty.Length > 0)
		{
			GridDrawCellDisplayTextEventArgs e = new GridDrawCellDisplayTextEventArgs(g, empty, textRectangle, style);
			base.Grid.RaiseDrawCellDisplayText(e);
			if (!e.Cancel)
			{
				textRectangle = e.TextRectangle;
				empty = e.DisplayText;
				Font gdipFont = style.GdipFont;
				Color textColor = ((base.Grid.PrintingMode && base.Grid.Model.Properties.BlackWhite) ? Color.Black : style.TextColor);
				bool isRightToLeft = (style.RightToLeft == RightToLeft.Inherit && base.Grid.IsRightToLeft()) || style.RightToLeft == RightToLeft.Yes;
				DrawText(g, empty, gdipFont, textRectangle, style, textColor, drawDisabled, isRightToLeft);
			}
		}
	}

	protected override Rectangle RemoveMargins(Rectangle clientRectangle, GridStyleInfo style)
	{
		GridMargins gridMargins = style.ReadOnlyTextMargins.ToMargins();
		if (base.Grid.IsRightToLeft())
		{
			gridMargins = gridMargins.SwapRightToLeft();
		}
		Rectangle r = GridMargins.RemoveMargins(clientRectangle, gridMargins);
		int imageIndex = style.ImageIndex;
		ImageList imageList = style.ImageList;
		if (imageIndex != -1 && imageList != null && imageIndex < imageList.Images.Count)
		{
			if (base.Grid.IsRightToLeft())
			{
				r.Width -= imageList.ImageSize.Width + 2;
			}
			else
			{
				GridUtil.OffsetLeft(ref r, imageList.ImageSize.Width + 2);
			}
		}
		if (r.Width <= 0 || r.Height <= 0)
		{
			return Rectangle.Empty;
		}
		return r;
	}

	public static Rectangle DrawImage(Graphics g, ImageList imageList, int imageIndex, Rectangle bounds, bool isRightToLeft)
	{
		return DrawImage(g, imageList, imageIndex, bounds, Rectangle.Empty, isRightToLeft);
	}

	public static Rectangle DrawImage(Graphics g, ImageList imageList, int imageIndex, Rectangle bounds, Rectangle clipBounds, bool isRightToLeft)
	{
		Region region = null;
		Size imageSize = imageList.ImageSize;
		int num = (bounds.Height - imageSize.Height) / 2;
		if (num <= 0)
		{
			num = 0;
		}
		Rectangle rectangle = ((!isRightToLeft) ? new Rectangle(bounds.X, bounds.Y + num, Math.Min(bounds.Width, imageSize.Width), Math.Min(bounds.Height, imageSize.Height)) : new Rectangle(Math.Max(bounds.Left, bounds.Right - imageSize.Width), bounds.Y + num, imageSize.Width, Math.Min(bounds.Height, imageSize.Height)));
		if (clipBounds.IsEmpty || clipBounds.IntersectsWith(rectangle))
		{
			if (num <= 0)
			{
				num = 0;
				region = g.Clip;
			}
			else if (!clipBounds.IsEmpty)
			{
				region = g.Clip;
			}
			if (g.DpiY > 96f || GridControlBase.UseImageListDrawing)
			{
				Rectangle rectangle2 = rectangle;
				rectangle2.Offset(-rectangle2.X, -rectangle2.Y);
				Bitmap image = new Bitmap(bounds.Width, bounds.Height);
				Graphics graphics = Graphics.FromImage(image);
				imageList.Draw(graphics, 0, 0, imageIndex);
				graphics.Dispose();
				g.DrawImageUnscaled(image, rectangle);
			}
			else if (region != null && !clipBounds.IsEmpty)
			{
				DrawingUtils.DrawImageViaImageList(g, imageList, imageIndex, rectangle);
			}
			else
			{
				DrawingUtils.DrawImageViaImageList(g, imageList, imageIndex, rectangle);
			}
		}
		if (isRightToLeft)
		{
			bounds.Width -= imageSize.Width + 2;
		}
		else
		{
			GridUtil.OffsetLeft(ref bounds, imageSize.Width + 2);
		}
		return bounds;
	}

	[Obsolete("It is recommended to specify isRightToLeft parameter, default for isRightToLeft is False.")]
	public static Rectangle DrawImage(Graphics g, ImageList imageList, int imageIndex, Rectangle bounds)
	{
		return DrawImage(g, imageList, imageIndex, bounds, isRightToLeft: false);
	}

	private static Rectangle GetImageRect(ImageList imageList, Rectangle bounds, bool isRightToLeft)
	{
		Rectangle result = Rectangle.Empty;
		if (imageList != null)
		{
			Size imageSize = imageList.ImageSize;
			int num = (bounds.Height - imageSize.Height) / 2;
			if (num <= 0)
			{
				num = 0;
			}
			result = ((!isRightToLeft) ? new Rectangle(bounds.X, bounds.Y + num, Math.Min(bounds.Width, imageSize.Width), Math.Min(bounds.Height, imageSize.Height)) : new Rectangle(Math.Max(bounds.Left, bounds.Right - imageSize.Width), bounds.Y + num, imageSize.Width, Math.Min(bounds.Height, imageSize.Height)));
		}
		return result;
	}

	public static void DrawText(Graphics g, string displayText, Font font, Rectangle textRectangle, GridStyleInfo style, Color textColor, bool isRightToLeft)
	{
		DrawText(g, displayText, font, textRectangle, style, textColor, drawDisabled: false, isRightToLeft);
	}

	public static void DrawText(Graphics g, string displayText, Font font, Rectangle textRectangle, GridStyleInfo style, Color textColor, bool drawDisabled, bool isRightToLeft)
	{
		Brush brush = new SolidBrush(textColor);
		StringFormat stringFormat = new StringFormat();
		stringFormat.LineAlignment = GridUtil.ConvertToStringAlignment(style.VerticalAlignment);
		stringFormat.Alignment = GridUtil.ConvertToStringAlignment(style.HorizontalAlignment);
		if (isRightToLeft)
		{
			stringFormat.FormatFlags |= StringFormatFlags.DirectionRightToLeft;
		}
		stringFormat.HotkeyPrefix = style.HotkeyPrefix;
		stringFormat.Trimming = style.Trimming;
		stringFormat.SetTabStops(0f, new float[1] { 50f });
		if (!style.WrapText)
		{
			stringFormat.FormatFlags |= StringFormatFlags.NoWrap;
		}
		char passwordChar = style.PasswordChar;
		if (passwordChar != ' ')
		{
			displayText = new string(passwordChar, displayText.Length);
		}
		int orientation = style.ReadOnlyFont.Orientation;
		if (orientation != 0)
		{
			float angle = orientation;
			RotatePaint.DrawRotatedString(g, displayText, font, brush, textRectangle, stringFormat, angle);
		}
		else
		{
			if (stringFormat.Alignment == StringAlignment.Far && GridControlBase.UseGdiPlusRightAlignedTextWorkaround && g.TextRenderingHint == TextRenderingHint.SystemDefault)
			{
				int val = MeasureDisplayStringWidth(g, displayText, font);
				val = Math.Min(val, textRectangle.Width);
				textRectangle = new Rectangle(textRectangle.Right - val, textRectangle.Y, val, textRectangle.Height);
				stringFormat.Alignment = StringAlignment.Near;
				stringFormat.Trimming = StringTrimming.None;
				stringFormat.FormatFlags = StringFormatFlags.NoWrap;
			}
			if (displayText.Length <= 65535)
			{
				if (!drawDisabled)
				{
					g.DrawString(displayText, font, brush, textRectangle, stringFormat);
				}
				else
				{
					ControlPaint.DrawStringDisabled(g, displayText, font, textColor, textRectangle, stringFormat);
				}
			}
		}
		brush.Dispose();
		stringFormat.Dispose();
	}

	[Obsolete("It is recommended to specify isRightToLeft parameter, default for isRightToLeft is False.")]
	public static void DrawText(Graphics g, string displayText, Font font, Rectangle textRectangle, GridStyleInfo style, Color textColor)
	{
		DrawText(g, displayText, font, textRectangle, style, textColor, drawDisabled: false, isRightToLeft: false);
	}

	internal static int MeasureDisplayStringWidth(Graphics graphics, string text, Font font)
	{
		RectangleF layoutRect = RectangleF.Empty;
		using (StringFormat stringFormat = new StringFormat())
		{
			layoutRect = new RectangleF(0f, 0f, 1000f, 1000f);
			CharacterRange[] measurableCharacterRanges = new CharacterRange[1]
			{
				new CharacterRange(0, text.Length)
			};
			Region[] array = new Region[1];
			stringFormat.SetMeasurableCharacterRanges(measurableCharacterRanges);
			array = graphics.MeasureCharacterRanges(text, font, layoutRect, stringFormat);
			layoutRect = array[0].GetBounds(graphics);
		}
		return (int)(layoutRect.Right + 1f);
	}

	protected override bool IsPointOverImage(int rowIndex, int colIndex, Point pt)
	{
		GridStyleInfo viewStyleInfo = base.Grid.GetViewStyleInfo(rowIndex, colIndex);
		ImageList imageList = viewStyleInfo.ImageList;
		if (imageList != null)
		{
			int imageIndex = viewStyleInfo.ImageIndex;
			if (imageIndex >= 0 && imageIndex < imageList.Images.Count)
			{
				GridCellLayout gridCellLayout = PerformLayout(rowIndex, colIndex);
				return GetImageRect(imageList, gridCellLayout.InnerRectangle, base.Grid.IsRightToLeft()).Contains(pt);
			}
		}
		return false;
	}
}
