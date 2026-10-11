using System;
using System.CodeDom;
using System.ComponentModel.Design.Serialization;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Grid;

public class GridRangeInfoCodeDomSerializer : CodeDomSerializer
{
	private static GridRangeInfoCodeDomSerializer defaultSerializer;

	[DocumentationExclude]
	public static GridRangeInfoCodeDomSerializer Default
	{
		get
		{
			if (defaultSerializer == null)
			{
				defaultSerializer = new GridRangeInfoCodeDomSerializer();
			}
			return defaultSerializer;
		}
	}

	public override object Deserialize(IDesignerSerializationManager manager, object codeObject)
	{
		return null;
	}

	public override object Serialize(IDesignerSerializationManager manager, object value)
	{
		if (manager == null)
		{
			throw new ArgumentNullException("manager");
		}
		if (!(value is GridRangeInfo) || value == null)
		{
			throw new ArgumentException("value");
		}
		CodeMethodReferenceExpression codeMethodReferenceExpression = new CodeMethodReferenceExpression();
		codeMethodReferenceExpression.TargetObject = new CodeTypeReferenceExpression(value.GetType());
		CodeMethodInvokeExpression codeMethodInvokeExpression = new CodeMethodInvokeExpression();
		codeMethodInvokeExpression.Method = codeMethodReferenceExpression;
		GridRangeInfo gridRangeInfo = (GridRangeInfo)value;
		switch (gridRangeInfo.RangeType)
		{
		case GridRangeInfoType.Empty:
			codeMethodReferenceExpression.MethodName = "EmptyRange";
			break;
		case GridRangeInfoType.Table:
			codeMethodReferenceExpression.MethodName = "Table";
			break;
		case GridRangeInfoType.Rows:
			if (gridRangeInfo.Top != gridRangeInfo.Bottom)
			{
				codeMethodReferenceExpression.MethodName = "Rows";
				codeMethodInvokeExpression.Parameters.Add(SerializeToExpression(manager, gridRangeInfo.Top));
				codeMethodInvokeExpression.Parameters.Add(SerializeToExpression(manager, gridRangeInfo.Bottom));
			}
			else
			{
				codeMethodReferenceExpression.MethodName = "Row";
				codeMethodInvokeExpression.Parameters.Add(SerializeToExpression(manager, gridRangeInfo.Top));
			}
			break;
		case GridRangeInfoType.Cols:
			if (gridRangeInfo.Left != gridRangeInfo.Right)
			{
				codeMethodReferenceExpression.MethodName = "Cols";
				codeMethodInvokeExpression.Parameters.Add(SerializeToExpression(manager, gridRangeInfo.Left));
				codeMethodInvokeExpression.Parameters.Add(SerializeToExpression(manager, gridRangeInfo.Right));
			}
			else
			{
				codeMethodReferenceExpression.MethodName = "Col";
				codeMethodInvokeExpression.Parameters.Add(SerializeToExpression(manager, gridRangeInfo.Left));
			}
			break;
		case GridRangeInfoType.Cells:
			if (gridRangeInfo.Width > 1 || gridRangeInfo.Height > 1)
			{
				codeMethodReferenceExpression.MethodName = "Cells";
				codeMethodInvokeExpression.Parameters.Add(SerializeToExpression(manager, gridRangeInfo.Top));
				codeMethodInvokeExpression.Parameters.Add(SerializeToExpression(manager, gridRangeInfo.Left));
				codeMethodInvokeExpression.Parameters.Add(SerializeToExpression(manager, gridRangeInfo.Bottom));
				codeMethodInvokeExpression.Parameters.Add(SerializeToExpression(manager, gridRangeInfo.Right));
			}
			else
			{
				codeMethodReferenceExpression.MethodName = "Cell";
				codeMethodInvokeExpression.Parameters.Add(SerializeToExpression(manager, gridRangeInfo.Top));
				codeMethodInvokeExpression.Parameters.Add(SerializeToExpression(manager, gridRangeInfo.Left));
			}
			break;
		}
		return codeMethodInvokeExpression;
	}
}
