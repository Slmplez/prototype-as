using System;
using System.Collections.Generic;
using System.IO;
using Etas.Base.Shared;

namespace Etas.Base.UI.Framework.Help.HelpCore;

public class DBCacheController
{
	private string helpDirPath = string.Empty;

	private string appName = string.Empty;

	private MappingDB db;

	protected List<string> loadedFiles = new List<string>();

	protected List<string> failedFiles = new List<string>();

	public DBCacheController(string helpDirPath, string appName, MappingDB db)
	{
		if (string.IsNullOrEmpty(helpDirPath) || string.IsNullOrEmpty(appName) || db == null)
		{
			Logger.LogError("Created DBCacheController instance with illegal parameters. Throwing ArgumentException now");
			throw new ArgumentException("Created DBCacheController instance with illegal parameters.");
		}
		this.helpDirPath = helpDirPath;
		this.appName = appName;
		this.db = db;
		AddDefaultRowsToDB();
	}

	public virtual void Load(string ns)
	{
		if (!loadedFiles.Contains(ns) && !failedFiles.Contains(ns))
		{
			ForceLoad(ns);
		}
	}

	public virtual void ForceLoad(string ns)
	{
		if (loadedFiles.Contains(ns))
		{
			loadedFiles.Remove(ns);
		}
		if (failedFiles.Contains(ns))
		{
			failedFiles.Remove(ns);
		}
		try
		{
			db.EnforceConstraints = false;
			using (TextReader reader = new StreamReader(ConstructFileName(ns)))
			{
				Load(reader);
			}
			loadedFiles.Add(ns);
		}
		catch (Exception exception)
		{
			Logger.LogException(exception, "Unable to load database with namespace {0}. Now returning original database.", ns);
			failedFiles.Add(ns);
		}
	}

	public virtual void LoadAll()
	{
		LoadAll(force: false);
	}

	public virtual void ForceLoadAll()
	{
		LoadAll(force: true);
	}

	public virtual void Save(string ns)
	{
		using TextWriter writer = new StreamWriter(ConstructFileName(ns));
		Save(writer, ns);
	}

	public virtual void SaveAll()
	{
		foreach (string availableNamespace in GetAvailableNamespaces())
		{
			Save(availableNamespace);
		}
	}

	private void LoadAll(bool force)
	{
		db.EnforceConstraints = false;
		string[] files = Directory.GetFiles(helpDirPath, "*" + HelpConstants.MAP_EXTENSION);
		foreach (string path in files)
		{
			if (force)
			{
				ForceLoad(NameSpaceFromFileName(path));
			}
			else
			{
				Load(NameSpaceFromFileName(path));
			}
		}
	}

	private IEnumerable<string> GetAvailableNamespaces()
	{
		List<string> list = new List<string>();
		foreach (MappingDB.ControlsRow control in db.Controls)
		{
			if (!list.Contains(control.HelpNamespace))
			{
				list.Add(control.HelpNamespace);
			}
		}
		return list;
	}

	private IEnumerable<string> GetAvailableHelpFiles()
	{
		List<string> list = new List<string>();
		foreach (MappingDB.HelpFilesRow helpFile in db.HelpFiles)
		{
			list.Add(helpFile.Name);
		}
		return list;
	}

	private IEnumerable<string> GetAvailableTypes()
	{
		List<string> list = new List<string>();
		foreach (MappingDB.TypesRow type in db.Types)
		{
			list.Add(type.Type);
		}
		return list;
	}

	private string ConstructFileName(string ns)
	{
		string text = ns;
		if (ControlIdentifier.DEFAULT_NS.Equals(ns))
		{
			text = appName;
		}
		return helpDirPath + Path.DirectorySeparatorChar + text + HelpConstants.MAP_EXTENSION;
	}

	private string NameSpaceFromFileName(string path)
	{
		string fileName = Path.GetFileName(path);
		fileName = fileName.Replace(HelpConstants.MAP_EXTENSION, string.Empty);
		if (!fileName.Equals(appName))
		{
			return fileName;
		}
		return ControlIdentifier.DEFAULT_NS;
	}

	protected virtual void Load(TextReader reader)
	{
		MappingDB mappingDB = new MappingDB();
		mappingDB.EnforceConstraints = false;
		mappingDB.ReadXml(reader);
		db.Update(mappingDB);
		db.Controls.Merge(mappingDB.Controls);
		db.ControlMetadata.Merge(mappingDB.ControlMetadata);
		if (mappingDB.Metadata.Count > 0 && db.Metadata.Count == 0)
		{
			db.Metadata.ImportRow(mappingDB.Metadata[0]);
		}
	}

