using System;
using System.IO;
using System.Text;
using System.Xml;
using System.Xml.Serialization;

namespace Etas.Base.Shared;

public abstract class XmlMediator<T> : IXmlMediator
{
	protected T _mediatedObject;

	protected string _lastError;

	private XmlSerializer _serializer;

	private XmlWriterSettings _writerSettings;

	private XmlSerializerNamespaces _namespaces;

	public XmlSerializer Serializer
	{
		get
		{
			if (_serializer == null)
			{
				_serializer = new XmlSerializer(typeof(T));
			}
			return _serializer;
		}
		set
		{
			_serializer = value;
		}
	}

	public XmlWriterSettings WriterSettings
	{
		get
		{
			if (_writerSettings == null)
			{
				_writerSettings = new XmlWriterSettings();
				_writerSettings.Encoding = Encoding.Unicode;
			}
			return _writerSettings;
		}
		set
		{
			_writerSettings = value;
		}
	}

	protected abstract string SchemaResourceName { get; }

	public T MediatedObject
	{
		get
		{
			return _mediatedObject;
		}
		set
		{
			_mediatedObject = value;
		}
	}

	public string LastErrorMessage => _lastError;

	public void AddPrefixedNamespace(string prefix, string namespaceUrl)
	{
		if (_namespaces == null)
		{
			_namespaces = new XmlSerializerNamespaces();
		}
		_namespaces.Add(prefix, namespaceUrl);
	}

	public bool LoadFromFile(string fileName)
	{
		return LoadFromFile(fileName, disableSchemaCheck: false);
	}

	public bool LoadFromFile(string fileName, bool disableSchemaCheck)
	{
		if (!File.Exists(fileName))
		{
			throw new FileNotFoundException();
		}
		bool result = false;
		try
		{
			if (disableSchemaCheck || XmlSupport.IsXmlFileValid(fileName, SchemaResourceName, typeof(T)))
			{
				using StreamReader streamReader = new StreamReader(fileName);
				try
				{
					_mediatedObject = (T)Serializer.Deserialize(streamReader);
					result = true;
				}
				catch (InvalidOperationException ex)
				{
					_lastError = ex.Message;
					if (ex.InnerException != null)
					{
						_lastError = _lastError + " (" + ex.InnerException.Message + ")";
					}
					_mediatedObject = default(T);
					result = false;
				}
				finally
				{
					streamReader.Close();
				}
			}
			else
			{
				_lastError = XmlSupport.LastErrorMessage;
				_mediatedObject = default(T);
				result = false;
			}
		}
		catch (Exception ex2)
		{
			_lastError = ex2.Message;
			_mediatedObject = default(T);
			result = false;
		}
		return result;
	}

	public object LoadFromFile(string fileName, Type expectedRootObjectType)
	{
		if (!File.Exists(fileName))
		{
			throw new FileNotFoundException();
		}
		object result = null;
		try
		{
			using StreamReader streamReader = new StreamReader(fileName);
			try
			{
				XmlSerializer xmlSerializer = new XmlSerializer(expectedRootObjectType);
				result = xmlSerializer.Deserialize(streamReader);
			}
			catch (InvalidOperationException ex)
			{
				_lastError = ex.Message;
				if (ex.InnerException != null)
				{
					_lastError = _lastError + " (" + ex.InnerException.Message + ")";
				}
			}
			finally
			{
				streamReader.Close();
			}
		}
		catch (Exception ex2)
		{
			_lastError = ex2.Message;
		}
		return result;
	}

	public bool WriteToFile(string fileName)
	{
		bool result = false;
		if (string.IsNullOrEmpty(fileName))
		{
			throw new ArgumentException("fileName", "fileName is either null or empty");
		}
		if (_mediatedObject != null)
		{
			using XmlWriter xmlWriter = XmlWriter.Create(fileName, WriterSettings);
			try
			{
				if (_namespaces != null)
				{
					Serializer.Serialize(xmlWriter, _mediatedObject, _namespaces);
				}
				else
				{
					Serializer.Serialize(xmlWriter, _mediatedObject);
				}
				result = true;
			}
			catch (InvalidOperationException ex)
			{
				_lastError = ex.Message;
				if (ex.InnerException != null)
				{
					_lastError = _lastError + " (" + ex.InnerException.Message + ")";
				}
				result = false;
			}
			finally
			{
				xmlWriter.Close();
			}
		}
		return result;
	}

