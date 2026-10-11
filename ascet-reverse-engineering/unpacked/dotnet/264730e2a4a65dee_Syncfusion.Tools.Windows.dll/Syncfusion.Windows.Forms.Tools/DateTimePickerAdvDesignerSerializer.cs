using System.CodeDom;
using System.ComponentModel.Design.Serialization;

namespace Syncfusion.Windows.Forms.Tools;

public class DateTimePickerAdvDesignerSerializer : CodeDomSerializer
{
	private const string DEF_CALENDAR = "Calendar";

	public override object Deserialize(IDesignerSerializationManager manager, object codeObject)
	{
		CodeDomSerializer codeDomSerializer = (CodeDomSerializer)manager.GetSerializer(typeof(DateTimePickerAdv).BaseType, typeof(CodeDomSerializer));
		return codeDomSerializer.Deserialize(manager, codeObject);
	}

	public override object Serialize(IDesignerSerializationManager manager, object value)
	{
		if (value == null)
		{
			return null;
		}
		CodeDomSerializer codeDomSerializer = manager.GetSerializer(typeof(DateTimePickerAdv).BaseType, typeof(CodeDomSerializer)) as CodeDomSerializer;
		object obj = codeDomSerializer.Serialize(manager, value);
		CodeStatementCollection codeStatementCollection = obj as CodeStatementCollection;
		if (codeStatementCollection != null && codeStatementCollection.Count > 0)
		{
			codeStatementCollection = obj as CodeStatementCollection;
			int i = 0;
			for (int count = codeStatementCollection.Count; i < count; i++)
			{
				if (codeStatementCollection[i] is CodeExpressionStatement { Expression: CodeMethodInvokeExpression expression } && expression.Method.TargetObject is CodeCastExpression { Expression: CodeFieldReferenceExpression expression2 } && expression2.FieldName.IndexOf("Calendar") > 0)
				{
					expression2.FieldName = string.Format("{0}.{1}", (value as DateTimePickerAdv).Name, "Calendar");
				}
			}
		}
		return codeStatementCollection;
	}
}
