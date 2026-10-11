using System;
using System.Collections.Generic;
using System.Diagnostics.CodeAnalysis;
using System.Globalization;
using System.IO;
using System.Windows.Forms;
using Etas.Base.Shared;

namespace Etas.Base.UI.Framework.Help.HelpCore;

[SuppressMessage("Microsoft.Naming", "CA1708:IdentifiersShouldDifferByMoreThanCase")]
public class HelpCoreFacade : IHelpCoreFacade
{
	private CoreState state;

	private IApplicationInfo myAppInfo;

	private IHelpFileLocalizer myFileLocalizer;

	private IEditorLocator editorLocator;

	protected static HelpCoreFacade instance = new HelpCoreFacade();

	private MappingDB mapDB;

	protected IList<string> existingControls = new List<string>();

	private IDictionary<string, IHelpOpener> helpOpeners;

	private DBCacheController dbCache;

	protected IDictionary<string, IControlHighlighter> highlighters = new Dictionary<string, IControlHighlighter>();

	private IControlHighlighter currentHighlighter;

	private IOnlineHelpDeveloperUI loadedMappingUI;

	public bool IsInitialized => state == CoreState.INIT_CALLED;

	public virtual IEditorLocator EditorLocator
	{
		get
		{
			if (state == CoreState.INIT_NOT_CALLED)
			{
				Logger.LogError("Init() wasn't called before this method. Throwing InvalidOperationException.");
				throw new InvalidOperationException("Init() wasn't called before this method. ");
			}
			if (editorLocator == null)
			{
				editorLocator = new RegistryEditorLocator();
			}
			return editorLocator;
		}
		set
		{
			if (state == CoreState.INIT_NOT_CALLED)
			{
				Logger.LogError("Init() wasn't called before this method. Throwing InvalidOperationException.");
				throw new InvalidOperationException("Init() wasn't called before this method. ");
			}
			editorLocator = value;
		}
	}

	internal static HelpCoreFacade Instance => instance;

	private MappingDB MapDB => mapDB;

	protected virtual IDictionary<string, IHelpOpener> HelpOpeners
	{
		get
		{
			if (helpOpeners == null)
			{
				helpOpeners = new Dictionary<string, IHelpOpener>();
				helpOpeners.Add("CHM", new CHMHelpOpener());
				helpOpeners.Add("HTML", new HTMLHelpOpener());
				helpOpeners.Add("HTM", helpOpeners["HTML"]);
			}
			return helpOpeners;
		}
	}

	private DBCacheController DBCache
	{
		get
		{
			return dbCache;
		}
		set
		{
			dbCache = value;
		}
	}

	public virtual void Init(IApplicationInfo appInfo, IHelpFileLocalizer fileLocalizer)
	{
		if (state == CoreState.INIT_CALLED)
		{
			Logger.LogError("Init() got called twice. Throwing InvalidOperationException.");
			throw new InvalidOperationException("Second call of Init() method. Init() must not be called twice.");
		}
		if (appInfo == null)
		{
			Logger.LogError("Passed IApplicationInfo is null. Throwing ArgumentNullException.");
			throw new ArgumentNullException("appInfo");
		}
		if (fileLocalizer == null)
		{
			Logger.LogError("Passed IHelpFileLocalizer is null. Throwing ArgumentNullException.");
			throw new ArgumentNullException("fileLocalizer");
		}
		if (string.IsNullOrEmpty(appInfo.ApplicationName))
		{
			Logger.LogError("Passed IApplicationInfo returns emtpy or null application name. Throwing ArgumentException.");
			throw new ArgumentException("Property 'ApplicationName' is empty.", "appInfo");
		}
		if (string.IsNullOrEmpty(appInfo.HelpDirPath))
		{
			Logger.LogError("Passed IApplicationInfo returns emtpy or null help dir path. Throwing ArgumentException.");
			throw new ArgumentException("Property 'HelpDirPath' is empty.", "appInfo");
		}
		myAppInfo = appInfo;
		myFileLocalizer = fileLocalizer;
		mapDB = new MappingDB();
		mapDB.EnforceConstraints = false;
		DBCache = new DBCacheController(myAppInfo.HelpDirPath, myAppInfo.ApplicationName, mapDB);
		state = CoreState.INIT_CALLED;
	}

