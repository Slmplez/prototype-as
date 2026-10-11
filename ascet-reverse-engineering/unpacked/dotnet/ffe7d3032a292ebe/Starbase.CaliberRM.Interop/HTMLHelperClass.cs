using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[ClassInterface(0)]
[Guid("104301C8-72AE-11D5-B316-0800309CC2CE")]
public class HTMLHelperClass : IHTMLHelper, HTMLHelper
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744860)]
	[return: MarshalAs(UnmanagedType.Interface)]
	public virtual extern Collection getImagePaths([In][MarshalAs(UnmanagedType.BStr)] string html);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744861)]
	[return: MarshalAs(UnmanagedType.Interface)]
	public virtual extern NodeList getImageNodes([In][MarshalAs(UnmanagedType.BStr)] string html);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744862)]
	[return: MarshalAs(UnmanagedType.BStr)]
	public virtual extern string plainTextToHTML([In][MarshalAs(UnmanagedType.BStr)] string sText);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744863)]
	[return: MarshalAs(UnmanagedType.BStr)]
	public virtual extern string transformImageTags2([In][MarshalAs(UnmanagedType.BStr)] string html, [In][MarshalAs(UnmanagedType.BStr)] string cachePath);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744864)]
	[return: MarshalAs(UnmanagedType.BStr)]
	public virtual extern string transformImageTags1([In][MarshalAs(UnmanagedType.BStr)] string html);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744865)]
	[return: MarshalAs(UnmanagedType.Interface)]
	public virtual extern Collection getImageIDs([In][MarshalAs(UnmanagedType.BStr)] string html);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744866)]
	[return: MarshalAs(UnmanagedType.BStr)]
	public virtual extern string toUnorderedList([In][MarshalAs(UnmanagedType.BStr)] string html);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744867)]
	[return: MarshalAs(UnmanagedType.BStr)]
	public virtual extern string tidy([In][MarshalAs(UnmanagedType.BStr)] string html);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744868)]
	[return: MarshalAs(UnmanagedType.BStr)]
	public virtual extern string replaceNcrWithUnicode([In][MarshalAs(UnmanagedType.BStr)] string textWithNCRCodes);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744869)]
	[return: MarshalAs(UnmanagedType.BStr)]
	public virtual extern string removeList([In][MarshalAs(UnmanagedType.BStr)] string html);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744870)]
	[return: MarshalAs(UnmanagedType.BStr)]
	public virtual extern string resetImageTags([In][MarshalAs(UnmanagedType.BStr)] string html);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744871)]
	[return: MarshalAs(UnmanagedType.BStr)]
	public virtual extern string toOrderedList([In][MarshalAs(UnmanagedType.BStr)] string html);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744872)]
	[return: MarshalAs(UnmanagedType.BStr)]
	public virtual extern string htmlToPlainText([In][MarshalAs(UnmanagedType.BStr)] string html);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744873)]
	[return: MarshalAs(UnmanagedType.Interface)]
	public virtual extern Collection getNewImagePaths([In][MarshalAs(UnmanagedType.BStr)] string html);
}
