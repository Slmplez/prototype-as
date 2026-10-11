using System;
using System.CodeDom;
using System.ComponentModel.Design.Serialization;
using System.Drawing;
using Syncfusion.Documentation;

namespace Syncfusion.Drawing;

[DocumentationExclude]
internal sealed class BrushInfoCodeDomSerializer : CodeDomSerializer
{
	private static BrushInfoCodeDomSerializer defaultSerializer;

	public static BrushInfoCodeDomSerializer Default
	{
		get
		{
			if (defaultSerializer == null)
			{
				defaultSerializer = new BrushInfoCodeDomSerializer();
			}
			return defaultSerializer;
		}
	}

	public override object Deserialize(IDesignerSerializationManager manager, object codeObject)
	{
		return null;
	}

	private CodeExpression SerializeToExpression(IDesignerSerializationManager manager, BrushInfoColorArrayList gradientColors)
	{
		CodeExpression[] array = new CodeExpression[gradientColors.Count];
		for (int i = 0; i < gradientColors.Count; i++)
		{
			array[i] = SerializeToExpression(manager, gradientColors[i]);
		}
		return new CodeArrayCreateExpression(typeof(Color[]), array);
	}

	public override object Serialize(IDesignerSerializationManager manager, object value)
	{
		if (manager == null)
		{
			throw new ArgumentNullException("manager");
		}
		if (!(value is BrushInfo) || value == null)
		{
			throw new ArgumentException("value");
		}
		BrushInfo brushInfo = (BrushInfo)value;
		CodeObjectCreateExpression codeObjectCreateExpression = new CodeObjectCreateExpression();
		codeObjectCreateExpression.CreateType = new CodeTypeReference(typeof(BrushInfo));
		switch (brushInfo.Style)
		{
		case BrushStyle.Solid:
			codeObjectCreateExpression.Parameters.Add(SerializeToExpression(manager, brushInfo.BackColor));
			break;
		case BrushStyle.Pattern:
			codeObjectCreateExpression.Parameters.Add(SerializeToExpression(manager, brushInfo.PatternStyle));
			if (brushInfo.GradientColors.Count == 2)
			{
				codeObjectCreateExpression.Parameters.Add(SerializeToExpression(manager, brushInfo.GradientColors[1]));
				codeObjectCreateExpression.Parameters.Add(SerializeToExpression(manager, brushInfo.GradientColors[0]));
			}
			else
			{
				codeObjectCreateExpression.Parameters.Add(SerializeToExpression(manager, brushInfo.GradientColors));
			}
			break;
		case BrushStyle.Gradient:
			codeObjectCreateExpression.Parameters.Add(SerializeToExpression(manager, brushInfo.GradientStyle));
			if (brushInfo.GradientColors.Count == 2)
			{
				codeObjectCreateExpression.Parameters.Add(SerializeToExpression(manager, brushInfo.GradientColors[1]));
				codeObjectCreateExpression.Parameters.Add(SerializeToExpression(manager, brushInfo.GradientColors[0]));
			}
			else
			{
				codeObjectCreateExpression.Parameters.Add(SerializeToExpression(manager, brushInfo.GradientColors));
			}
			break;
		}
		return codeObjectCreateExpression;
	}
}
