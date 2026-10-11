using System;
using System.ComponentModel.Design.Serialization;

namespace Syncfusion.Windows.Forms.Tools.Design;

public sealed class CBSerializationProvider : IDesignerSerializationProvider
{
	public object GetSerializer(IDesignerSerializationManager manager, object currentSerializer, Type objectType, Type serializerType)
	{
		return null;
	}

	public void Dispose()
	{
	}
}
