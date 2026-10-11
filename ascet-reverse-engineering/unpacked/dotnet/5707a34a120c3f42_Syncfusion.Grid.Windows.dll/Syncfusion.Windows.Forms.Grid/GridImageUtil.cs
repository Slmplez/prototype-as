using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Documentation;
using Syncfusion.Drawing;

namespace Syncfusion.Windows.Forms.Grid;

[DocumentationExclude]
public class GridImageUtil : ImageUtil
{
	private static Rectangle CenterInRectDontStretch(Rectangle rect, Size size)
	{
		int num = 0;
		if (size.Width < rect.Width)
		{
			num = rect.Width - size.Width;
		}
		int num2 = 0;
		if (size.Height < rect.Height)
		{
			num2 = rect.Height - size.Height;
		}
		return new Rectangle(rect.Left + num / 2, rect.Top + num2 / 2, size.Width, size.Height);
	}

	[DocumentationExclude]
	public static void DrawImage(Image image, Rectangle clipRectangle, Graphics g, Rectangle clientRectangle, GridStyleInfo style, bool isTextRightToLeft)
	{
		DrawImage(image, clipRectangle, g, clientRectangle, style, isTextRightToLeft, null, -1);
	}

	[DocumentationExclude]
	public static void DrawImage(Image image, Rectangle clipRectangle, Graphics g, Rectangle clientRectangle, GridStyleInfo style, bool isTextRightToLeft, ImageList imageList, int imageIndex)
	{
		if (imageList != null && imageIndex >= 0)
		{
			image = imageList.Images[imageIndex];
		}
		if (image == null)
		{
			return;
		}
		GraphicsUnit pageUnit = GraphicsUnit.Point;
		RectangleF bounds = image.GetBounds(ref pageUnit);
		Rectangle rectangle = Rectangle.Empty;
		Region region = null;
		bool flag = false;
		switch (style.ImageSizeMode)
		{
		case GridImageSizeMode.StretchImage:
			rectangle = clientRectangle;
			break;
		case GridImageSizeMode.Normal:
			rectangle = new Rectangle(clientRectangle.X, clientRectangle.Y, (int)bounds.Width, (int)bounds.Height);
			rectangle = CenterInRectDontStretch(clientRectangle, rectangle.Size);
			flag = true;
			break;
		case GridImageSizeMode.CenterImage:
			rectangle = new Rectangle(clientRectangle.X, clientRectangle.Y, (int)bounds.Width, (int)bounds.Height);
			if (rectangle.Width > clientRectangle.Width || rectangle.Height > clientRectangle.Height)
			{
				float num3 = bounds.Width / bounds.Height;
				float num4 = (float)clientRectangle.Width / (float)clientRectangle.Height;
				rectangle = clientRectangle;
				if (num4 < num3)
				{
					rectangle.Height = (int)((float)rectangle.Width * num3);
				}
				else
				{
					rectangle.Width = (int)((float)rectangle.Height * num3);
				}
			}
			rectangle = CenterInRectDontStretch(clientRectangle, rectangle.Size);
			break;
		case GridImageSizeMode.AutoSize:
		{
			float num = bounds.Width / bounds.Height;
			float num2 = (float)clientRectangle.Width / (float)clientRectangle.Height;
			rectangle = clientRectangle;
			if (num2 < num)
			{
				rectangle.Height = (int)((float)rectangle.Width * num);
			}
			else
			{
				rectangle.Width = (int)((float)rectangle.Height * num);
			}
			flag = true;
			break;
		}
		}
		if ((!clipRectangle.Contains(clientRectangle) && clipRectangle.IntersectsWith(clientRectangle)) || rectangle.Height > clientRectangle.Height || rectangle.Width > clientRectangle.Width)
		{
			clipRectangle.Intersect(clientRectangle);
			region = g.Clip;
			g.Clip = new Region(clipRectangle);
		}
		if (!rectangle.IsEmpty)
		{
			if (flag)
			{
				if (rectangle.Width < clientRectangle.Width)
				{
					if (isTextRightToLeft)
					{
						switch (style.HorizontalAlignment)
						{
						case GridHorizontalAlignment.Right:
							rectangle.X = clientRectangle.X;
							break;
						case GridHorizontalAlignment.Center:
							rectangle.X = clientRectangle.X + (clientRectangle.Width - rectangle.Width) / 2;
							break;
						case GridHorizontalAlignment.Left:
							rectangle.X = clientRectangle.X + (clientRectangle.Width - rectangle.Width);
							break;
						}
					}
					else
					{
						switch (style.HorizontalAlignment)
						{
						case GridHorizontalAlignment.Left:
							rectangle.X = clientRectangle.X;
							break;
						case GridHorizontalAlignment.Center:
							rectangle.X = clientRectangle.X + (clientRectangle.Width - rectangle.Width) / 2;
							break;
						case GridHorizontalAlignment.Right:
							rectangle.X = clientRectangle.X + (clientRectangle.Width - rectangle.Width);
							break;
						}
					}
				}
				if (rectangle.Height < clientRectangle.Height)
				{
					switch (style.VerticalAlignment)
					{
					case GridVerticalAlignment.Top:
						rectangle.Y = clientRectangle.Y;
						break;
					case GridVerticalAlignment.Middle:
						rectangle.Y = clientRectangle.Y + (clientRectangle.Height - rectangle.Height) / 2;
						break;
					case GridVerticalAlignment.Bottom:
						rectangle.Y = clientRectangle.Y + (clientRectangle.Height - rectangle.Height);
						break;
					}
				}
			}
			if (imageList != null)
			{
				if (g.DpiY > 96f || GridControlBase.UseImageListDrawing)
				{
					Rectangle rect = rectangle;
					rect.Offset(-rect.X, -rect.Y);
					Bitmap image2 = new Bitmap(rectangle.Width, rectangle.Height);
					Graphics graphics = Graphics.FromImage(image2);
					DrawingUtils.DrawImageViaImageList(graphics, imageList, imageIndex, rect);
					graphics.Dispose();
					g.DrawImageUnscaled(image2, rectangle);
				}
				else if (rectangle.Size == bounds.Size)
				{
					DrawingUtils.DrawImageViaImageList(g, imageList, imageIndex, rectangle);
				}
				else
				{
					g.DrawImage(image, rectangle, bounds, pageUnit);
				}
			}
			else
			{
				g.DrawImage(image, rectangle, bounds, pageUnit);
			}
		}
		if (region != null)
		{
			g.Clip = region;
		}
	}
}
