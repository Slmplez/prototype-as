using System;
using System.ComponentModel.Design;
using Syncfusion.Collections;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

internal class SeparatorIndexCollectionEditor : CollectionEditor
{
	public SeparatorIndexCollectionEditor(Type type)
		: base(type)
	{
	}

	public SeparatorIndexCollectionEditor()
		: base(typeof(VisuallyInheritableIntList))
	{
	}

	protected override object CreateInstance(Type itemType)
	{
		return 1;
	}

	protected override Type[] CreateNewItemTypes()
	{
		return new Type[1] { typeof(int) };
	}
}
