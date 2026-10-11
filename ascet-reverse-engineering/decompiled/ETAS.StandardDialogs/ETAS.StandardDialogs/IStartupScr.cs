using System.Drawing;
using System.Runtime.InteropServices;
using System.Windows.Forms;

namespace ETAS.StandardDialogs;

[Guid("F34436CB-80F6-451b-B93C-E62C0FAF2E85")]
[ComVisible(true)]
public interface IStartupScr
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

	bool ShowProgressBar { get; set; }

	bool ShowInformationText { get; set; }

	int ProgressBarValue { get; set; }

	string InformationText
	{
		[return: MarshalAs(UnmanagedType.LPWStr)]
		get;
		[param: MarshalAs(UnmanagedType.LPWStr)]
		set;
	}

	bool SandClockMousePointer { get; set; }

	Icon SetStartupScreenIcon { get; set; }

	void Show();

	void Show(IWin32Window owner);

	void Close();
}
