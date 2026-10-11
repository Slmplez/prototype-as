using System.Drawing;

namespace Syncfusion.Windows.Forms.Tools.MultiColumnTreeView;

internal class CheckBoxPart : TreeNodeAdvPart
{
	public override bool Visible
	{
		get
		{
			if (base.Visible)
			{
				return base.Node.ShowCheckBox;
			}
			return false;
		}
		set
		{
			base.Visible = value;
		}
	}

	internal CheckBoxPart(TreeNodeAdv node)
		: base(node)
	{
	}

	internal CheckBoxPart(TreeNodeAdv node, Size size)
		: base(node, size)
	{
	}
}
