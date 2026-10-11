using System.CodeDom;
using System.ComponentModel.Design.Serialization;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools.Design;

internal class RibbonControlAdvHeaderSerializer : CodeDomSerializer
{
	public override object Serialize(IDesignerSerializationManager manager, object value)
	{
		object result = null;
		if (value is RibbonControlAdvHeader ribbonControlAdvHeader && manager.Context.Current is ExpressionContext expressionContext)
		{
			CodeStatementCollection codeStatementCollection = new CodeStatementCollection();
			CodeExpression expression = expressionContext.Expression;
			foreach (ToolStripItem mainItem in ribbonControlAdvHeader.MainItems)
			{
				string name = manager.GetName(mainItem);
				if (name != null)
				{
					CodeExpression codeExpression = new CodeVariableReferenceExpression(name);
					CodeStatement value3 = new CodeExpressionStatement(new CodeMethodInvokeExpression(expression, "AddMainItem", codeExpression));
					codeStatementCollection.Add(value3);
				}
			}
			foreach (ToolStripItem quickItem2 in ribbonControlAdvHeader.QuickItems)
			{
				if (quickItem2 is IQuickItem quickItem)
				{
					string name2 = manager.GetName(quickItem.ReflectedComponent);
					if (name2 != null)
					{
						CodeExpression codeExpression2 = new CodeVariableReferenceExpression(name2);
						CodeExpression codeExpression3 = new CodeObjectCreateExpression(quickItem.GetType(), codeExpression2);
						CodeStatement value4 = new CodeExpressionStatement(new CodeMethodInvokeExpression(expression, "AddQuickItem", codeExpression3));
						codeStatementCollection.Add(value4);
					}
				}
			}
			result = codeStatementCollection;
		}
		return result;
	}
}
