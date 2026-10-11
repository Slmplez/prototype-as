using System;
using System.ComponentModel;
using System.ComponentModel.Design.Serialization;
using System.Reflection;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.ComponentModel.Design.Serialization;

[DocumentationExclude]
public class ContainerInsertingCodeDomSerializer : CodeDomSerializer
{
	public override object Deserialize(IDesignerSerializationManager manager, object codeObject)
	{
		CodeDomSerializer codeDomSerializer = (CodeDomSerializer)manager.GetSerializer(typeof(Control), typeof(CodeDomSerializer));
		return codeDomSerializer.Deserialize(manager, codeObject);
	}

	public override object Serialize(IDesignerSerializationManager manager, object obj)
	{
		CodeDomSerializer codeDomSerializer = (CodeDomSerializer)manager.GetSerializer(typeof(Component), typeof(CodeDomSerializer));
		return codeDomSerializer.Serialize(manager, obj);
	}

	private bool ContinueInsertion(object value)
	{
		FieldInfo field = value.GetType().GetField("insertContainerWhileSerializing", BindingFlags.Instance | BindingFlags.NonPublic | BindingFlags.GetField);
		if (field != null)
		{
			return (bool)field.GetValue(value);
		}
		return true;
	}

	private void EnsureContainer(IDesignerSerializationManager manager)
	{
		Type type = Type.GetType("System.ComponentModel.Design.Serialization.RootCodeDomSerializer");
		if (type != null)
		{
			object obj = manager.Context[type];
			if (obj != null)
			{
				PropertyDescriptor propertyDescriptor = TypeDescriptor.GetProperties(obj)["ContainerRequired"];
				propertyDescriptor.SetValue(obj, true);
			}
		}
	}
}
