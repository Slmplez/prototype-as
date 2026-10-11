using System;
using System.ComponentModel.Design;

namespace Syncfusion.Windows.Forms.Collections;

public class ControlsCollectionEditor : CollectionEditor
{
	public ControlsCollectionEditor(Type type)
		: base(type)
	{
	}

	protected override Type[] CreateNewItemTypes()
	{
		return new Type[1] { typeof(ButtonAdv) };
	}
}
