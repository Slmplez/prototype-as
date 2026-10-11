using System.CodeDom;
using System.ComponentModel.Design.Serialization;

namespace Syncfusion.Windows.Forms.Tools;

public class MonthCalendarAdvDesignSerializer : CodeDomSerializer
{
	private const string c_sNoneButtonName = "NoneButton";

	private const string c_sTodayButtonName = "TodayButton";

	private const string c_sButtonAppearanceName = "Appearance";

	private const string c_sButtonUseVisualStyleName = "UseVisualStyle";

	private const string c_sButtonOfficeColorScheme = "Office2007ColorScheme";

	private const int c_iNumberCommentLines = 3;

	public override object Deserialize(IDesignerSerializationManager manager, object codeObject)
	{
		CodeDomSerializer codeDomSerializer = (CodeDomSerializer)manager.GetSerializer(typeof(MonthCalendarAdvDesignSerializer).BaseType, typeof(CodeDomSerializer));
		return codeDomSerializer.Deserialize(manager, codeObject);
	}

	public override object Serialize(IDesignerSerializationManager manager, object value)
	{
		CodeDomSerializer codeDomSerializer = (CodeDomSerializer)manager.GetSerializer(typeof(MonthCalendarAdv).BaseType, typeof(CodeDomSerializer));
		object obj = codeDomSerializer.Serialize(manager, value);
		CodeStatementCollection codeStatementCollection = obj as CodeStatementCollection;
		MonthCalendarAdv monthCalendarAdv = value as MonthCalendarAdv;
		if (codeStatementCollection != null && monthCalendarAdv != null)
		{
			CodeStatementCollection codeStatementCollection2 = new CodeStatementCollection();
			CodeAssignStatement codeAssignStatement = null;
			CodePropertyReferenceExpression codePropertyReferenceExpression = null;
			CodePropertyReferenceExpression codePropertyReferenceExpression2 = null;
			string empty = string.Empty;
			int num = -1;
			for (int i = 0; i < codeStatementCollection.Count; i++)
			{
				codeAssignStatement = codeStatementCollection[i] as CodeAssignStatement;
				if (codeAssignStatement != null)
				{
					codePropertyReferenceExpression = codeAssignStatement.Left as CodePropertyReferenceExpression;
					if (codePropertyReferenceExpression != null)
					{
						codePropertyReferenceExpression2 = codePropertyReferenceExpression.TargetObject as CodePropertyReferenceExpression;
					}
					if (codePropertyReferenceExpression != null && codePropertyReferenceExpression2 != null)
					{
						if (codePropertyReferenceExpression2.PropertyName == "NoneButton")
						{
							if (codePropertyReferenceExpression.PropertyName == "Appearance")
							{
								empty = monthCalendarAdv.NoneButton.Appearance.ToString();
								SetFieldReferenceExpression(codeAssignStatement, empty);
							}
							else if (codePropertyReferenceExpression.PropertyName == "Office2007ColorScheme")
							{
								empty = monthCalendarAdv.NoneButton.Office2007ColorScheme.ToString();
								SetFieldReferenceExpression(codeAssignStatement, empty);
							}
							else if (codePropertyReferenceExpression.PropertyName == "UseVisualStyle")
							{
								SetCodePrimitiveExpression(codeAssignStatement, monthCalendarAdv.NoneButton.UseVisualStyle);
							}
						}
						else if (codePropertyReferenceExpression2.PropertyName == "TodayButton")
						{
							if (codePropertyReferenceExpression.PropertyName == "Appearance")
							{
								empty = monthCalendarAdv.TodayButton.Appearance.ToString();
								SetFieldReferenceExpression(codeAssignStatement, empty);
							}
							else if (codePropertyReferenceExpression.PropertyName == "Office2007ColorScheme")
							{
								empty = monthCalendarAdv.TodayButton.Office2007ColorScheme.ToString();
								SetFieldReferenceExpression(codeAssignStatement, empty);
							}
							else if (codePropertyReferenceExpression.PropertyName == "UseVisualStyle")
							{
								SetCodePrimitiveExpression(codeAssignStatement, monthCalendarAdv.TodayButton.UseVisualStyle);
							}
						}
						if ((codePropertyReferenceExpression2.PropertyName == "NoneButton" || codePropertyReferenceExpression2.PropertyName == "TodayButton") && num == -1)
						{
							num = i - 3;
						}
					}
				}
				if (num > 0 && codeAssignStatement != null && (codePropertyReferenceExpression2 == null || (codePropertyReferenceExpression2 != null && codePropertyReferenceExpression2.PropertyName != "NoneButton" && codePropertyReferenceExpression2.PropertyName != "TodayButton")))
				{
					codeStatementCollection2.Insert(num, codeStatementCollection[i]);
					num++;
				}
				else
				{
					codeStatementCollection2.Add(codeStatementCollection[i]);
				}
			}
			obj = codeStatementCollection2;
		}
		return obj;
	}

	private void SetFieldReferenceExpression(CodeAssignStatement assignStatement, string propertyValue)
	{
		if (assignStatement != null && assignStatement.Right is CodeFieldReferenceExpression codeFieldReferenceExpression)
		{
			codeFieldReferenceExpression.FieldName = propertyValue;
		}
	}

	private void SetCodePrimitiveExpression(CodeAssignStatement assignStatement, object propertyValue)
	{
		if (assignStatement != null && assignStatement.Right is CodePrimitiveExpression codePrimitiveExpression)
		{
			codePrimitiveExpression.Value = propertyValue;
		}
	}
}
