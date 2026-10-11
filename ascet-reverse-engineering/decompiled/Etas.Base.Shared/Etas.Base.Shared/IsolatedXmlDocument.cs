using System;
using System.IO;
using System.IO.IsolatedStorage;
using System.Reflection;
using System.Text;
using System.Xml;
using System.Xml.XPath;

namespace Etas.Base.Shared;

public sealed class IsolatedXmlDocument : XmlDocument, IDisposable
{
	private XmlElement _root;

	private XmlElement _thisAsyElem;

	private bool _bOpen;

	private IsolatedStorageFile _isoDir;

	private IsolatedStorageFileStream _isoFile;

	private readonly XmlNamespaceManager _nsmgr;

	public IsolatedXmlDocument(Assembly parentAssembly)
	{
		char[] separator = new char[2] { ',', '=' };
		string[] array = parentAssembly.FullName.Split(separator);
		_root = CreateElement(array[0]);
		_root.SetAttribute("Version", array[2]);
		string bodyName = Encoding.UTF8.BodyName;
		XmlDeclaration newChild = base.CreateXmlDeclaration("1.0", bodyName, "");
		base.AppendChild(_root);
		base.InsertBefore(newChild, _root);
		_nsmgr = new XmlNamespaceManager(base.NameTable);
		Assembly executingAssembly = Assembly.GetExecutingAssembly();
		array = executingAssembly.FullName.Split(separator);
		_thisAsyElem = CreateElement(array[0]);
		_thisAsyElem.SetAttribute("Version", array[2]);
		_root.AppendChild(_thisAsyElem);
	}

	private bool DoIsolatedStream(bool bCreating, string fileName)
	{
		IsoClose();
		_isoDir = IsolatedStorageFile.GetUserStoreForAssembly();
		FileMode mode = (bCreating ? FileMode.Create : FileMode.Open);
		if (!bCreating && !_isoDir.FileExists(fileName))
		{
			return _bOpen;
		}
		try
		{
			_isoFile = new IsolatedStorageFileStream(fileName, mode, FileAccess.ReadWrite, _isoDir);
			_bOpen = true;
		}
		catch (PathTooLongException exception)
		{
			string message = "Isolated storage path is too long: " + fileName;
			Logger.LogError(message);
			Logger.LogException(exception);
		}
		catch (ArgumentNullException exception2)
		{
			Logger.LogException(exception2);
		}
		catch (ArgumentException exception3)
		{
			Logger.LogException(exception3);
		}
		catch (FileNotFoundException exception4)
		{
			string message2 = "Failed to find file " + fileName;
			Logger.Write(LogCategory.TraceClass, exception4, message2);
		}
		catch (IsolatedStorageException exception5)
		{
			Logger.LogException(exception5);
		}
		return _bOpen;
	}

	private void IsoClose()
	{
		if (_bOpen)
		{
			if (_isoFile != null)
			{
				_isoFile.Close();
			}
			if (_isoDir != null)
			{
				_isoDir.Close();
			}
			_bOpen = false;
		}
	}

	private static string SanitizeFilename(string s)
	{
		return s + ".xml";
	}

	public XmlNode CreatePluginNode(string pluginName, string nodeName)
	{
		string name = pluginName + ":" + nodeName;
		string namespaceURI = "http://www.etasgroup.com/" + pluginName;
		return base.CreateNode("element", name, namespaceURI);
	}

	public void AppendPluginNode(XmlNode node)
	{
		_thisAsyElem.AppendChild(node);
	}

	public XmlNode Fetch(string pluginName, string tagName)
	{
		if (!_bOpen)
		{
			return null;
		}
		string uri = "http://www.etasgroup.com/" + pluginName;
		string xpath = pluginName + ":" + tagName;
		_nsmgr.AddNamespace(pluginName, uri);
		try
		{
			return _thisAsyElem.SelectSingleNode(xpath, _nsmgr);
		}
		catch (XPathException exception)
		{
			Logger.LogException(exception);
			return null;
		}
	}

	public void RemoveChildNodes()
	{
		if (_thisAsyElem != null)
		{
			_thisAsyElem.RemoveAll();
			IsoClose();
		}
	}

	public override void Save(string fName)
	{
		string fileName = SanitizeFilename(fName);
		if (DoIsolatedStream(bCreating: true, fileName))
		{
			base.PreserveWhitespace = false;
			base.Save(_isoFile);
			RemoveChildNodes();
		}
	}

	public void Close()
	{
		IsoClose();
		if (_thisAsyElem != null)
		{
			_thisAsyElem.RemoveAll();
		}
	}

