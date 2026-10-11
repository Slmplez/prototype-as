using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[TypeLibType(4160)]
[Guid("104301CB-72AE-11D5-B316-0800309CC2CE")]
public interface IHTMLHelperStatics
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744875)]
	[return: MarshalAs(UnmanagedType.Interface)]
	Collection getImagePaths([In][MarshalAs(UnmanagedType.BStr)] string html);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744876)]
	[return: MarshalAs(UnmanagedType.Interface)]
	NodeList getImageNodes([In][MarshalAs(UnmanagedType.BStr)] string html);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744877)]
	[return: MarshalAs(UnmanagedType.BStr)]
	string plainTextToHTML([In][MarshalAs(UnmanagedType.BStr)] string sText);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744878)]
	[return: MarshalAs(UnmanagedType.BStr)]
	string transformImageTags2([In][MarshalAs(UnmanagedType.BStr)] string html, [In][MarshalAs(UnmanagedType.BStr)] string cachePath);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744879)]
	[return: MarshalAs(UnmanagedType.BStr)]
	string transformImageTags1([In][MarshalAs(UnmanagedType.BStr)] string html);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744880)]
	[return: MarshalAs(UnmanagedType.Interface)]
	Collection getImageIDs([In][MarshalAs(UnmanagedType.BStr)] string html);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744881)]
	[return: MarshalAs(UnmanagedType.BStr)]
	string toUnorderedList([In][MarshalAs(UnmanagedType.BStr)] string html);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744882)]
	[return: MarshalAs(UnmanagedType.BStr)]
	string tidy([In][MarshalAs(UnmanagedType.BStr)] string html);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744883)]
	[return: MarshalAs(UnmanagedType.BStr)]
	string replaceNcrWithUnicode([In][MarshalAs(UnmanagedType.BStr)] string textWithNCRCodes);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744884)]
	[return: MarshalAs(UnmanagedType.BStr)]
	string removeList([In][MarshalAs(UnmanagedType.BStr)] string html);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744885)]
	[return: MarshalAs(UnmanagedType.BStr)]
	string resetImageTags([In][MarshalAs(UnmanagedType.BStr)] string html);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744886)]
	[return: MarshalAs(UnmanagedType.BStr)]
	string toOrderedList([In][MarshalAs(UnmanagedType.BStr)] string html);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744887)]
	[return: MarshalAs(UnmanagedType.BStr)]
	string htmlToPlainText([In][MarshalAs(UnmanagedType.BStr)] string html);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744888)]
	[return: MarshalAs(UnmanagedType.Interface)]
	Collection getNewImagePaths([In][MarshalAs(UnmanagedType.BStr)] string html);
}
