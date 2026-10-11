using System;
using System.ComponentModel.Design.Serialization;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

[DocumentationExclude]
public class CurrencyEditCollectionSerializationProvider : IDesignerSerializationProvider
{
	private Control.ControlCollection collectionToWatch;

	private ICurrencyEditDesigner notifyDesigner;

	public CurrencyEditCollectionSerializationProvider(Control.ControlCollection collectionToWatch, ICurrencyEditDesigner notifyDesigner)
	{
		this.collectionToWatch = collectionToWatch;
		this.notifyDesigner = notifyDesigner;
	}

	public virtual object GetSerializer(IDesignerSerializationManager manager, object currentSerializer, Type objectType, Type serializerType)
	{
		if (objectType != null && (objectType.IsSubclassOf(typeof(Control.ControlCollection)) || objectType == typeof(Control.ControlCollection)))
		{
			notifyDesigner.RemoveUnserializableChildControls();
		}
		return null;
	}
}
