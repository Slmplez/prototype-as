using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

public interface INativeMessageFilter2 : INativeMessageFilter
{
	void PostProcessMessage(ref Message m);
}
