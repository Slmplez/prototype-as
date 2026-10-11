using System.ComponentModel;
using System.ComponentModel.Design;

namespace Syncfusion.Windows.Forms;

public class ScrollersFrameDesigner : ComponentDesigner
{
	public override void Initialize(IComponent component)
	{
		base.Initialize(component);
		if (GetService(typeof(INestedContainer)) is INestedContainer nestedContainer && component is ScrollersFrame scrollersFrame)
		{
			nestedContainer.Add(scrollersFrame.VerticalScroller);
			nestedContainer.Add(scrollersFrame.HorizontalScroller);
		}
	}
}
