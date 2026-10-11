using System.Drawing;

namespace Syncfusion.Windows.Forms.Tools;

public interface IProvideLayoutInformation
{
	Size PreferredSize { get; }

	Size MinimumSize { get; }
}
