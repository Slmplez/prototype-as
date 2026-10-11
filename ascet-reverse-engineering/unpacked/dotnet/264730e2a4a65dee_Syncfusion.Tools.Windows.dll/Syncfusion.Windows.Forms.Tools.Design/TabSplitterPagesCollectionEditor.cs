using System;
using System.ComponentModel.Design;

namespace Syncfusion.Windows.Forms.Tools.Design;

public class TabSplitterPagesCollectionEditor : CollectionEditor
{
	public TabSplitterPagesCollectionEditor(Type type)
		: base(type)
	{
	}

	protected override Type[] CreateNewItemTypes()
	{
		return new Type[1] { typeof(TabSplitterPage) };
	}
}
