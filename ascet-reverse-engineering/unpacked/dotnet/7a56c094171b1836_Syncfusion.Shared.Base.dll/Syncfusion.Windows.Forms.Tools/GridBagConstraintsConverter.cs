using System;
using System.ComponentModel;
using System.ComponentModel.Design.Serialization;
using System.Globalization;
using System.IO;
using System.Reflection;
using System.Runtime.Serialization;
using System.Runtime.Serialization.Formatters;
using System.Runtime.Serialization.Formatters.Binary;
using Syncfusion.ComponentModel;
using Syncfusion.Documentation;
using Syncfusion.Runtime.Serialization;

namespace Syncfusion.Windows.Forms.Tools;

[DocumentationExclude]
public class GridBagConstraintsConverter : ByteStreamTypeConverter
{
	public override void OnBeforeDeserialize()
	{
		AppStateSerializer.SetBindingInfo("Syncfusion.Shared.Base", typeof(GridBagConstraints).Assembly);
		AppStateSerializer.SetTypeBindingInfo("Syncfusion.Shared.Base", typeof(GridBagConstraints).FullName, typeof(GridBagConstraints).Assembly);
	}

	public override void OnAfterDeserialize()
	{
		AppStateSerializer.SetTypeBindingInfo("Syncfusion.Shared.Base", typeof(GridBagConstraints).FullName, null);
	}

	public override bool GetCreateInstanceSupported(ITypeDescriptorContext context)
	{
		return false;
	}

	public override bool CanConvertTo(ITypeDescriptorContext context, Type destinationType)
	{
		if (destinationType == typeof(InstanceDescriptor))
		{
			return true;
		}
		return base.CanConvertTo(context, destinationType);
	}

