using System.ComponentModel.Design.Serialization;

namespace Syncfusion.Windows.Forms.Tools.Design;

public sealed class CommandDockBarSerializer : CodeDomSerializer
{
	public override object Deserialize(IDesignerSerializationManager manager, object codeObject)
	{
		CodeDomSerializer codeDomSerializer = (CodeDomSerializer)manager.GetSerializer(typeof(CommandDockBar), typeof(CodeDomSerializer));
		return codeDomSerializer.Deserialize(manager, codeObject);
	}

	public override object Serialize(IDesignerSerializationManager manager, object obj)
	{
		return null;
	}
}
