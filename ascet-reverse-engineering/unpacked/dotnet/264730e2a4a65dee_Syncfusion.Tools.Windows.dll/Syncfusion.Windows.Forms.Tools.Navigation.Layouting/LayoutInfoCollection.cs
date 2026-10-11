using System.Collections.Generic;

namespace Syncfusion.Windows.Forms.Tools.Navigation.Layouting;

public class LayoutInfoCollection : SortedList<HitTestAreas, LayoutInfo>
{
	public LayoutInfoCollection(int capacity)
		: base(capacity)
	{
	}
}
