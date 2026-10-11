using System.Collections;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

[DocumentationExclude]
public class StyleNamePairsList : ArrayList
{
	private TreeViewAdv tree;

	public StyleNamePairsList(TreeViewAdv tree)
	{
		this.tree = tree;
	}

	public void AddRange(StyleNamePair[] stylePairs)
	{
		foreach (StyleNamePair styleNamePair in stylePairs)
		{
			styleNamePair.style.Identity = new TreeViewAdvStyleInfoIdentity(tree);
			tree.BaseStyles[styleNamePair.name] = styleNamePair.style;
		}
	}
}
