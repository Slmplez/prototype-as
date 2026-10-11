using System;
using System.ComponentModel.Design.Serialization;

namespace Syncfusion.Windows.Forms.Tools.Design;

public class SerializationListener : IDesignerSerializationProvider
{
	private IDesignerSerializationManager idsm;

	public event EventHandler SerializationBegin;

	public SerializationListener(IDesignerSerializationManager idsm)
	{
		this.idsm = idsm;
		this.idsm.AddSerializationProvider(this);
	}

	public virtual object GetSerializer(IDesignerSerializationManager manager, object currentSerializer, Type objectType, Type serializerType)
	{
		if (this.SerializationBegin != null)
		{
			this.SerializationBegin(this, EventArgs.Empty);
		}
		return null;
	}
}
