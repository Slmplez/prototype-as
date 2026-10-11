using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

public interface INativeMessageFilter
{
	bool ProcessMessage(ref Message m);
}
