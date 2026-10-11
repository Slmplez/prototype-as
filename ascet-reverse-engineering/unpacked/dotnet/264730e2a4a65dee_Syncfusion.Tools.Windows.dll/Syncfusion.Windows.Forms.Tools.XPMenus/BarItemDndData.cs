namespace Syncfusion.Windows.Forms.Tools.XPMenus;

public class BarItemDndData
{
	private BarItem itemDragged;

	private IBarItemContainer itemParent;

	private IBarItemContainer destination;

	public BarItem ItemDragged => itemDragged;

	public IBarItemContainer ItemParent => itemParent;

	public IBarItemContainer ItemDestination
	{
		get
		{
			return destination;
		}
		set
		{
			destination = value;
		}
	}

	public BarItemDndData(BarItem itemDragged, IBarItemContainer itemParent)
	{
		this.itemDragged = itemDragged;
		this.itemParent = itemParent;
	}
}
