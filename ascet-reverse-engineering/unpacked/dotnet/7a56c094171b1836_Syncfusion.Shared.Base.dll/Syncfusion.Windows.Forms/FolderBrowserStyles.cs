using System;
using System.ComponentModel;
using System.Drawing.Design;
using Syncfusion.Windows.Forms.Design;

namespace Syncfusion.Windows.Forms;

[Serializable]
[Flags]
[Editor(typeof(EnumFlagsEditor), typeof(UITypeEditor))]
public enum FolderBrowserStyles
{
	RestrictToFilesystem = 1,
	RestrictToDomain = 2,
	StatusText = 4,
	RestrictToSubfolders = 8,
	ShowTextBox = 0x10,
	Validate = 0x20,
	NewDialogStyle = 0x40,
	UAHint = 0x100,
	AllowUrls = 0x80,
	BrowseForComputer = 0x1000,
	BrowseForPrinter = 0x2000,
	BrowseForEverything = 0x4000,
	[Obsolete("Please, use ShowAdministrativeShares style instead.")]
	ShowShares = 0x8000,
	ShowAdministrativeShares = 0x8000
}
