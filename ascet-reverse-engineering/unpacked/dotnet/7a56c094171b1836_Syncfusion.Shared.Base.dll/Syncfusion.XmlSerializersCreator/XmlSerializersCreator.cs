using System;
using System.Collections;
using System.IO;
using System.Reflection;
using System.Runtime.InteropServices;
using System.Xml.Serialization;

namespace Syncfusion.XmlSerializersCreator;

public class XmlSerializersCreator
{
	private const string DEF_TEMP_DIR_NAME = "SerializersCreatorTempDir\\";

	private const string DEF_SC_MASK = "*.cs";

	private const string DEF_ATTR_TO_REMOVE = "[assembly:System.Security.AllowPartiallyTrustedCallers()]";

	private const string DEF_INITIAL_NAMESPACE = "Microsoft.Xml.Serialization.GeneratedAssembly";

	private const string DEF_SER_WRITER_INHERIT = ": System.Xml.Serialization.XmlSerializationWriter";

	private const string DEF_SER_READER_INHERIT = ": System.Xml.Serialization.XmlSerializationReader";

	private const string DEF_WRITER_INTERFACE = ", Syncfusion.XmlSerializersCreator.IXmlSerializationWriter";

	private const string DEF_READER_INTERFACE = ", Syncfusion.XmlSerializersCreator.IXmlSerializationReader";

	private const string DEF_XML_READING_METHOD_NAME = "ReadDataFromXml";

	private const string DEF_XML_WRITING_METHOD_NAME = "WriteDataToXml";

	private const string DEF_INITIAL_READER_CLASS_NAME = "XmlSerializationReader1";

	private const string DEF_INITIAL_WRITER_CLASS_NAME = "XmlSerializationWriter1";

	private string m_strOutputPath;

	private string m_strOutputNamespace;

	private IList m_inputTypes = new ArrayList();

	private static FieldInfo _tempAssemblyInfo;

	private static FieldInfo _methodIndexInfo;

	private static FieldInfo _methodsInfo;

	private static FieldInfo _readMethodInfo;

	private static FieldInfo _writeMethodInfo;

	public XmlSerializersCreator(string strOutputPath, string strOutputNamespace, IList inputTypes)
	{
		if (strOutputPath == null)
		{
			throw new ArgumentNullException("strOutputPath");
		}
		if (string.Empty == strOutputPath)
		{
			throw new ArgumentOutOfRangeException("strOutputPath");
		}
		if (strOutputNamespace == null)
		{
			throw new ArgumentNullException("strOutputNamespace");
		}
		if (string.Empty == strOutputNamespace)
		{
			throw new ArgumentOutOfRangeException("strOutputNamespace");
		}
		if (inputTypes == null)
		{
			throw new ArgumentNullException("inputTypes");
		}
		m_strOutputPath = strOutputPath;
		m_strOutputNamespace = strOutputNamespace;
		m_inputTypes = inputTypes;
	}

	static XmlSerializersCreator()
	{
		Type typeFromHandle = typeof(XmlSerializer);
		_tempAssemblyInfo = typeFromHandle.GetField("tempAssembly", BindingFlags.Instance | BindingFlags.NonPublic);
		_methodIndexInfo = typeFromHandle.GetField("methodIndex", BindingFlags.Instance | BindingFlags.NonPublic);
		_methodsInfo = _tempAssemblyInfo.FieldType.GetField("methods", BindingFlags.Instance | BindingFlags.NonPublic);
		Type nestedType = _tempAssemblyInfo.FieldType.GetNestedType("TempMethod", BindingFlags.Instance | BindingFlags.NonPublic);
		_readMethodInfo = nestedType.GetField("readMethod", BindingFlags.Instance | BindingFlags.NonPublic);
		_writeMethodInfo = nestedType.GetField("writeMethod", BindingFlags.Instance | BindingFlags.NonPublic);
	}

	[DllImport("KERNEL32.DLL")]
	public static extern bool SetEnvironmentVariable(string VariableName, string VariableValue);