	public bool Open(string fileName)
	{
		string fileName2 = SanitizeFilename(fileName);
		if (DoIsolatedStream(bCreating: false, fileName2))
		{
			base.RemoveAll();
			try
			{
				char[] separator = new char[2] { ',', '=' };
				base.Load(_isoFile);
				_root = base.DocumentElement;
				Assembly executingAssembly = Assembly.GetExecutingAssembly();
				string[] array = executingAssembly.FullName.Split(separator);
				_thisAsyElem = (XmlElement)_root.SelectSingleNode(array[0]);
				if (_thisAsyElem == null)
				{
					IsoClose();
				}
				else
				{
					_bOpen = true;
				}
			}
			catch (XmlException)
			{
				IsoClose();
				throw;
			}
		}
		return _bOpen;
	}

	public void RemoveExistingPlugin(string pluginName, string nodeName)
	{
		char[] separator = new char[2] { ',', '=' };
		Assembly executingAssembly = Assembly.GetExecutingAssembly();
		string fullName = executingAssembly.FullName;
		string[] array = fullName.Split(separator);
		XmlNode xmlNode = base.DocumentElement.SelectSingleNode(array[0]);
		if (xmlNode == null)
		{
			return;
		}
		string uri = "http://www.etasgroup.com/" + pluginName;
		string xpath = pluginName + ":" + nodeName;
		_nsmgr.AddNamespace(pluginName, uri);
		try
		{
			XmlNode xmlNode2 = xmlNode.SelectSingleNode(xpath, _nsmgr);
			if (xmlNode2 != null)
			{
				xmlNode.RemoveChild(xmlNode2);
			}
		}
		catch (XPathException exception)
		{
			Logger.LogException(exception);
		}
	}

	public static bool DeleteStorage()
	{
		IsolatedStorageFile userStoreForAssembly = IsolatedStorageFile.GetUserStoreForAssembly();
		try
		{
			userStoreForAssembly.Remove();
			return true;
		}
		catch (IsolatedStorageException exception)
		{
			Logger.LogException(exception);
		}
		return false;
	}

	public void Dispose()
	{
		_isoFile = null;
		if (_isoDir != null)
		{
			_isoDir.Dispose();
			_isoDir = null;
		}
	}

	public static IsolatedXmlDocument CreateIsolatedXmlDocument()
	{
		Assembly executingAssembly = Assembly.GetExecutingAssembly();
		return new IsolatedXmlDocument(executingAssembly);
	}

	public static IsolatedXmlDocument LoadIsolatedXmlDocument(string documentName)
	{
		Assembly executingAssembly = Assembly.GetExecutingAssembly();
		IsolatedXmlDocument isolatedXmlDocument = new IsolatedXmlDocument(executingAssembly);
		if (string.IsNullOrEmpty(documentName))
		{
			throw new ArgumentException("A null document name was specified.", "documentName");
		}
		if (isolatedXmlDocument.Open(documentName))
		{
			return isolatedXmlDocument;
		}
		return null;
	}

	public static XmlNode CreateIsolatedXmlNode(IsolatedXmlDocument xDoc, string componentName, string nodeName)
	{
		if (xDoc == null)
		{
			throw new ArgumentNullException("xDoc");
		}
		if (string.IsNullOrEmpty(componentName))
		{
			throw new ArgumentException("An empty argument was passed.", "componentName");
		}
		if (string.IsNullOrEmpty(nodeName))
		{
			throw new ArgumentException("An empty argument was passed.", "nodeName");
		}
		try
		{
			return xDoc.CreatePluginNode(componentName, nodeName);
		}
		catch (ArgumentException exception)
		{
			Logger.LogException(exception);
			return null;
		}
		catch (Exception exception2)
		{
			Logger.LogException(exception2);
			return null;
		}
	}

	public static XmlNode LoadIsolatedXmlNode(IsolatedXmlDocument xDoc, string componentName, string nodeName)
	{
		if (xDoc == null)
		{
			throw new ArgumentNullException("xDoc");
		}
		if (string.IsNullOrEmpty(componentName))
		{
			throw new ArgumentException("An empty argument was passed.", "componentName");
		}
		if (string.IsNullOrEmpty(nodeName))
		{
			throw new ArgumentException("An empty argument was passed.", "nodeName");
		}
		XmlNode xmlNode = xDoc.Fetch(componentName, nodeName);
		if (xmlNode != null)
		{
			return xmlNode;
		}
		return null;
	}
}
