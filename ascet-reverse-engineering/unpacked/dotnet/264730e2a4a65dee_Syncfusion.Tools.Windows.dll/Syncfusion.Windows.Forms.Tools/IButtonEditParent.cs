using System.Drawing;

namespace Syncfusion.Windows.Forms.Tools;

public interface IButtonEditParent
{
	void ChildButtonSizeChanged(ButtonEditChildButton btn, Size newSize);

	void ChildButtonAlignmentChanged(ButtonEditChildButton btn, ButtonAlignment newAlign);
}
