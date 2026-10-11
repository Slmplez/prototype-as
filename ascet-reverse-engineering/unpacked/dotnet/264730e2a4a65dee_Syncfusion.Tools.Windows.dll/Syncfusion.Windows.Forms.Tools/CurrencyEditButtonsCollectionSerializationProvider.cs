using System;
using System.ComponentModel.Design.Serialization;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

[DocumentationExclude]
public class CurrencyEditButtonsCollectionSerializationProvider : IDesignerSerializationProvider
{
	private ButtonEdit.ButtonEditChildButtonCollection collectionToWatch;

	private ICurrencyEditDesigner notifyDesigner;

	public CurrencyEditButtonsCollectionSerializationProvider(ButtonEdit.ButtonEditChildButtonCollection collectionToWatch, ICurrencyEditDesigner notifyDesigner)
	{
		this.collectionToWatch = collectionToWatch;
		this.notifyDesigner = notifyDesigner;
	}

	public virtual object GetSerializer(IDesignerSerializationManager manager, object currentSerializer, Type objectType, Type serializerType)
	{
		return null;
	}
}
