using System;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms;

public class FolderBrowserCallbackEventArgs : EventArgs
{
	private NativeWindow window;

	private string path;

	private FolderBrowserMessage browseForFolderMessage;

	private bool dismissDialog;

	private FolderBrowserCallbackSetState callbackState;

	private string callbackText = string.Empty;

	public NativeWindow Window => window;

	public string Path => path;

	public FolderBrowserMessage FolderBrowserMessage => browseForFolderMessage;

	public bool Dismiss
	{
		get
		{
			return dismissDialog;
		}
		set
		{
			dismissDialog = value;
		}
	}

	public FolderBrowserCallbackSetState FolderBrowserCallbackSetState
	{
		get
		{
			return callbackState;
		}
		set
		{
			callbackState = value;
		}
	}

	public string BrowseCallbackText
	{
		get
		{
			return callbackText;
		}
		set
		{
			callbackText = value;
		}
	}

	public FolderBrowserCallbackEventArgs(NativeWindow window, FolderBrowserMessage browseForFolderMessage, string path)
	{
		this.window = window;
		this.path = path;
		this.browseForFolderMessage = browseForFolderMessage;
	}
}
