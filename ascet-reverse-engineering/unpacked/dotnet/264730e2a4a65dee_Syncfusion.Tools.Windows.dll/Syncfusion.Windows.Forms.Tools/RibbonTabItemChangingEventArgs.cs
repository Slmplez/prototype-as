namespace Syncfusion.Windows.Forms.Tools;

public class RibbonTabItemChangingEventArgs : RibbonTabItemChangedEventArgs
{
	public bool Cancel;

	public RibbonTabItemChangingEventArgs(RibbonTabItem oldItem, RibbonTabItem newItem)
		: base(oldItem, newItem)
	{
	}
}
