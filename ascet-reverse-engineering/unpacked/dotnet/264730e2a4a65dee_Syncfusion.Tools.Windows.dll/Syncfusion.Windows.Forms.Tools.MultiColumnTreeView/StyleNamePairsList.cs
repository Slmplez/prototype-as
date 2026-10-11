using System.Collections;
using Syncfusion.Documentation;
using Syncfusion.Styles;

namespace Syncfusion.Windows.Forms.Tools.MultiColumnTreeView;

[DocumentationExclude]
public class StyleNamePairsList : ArrayList
{
	private MultiColumnTreeView m_tree;

	public StyleNamePairsList(MultiColumnTreeView tree)
	{
		m_tree = tree;
	}

	public void AddRange(StyleNamePair[] stylePairs)
	{
		foreach (StyleNamePair styleNamePair in stylePairs)
		{
			if (styleNamePair.StyleGeneral != null)
			{
				StyleInfoIdentityBase identity = null;
				if (styleNamePair.TreeNodeStyle != null)
				{
					identity = new TreeViewAdvStyleInfoIdentity(m_tree);
				}
				else if (styleNamePair.ColumnStyle != null)
				{
					identity = new TreeColumnAdvStyleInfoIdentity(m_tree);
				}
				else if (styleNamePair.SubItemStyle != null)
				{
					identity = new TreeNodeAdvSubItemStyleInfoIdentity(m_tree);
				}
				((StyleInfoBase)styleNamePair.StyleGeneral).Identity = identity;
			}
			m_tree.BaseStyles[styleNamePair.Name] = styleNamePair.StyleGeneral;
		}
	}
}
