using System;
using System.Collections;
using System.ComponentModel;
using System.Drawing;
using System.Drawing.Imaging;
using System.Runtime.InteropServices;
using Syncfusion.Runtime.InteropServices;

namespace Syncfusion.Drawing;

public class DrawIconHelper
{
	internal class IconDrawInfo
	{
		public readonly bool bIsAlphablended;

		public readonly int nIconWidth;

		public IconDrawInfo(bool alphaBlended, int width)
		{
			bIsAlphablended = alphaBlended;
			nIconWidth = width;
		}
	}

	protected static Hashtable m_drawIcons = new Hashtable();

	private static readonly int[] c_masIconWidth = new int[7] { 16, 24, 32, 48, 64, 128, 256 };

	public static Image GetIconToDraw(Icon icon, object relatedObject)
	{
		bool flag = false;
		int num = 0;
		if (!m_drawIcons.ContainsKey(relatedObject))
		{
			int num2 = 0;
			for (int num3 = c_masIconWidth.Length - 1; num3 > 0; num3--)
			{
				if (c_masIconWidth[num3] == icon.Width)
				{
					num2 = num3;
				}
			}
			int num4 = num2;
			while (!flag && num4 >= 0)
			{
				num = c_masIconWidth[num4];
				Icon icon2 = new Icon(icon, num, num);
				NativeMethods.ICONINFO piconinfo = default(NativeMethods.ICONINFO);
				NativeMethods.BITMAP bm = default(NativeMethods.BITMAP);
				NativeMethods.GetIconInfo(icon2.Handle, out piconinfo);
				NativeMethods.GetObject(piconinfo.hbmColor, Marshal.SizeOf((object)bm), out bm);
				if (bm.bmBitsPixel * bm.bmPlanes == 32)
				{
					Bitmap bitmap = IconToBitmap(piconinfo);
					int num5 = 0;
					while (!flag && num5 < bitmap.Height)
					{
						for (int i = 0; i < bitmap.Width; i++)
						{
							if (bitmap.GetPixel(num5, i).A != 0)
							{
								num = Convert.ToInt32(bm.bmWidth);
								flag = true;
								break;
							}
						}
						num5++;
					}
					bitmap.Dispose();
				}
				NativeMethods.DeleteObject(piconinfo.hbmColor);
				NativeMethods.DeleteObject(piconinfo.hbmMask);
				icon2.Dispose();
				num4--;
			}
			m_drawIcons.Add(relatedObject, new IconDrawInfo(flag, num));
			if (relatedObject is Component component)
			{
				component.Disposed += component_Disposed;
			}
		}
		else
		{
			IconDrawInfo iconDrawInfo = m_drawIcons[relatedObject] as IconDrawInfo;
			flag = iconDrawInfo.bIsAlphablended;
			num = iconDrawInfo.nIconWidth;
		}
		Icon icon3 = new Icon(icon, num, num);
		Image result;
		if (flag)
		{
			try
			{
				NativeMethods.ICONINFO piconinfo2 = default(NativeMethods.ICONINFO);
				NativeMethods.GetIconInfo(icon3.Handle, out piconinfo2);
				Bitmap bitmap2 = IconToBitmap(piconinfo2);
				result = bitmap2;
				NativeMethods.DeleteObject(piconinfo2.hbmColor);
				NativeMethods.DeleteObject(piconinfo2.hbmMask);
			}
			catch
			{
				result = icon3.ToBitmap();
			}
		}
		else
		{
			result = icon3.ToBitmap();
		}
		icon3.Dispose();
		return result;
	}

	private static void component_Disposed(object sender, EventArgs e)
	{
		if (sender is Component component && m_drawIcons.ContainsKey(component))
		{
			component.Disposed -= component_Disposed;
			m_drawIcons.Remove(component);
		}
	}

	private static Bitmap IconToBitmap(NativeMethods.ICONINFO ii)
	{
		IntPtr hbmColor = ii.hbmColor;
		Bitmap bmSource = Image.FromHbitmap(hbmColor);
		return FixAlphaBitmap(bmSource);
	}

	private static Bitmap FixAlphaBitmap(Bitmap bmSource)
	{
		Rectangle rect = new Rectangle(Point.Empty, bmSource.Size);
		BitmapData bitmapData = bmSource.LockBits(rect, ImageLockMode.ReadWrite, bmSource.PixelFormat);
		Bitmap result = new Bitmap(bitmapData.Width, bitmapData.Height, bitmapData.Stride, PixelFormat.Format32bppArgb, bitmapData.Scan0);
		bmSource.UnlockBits(bitmapData);
		return result;
	}
}