	protected virtual void Save(TextWriter writer, string ns)
	{
		MappingDB mappingDB = new MappingDB();
		mappingDB.EnforceConstraints = false;
		List<string> helpFiles = new List<string>();
		List<string> types = new List<string>();
		AddNeededControls(ns, mappingDB, helpFiles, types);
		AddControlsMetaData(mappingDB);
		AddNeededTypes(ns, mappingDB, helpFiles, types);
		AddNeededHelpFiles(ns, mappingDB, helpFiles);
		if (ControlIdentifier.DEFAULT_NS.Equals(ns))
		{
			mappingDB.Metadata.ImportRow(db.Metadata[0]);
		}
		mappingDB.WriteXml(writer);
	}

	private void AddNeededHelpFiles(string ns, MappingDB dbToSave, List<string> helpFiles)
	{
		if (ControlIdentifier.DEFAULT_NS.Equals(ns))
		{
			helpFiles.Clear();
			helpFiles.AddRange(GetAvailableHelpFiles());
		}
		foreach (string helpFile in helpFiles)
		{
			MappingDB.HelpFilesRow row = db.HelpFiles.FindByName(helpFile);
			dbToSave.HelpFiles.ImportRow(row);
		}
	}

	private void AddNeededTypes(string ns, MappingDB dbToSave, List<string> helpFiles, List<string> types)
	{
		if (ControlIdentifier.DEFAULT_NS.Equals(ns))
		{
			types.Clear();
			types.AddRange(GetAvailableTypes());
		}
		foreach (string type in types)
		{
			MappingDB.TypesRow typesRow = db.Types.FindByType(type);
			dbToSave.Types.ImportRow(typesRow);
			if (!helpFiles.Contains(typesRow.HelpFile))
			{
				helpFiles.Add(typesRow.HelpFile);
			}
		}
	}

	private void AddNeededControls(string ns, MappingDB dbToSave, List<string> helpFiles, List<string> types)
	{
		MappingDB.ControlsRow[] array = (MappingDB.ControlsRow[])db.Controls.Select("HelpNamespace = '" + ns + "'");
		foreach (MappingDB.ControlsRow controlsRow in array)
		{
			dbToSave.Controls.ImportRow(controlsRow);
			if (!helpFiles.Contains(controlsRow.HelpFile))
			{
				helpFiles.Add(controlsRow.HelpFile);
			}
			if (!types.Contains(controlsRow.Type))
			{
				types.Add(controlsRow.Type);
			}
		}
	}

	private void AddControlsMetaData(MappingDB dbToSave)
	{
		foreach (MappingDB.ControlsRow control in dbToSave.Controls)
		{
			dbToSave.ControlMetadata.ImportRow(db.ControlMetadata.FindByName(control.Name));
		}
	}

	private void AddDefaultRowsToDB()
	{
		if (db.HelpFiles.Select("Name = '" + HelpConstants.DEFAULT_FILENAME + "'").Length == 0)
		{
			db.HelpFiles.AddHelpFilesRow(HelpConstants.DEFAULT_FILENAME, HelpConstants.DEFAULT_HELPFILE_EXTENSION);
		}
		if (db.Types.FindByType(ControlIdentifier.DEFAULTS.Type) == null)
		{
			db.Types.AddTypesRow(ControlIdentifier.DEFAULTS.Type, CallingByTypeAllowed: false, HelpConstants.DEFAULT_TOPIC, HelpConstants.DEFAULT_FILENAME);
		}
		if (db.Controls.FindByName(ControlIdentifier.DEFAULTS.Name) == null)
		{
			db.Controls.AddControlsRow(ControlIdentifier.DEFAULTS.Name, ControlIdentifier.DEFAULTS.Type, HelpConstants.DEFAULT_RANGE_VALUE, HelpConstants.DEFAULT_RANGE_VALUE, HelpConstants.DEFAULT_TOPIC, ControlIdentifier.DEFAULTS.Name, HelpConstants.DEFAULT_FILENAME, ControlIdentifier.DEFAULT_NS);
			db.ControlMetadata.AddControlMetadataRow(ControlIdentifier.DEFAULTS.Name, DateTime.Now, HelpRequestCatchable: false, HelpConstants.DEFAULT_GRABBER_TYPE);
		}
	}
}
