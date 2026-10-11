using System;
using System.Drawing;
using System.Drawing.Imaging;
using System.Reflection;
using System.Runtime.InteropServices;
using System.Windows.Forms;

namespace Narbware;

public sealed class Imagelist
{
	private struct SHFILEINFO
	{
		public IntPtr hIcon;

		public IntPtr iIcon;

		public uint dwAttributes;

		[MarshalAs(UnmanagedType.ByValTStr, SizeConst = 260)]
		public string szDisplayName;

		[MarshalAs(UnmanagedType.ByValTStr, SizeConst = 80)]
		public string szTypeName;
	}

	[StructLayout(LayoutKind.Sequential)]
	private class BITMAPINFO
	{
		public int biSize;

		public int biWidth;

		public int biHeight;

		public short biPlanes;

		public short biBitCount;

		public int biCompression;

		public int biSizeImage;

		public int biXPelsPerMeter;

		public int biYPelsPerMeter;

		public int biClrUsed;

		public int biClrImportant;

		public int colors;
	}

	private const uint SHGFI_ICON = 256u;

	private const uint SHGFI_LINKOVERLAY = 32768u;

	private const uint SHGFI_SELECTED = 65536u;

	private const uint SHGFI_LARGEICON = 0u;

	private const uint SHGFI_SMALLICON = 1u;

	private const uint SHGFI_OPENICON = 2u;

	private const uint SHGFI_SHELLICONSIZE = 4u;

	private const uint SHGFI_USEFILEATTRIBUTES = 16u;

	private const uint SHGFI_TYPENAME = 1024u;

	[DllImport("comctl32.dll")]
	private static extern bool ImageList_Add(IntPtr hImageList, IntPtr hBitmap, IntPtr hMask);

	[DllImport("kernel32.dll")]
	private static extern bool RtlMoveMemory(IntPtr dest, IntPtr source, int dwcount);

	[DllImport("shell32.dll")]
	private static extern IntPtr SHGetFileInfo(string pszPath, uint dwFileAttributes, ref SHFILEINFO psfi, uint cbSizeFileInfo, uint uFlags);

	[DllImport("user32.dll")]
	private static extern IntPtr DestroyIcon(IntPtr hIcon);

	[DllImport("gdi32.dll")]
	private static extern IntPtr CreateDIBSection(IntPtr hdc, [In][MarshalAs(UnmanagedType.LPStruct)] BITMAPINFO pbmi, uint iUsage, out IntPtr ppvBits, IntPtr hSection, uint dwOffset);

	[DllImport("gdi32.dll")]
	private static extern bool DeleteObject(IntPtr hObject);

	private Imagelist()
	{
	}

	public static void AddFromImage(Image sourceImage, ImageList destinationImagelist)
	{
		Add((Bitmap)sourceImage, destinationImagelist);
	}

	public static void AddFromImage(Icon sourceIcon, ImageList destinationImagelist)
	{
		destinationImagelist.Images.Add(Icon.FromHandle(sourceIcon.Handle));
	}

	public static void AddFromFile(string fileName, ImageList destinationImagelist)
	{
		Bitmap bitmap = new Bitmap(fileName);
		if (bitmap.RawFormat.Guid == ImageFormat.Icon.Guid)
		{
			Icon icon = new Icon(fileName);
			destinationImagelist.Images.Add(Icon.FromHandle(icon.Handle));
			icon.Dispose();
		}
		else
		{
			Add(bitmap, destinationImagelist);
		}
		bitmap.Dispose();
	}

	public static void AddIconOfFile(string fileName, IconSize iconSize, bool selectedState, bool openState, bool linkOverlay, ImageList destinationImagelist)
	{
		uint uFlags = (uint)((iconSize == IconSize.Large) ? 0 : 0) | ((iconSize == IconSize.Small) ? 1u : 0u) | (uint)((iconSize == IconSize.Shell) ? 4 : 0) | (uint)(selectedState ? 65536 : 0) | (uint)(openState ? 2 : 0) | (uint)(linkOverlay ? 32768 : 0);
		Add(fileName, destinationImagelist, uFlags);
	}

	public static void AddIconOfFile(string fileName, ImageList destinationImagelist)
	{
		Add(fileName, destinationImagelist, 0u);
	}

	public static void AddIconOfFileExt(string fileExtension, IconSize iconSize, bool selectedState, bool openState, bool linkOverlay, ImageList destinationImagelist)
	{
		uint uFlags = (uint)(0x10 | ((iconSize == IconSize.Large) ? 0 : 0)) | ((iconSize == IconSize.Small) ? 1u : 0u) | (uint)((iconSize == IconSize.Shell) ? 4 : 0) | (uint)(selectedState ? 65536 : 0) | (uint)(openState ? 2 : 0) | (uint)(linkOverlay ? 32768 : 0);
		Add(fileExtension.Insert(0, "."), destinationImagelist, uFlags);
	}

	public static void AddIconOfFileExt(string fileExtension, ImageList destinationImagelist)
	{
		Add(fileExtension.Insert(0, "."), destinationImagelist, 16u);
	}

	public static void AddEmbeddedResource(string resourceName, ImageList destinationImagelist)
	{
		Bitmap bitmap = new Bitmap(Assembly.GetExecutingAssembly().GetManifestResourceStream(resourceName));
		if (bitmap.RawFormat.Guid == ImageFormat.Icon.Guid)
		{
			Icon icon = new Icon(Assembly.GetExecutingAssembly().GetManifestResourceStream(resourceName));
			destinationImagelist.Images.Add(Icon.FromHandle(icon.Handle));
			icon.Dispose();
		}
		else
		{
			AddFromImage(bitmap, destinationImagelist);
		}
		bitmap.Dispose();
	}

	private static void Add(string pszPath, ImageList il, uint uFlags)
	{
		SHFILEINFO psfi = default(SHFILEINFO);
		SHGetFileInfo(pszPath, 0u, ref psfi, (uint)Marshal.SizeOf((object)psfi), 0x100 | uFlags);
		il.Images.Add(Icon.FromHandle(psfi.hIcon));
		DestroyIcon(psfi.hIcon);
	}

	private static void Add(Bitmap bm, ImageList il)
	{
		BITMAPINFO bITMAPINFO = new BITMAPINFO();
		using Bitmap bitmap = new Bitmap(bm, il.ImageSize.Width, il.ImageSize.Height);
		bITMAPINFO.biSize = 40;
		bITMAPINFO.biBitCount = 32;
		bITMAPINFO.biPlanes = 1;
		bITMAPINFO.biWidth = bitmap.Width;
		bITMAPINFO.biHeight = bitmap.Height;
		bitmap.RotateFlip(RotateFlipType.Rotate180FlipX);
		IntPtr ppvBits;
		IntPtr intPtr = CreateDIBSection(new IntPtr(0), bITMAPINFO, 0u, out ppvBits, new IntPtr(0), 0u);
		BitmapData bitmapData = bitmap.LockBits(new Rectangle(0, 0, bitmap.Width, bitmap.Height), ImageLockMode.ReadOnly, PixelFormat.Format32bppArgb);
		RtlMoveMemory(ppvBits, bitmapData.Scan0, bitmap.Height * bitmapData.Stride);
		bitmap.UnlockBits(bitmapData);
		ImageList_Add(il.Handle, intPtr, new IntPtr(0));
		DeleteObject(intPtr);
	}
}
