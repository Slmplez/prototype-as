using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[TypeLibType(4160)]
[Guid("104301C7-72AE-11D5-B316-0800309CC2CE")]
public interface IHTMLHelper
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744860)]
	[return: MarshalAs(UnmanagedType.Interface)]
	Collection getImagePaths([In][MarshalAs(UnmanagedType.BStr)] string html);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744861)]
	[return: MarshalAs(UnmanagedType.Interface)]
	NodeList getImageNodes([In][MarshalAs(UnmanagedType.BStr)] string html);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744862)]
	[return: MarshalAs(UnmanagedType.BStr)]
	string plainTextToHTML([In][MarshalAs(UnmanagedType.BStr)] string sText);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744863)]
	[return: MarshalAs(UnmanagedType.BStr)]
	string transformImageTags2([In][MarshalAs(UnmanagedType.BStr)] string html, [In][MarshalAs(UnmanagedType.BStr)] string cachePath);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744864)]
	[return: MarshalAs(UnmanagedType.BStr)]
	string transformImageTags1([In][MarshalAs(UnmanagedType.BStr)] string html);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744865)]
	[return: MarshalAs(UnmanagedType.Interface)]
	Collection getImageIDs([In][MarshalAs(UnmanagedType.BStr)] string html);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744866)]
	[return: MarshalAs(UnmanagedType.BStr)]
	string toUnorderedList([In][MarshalAs(UnmanagedType.BStr)] string html);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744867)]
	[return: MarshalAs(UnmanagedType.BStr)]
	string tidy([In][MarshalAs(UnmanagedType.BStr)] string html);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744868)]
	[return: MarshalAs(UnmanagedType.BStr)]
	string replaceNcrWithUnicode([In][MarshalAs(UnmanagedType.BStr)] string textWithNCRCodes);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744869)]
	[return: MarshalAs(UnmanagedType.BStr)]
	string removeList([In][MarshalAs(UnmanagedType.BStr)] string html);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744870)]
	[return: MarshalAs(UnmanagedType.BStr)]
	string resetImageTags([In][MarshalAs(UnmanagedType.BStr)] string html);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744871)]
	[return: MarshalAs(UnmanagedType.BStr)]
	string toOrderedList([In][MarshalAs(UnmanagedType.BStr)] string html);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744872)]
	[return: MarshalAs(UnmanagedType.BStr)]
	string htmlToPlainText([In][MarshalAs(UnmanagedType.BStr)] string html);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744873)]
	[return: MarshalAs(UnmanagedType.Interface)]
	Collection getNewImagePaths([In][MarshalAs(UnmanagedType.BStr)] string html);
}
