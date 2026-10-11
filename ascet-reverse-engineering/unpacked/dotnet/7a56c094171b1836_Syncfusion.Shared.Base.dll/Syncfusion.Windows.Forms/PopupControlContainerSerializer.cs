using System.CodeDom;
using System.ComponentModel.Design.Serialization;

namespace Syncfusion.Windows.Forms;

public class PopupControlContainerSerializer : CodeDomSerializer
{
	public override object Serialize(IDesignerSerializationManager manager, object value)
	{
		CodeDomSerializer codeDomSerializer = manager.GetSerializer(typeof(PopupControlContainer).BaseType, typeof(CodeDomSerializer)) as CodeDomSerializer;
		object obj = null;
		if (codeDomSerializer != null)
		{
			obj = codeDomSerializer.Serialize(manager, value);
			if (obj is CodeStatementCollection { Count: >0 } codeStatementCollection && codeStatementCollection[0] is CodeAssignStatement { Right: CodeObjectCreateExpression right })
			{
				right.Parameters.Clear();
			}
		}
		return obj;
	}

	public override object Deserialize(IDesignerSerializationManager manager, object codeObject)
	{
		CodeDomSerializer codeDomSerializer = manager.GetSerializer(typeof(PopupControlContainer).BaseType, typeof(CodeDomSerializer)) as CodeDomSerializer;
		object result = null;
		if (codeDomSerializer != null)
		{
			result = codeDomSerializer.Deserialize(manager, codeObject);
		}
		return result;
	}
}
