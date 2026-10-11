using System.Runtime.InteropServices;
using System.Windows.Forms;

namespace ETAS.StandardDialogs;

[Guid("BCAB3B99-2112-420F-A96C-89E7E2339DB6")]
[ComVisible(true)]
public interface ICheckRebootDialog
{
	ELanguageType Language { get; set; }

	EApplicationDialogType DialogType { get; set; }

	string AppTitle
	{
		[return: MarshalAs(UnmanagedType.LPWStr)]
		get;
		[param: MarshalAs(UnmanagedType.LPWStr)]
		set;
	}

	string RegPath
	{
		[return: MarshalAs(UnmanagedType.LPWStr)]
		get;
		[param: MarshalAs(UnmanagedType.LPWStr)]
		set;
	}

	bool CheckAndShow();

	bool CheckAndShow(IWin32Window owner);
}
