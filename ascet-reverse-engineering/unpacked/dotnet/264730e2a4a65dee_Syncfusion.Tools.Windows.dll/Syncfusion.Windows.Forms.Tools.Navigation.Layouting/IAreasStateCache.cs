using System.Collections.Generic;

namespace Syncfusion.Windows.Forms.Tools.Navigation.Layouting;

public interface IAreasStateCache
{
	AreaStates GetAreaState(LayoutInfo info);

	void SetAreaState(LayoutInfo info, AreaStates areaState);

	List<LayoutInfo> ClearAreaStates();
}
