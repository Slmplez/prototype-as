using System;
using System.Globalization;
using System.IO;
using System.Reflection;
using System.Xml;
using System.Xml.Schema;

namespace Etas.Base.Shared;

internal static class XmlSupport
{
	private static string _lastError;

	private static bool _validationSucceeded = false;

	public static string LastErrorMessage => _lastError;

	public static bool IsXmlFileValid(string xmlFile, string xsdResourceName, Type aType)
	{
		StreamReader streamReader = new StreamReader(xmlFile);
		try
		{
			if (streamReader != null)
			{
				string xmlString = streamReader.ReadToEnd();
				_validationSucceeded = IsXmlStringValid(xmlString, xsdResourceName, aType);
			}
			else
			{
				_lastError = string.Format(XmlMediatorBase.CouldNotReadFile, xmlFile);
				_validationSucceeded = false;
			}
		}
		catch (Exception ex)
		{
			_lastError = ex.Message;
			_validationSucceeded = false;
		}
		finally
		{
			streamReader.Close();
		}
		return _validationSucceeded;
	}

	public static bool IsXmlStringValid(string xmlString, string xsdResourceName, Type aType)
	{
		Assembly assembly = aType.Assembly;
		Stream manifestResourceStream = assembly.GetManifestResourceStream(xsdResourceName);
		if (manifestResourceStream == null)
		{
			throw new ArgumentException($"Could not load embedded schema resource '{xsdResourceName}'", xsdResourceName);
		}
		try
		{
			XmlSchema schema = XmlSchema.Read(manifestResourceStream, schemaValidationEventHandler);
			XmlSchemaSet xmlSchemaSet = new XmlSchemaSet();
			XmlResourceResolver xmlResolver = new XmlResourceResolver();
			xmlSchemaSet.ValidationEventHandler += schemaValidationEventHandler;
			XmlSchemaCompilationSettings compilationSettings = new XmlSchemaCompilationSettings();
			xmlSchemaSet.CompilationSettings = compilationSettings;
			xmlSchemaSet.XmlResolver = xmlResolver;
			xmlSchemaSet.Add(schema);
			xmlSchemaSet.Compile();
			XmlReaderSettings xmlReaderSettings = new XmlReaderSettings();
			xmlReaderSettings.ValidationType = ValidationType.Schema;
			xmlReaderSettings.Schemas = xmlSchemaSet;
			xmlReaderSettings.ValidationEventHandler += schemaValidationEventHandler;
			StringReader input = new StringReader(xmlString);
			XmlReader xmlReader = XmlReader.Create(input, xmlReaderSettings);
			_validationSucceeded = true;
			while (xmlReader.Read())
			{
			}
		}
		catch (Exception ex)
		{
			_lastError = string.Format(CultureInfo.CurrentUICulture, XmlMediatorBase.ValidationException, new object[1] { ex.Message });
			_validationSucceeded = false;
		}
		finally
		{
			manifestResourceStream?.Close();
		}
		return _validationSucceeded;
	}

	private static void schemaValidationEventHandler(object sender, ValidationEventArgs e)
	{
		string empty = string.Empty;
		empty = ((!(sender is XmlReader) || (sender as XmlReader).Name == null) ? string.Format("ErrorMsg:{0}, L:{1} C:{2}", e.Message, e.Exception.LineNumber) : $"ErrorMsg:{e.Message}, L:{e.Exception.LineNumber} C:{e.Exception.LinePosition}, XmlNode:{(sender as XmlReader).Name}");
		_lastError = string.Format(CultureInfo.CurrentUICulture, XmlMediatorBase.ValidationFailed, new object[1] { empty });
		_validationSucceeded = false;
	}
}