	public override object ConvertTo(ITypeDescriptorContext context, CultureInfo culture, object value, Type destinationType)
	{
		if (destinationType == typeof(InstanceDescriptor) && value is GridBagConstraints)
		{
			GridBagConstraints gridBagConstraints = (GridBagConstraints)value;
			Type[] types = new Type[12]
			{
				typeof(int),
				typeof(int),
				typeof(int),
				typeof(int),
				typeof(double),
				typeof(double),
				typeof(AnchorTypes),
				typeof(FillType),
				typeof(Insets),
				typeof(int),
				typeof(int),
				typeof(bool)
			};
			ConstructorInfo constructor = typeof(GridBagConstraints).GetConstructor(types);
			if (constructor != null)
			{
				return new InstanceDescriptor(constructor, new object[12]
				{
					gridBagConstraints.GridPosX, gridBagConstraints.GridPosY, gridBagConstraints.CellSpanX, gridBagConstraints.CellSpanY, gridBagConstraints.WeightX, gridBagConstraints.WeightY, gridBagConstraints.Anchor, gridBagConstraints.Fill, gridBagConstraints.Insets, gridBagConstraints.IpadX,
					gridBagConstraints.IpadY, gridBagConstraints.IsEmpty
				});
			}
		}
		else
		{
			if (destinationType == typeof(string) && value is GridBagConstraints)
			{
				GridBagConstraints gridBagConstraints2 = (GridBagConstraints)value;
				PropertyDescriptorCollection properties = TypeDescriptor.GetProperties(gridBagConstraints2);
				string text = string.Empty;
				PropertyDescriptor propertyDescriptor = properties.Find("Anchor", ignoreCase: false);
				if (propertyDescriptor.ShouldSerializeValue(gridBagConstraints2))
				{
					text = text + gridBagConstraints2.Anchor.ToString() + "; ";
				}
				propertyDescriptor = properties.Find("CellSpanX", ignoreCase: false);
				if (propertyDescriptor.ShouldSerializeValue(gridBagConstraints2))
				{
					text = text + "CellSpanX " + gridBagConstraints2.CellSpanX + "; ";
				}
				propertyDescriptor = properties.Find("CellSpanY", ignoreCase: false);
				if (propertyDescriptor.ShouldSerializeValue(gridBagConstraints2))
				{
					text = text + "CellSpanY " + gridBagConstraints2.CellSpanY + "; ";
				}
				propertyDescriptor = properties.Find("Fill", ignoreCase: false);
				if (propertyDescriptor.ShouldSerializeValue(gridBagConstraints2))
				{
					text = text + gridBagConstraints2.Fill.ToString() + "; ";
				}
				propertyDescriptor = properties.Find("GridPosX", ignoreCase: false);
				if (propertyDescriptor.ShouldSerializeValue(gridBagConstraints2))
				{
					text = text + "GridPosX " + gridBagConstraints2.GridPosX + "; ";
				}
				propertyDescriptor = properties.Find("GridPosY", ignoreCase: false);
				if (propertyDescriptor.ShouldSerializeValue(gridBagConstraints2))
				{
					text = text + "GridPosY " + gridBagConstraints2.GridPosY + "; ";
				}
				propertyDescriptor = properties.Find("Insets", ignoreCase: false);
				if (propertyDescriptor.ShouldSerializeValue(gridBagConstraints2))
				{
					text = text + "Insets " + gridBagConstraints2.Insets.ToString() + "; ";
				}
				propertyDescriptor = properties.Find("IpadX", ignoreCase: false);
				if (propertyDescriptor.ShouldSerializeValue(gridBagConstraints2))
				{
					text = text + "IpadX " + gridBagConstraints2.IpadX + "; ";
				}
				propertyDescriptor = properties.Find("IpadY", ignoreCase: false);
				if (propertyDescriptor.ShouldSerializeValue(gridBagConstraints2))
				{
					text = text + "IpadY " + gridBagConstraints2.IpadY + "; ";
				}
				propertyDescriptor = properties.Find("WeightX", ignoreCase: false);
				if (propertyDescriptor.ShouldSerializeValue(gridBagConstraints2))
				{
					text += $"WeightX {gridBagConstraints2.WeightX:###.##};";
				}
				propertyDescriptor = properties.Find("WeightY", ignoreCase: false);
				if (propertyDescriptor.ShouldSerializeValue(gridBagConstraints2))
				{
					text += $"WeightY {gridBagConstraints2.WeightY:###.##};";
				}
				return text;
			}
			if (value is GridBagConstraints && destinationType == typeof(byte[]))
			{
				GridBagConstraintsSerializationSurrogate surrogate = new GridBagConstraintsSerializationSurrogate();
				SurrogateSelector surrogateSelector = new SurrogateSelector();
				surrogateSelector.AddSurrogate(typeof(GridBagConstraints), new StreamingContext(StreamingContextStates.All), surrogate);
				BinaryFormatter binaryFormatter = new BinaryFormatter();
				binaryFormatter.AssemblyFormat = FormatterAssemblyStyle.Simple;
				binaryFormatter.SurrogateSelector = surrogateSelector;
				MemoryStream memoryStream = new MemoryStream();
				byte[] array = null;
				try
				{
					binaryFormatter.Serialize(memoryStream, value);
					return memoryStream.ToArray();
				}
				finally
				{
					memoryStream.Close();
				}
			}
		}
		return base.ConvertTo(context, culture, value, destinationType);
	}

	public override object ConvertFrom(ITypeDescriptorContext context, CultureInfo culture, object value)
	{
		object obj = null;
		if (value is byte[] buffer)
		{
			GridBagConstraintsSerializationSurrogate surrogate = new GridBagConstraintsSerializationSurrogate();
			SurrogateSelector surrogateSelector = new SurrogateSelector();
			surrogateSelector.AddSurrogate(typeof(GridBagConstraints), new StreamingContext(StreamingContextStates.All), surrogate);
			BinaryFormatter binaryFormatter = new BinaryFormatter();
			binaryFormatter.Binder = AppStateSerializer.CustomBinder;
			binaryFormatter.AssemblyFormat = FormatterAssemblyStyle.Simple;
			binaryFormatter.SurrogateSelector = surrogateSelector;
			MemoryStream memoryStream = new MemoryStream(buffer);
			OnBeforeDeserialize();
			obj = binaryFormatter.Deserialize(memoryStream);
			OnAfterDeserialize();
			memoryStream.Close();
		}
		else
		{
			obj = base.ConvertFrom(context, culture, value);
		}
		return obj;
	}
}