	public virtual void AddEntry(string grabbersType, ControlIdentifier ctl, ControlIdentifier parent, bool helpRequestCatchable, IControlHighlighter associatedHighlighter)
	{
		if (state == CoreState.INIT_NOT_CALLED)
		{
			Logger.LogError("Init() wasn't called before this method. Throwing InvalidOperationException.");
			throw new InvalidOperationException("Init() wasn't called before this method. ");
		}
		if (string.IsNullOrEmpty(grabbersType))
		{
			Logger.LogError("Passed grabbersType is null or emtpy. Throwing ArgumentException.");
			throw new ArgumentException("Passed grabbersType is null or empty.", "grabbersType");
		}
		if (string.IsNullOrEmpty(ctl.Name))
		{
			Logger.LogError("Passed ctl.Name is null or emtpy. Throwing ArgumentException.");
			throw new ArgumentException("Passed ctl.Name is null or empty.", "ctl");
		}
		if (string.IsNullOrEmpty(ctl.HelpNamespace))
		{
			Logger.LogError("Passed ctl.HelpNamespace is null or emtpy. Throwing ArgumentException.");
			throw new ArgumentException("Passed ctl.HelpNamespace is null or empty.", "ctl");
		}
		if (string.IsNullOrEmpty(ctl.Type))
		{
			Logger.LogError("Passed ctl.Type is null or emtpy. Throwing ArgumentException.");
			throw new ArgumentException("Passed ctl.Type is null or empty.", "ctl");
		}
		if (parent.Name == null || (MapDB.Controls.FindByName(parent.FullName) == null && !ControlIdentifier.DEFAULTS.Name.Equals(parent.Name)))
		{
			Logger.LogError("Passed parent has name == null or wasn't added before. Throwing ArgumentException.");
			throw new ArgumentException("Passed parent has name == null or wasn't added before", "parent");
		}
		try
		{
			DBCache.Load(ctl.HelpNamespace);
			if (MapDB.Types.FindByType(ctl.Type) == null)
			{
				MapDB.Types.AddTypesRow(ctl.Type, CallingByTypeAllowed: false, HelpConstants.DEFAULT_TOPIC, HelpConstants.DEFAULT_FILENAME);
			}
			MappingDB.ControlsRow controlsRow = MapDB.Controls.FindByName(ctl.FullName);
			if (controlsRow != null)
			{
				controlsRow.Type = ctl.Type;
				controlsRow.ParentName = parent.FullName;
				controlsRow.HelpNamespace = ctl.HelpNamespace;
				controlsRow.AcceptChanges();
				MappingDB.ControlMetadataRow controlMetadataRow = MapDB.ControlMetadata.FindByName(controlsRow.Name);
				controlMetadataRow.LastAdded = DateTime.Now;
				controlMetadataRow.HelpRequestCatchable = helpRequestCatchable;
				controlMetadataRow.GrabbersType = grabbersType;
				controlMetadataRow.AcceptChanges();
			}
			else
			{
				MapDB.Controls.AddControlsRow(ctl.FullName, ctl.Type, HelpConstants.DEFAULT_RANGE_VALUE, HelpConstants.DEFAULT_RANGE_VALUE, HelpConstants.DEFAULT_TOPIC, parent.FullName, HelpConstants.DEFAULT_FILENAME, ctl.HelpNamespace);
				MapDB.ControlMetadata.AddControlMetadataRow(ctl.FullName, DateTime.Now, helpRequestCatchable, grabbersType);
			}
			existingControls.Add(ctl.FullName);
			if (highlighters.ContainsKey(ctl.FullName))
			{
				highlighters.Remove(ctl.FullName);
			}
			if (associatedHighlighter != null)
			{
				highlighters.Add(ctl.FullName, associatedHighlighter);
			}
		}
		catch (Exception exception)
		{
			Logger.LogException(exception, "Caught exception while adding row to database");
		}
	}

	public virtual void AddEntry(string grabbersType, ControlIdentifier ctl, ControlIdentifier parent, bool helpRequestCatchable)
	{
		AddEntry(grabbersType, ctl, parent, helpRequestCatchable, null);
	}

	public virtual void AddEntry(string grabbersType, ControlIdentifier ctl, bool helpRequestCatchable, IControlHighlighter associatedHighlighter)
	{
		AddEntry(grabbersType, ctl, ControlIdentifier.DEFAULTS, helpRequestCatchable, associatedHighlighter);
	}

	public virtual void AddEntry(string grabbersType, ControlIdentifier ctl, bool helpRequestCatchable)
	{
		AddEntry(grabbersType, ctl, ControlIdentifier.DEFAULTS, helpRequestCatchable, null);
	}

