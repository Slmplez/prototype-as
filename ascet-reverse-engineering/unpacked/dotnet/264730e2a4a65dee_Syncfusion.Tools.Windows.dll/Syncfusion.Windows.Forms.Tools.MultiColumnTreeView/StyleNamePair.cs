using System.ComponentModel;
using Syncfusion.Documentation;
using Syncfusion.Styles;

namespace Syncfusion.Windows.Forms.Tools.MultiColumnTreeView;

[DocumentationExclude]
[TypeConverter(typeof(StyleNamePairConverter))]
public class StyleNamePair
{
	private string m_name;

	private IStyleInfo m_style;

	public string Name => m_name;

	public IStyleInfo StyleGeneral => m_style;

	public TreeNodeAdvStyleInfo TreeNodeStyle => m_style as TreeNodeAdvStyleInfo;

	public TreeColumnAdvStyleInfo ColumnStyle => m_style as TreeColumnAdvStyleInfo;

	public TreeNodeAdvSubItemStyleInfo SubItemStyle => m_style as TreeNodeAdvSubItemStyleInfo;

	public StyleNamePair(string name, IStyleInfo style)
	{
		m_name = name;
		m_style = style;
	}
}
