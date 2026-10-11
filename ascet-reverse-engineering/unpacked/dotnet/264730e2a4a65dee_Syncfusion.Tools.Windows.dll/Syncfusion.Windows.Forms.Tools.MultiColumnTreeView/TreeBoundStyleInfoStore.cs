using Syncfusion.Styles;

namespace Syncfusion.Windows.Forms.Tools.MultiColumnTreeView;

internal class TreeBoundStyleInfoStore : TreeNodeAdvStyleInfoStore
{
	private MultiColumnTreeView tree;

	public TreeBoundStyleInfoStore(MultiColumnTreeView tree)
	{
		this.tree = tree;
	}

	public override bool HasValue(StyleInfoProperty sip)
	{
		if (sip == TreeNodeAdvStyleInfoStore.FontProperty)
		{
			return true;
		}
		if (sip == TreeNodeAdvStyleInfoStore.TextColorProperty)
		{
			return true;
		}
		if (sip == TreeNodeAdvStyleInfoStore.HeightProperty)
		{
			return true;
		}
		return base.HasValue(sip);
	}

	public override object GetValue(StyleInfoProperty sip)
	{
		if (sip == TreeNodeAdvStyleInfoStore.FontProperty)
		{
			return tree.Font;
		}
		if (sip == TreeNodeAdvStyleInfoStore.TextColorProperty)
		{
			return tree.ForeColor;
		}
		if (sip == TreeNodeAdvStyleInfoStore.HeightProperty)
		{
			return tree.ItemHeight;
		}
		return base.GetValue(sip);
	}
}
