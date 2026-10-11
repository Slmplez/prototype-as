using System;
using System.ComponentModel.Design.Serialization;
using Syncfusion.Windows.Forms.Tools.XPMenus;

namespace Syncfusion.Windows.Forms.Tools.Design;

public class CustomSerializationProvider : IDesignerSerializationProvider
{
	private PopupMenuDesigner notifyDesigner;

	public CustomSerializationProvider(PopupMenuDesigner notifyDesigner)
	{
		this.notifyDesigner = notifyDesigner;
	}

	public virtual object GetSerializer(IDesignerSerializationManager manager, object currentSerializer, Type objectType, Type serializerType)
	{
		if (objectType != null && (objectType.IsSubclassOf(typeof(BarItems)) || objectType == typeof(BarItems)))
		{
			notifyDesigner.ClosePopup();
		}
		return null;
	}
}
