using System.ComponentModel;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Grid;

[DocumentationExclude]
[ToolboxItem(false)]
public class GridListControlChild : GridControl
{
	private GridListControl listControl;

	private GridListControlModel listControlModel;

	private GridListControlItemAccessibleObjectsIndexer itemAccessibleObjects;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public GridListControl ListControl => listControl;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public GridListControlItemAccessibleObjectsIndexer ItemAccessibleObjects
	{
		get
		{
			if (itemAccessibleObjects == null)
			{
				itemAccessibleObjects = new GridListControlItemAccessibleObjectsIndexer(this);
			}
			return itemAccessibleObjects;
		}
	}

	public GridListControlChild(GridListControl listControl)
		: this(listControl, new GridListControlModel())
	{
	}

	public GridListControlChild(GridListControl listControl, GridListControlModel model)
		: base(model)
	{
		base.Name = "gridControl";
		this.listControl = listControl;
		listControlModel = (GridListControlModel)base.Model;
		listControlModel.listControl = listControl;
	}

	protected internal virtual GridListControlItemAccessibleObject CreateListControlItemAccessibilityInstance(int index)
	{
		return new GridListControlItemAccessibleObject(this, index);
	}

	protected override AccessibleObject CreateAccessibilityInstance()
	{
		if (base.AccessibilityEnabled)
		{
			return new GridListControlChildAccessibleObject(this);
		}
		return base.CreateAccessibilityInstance();
	}

	internal void _AccessibilityNotifyClients(AccessibleEvents accEvent, int childID)
	{
		AccessibilityNotifyClients(accEvent, childID);
	}
}