	public virtual void ShowHelp(ControlIdentifier ctl, ControlIdentifier[] parents)
	{
		if (state == CoreState.INIT_NOT_CALLED)
		{
			Logger.LogError("Init() wasn't called before this method. Throwing InvalidOperationException.");
			throw new InvalidOperationException("Init() wasn't called before this method. ");
		}
		if (string.IsNullOrEmpty(ctl.Name))
		{
			Logger.LogError("Passed ctl.Name is null or empty. Throwing ArgumentException.");
			throw new ArgumentException("Passed ctl.Name is null or empty.", "ctl");
		}
		if (string.IsNullOrEmpty(ctl.HelpNamespace))
		{
			Logger.LogError("Passed ctl.HelpNamespace is null or empty. Throwing ArgumentException.");
			throw new ArgumentException("Passed ctl.HelpNamespace is null or empty.", "ctl");
		}
		if (string.IsNullOrEmpty(ctl.Type))
		{
			Logger.LogError("Passed ctl.Type is null or empty. Throwing ArgumentException.");
			throw new ArgumentException("Passed ctl.Type is null or empty.", "ctl");
		}
		if (parents == null)
		{
			Logger.LogError("Passed parents array is null. Throwing ArgumentException.");
			throw new ArgumentException("Passed parents array is null.", "parents");
		}
		string foundTopic = HelpConstants.DEFAULT_TOPIC;
		string foundFile = HelpConstants.DEFAULT_FILENAME;
		try
		{
			SearchTopicToOpen(ctl, parents, ref foundTopic, ref foundFile);
		}
		catch (Exception exception)
		{
			Logger.LogException(exception);
			foundTopic = HelpConstants.DEFAULT_TOPIC;
			foundFile = HelpConstants.DEFAULT_FILENAME;
		}
		OpenHelp(foundTopic, foundFile);
	}

	public virtual void ShowEditor()
	{
		if (state == CoreState.INIT_NOT_CALLED)
		{
			Logger.LogError("Init() wasn't called before this method. Throwing InvalidOperationException.");
			throw new InvalidOperationException("Init() wasn't called before this method. ");
		}
		try
		{
			DBCache.LoadAll();
			MapDB.EnforceConstraints = true;
			IOnlineHelpDeveloperUI editor = EditorLocator.Editor;
			if (editor != null)
			{
				loadedMappingUI = editor;
				List<string> list = new List<string>();
				list.AddRange(existingControls);
				if (MapDB.Metadata.Count < 1)
				{
					MapDB.Metadata.AddMetadataRow(DateTime.Now, HelpConstants.DB_VERSION, HelpConstants.DEFAULT_RANGE_VALUE, HelpConstants.DEFAULT_RANGE_VALUE);
				}
				editor.Show(MapDB, list, myAppInfo.ApplicationName, myAppInfo.HelpDirPath);
				editor.HighlightRequest -= ControlHighlightRequest;
				editor.HighlightRequest += ControlHighlightRequest;
			}
			else
			{
				Logger.LogWarning("Unable to open IOnlineHelpDeveloperUI.");
			}
		}
		catch (Exception exception)
		{
			Logger.LogException(exception, "Caught exception in ShowEditor()");
		}
		finally
		{
			existingControls.Clear();
		}
	}

	public virtual void ShowControl(ControlIdentifier ctl, ControlIdentifier[] parents)
	{
		if (state == CoreState.INIT_NOT_CALLED)
		{
			Logger.LogError("Init() wasn't called before this method. Throwing InvalidOperationException.");
			throw new InvalidOperationException("Init() wasn't called before this method. ");
		}
		if (string.IsNullOrEmpty(ctl.Name))
		{
			Logger.LogError("Passed ctl.Name is null or empty. Throwing ArgumentException.");
			throw new ArgumentException("Passed ctl.Name is null or empty.", "ctl");
		}
		if (string.IsNullOrEmpty(ctl.HelpNamespace))
		{
			Logger.LogError("Passed ctl.HelpNamespace is null or empty. Throwing ArgumentException.");
			throw new ArgumentException("Passed ctl.HelpNamespace is null or empty.", "ctl");
		}
		if (string.IsNullOrEmpty(ctl.Type))
		{
			Logger.LogError("Passed ctl.Type is null or empty. Throwing ArgumentException.");
			throw new ArgumentException("Passed ctl.Type is null or empty.", "ctl");
		}
		if (parents == null)
		{
			Logger.LogError("Passed parents array is null. Throwing ArgumentException.");
			throw new ArgumentException("Passed parents array is null.", "parents");
		}
		string foundTopic = HelpConstants.DEFAULT_TOPIC;
		string foundFile = HelpConstants.DEFAULT_FILENAME;
		try
		{
			SearchTopicToOpen(ctl, parents, ref foundTopic, ref foundFile);
		}
		catch (Exception exception)
		{
			Logger.LogException(exception);
			foundTopic = HelpConstants.DEFAULT_TOPIC;
			foundFile = HelpConstants.DEFAULT_FILENAME;
		}
		Clipboard.SetData(DataFormats.Text, ctl.FullName);
		MessageBox.Show("Help request catched for Control: '" + ctl.FullName + "'." + Environment.NewLine + "Control has type: '" + ctl.Type + "'." + Environment.NewLine + "The displayed topic whould be '" + (HelpConstants.DEFAULT_TOPIC.Equals(foundTopic) ? "<default>" : foundTopic) + "'" + Environment.NewLine + "in file '" + foundFile + "'." + Environment.NewLine + Environment.NewLine + "The Control's name has been copied to" + " the clipboard.");
	}

