using System;
using System.Xml;
using de.kandid.io;

namespace de.kandid.logging;

public abstract class Logger
{
	public class Level
	{
		public readonly string _name;

		public Level(string name)
		{
			_name = name;
		}
	}

	public class Console : Logger
	{
		public override void log(Level level, string message, Exception t)
		{
			System.Console.WriteLine(string.Concat("[", DateTime.Now, "]", level._name, ": ", message));
			if (t != null)
			{
				System.Console.WriteLine(t.ToString());
				System.Console.WriteLine(t.StackTrace);
			}
		}

		public override void close()
		{
		}
	}

	public class Xml : Logger
	{
		private File _filename;

		private XmlElement _entries;

		private XmlDocument _xmlDoc = new XmlDocument();

		public Xml(File file)
		{
			try
			{
				_filename = file;
				_entries = _xmlDoc.CreateElement("log");
				_xmlDoc.AppendChild(_entries);
			}
			catch (Exception t)
			{
				fatalError(t);
			}
		}

		public override void close()
		{
			try
			{
				_xmlDoc.Save(_filename.getPath());
			}
			catch (Exception t)
			{
				fatalError(t);
			}
		}

		public override void log(Level level, string message, Exception t)
		{
			try
			{
				XmlElement xmlElement = _xmlDoc.CreateElement("entry");
				xmlElement.SetAttribute("level", level._name);
				xmlElement.SetAttribute("time", XmlConvert.ToString(DateTime.Now, XmlDateTimeSerializationMode.Utc));
				xmlElement.AppendChild(textElement("message", message));
				if (t != null)
				{
					xmlElement.AppendChild(toXML(t));
				}
				_entries.AppendChild(xmlElement);
			}
			catch (Exception t2)
			{
				fatalError(t2);
			}
		}

		private void fatalError(Exception t)
		{
			System.Console.WriteLine("*** Fatal logging error: Can't create log file");
			System.Console.WriteLine(t.ToString());
			Environment.Exit(5);
		}

		private XmlElement toXML(Exception t)
		{
			XmlElement xmlElement = _xmlDoc.CreateElement("exception");
			xmlElement.SetAttribute("class", t.GetType().Name);
			if (t.Message != null)
			{
				xmlElement.AppendChild(textElement("message", t.Message));
			}
			xmlElement.AppendChild(textElement("frame", t.StackTrace));
			if (t.InnerException != null)
			{
				xmlElement.AppendChild(toXML(t.InnerException));
			}
			return xmlElement;
		}

		private XmlElement textElement(string name, string text)
		{
			XmlElement xmlElement = _xmlDoc.CreateElement(name);
			xmlElement.AppendChild(_xmlDoc.CreateTextNode(text));
			return xmlElement;
		}
	}

	public static readonly Level SEVERE = new Level("SEVERE");

	public static readonly Level WARNING = new Level("WARNING");

	public abstract void log(Level level, string message, Exception t);

	public abstract void close();
}
