using System.CodeDom;
using System.Collections.Generic;
using System.ComponentModel.Design.Serialization;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

internal class TabGroupCollectionSerializer : CodeDomSerializer
{
	public override object Serialize(IDesignerSerializationManager manager, object value)
	{
		object result = null;
		if (value is TabGroupCollection)
		{
			TabGroupCollection tabGroupCollection = (TabGroupCollection)value;
			if (manager.GetSerializer(typeof(TabGroupCollection).BaseType, typeof(CodeDomSerializer)) is CodeDomSerializer codeDomSerializer)
			{
				object obj = codeDomSerializer.Serialize(manager, value);
				if (manager.Context.Current is ExpressionContext expressionContext && obj is CodeStatementCollection)
				{
					CodeStatementCollection codeStatementCollection = (CodeStatementCollection)obj;
					foreach (KeyValuePair<ToolStripItem, ToolStripTabGroup> item in tabGroupCollection.Header.TabGroupsHash)
					{
						string name = manager.GetName(item.Key);
						if (name != null)
						{
							string name2 = manager.GetName(item.Value);
							if (name2 != null)
							{
								CodeVariableReferenceExpression codeVariableReferenceExpression = new CodeVariableReferenceExpression(name);
								CodeVariableReferenceExpression codeVariableReferenceExpression2 = new CodeVariableReferenceExpression(name2);
								CodeExpression[] parameters = new CodeExpression[2] { codeVariableReferenceExpression, codeVariableReferenceExpression2 };
								codeStatementCollection.Add(new CodeMethodInvokeExpression(expressionContext.Expression, "SetTabGroup", parameters));
							}
						}
					}
				}
				result = obj;
			}
		}
		return result;
	}
}