	protected HelpCoreFacade()
	{
	}

	private void ControlHighlightRequest(object sender, HighLightEventArgs e)
	{
		if (currentHighlighter != null)
		{
			currentHighlighter.StopHighlight();
			currentHighlighter = null;
		}
		if (e.CtlToHighlight != null && highlighters.ContainsKey(e.CtlToHighlight.Name))
		{
			currentHighlighter = highlighters[e.CtlToHighlight.Name];
			currentHighlighter.StartHighlight();
		}
	}

	private void SearchTopicToOpen(ControlIdentifier ctl, ControlIdentifier[] parents, ref string foundTopic, ref string foundFile)
	{
		foundTopic = HelpConstants.DEFAULT_TOPIC;
		foundFile = HelpConstants.DEFAULT_FILENAME;
		List<ControlIdentifier> list = new List<ControlIdentifier>();
		list.Add(ctl);
		list.AddRange(parents);
		MappingDB.ControlsRow controlsRow = null;
		MappingDB.TypesRow typesRow = null;
		while (list.Count > 0 && HelpConstants.DEFAULT_TOPIC.Equals(foundTopic))
		{
			try
			{
				DBCache.Load(list[0].HelpNamespace);
			}
			catch (Exception exception)
			{
				Logger.LogException(exception, "Caught exception while lazy reading in database content from file '{0}'", list[0].HelpNamespace);
			}
			controlsRow = MapDB.Controls.FindByName(list[0].FullName);
			if (controlsRow != null)
			{
				typesRow = MapDB.Types.FindByType(controlsRow.Type);
				if (typesRow != null)
				{
					if (HelpConstants.DEFAULT_TOPIC.Equals(controlsRow.Topic) && typesRow.CallingByTypeAllowed)
					{
						foundTopic = typesRow.Topic;
						foundFile = typesRow.HelpFile;
					}
					else
					{
						foundTopic = controlsRow.Topic;
						foundFile = controlsRow.HelpFile;
					}
				}
				else
				{
					Logger.LogWarning("Missing row in database table 'Types'. Missing key: '{0}'.", controlsRow.Type);
					foundTopic = controlsRow.Topic;
					foundFile = controlsRow.HelpFile;
				}
			}
			else
			{
				Logger.LogWarning("Missing row in database table 'Controls'. Missing key: '{0}'.", list[0].FullName);
			}
			list.RemoveAt(0);
		}
	}

	private void OpenHelp(string foundTopic, string foundFile)
	{
		string extension = ((MappingDB.HelpFilesRow)MapDB.HelpFiles.Select("Name = '" + foundFile + "'")[0]).Extension;
		string text = extension.ToUpper(CultureInfo.InvariantCulture);
		string text2 = null;
		text2 = ((!HelpConstants.DEFAULT_FILENAME.Equals(foundFile)) ? myFileLocalizer.GetLocalizedHelpFileName(foundFile, extension) : myFileLocalizer.GetLocalizedDefaultFileName(extension));
		try
		{
			if (HelpOpeners.ContainsKey(text))
			{
				if (HelpConstants.DEFAULT_TOPIC.Equals(foundTopic))
				{
					HelpOpeners[text].OpenDefaultTopic(myAppInfo.HelpDirPath + Path.DirectorySeparatorChar + text2);
				}
				else
				{
					HelpOpeners[text].OpenHelp(foundTopic, myAppInfo.HelpDirPath + Path.DirectorySeparatorChar + text2);
				}
			}
			else
			{
				Logger.LogError("Missing HelpOpener for file extension '{0}'. Now silently ignoring the help request.", text);
			}
		}
		catch (Exception exception)
		{
			Logger.LogException(exception, "Caught exception while opening help. Now silently ignoring the help request.");
		}
	}
}
