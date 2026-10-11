using System.Runtime.InteropServices;
using System.Windows.Forms;

namespace ETAS.StandardDialogs;

[Guid("81A9EE07-74DB-4973-959A-986B212A96E8")]
[ComVisible(true)]
public interface IAboutDialog
{
	EApplicationDialogType DialogType { get; set; }

	string Headline
	{
		[return: MarshalAs(UnmanagedType.LPWStr)]
		get;
		[param: MarshalAs(UnmanagedType.LPWStr)]
		set;
	}

	string SubHeadline
	{
		[return: MarshalAs(UnmanagedType.LPWStr)]
		get;
		[param: MarshalAs(UnmanagedType.LPWStr)]
		set;
	}

	string Content
	{
		[return: MarshalAs(UnmanagedType.LPWStr)]
		get;
		[param: MarshalAs(UnmanagedType.LPWStr)]
		set;
	}

	void Show();

	void Show(IWin32Window owner);

	void ShowDialog();

	void ShowDialog(IWin32Window owner);
}
