using System;
using System.ComponentModel.Design.Serialization;
using Syncfusion.Windows.Forms.Tools.XPMenus;

namespace Syncfusion.Windows.Forms.Tools.Design;

public class XPToolBarSerializationProvider : IDesignerSerializationProvider
{
	private BarControlCodeDomSerializer serializer;

	public XPToolBarSerializationProvider()
	{
		serializer = new BarControlCodeDomSerializer();
	}

	public virtual object GetSerializer(IDesignerSerializationManager manager, object currentSerializer, Type objectType, Type serializerType)
	{
		if (!serializer.RemovedManager && objectType != null && (objectType == typeof(XPToolBar) || objectType.IsSubclassOf(typeof(XPToolBar))))
		{
			return serializer;
		}
		return null;
	}

	~XPToolBarSerializationProvider()
	{
		Dispose(disposing: false);
	}

	public void Dispose()
	{
		Dispose(disposing: true);
		GC.SuppressFinalize(this);
	}

	protected virtual void Dispose(bool disposing)
	{
		if (disposing)
		{
			serializer = null;
		}
	}
}
