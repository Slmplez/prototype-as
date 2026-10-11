using System.Drawing;

namespace Syncfusion.Windows.Forms.Tools.MultiColumnTreeView;

internal class OptionButtonPart : TreeNodeAdvPart
{
	public override bool Visible
	{
		get
		{
			if (base.Visible)
			{
				return base.Node.NodeStyle.ShowOptionButton;
			}
			return false;
		}
		set
		{
			base.Visible = value;
		}
	}

	internal OptionButtonPart(TreeNodeAdv node)
		: base(node)
	{
	}

	internal OptionButtonPart(TreeNodeAdv node, Size size)
		: base(node, size)
	{
	}
}
