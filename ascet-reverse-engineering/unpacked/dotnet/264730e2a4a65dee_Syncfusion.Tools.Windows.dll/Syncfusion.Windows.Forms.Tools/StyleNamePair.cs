using System.ComponentModel;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

[TypeConverter(typeof(StyleNamePairConverter))]
[DocumentationExclude]
public class StyleNamePair
{
	internal string name;

	internal TreeNodeAdvStyleInfo style;

	public StyleNamePair(string name, TreeNodeAdvStyleInfo style)
	{
		this.name = name;
		this.style = style;
	}
}
