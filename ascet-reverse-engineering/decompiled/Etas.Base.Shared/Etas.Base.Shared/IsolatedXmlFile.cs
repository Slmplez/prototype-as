using System;
using System.IO;
using System.IO.IsolatedStorage;
using System.Text;
using System.Xml;

namespace Etas.Base.Shared;

public sealed class IsolatedXmlFile
{
	private IsolatedXmlFile()
	{
	}

	public static XmlTextWriter CreateXmlWriter(string fileName)
	{
		XmlTextWriter result = null;
		IsolatedStorageFile userStoreForAssembly = IsolatedStorageFile.GetUserStoreForAssembly();
		try
		{
			IsolatedStorageFileStream w = new IsolatedStorageFileStream(fileName, FileMode.Create, FileAccess.ReadWrite, userStoreForAssembly);
			result = new XmlTextWriter(w, Encoding.UTF8);
		}
		catch (FileNotFoundException exception)
		{
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
		return result;
	}

	public static XmlTextReader GetXmlReader(string fName)
	{
		IsolatedStorageFile userStoreForAssembly = IsolatedStorageFile.GetUserStoreForAssembly();
		XmlTextReader result = null;
		try
		{
			IsolatedStorageFileStream isolatedStorageFileStream = new IsolatedStorageFileStream(fName, FileMode.Open, FileAccess.ReadWrite, userStoreForAssembly);
			if (isolatedStorageFileStream.Length > 0)
			{
				result = new XmlTextReader(isolatedStorageFileStream);
			}
			else
			{
				isolatedStorageFileStream.Close();
			}
		}
		catch (FileNotFoundException exception)
		{
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
		return result;
	}
}
