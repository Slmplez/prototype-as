using System;

namespace Syncfusion.Windows.Forms.Tools.Win32API;

[CLSCompliant(false)]
public enum ClipboardFormats : uint
{
	CF_TEXT = 1u,
	CF_BITMAP = 2u,
	CF_METAFILEPICT = 3u,
	CF_SYLK = 4u,
	CF_DIF = 5u,
	CF_TIFF = 6u,
	CF_OEMTEXT = 7u,
	CF_DIB = 8u,
	CF_PALETTE = 9u,
	CF_PENDATA = 10u,
	CF_RIFF = 11u,
	CF_WAVE = 12u,
	CF_UNICODETEXT = 13u,
	CF_ENHMETAFILE = 14u,
	CF_HDROP = 15u,
	CF_LOCALE = 16u,
	CF_MAX = 17u,
	CF_OWNERDISPLAY = 128u,
	CF_DSPTEXT = 129u,
	CF_DSPBITMAP = 130u,
	CF_DSPMETAFILEPICT = 131u,
	CF_DSPENHMETAFILE = 142u,
	CF_PRIVATEFIRST = 512u,
	CF_PRIVATELAST = 767u,
	CF_GDIOBJFIRST = 768u,
	CF_GDIOBJLAST = 1023u
}
