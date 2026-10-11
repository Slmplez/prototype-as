using System;
using System.Drawing;
using System.Drawing.Text;
using System.IO;
using System.Runtime.InteropServices;
using Syncfusion.Diagnostics;
using Syncfusion.Documentation;
using Syncfusion.Runtime.InteropServices;
using Syncfusion.Windows.Forms;

namespace Syncfusion.Drawing;

[DocumentationExclude]
public class FontUtil
{
	[ThreadStatic]
	private static PrivateFontCollection privateFonts;

	internal static PrivateFontCollection PrivateFonts
	{
		get
		{
			if (privateFonts == null)
			{
				privateFonts = new PrivateFontCollection();
			}
			return privateFonts;
		}
	}

	[DocumentationExclude]
	public static FontFamily AddMemoryFont(Stream s)
	{
		byte[] array = new byte[s.Length];
		s.Read(array, 0, (int)s.Length);
		IntPtr intPtr = Marshal.AllocCoTaskMem(array.Length);
		Marshal.Copy(array, 0, intPtr, array.Length);
		return AddMemoryFont(intPtr, array.Length);
	}

	[DocumentationExclude]
	public static FontFamily AddMemoryFont(IntPtr memory, int length)
	{
		PrivateFonts.AddMemoryFont(memory, length);
		FontFamily[] families = privateFonts.Families;
		return families[families.Length - 1];
	}

	[DocumentationExclude]
	public static FontFamily AddFontFile(string fileName)
	{
		PrivateFonts.AddFontFile(fileName);
		FontFamily[] families = privateFonts.Families;
		return families[families.Length - 1];
	}

	[DocumentationExclude]
	public static FontFamily GetPrivateFont(string familyName)
	{
		if (privateFonts == null)
		{
			return null;
		}
		FontFamily[] families = privateFonts.Families;
		foreach (FontFamily fontFamily in families)
		{
			if (fontFamily.Name == familyName)
			{
				return fontFamily;
			}
		}
		return null;
	}

	[DocumentationExclude]
	public static Font CreateFont(string facename, float size)
	{
		return CreateFont(facename, size, FontStyle.Regular, GraphicsUnit.Point);
	}

	[DocumentationExclude]
	public static Font CreateFont(string facename, float size, FontStyle fontStyle)
	{
		return CreateFont(facename, size, fontStyle, GraphicsUnit.Point);
	}

	[DocumentationExclude]
	public static Font CreateFont(Font srcFont, FontStyle fontStyle)
	{
		Font font = null;
		try
		{
			font = new Font(srcFont, fontStyle);
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(typeof(FontUtil), ex))
			{
				throw;
			}
		}
		if (font == null)
		{
			font = CreateFont(srcFont.Name, srcFont.Size, srcFont.Style, srcFont.Unit);
		}
		return font;
	}

	[DocumentationExclude]
	public static Font CreateFont(string facename, float size, FontStyle fontStyle, GraphicsUnit unit)
	{
		Font font = null;
		FontFamily privateFont = GetPrivateFont(facename);
		if (privateFont != null)
		{
			font = new Font(privateFont, size, fontStyle, unit);
			if (font != null)
			{
				return font;
			}
		}
		try
		{
			font = new Font(facename, size, fontStyle, unit);
		}
		catch (ArgumentException e)
		{
			TraceUtil.TraceExceptionCatched(e);
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(typeof(FontUtil), ex))
			{
				throw;
			}
		}
		if (font == null)
		{
			try
			{
				FontFamily fontFamily = new FontFamily(facename);
				if (fontFamily.IsStyleAvailable(FontStyle.Regular))
				{
					font = new Font(facename, size, FontStyle.Regular, unit);
				}
				else if (fontFamily.IsStyleAvailable(FontStyle.Bold))
				{
					font = new Font(facename, size, FontStyle.Bold, unit);
				}
				else if (fontFamily.IsStyleAvailable(FontStyle.Italic))
				{
					font = new Font(facename, size, FontStyle.Italic, unit);
				}
				else if (fontFamily.IsStyleAvailable(FontStyle.Underline))
				{
					font = new Font(facename, size, FontStyle.Underline, unit);
				}
			}
			catch (ArgumentException e2)
			{
				TraceUtil.TraceExceptionCatched(e2);
			}
			catch (Exception ex2)
			{
				TraceUtil.TraceExceptionCatched(ex2);
				if (!ExceptionManager.RaiseExceptionCatched(typeof(FontUtil), ex2))
				{
					throw;
				}
			}
			if (font == null)
			{
				try
				{
					font = new Font(FontFamily.GenericSansSerif, size, fontStyle, unit);
				}
				catch (ArgumentException e3)
				{
					TraceUtil.TraceExceptionCatched(e3);
				}
				catch (Exception ex3)
				{
					TraceUtil.TraceExceptionCatched(ex3);
					if (!ExceptionManager.RaiseExceptionCatched(typeof(FontUtil), ex3))
					{
						throw;
					}
				}
				try
				{
					font = new Font(FontFamily.GenericSansSerif, size, FontStyle.Regular, unit);
				}
				catch (ArgumentException e4)
				{
					TraceUtil.TraceExceptionCatched(e4);
				}
				catch (Exception ex4)
				{
					TraceUtil.TraceExceptionCatched(ex4);
					if (!ExceptionManager.RaiseExceptionCatched(typeof(FontUtil), ex4))
					{
						throw;
					}
				}
			}
		}
		return font;
	}

	public static PanoseFontFamilyTypes PanoseFontFamilyType(Graphics graphics, Font font)
	{
		byte result = 0;
		IntPtr hdc = graphics.GetHdc();
		try
		{
			IntPtr hObject = NativeMethods.SelectObject(hdc, font.ToHfont());
			int outlineTextMetrics = NativeMethods.GetOutlineTextMetrics(hdc, 0, IntPtr.Zero);
			IntPtr intPtr = Marshal.AllocCoTaskMem(outlineTextMetrics);
			Marshal.WriteInt32(intPtr, outlineTextMetrics);
			if (NativeMethods.GetOutlineTextMetrics(hdc, outlineTextMetrics, intPtr) != 0)
			{
				int ofs = 61;
				result = Marshal.ReadByte(intPtr, ofs);
			}
			Marshal.FreeCoTaskMem(intPtr);
			NativeMethods.SelectObject(hdc, hObject);
			return (PanoseFontFamilyTypes)result;
		}
		finally
		{
			graphics.ReleaseHdc(hdc);
		}
	}
}
