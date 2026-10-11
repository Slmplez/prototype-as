namespace Syncfusion.Windows.Forms.Tools;

internal class CheckBoxPart : TreeNodeAdvPart
{
	public override bool Visible
	{
		get
		{
			if (base.Visible)
			{
				return base.Node.NodeStyle.ShowCheckBox;
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
}