	public void CreateSerializers()
	{
		string tempPath = Path.GetTempPath();
		tempPath += "SerializersCreatorTempDir\\";
		if (Directory.Exists(tempPath))
		{
			Directory.Delete(tempPath, recursive: true);
		}
		Directory.CreateDirectory(tempPath);
		SetEnvironmentVariable("TMP", tempPath);
		XmlSerializer xmlSerializer = null;
		Hashtable hashtable = new Hashtable();
		foreach (Type inputType in m_inputTypes)
		{
			xmlSerializer = new XmlSerializer(inputType);
			hashtable.Add(inputType, GetSerializationMethodsNames(xmlSerializer));
		}
		string strOutputPath = m_strOutputPath;
		if (!Directory.Exists(strOutputPath))
		{
			Directory.CreateDirectory(strOutputPath);
		}
		else
		{
			string[] files = Directory.GetFiles(strOutputPath, "*.cs");
			foreach (string path in files)
			{
				File.Delete(Path.Combine(strOutputPath, path));
			}
		}
		Hashtable hashtable2 = new Hashtable();
		IList list = new ArrayList();
		foreach (Type inputType2 in m_inputTypes)
		{
			if (inputType2.IsArray)
			{
				list.Insert(0, inputType2);
			}
			else
			{
				list.Insert(list.Count, inputType2);
			}
		}
		foreach (Type item in list)
		{
			string text = item.Name;
			if (item.IsArray)
			{
				text = text.Remove(text.Length - 2, 2).Insert(0, "ArrayOf");
			}
			hashtable2.Add(item, text);
		}
		string[] files2 = Directory.GetFiles(tempPath, "*.cs");
		string[] array = files2;
		foreach (string text2 in array)
		{
			string destFileName = strOutputPath + Path.GetFileName(text2);
			File.Copy(text2, destFileName);
		}
		files2 = Directory.GetFiles(strOutputPath, "*.cs");
		string[] array2 = files2;
		foreach (string path2 in array2)
		{
			Stream stream = new FileStream(path2, FileMode.Open);
			string text3;
			using (TextReader textReader = new StreamReader(stream))
			{
				text3 = textReader.ReadToEnd();
			}
			File.Delete(path2);
			text3 = text3.Replace("[assembly:System.Security.AllowPartiallyTrustedCallers()]", string.Empty);
			text3 = text3.Replace("Microsoft.Xml.Serialization.GeneratedAssembly", m_strOutputNamespace);
			for (int l = 0; l < list.Count; l++)
			{
				Type key = (Type)list[l];
				string text4 = (string)hashtable2[key];
				if (-1 != text3.IndexOf("\"" + text4 + "\""))
				{
					string[] array3 = (string[])hashtable[key];
					text3 = text3.Replace(array3[0], "ReadDataFromXml");
					text3 = text3.Replace(array3[1], "WriteDataToXml");
					text3 = AddInterfacesToCode(text3);
					CorrectClassNamesAndSaveText(text3, text4, strOutputPath);
					list.RemoveAt(l);
					break;
				}
			}
		}
	}

	private string[] GetSerializationMethodsNames(XmlSerializer serializer)
	{
		if (serializer == null)
		{
			throw new ArgumentNullException("serializer");
		}
		object value = _tempAssemblyInfo.GetValue(serializer);
		int index = (int)_methodIndexInfo.GetValue(serializer);
		object value2 = _methodsInfo.GetValue(value);
		object value3 = ((Array)value2).GetValue(index);
		MethodInfo methodInfo = (MethodInfo)_readMethodInfo.GetValue(value3);
		MethodInfo methodInfo2 = (MethodInfo)_writeMethodInfo.GetValue(value3);
		return new string[2] { methodInfo.Name, methodInfo2.Name };
	}

	private void CorrectClassNamesAndSaveText(string text, string type, string path)
	{
		if (text == null)
		{
			throw new ArgumentNullException("text");
		}
		if (type == null)
		{
			throw new ArgumentNullException("type");
		}
		if (path == null)
		{
			throw new ArgumentNullException("path");
		}
		if (string.Empty == text)
		{
			throw new ArgumentOutOfRangeException("text");
		}
		if (string.Empty == type)
		{
			throw new ArgumentOutOfRangeException("type");
		}
		if (string.Empty == path)
		{
			throw new ArgumentOutOfRangeException("path");
		}
		text = text.Replace("XmlSerializationWriter1", type + "SerializationWriter");
		text = text.Replace("XmlSerializationReader1", type + "SerializationReader");
		StreamWriter streamWriter = File.CreateText(path + type + "Serializer.cs");
		streamWriter.Write(text);
		streamWriter.Close();
	}

	private string AddInterfacesToCode(string text)
	{
		if (text == null)
		{
			throw new ArgumentNullException("text");
		}
		if (string.Empty == text)
		{
			throw new ArgumentOutOfRangeException("text");
		}
		int startIndex = text.IndexOf(": System.Xml.Serialization.XmlSerializationWriter") + ": System.Xml.Serialization.XmlSerializationWriter".Length;
		text = text.Insert(startIndex, ", Syncfusion.XmlSerializersCreator.IXmlSerializationWriter");
		startIndex = text.IndexOf(": System.Xml.Serialization.XmlSerializationReader") + ": System.Xml.Serialization.XmlSerializationReader".Length;
		text = text.Insert(startIndex, ", Syncfusion.XmlSerializersCreator.IXmlSerializationReader");
		return text;
	}
}
