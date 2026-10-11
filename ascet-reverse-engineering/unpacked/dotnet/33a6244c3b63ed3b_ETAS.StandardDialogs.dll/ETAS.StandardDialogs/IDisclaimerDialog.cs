using System.Runtime.InteropServices;
using System.Windows.Forms;

namespace ETAS.StandardDialogs;

[Guid("56640023-166D-4275-83D8-FE8FCA0CF4F3")]
[ComVisible(true)]
public interface IDisclaimerDialog
{
	ELanguageType Language { get; set; }

	EApplicationDialogType DialogType { get; set; }

	string DialogTitle { set; }

	void Show();

	void Show(IWin32Window owner);

	DialogResult ShowDialog();

	DialogResult ShowDialog(IWin32Window owner);
}
