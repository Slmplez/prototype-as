using System.Runtime.InteropServices;
using System.Windows.Forms;

namespace ETAS.StandardDialogs;

[Guid("B21FA387-230A-4977-AC2B-BE7053C48AE5")]
[ComVisible(true)]
public interface ISupportDialog
{
	ELanguageType Language { get; set; }

	Location LocationEurope { get; set; }

	Location LocationFrBeLux { get; set; }

	Location LocationGreatBritain { get; set; }

	Location LocationUSA { get; set; }

	Location LocationJapan { get; set; }

	Location LocationKorea { get; set; }

	Location LocationChina { get; set; }

	Location LocationIndia { get; set; }

	EApplicationDialogType DialogType { get; set; }

	string Headline
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
