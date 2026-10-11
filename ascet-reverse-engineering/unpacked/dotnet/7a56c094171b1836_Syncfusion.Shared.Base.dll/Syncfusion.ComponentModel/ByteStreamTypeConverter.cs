using System;
using System.ComponentModel;
using System.Globalization;
using System.IO;
using System.Runtime.Serialization.Formatters;
using System.Runtime.Serialization.Formatters.Binary;
using Syncfusion.Runtime.Serialization;

namespace Syncfusion.ComponentModel;

public class ByteStreamTypeConverter : ExpandableObjectConverter
{
	public virtual void OnBeforeDeserialize()
	{
	}

	public virtual void OnAfterDeserialize()
	{
	}

	public override bool CanConvertFrom(ITypeDescriptorContext context, Type sourceType)
	{
		if (sourceType == typeof(byte[]))
		{
			return true;
		}
		return base.CanConvertFrom(context, sourceType);
	}

	public override object ConvertFrom(ITypeDescriptorContext context, CultureInfo culture, object value)
	{
		if (!(value is byte[] buffer))
		{
			return base.ConvertFrom(context, culture, value);
		}
		object obj = null;
		MemoryStream memoryStream = new MemoryStream(buffer);
		BinaryFormatter binaryFormatter = new BinaryFormatter();
		binaryFormatter.AssemblyFormat = FormatterAssemblyStyle.Simple;
		binaryFormatter.Binder = AppStateSerializer.CustomBinder;
		OnBeforeDeserialize();
		obj = binaryFormatter.Deserialize(memoryStream);
		OnAfterDeserialize();
		memoryStream.Close();
		return obj;
	}

	public override bool CanConvertTo(ITypeDescriptorContext context, Type destinationType)
	{
		if (destinationType == typeof(byte[]))
		{
			return true;
		}
		return base.CanConvertTo(context, destinationType);
	}

	public override object ConvertTo(ITypeDescriptorContext context, CultureInfo culture, object value, Type destinationType)
	{
		if (value != null && destinationType == typeof(byte[]))
		{
			MemoryStream memoryStream = new MemoryStream();
			BinaryFormatter binaryFormatter = new BinaryFormatter();
			binaryFormatter.AssemblyFormat = FormatterAssemblyStyle.Simple;
			binaryFormatter.Serialize(memoryStream, value);
			byte[] result = memoryStream.ToArray();
			memoryStream.Close();
			return result;
		}
		return base.ConvertTo(context, culture, value, destinationType);
	}
}
