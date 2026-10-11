namespace Syncfusion.Windows.Forms.Tools;

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
}
