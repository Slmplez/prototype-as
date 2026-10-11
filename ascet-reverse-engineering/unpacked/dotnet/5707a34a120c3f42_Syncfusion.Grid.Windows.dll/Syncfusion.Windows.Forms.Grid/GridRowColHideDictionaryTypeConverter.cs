using System;
using System.ComponentModel;
using System.Globalization;
using System.IO;
using System.Runtime.Serialization;
using System.Runtime.Serialization.Formatters;
using System.Runtime.Serialization.Formatters.Binary;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Grid;

[DocumentationExclude]
public class GridRowColHideDictionaryTypeConverter : TypeConverter
{
	[DocumentationExclude]
	private sealed class Binder : SerializationBinder
	{
		public override Type BindToType(string assemblyName, string typeName)
		{
			Type type = Type.GetType(typeName);
			if (type != null)
			{
				return type;
			}
			return null;
		}
	}

	[DocumentationExclude]
	public override bool CanConvertFrom(ITypeDescriptorContext context, Type sourceType)
	{
		if (sourceType == typeof(byte[]))
		{
			return true;
		}
		return base.CanConvertFrom(context, sourceType);
	}

	[DocumentationExclude]
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
		AppDomain.CurrentDomain.AssemblyResolve += GridWindowsAssembly.AssemblyResolver;
		binaryFormatter.Binder = new Binder();
		obj = binaryFormatter.Deserialize(memoryStream);
		AppDomain.CurrentDomain.AssemblyResolve -= GridWindowsAssembly.AssemblyResolver;
		memoryStream.Close();
		return obj as GridRowColHideDictionary;
	}

	[DocumentationExclude]
	public override bool CanConvertTo(ITypeDescriptorContext context, Type destinationType)
	{
		if (destinationType == typeof(byte[]))
		{
			return true;
		}
		return base.CanConvertTo(context, destinationType);
	}

	[DocumentationExclude]
	public override object ConvertTo(ITypeDescriptorContext context, CultureInfo culture, object value, Type destinationType)
	{
		if (value is GridRowColHideDictionary && destinationType == typeof(byte[]))
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
