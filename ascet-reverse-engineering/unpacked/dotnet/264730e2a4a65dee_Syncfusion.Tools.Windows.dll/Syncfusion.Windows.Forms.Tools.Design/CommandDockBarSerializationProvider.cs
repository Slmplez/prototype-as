using System;
using System.ComponentModel.Design.Serialization;

namespace Syncfusion.Windows.Forms.Tools.Design;

public sealed class CommandDockBarSerializationProvider : IDesignerSerializationProvider
{
	private CommandDockBarSerializer serializer;

	public CommandDockBarSerializationProvider()
	{
		serializer = new CommandDockBarSerializer();
	}

	public object GetSerializer(IDesignerSerializationManager manager, object currentSerializer, Type objectType, Type serializerType)
	{
		if (objectType != null && (objectType == typeof(CommandDockBar) || objectType.IsSubclassOf(typeof(CommandDockBar))))
		{
			return serializer;
		}
		return null;
	}
}
