using System.Windows.Forms;

namespace Syncfusion.Windows.Forms;

public interface IEditControlsEmbedListener
{
	void SetActiveEditControl(IEditControlsEmbed parentControl, Control editControl);
}
