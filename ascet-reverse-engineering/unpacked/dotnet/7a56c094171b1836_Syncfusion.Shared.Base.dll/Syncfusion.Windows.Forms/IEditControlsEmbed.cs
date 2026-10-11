using System.Windows.Forms;

namespace Syncfusion.Windows.Forms;

public interface IEditControlsEmbed
{
	Control GetActiveEditControl(IEditControlsEmbedListener listener);
}
