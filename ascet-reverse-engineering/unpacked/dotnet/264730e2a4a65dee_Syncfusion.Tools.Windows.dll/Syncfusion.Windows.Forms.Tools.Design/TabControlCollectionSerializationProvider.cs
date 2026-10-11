using System;
using System.ComponentModel.Design.Serialization;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools.Design;

[DocumentationExclude]
public class TabControlCollectionSerializationProvider : IDesignerSerializationProvider
{
	private Control.ControlCollection collectionToWatch;

	private ITabControlAdvDesigner notifyDesigner;

	public TabControlCollectionSerializationProvider(Control.ControlCollection collectionToWatch, ITabControlAdvDesigner notifyDesigner)
	{
		this.collectionToWatch = collectionToWatch;
		this.notifyDesigner = notifyDesigner;
	}

	public virtual object GetSerializer(IDesignerSerializationManager manager, object currentSerializer, Type objectType, Type serializerType)
	{
		return null;
	}
}
