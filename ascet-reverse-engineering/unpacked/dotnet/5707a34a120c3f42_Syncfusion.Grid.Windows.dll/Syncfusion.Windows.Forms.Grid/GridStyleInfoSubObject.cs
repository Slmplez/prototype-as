using System.ComponentModel;
using System.Diagnostics;
using Syncfusion.Styles;

namespace Syncfusion.Windows.Forms.Grid;

public abstract class GridStyleInfoSubObject : StyleInfoSubObjectBase
{
	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public string Info => ToString();

	[DebuggerStepThrough]
	public GridStyleInfoSubObject(StyleInfoSubObjectIdentity identity, StyleInfoStore store)
		: base(identity, store)
	{
	}

	[DebuggerStepThrough]
	public GridStyleInfoSubObject(StyleInfoStore store)
		: base(store)
	{
	}

	public GridStyleInfo GetGridStyleInfo()
	{
		if (!(base.Identity is StyleInfoSubObjectIdentity styleInfoSubObjectIdentity))
		{
			return null;
		}
		return styleInfoSubObjectIdentity.Owner as GridStyleInfo;
	}

	public GridStyleInfoIdentity GetCellIdentity()
	{
		return GetGridStyleInfo()?.CellIdentity;
	}

	public GridModel GetGridModel()
	{
		return GetGridStyleInfo()?.GetGridModel();
	}

	public GridControlBase GetActiveGridView()
	{
		return GetGridStyleInfo()?.GetActiveGridView();
	}

	public override string ToString()
	{
		GridStyleInfo gridStyleInfo = GetGridStyleInfo();
		if (gridStyleInfo != null)
		{
			return gridStyleInfo.ToString();
		}
		return base.ToString();
	}
}
