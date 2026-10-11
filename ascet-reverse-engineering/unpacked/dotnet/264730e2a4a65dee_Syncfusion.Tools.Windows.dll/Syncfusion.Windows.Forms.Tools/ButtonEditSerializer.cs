using System;
using System.ComponentModel;
using System.ComponentModel.Design.Serialization;

namespace Syncfusion.Windows.Forms.Tools;

public class ButtonEditSerializer : CodeDomSerializer
{
	public override object Serialize(IDesignerSerializationManager manager, object value)
	{
		if (manager == null || value == null)
		{
			throw new ArgumentNullException((manager == null) ? "manager" : "value");
		}
		return ((CodeDomSerializer)manager.GetSerializer(typeof(Component), typeof(CodeDomSerializer)))?.Serialize(manager, value);
	}

	public override object Deserialize(IDesignerSerializationManager manager, object codeObject)
	{
		if (manager == null || codeObject == null)
		{
			throw new ArgumentNullException((manager == null) ? "manager" : "codeObject");
		}
		_ = (IContainer)manager.GetService(typeof(IContainer));
		return ((CodeDomSerializer)manager.GetSerializer(typeof(Component), typeof(CodeDomSerializer)))?.Deserialize(manager, codeObject);
	}
}
