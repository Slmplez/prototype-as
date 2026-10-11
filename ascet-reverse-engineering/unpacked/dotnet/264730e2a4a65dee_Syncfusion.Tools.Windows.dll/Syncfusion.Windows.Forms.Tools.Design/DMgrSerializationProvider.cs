using System;
using System.ComponentModel.Design.Serialization;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools.Design;

public sealed class DMgrSerializationProvider : IDesignerSerializationProvider
{
	private DockingManagerDesigner notifyDesigner;

	private DMFormCollectionCodeDomSerializer cdsFormCollection;

	public DMgrSerializationProvider(DockingManagerDesigner dsgnr)
	{
		notifyDesigner = dsgnr;
		cdsFormCollection = new DMFormCollectionCodeDomSerializer(dsgnr);
	}

	public object GetSerializer(IDesignerSerializationManager manager, object currentSerializer, Type objectType, Type serializerType)
	{
		if (notifyDesigner != null && !notifyDesigner.bRemoved && objectType != null)
		{
			if (objectType == typeof(Control.ControlCollection) || objectType.IsSubclassOf(typeof(Control.ControlCollection)))
			{
				return cdsFormCollection;
			}
			if (objectType == typeof(CaptionButtonsCollection))
			{
				return new CaptionButtonsCodeDomSerializer();
			}
		}
		return null;
	}

	public void Dispose()
	{
		if (cdsFormCollection != null)
		{
			cdsFormCollection.Dispose();
		}
		cdsFormCollection = null;
		notifyDesigner = null;
	}
}
