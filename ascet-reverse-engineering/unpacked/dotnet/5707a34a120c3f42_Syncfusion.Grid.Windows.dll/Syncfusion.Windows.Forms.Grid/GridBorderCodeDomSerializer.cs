using System;
using System.CodeDom;
using System.ComponentModel.Design.Serialization;

namespace Syncfusion.Windows.Forms.Grid;

public class GridBorderCodeDomSerializer : CodeDomSerializer
{
	private static GridBorderCodeDomSerializer defaultSerializer;

	public static GridBorderCodeDomSerializer Default
	{
		get
		{
			if (defaultSerializer == null)
			{
				defaultSerializer = new GridBorderCodeDomSerializer();
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
		if (!(value is GridBorder) || value == null)
		{
			throw new ArgumentException("value");
		}
		GridBorder gridBorder = (GridBorder)value;
		CodeObjectCreateExpression codeObjectCreateExpression = new CodeObjectCreateExpression();
		codeObjectCreateExpression.CreateType = new CodeTypeReference("Syncfusion.Windows.Forms.Grid.GridBorder");
		switch (gridBorder.Style)
		{
		case GridBorderStyle.None:
			codeObjectCreateExpression.Parameters.Add(SerializeToExpression(manager, gridBorder.Style));
			break;
		default:
			if (gridBorder.Weight == GridBorderWeight.Thin)
			{
				codeObjectCreateExpression.Parameters.Add(SerializeToExpression(manager, gridBorder.Style));
				codeObjectCreateExpression.Parameters.Add(SerializeToExpression(manager, gridBorder.Color));
			}
			else
			{
				codeObjectCreateExpression.Parameters.Add(SerializeToExpression(manager, gridBorder.Style));
				codeObjectCreateExpression.Parameters.Add(SerializeToExpression(manager, gridBorder.Color));
				codeObjectCreateExpression.Parameters.Add(SerializeToExpression(manager, gridBorder.Weight));
			}
			break;
		case GridBorderStyle.NotSet:
			break;
		}
		return codeObjectCreateExpression;
	}
}