	public bool WriteToFile(string fileName, object objectToBeSerialized)
	{
		bool result = false;
		if (objectToBeSerialized == null)
		{
			throw new ArgumentNullException("objectToBeSerialized");
		}
		if (string.IsNullOrEmpty(fileName))
		{
			throw new ArgumentException("fileName", "fileName is either null or empty");
		}
		using (XmlWriter xmlWriter = XmlWriter.Create(fileName, WriterSettings))
		{
			try
			{
				XmlSerializer xmlSerializer = new XmlSerializer(objectToBeSerialized.GetType());
				if (_namespaces != null)
				{
					xmlSerializer.Serialize(xmlWriter, objectToBeSerialized, _namespaces);
				}
				else
				{
					xmlSerializer.Serialize(xmlWriter, objectToBeSerialized);
				}
				result = true;
			}
			catch (InvalidOperationException ex)
			{
				_lastError = ex.Message;
				if (ex.InnerException != null)
				{
					_lastError = _lastError + " (" + ex.InnerException.Message + ")";
				}
				result = false;
			}
			finally
			{
				xmlWriter.Close();
			}
		}
		return result;
	}

	public bool LoadFromString(string xmlString)
	{
		return LoadFromString(xmlString, disableSchemaCheck: false);
	}

	public bool LoadFromString(string xmlString, bool disableSchemaCheck)
	{
		bool result = false;
		try
		{
			if (disableSchemaCheck || XmlSupport.IsXmlStringValid(xmlString, SchemaResourceName, typeof(T)))
			{
				using TextReader textReader = new StringReader(xmlString);
				_mediatedObject = (T)Serializer.Deserialize(textReader);
				result = true;
			}
			else
			{
				_lastError = XmlSupport.LastErrorMessage;
				_mediatedObject = default(T);
				result = false;
			}
		}
		catch
		{
			_mediatedObject = default(T);
			result = false;
		}
		return result;
	}

	public object LoadFromString(string xmlString, Type expectedRootObjectType)
	{
		object result = null;
		try
		{
			using TextReader textReader = new StringReader(xmlString);
			XmlSerializer xmlSerializer = new XmlSerializer(expectedRootObjectType);
			result = xmlSerializer.Deserialize(textReader);
		}
		catch (Exception ex)
		{
			_lastError = ex.Message;
		}
		return result;
	}

	public string WriteToString()
	{
		string result = "";
		if (_mediatedObject != null)
		{
			StringBuilder stringBuilder = new StringBuilder();
			using XmlWriter xmlWriter = XmlWriter.Create(stringBuilder, WriterSettings);
			try
			{
				if (_namespaces != null)
				{
					Serializer.Serialize(xmlWriter, _mediatedObject, _namespaces);
				}
				else
				{
					Serializer.Serialize(xmlWriter, _mediatedObject);
				}
				result = stringBuilder.ToString();
			}
			catch (InvalidOperationException ex)
			{
				_lastError = ex.Message;
				if (ex.InnerException != null)
				{
					_lastError = _lastError + " (" + ex.InnerException.Message + ")";
				}
				result = "";
			}
		}
		return result;
	}

	public string WriteToString(object objectToBeSerialized)
	{
		if (objectToBeSerialized == null)
		{
			throw new ArgumentNullException("objectToBeSerialized");
		}
		string result = "";
		StringBuilder stringBuilder = new StringBuilder();
		using (XmlWriter xmlWriter = XmlWriter.Create(stringBuilder, WriterSettings))
		{
			try
			{
				XmlSerializer xmlSerializer = new XmlSerializer(objectToBeSerialized.GetType());
				if (_namespaces != null)
				{
					xmlSerializer.Serialize(xmlWriter, objectToBeSerialized, _namespaces);
				}
				else
				{
					xmlSerializer.Serialize(xmlWriter, objectToBeSerialized);
				}
				result = stringBuilder.ToString();
			}
			catch (InvalidOperationException ex)
			{
				_lastError = ex.Message;
				if (ex.InnerException != null)
				{
					_lastError = _lastError + " (" + ex.InnerException.Message + ")";
				}
				result = "";
			}
		}
		return result;
	}

	public bool CheckAgainstSchema()
	{
		bool flag = false;
		if (SchemaResourceName != null)
		{
			string xmlString = WriteToString();
			flag = XmlSupport.IsXmlStringValid(xmlString, SchemaResourceName, typeof(T));
			if (!flag)
			{
				_lastError = XmlSupport.LastErrorMessage;
			}
		}
		else
		{
			flag = false;
		}
		return flag;
	}

	public bool ValidateFile(string fileName)
	{
		if (!File.Exists(fileName))
		{
			throw new FileNotFoundException();
		}
		bool flag = false;
		if (SchemaResourceName != null)
		{
			flag = XmlSupport.IsXmlFileValid(fileName, SchemaResourceName, typeof(T));
			if (!flag)
			{
				_lastError = XmlSupport.LastErrorMessage;
			}
		}
		else
		{
			flag = false;
		}
		return flag;
	}

	public bool ValidateString(string xmlString)
	{
		bool flag = false;
		if (SchemaResourceName != null)
		{
			flag = XmlSupport.IsXmlStringValid(xmlString, SchemaResourceName, typeof(T));
			if (!flag)
			{
				_lastError = XmlSupport.LastErrorMessage;
			}
		}
		else
		{
			flag = false;
		}
		return flag;
	}
}
