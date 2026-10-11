using System.Windows.Forms;
using System.Windows.Forms.Layout;

namespace Syncfusion.Windows.Forms.Tools;

internal class LayoutEngineStub : LayoutEngine
{
	public override void InitLayout(object child, BoundsSpecified specified)
	{
	}

	public override bool Layout(object container, LayoutEventArgs layoutEventArgs)
	{
		return false;
	}
}
