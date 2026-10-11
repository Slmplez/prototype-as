using System.ComponentModel;
using Syncfusion.Documentation;
using Syncfusion.Styles;

namespace Syncfusion.Windows.Forms.Tools;

[TypeConverter(typeof(ExpandableObjectConverter))]
[DocumentationExclude]
public class ChildTreeNodeAdvStyleInfo : TreeNodeAdvStyleInfo
{
	public ChildTreeNodeAdvStyleInfo()
	{
	}

	public ChildTreeNodeAdvStyleInfo(StyleInfoIdentityBase identity, TreeNodeAdvStyleInfoStore store)
		: base(identity, store)
	{
	}

	public ChildTreeNodeAdvStyleInfo(StyleInfoIdentityBase identity)
		: base(identity)
	{
	}
}
