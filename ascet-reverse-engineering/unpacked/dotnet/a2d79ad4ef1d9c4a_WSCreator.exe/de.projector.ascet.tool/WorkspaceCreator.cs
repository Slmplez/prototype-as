using System;
using System.Collections.Generic;
using System.IO;
using System.Xml;
using de.kandid.io;
using de.kandid.logging;
using de.projector.ascet.model;

namespace de.projector.ascet.tool;

public class WorkspaceCreator
{
	public static readonly string _version = "1.0.2-r943";

	public static readonly string _schemaVersion = "6.2.0.0";

	public void createWorkspace(de.kandid.io.File srcDir, de.kandid.io.File destDir, de.kandid.io.File wsFile, Logger logger, List<string> mains)
	{
		if (!destDir.exists())
		{
			destDir.mkdirs();
		}
		else if (!destDir.isDirectory())
		{
			throw new Exception(destDir.ToString() + " already exists but is not a directory");
		}
		Database db = new Database();
		Context context = new Context(db, logger);
		Folder root = null;
		if (mains.Count == 0)
		{
			Types types = new Types(srcDir, destDir);
			root = new Folder(RootFile.ROOT, types, context);
		}
		else
		{
			root = new Folder(context, "");
			foreach (string main in mains)
			{
				try
				{
					string itemName = Path.GetFileName(main).Split('.')[0];
					de.kandid.io.File mainDir = new de.kandid.io.File(Path.GetDirectoryName(main));
					Types types2 = new Types(mainDir, destDir);
					types2._main.read(itemName, "amd", delegate(XmlElement rootEl)
					{
						Item item = Item.fromXML(context, rootEl, types2, itemName);
						de.kandid.io.File file = new de.kandid.io.File(destDir, item.baseName());
						if (!Path.GetFullPath(mainDir.ToString()).Equals(Path.GetFullPath(file.ToString())))
						{
							de.kandid.io.File parentFile = file.getParentFile();
							string pattern = itemName + ".*";
							de.kandid.io.File.remove(parentFile, pattern);
							de.kandid.io.File.copy(mainDir, parentFile, pattern);
						}
						Folder folder = root;
						string[] array = item._namespace.Substring(1).Split('/');
						foreach (string name in array)
						{
							Folder folder2 = (Folder)folder.search(name);
							if (folder2 == null)
							{
								folder2 = new Folder(context, name);
								folder.add(folder2);
							}
							folder = folder2;
						}
						folder.add(item);
					});
				}
				catch (Exception t)
				{
					context._logger.log(Logger.WARNING, "Unable to process " + main, t);
				}
			}
		}
		root.visitItems(delegate(Item item)
		{
			item.updateReferences(context);
		});
		XmlDocument xmlDocument = new XmlDocument();
		XmlElement xmlElement = root.wsDesc(xmlDocument, "workspace");
		xmlElement.RemoveAttribute("name");
		xmlElement.SetAttribute("toolName", "workspace creator");
		xmlElement.SetAttribute("toolVersion", _version);
		xmlDocument.AppendChild(xmlElement);
		xmlElement.SetAttribute("schemaVersion", _schemaVersion);
		xmlDocument.Save(wsFile.getPath());
	}

	private static void usage(string msg)
	{
		Console.WriteLine("Error: " + msg + "\n");
		Console.WriteLine("Version: " + _version);
		Console.WriteLine("Usage: WSCreator --amd-root=<dir> --dest-file=<aws-file> [--dest-dir=<dir>] [--log-file=<log-file>] [<main-amd>*]");
		Console.WriteLine("\t--amd-root    the directory containing the amd files to scan");
		Console.WriteLine("\t--dest-file   the pathname of the aws file to create");
		Console.WriteLine("\t--dest-dir    the destination directory for the .amd");
		Console.WriteLine("\t--log-file    the file to log to (default is no log)");
		Environment.Exit(2);
	}

	private static void Main(string[] args)
	{
		foreach (string text in args)
		{
			Console.WriteLine("Arg: " + text);
		}
		try
		{
			de.kandid.io.File file = null;
			de.kandid.io.File file2 = null;
			de.kandid.io.File file3 = null;
			de.kandid.io.File file4 = null;
			List<string> list = new List<string>();
			string text2 = null;
			foreach (string text3 in args)
			{
				if (!text3.StartsWith("--"))
				{
					list.Add(text3);
					continue;
				}
				int num = text3.IndexOf('=');
				if (num < 0)
				{
					usage("Value for argument " + text3 + " expected");
				}
				string text4 = text3.Substring(2, num - 2);
				string text5 = text3.Substring(num + 1);
				switch (text4)
				{
				case "amd-root":
					file = new de.kandid.io.File(text5);
					break;
				case "dest-file":
					file2 = new de.kandid.io.File(text5);
					break;
				case "dest-dir":
					file4 = new de.kandid.io.File(text5);
					break;
				case "log-file":
					file3 = new de.kandid.io.File(text5);
					break;
				case "file-list":
					text2 = text5;
					break;
				default:
					usage("Unknown option " + text3);
					break;
				}
			}
			Logger logger = ((file3 != null) ? ((Logger)new Logger.Xml(file3)) : ((Logger)new Logger.Console()));
			if (file2 == null || file == null)
			{
				usage("--amd-root and --dest-file are mandatory");
			}
			try
			{
				if (text2 != null)
				{
					string[] array = System.IO.File.ReadAllLines(text2);
					string[] array2 = array;
					foreach (string item in array2)
					{
						list.Add(item);
					}
				}
				if (file4 == null)
				{
					file4 = file2.getParentFile();
				}
				new WorkspaceCreator().createWorkspace(file, file4, file2, logger, list);
			}
			catch (Exception t)
			{
				logger.log(Logger.SEVERE, "Aborting due to exception", t);
				logger.close();
				Environment.Exit(3);
			}
			logger.close();
		}
		catch (Exception ex)
		{
			Console.WriteLine("*** Fatal error: exception while setting up program");
			Console.WriteLine(ex.StackTrace);
			Environment.Exit(3);
		}
		Environment.Exit(0);
	}
}
