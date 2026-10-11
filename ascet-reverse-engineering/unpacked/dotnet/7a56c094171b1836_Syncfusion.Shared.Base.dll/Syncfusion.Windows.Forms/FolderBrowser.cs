using System;
using System.ComponentModel;
using System.Drawing;
using System.Runtime.InteropServices;
using System.Security.Permissions;
using System.Windows.Forms;
using Syncfusion.Diagnostics;
using Syncfusion.Documentation;
using Syncfusion.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms;

[ToolboxItemFilter("System.Windows.Forms")]
[Description("Represents a FolderBrowser component which provides a convenient and easy to use object oriented wrapper for the Win32 Shell folder browser API.")]
[ToolboxBitmap(typeof(FolderBrowser), "ToolboxIcons.FolderBrowser.bmp")]
public class FolderBrowser : Component, ICustomTypeDescriptor
{
	private const string c_sFileProtocolPrefix = "file://";

	private const string c_sStartLocation = "StartLocation";

	private const string c_sCustomStartLocation = "CustomStartLocation";

	private FolderBrowserFolder startLocation;

	private FolderBrowserStyles option = FolderBrowserStyles.RestrictToFilesystem;

	private string descriptionText = "";

	private string directoryPath = "";

	private string m_sSelectLocation = string.Empty;

	private string m_sCustomStartLocation = string.Empty;

	private static readonly int MAX_PATH = 260;

	[Category("Behavior")]
	[Description("Specifies the options for the folder browser dialog.")]
	[DefaultValue(typeof(FolderBrowserStyles), "RestrictToFilesystem")]
	public FolderBrowserStyles Style
	{
		get
		{
			return option;
		}
		set
		{
			if ((value & (FolderBrowserStyles.AllowUrls | FolderBrowserStyles.ShowShares)) != 0 && (value & FolderBrowserStyles.NewDialogStyle) == 0)
			{
				throw new ArgumentException("NewDialogStyle must be specified when using ShowShares, ShowAdministrativeShares or AllowUrls", "value");
			}
			if ((value & FolderBrowserStyles.UAHint) != 0 && (value & FolderBrowserStyles.NewDialogStyle) == 0)
			{
				throw new ArgumentException("NewDialogStyle must be specified when using UAHint", "value");
			}
			option = value;
		}
	}

	[Description("Specifies the location of the selected folder.")]
	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public string DirectoryPath => directoryPath;

	[RefreshProperties(RefreshProperties.All)]
	[Description("The location of the root folder from which to start browsing. Functional equivalent of setting the PIDL value.")]
	[Category("Behavior")]
	[DefaultValue(typeof(FolderBrowserFolder), "Desktop")]
	public FolderBrowserFolder StartLocation
	{
		get
		{
			return startLocation;
		}
		set
		{
			new UIPermission(UIPermissionWindow.AllWindows).Demand();
			startLocation = value;
		}
	}

	[DefaultValue("")]
	[Description("Get or set custom start location for showing dialog.")]
	[Category("Behavior")]
	public string CustomStartLocation
	{
		get
		{
			return m_sCustomStartLocation;
		}
		set
		{
			if (m_sCustomStartLocation != value)
			{
				m_sCustomStartLocation = value;
			}
		}
	}

	[Category("Behavior")]
	[Description("Get or set selected location for showing dialog.")]
	[DefaultValue("")]
	public string SelectLocation
	{
		get
		{
			return m_sSelectLocation;
		}
		set
		{
			if (value != m_sSelectLocation)
			{
				m_sSelectLocation = value;
			}
		}
	}

	[Description("Specifies the string displayed above the tree control in the folder browser dialog.")]
	[DefaultValue("")]
	[Category("Appearance")]
	public string Description
	{
		get
		{
			return descriptionText;
		}
		set
		{
			new UIPermission(UIPermissionWindow.AllWindows).Demand();
			descriptionText = ((value == null) ? "" : value);
		}
	}

	[Description("The validate event occurs when an event within the folder browser dialog triggers a call to the validation callback.")]
	public event FolderBrowserCallbackEventHandler FolderBrowserCallback;

	public FolderBrowser()
	{
	}

	public FolderBrowser(IContainer container)
	{
		container.Add(this);
	}

	[DocumentationExclude]
	public bool ValidateProc(IntPtr hwnd, int uMsg, IntPtr lParam, IntPtr lpData)
	{
		if (Enum.IsDefined(typeof(FolderBrowserMessage), uMsg))
		{
			NativeWindowSubclass nativeWindowSubclass = new NativeWindowSubclass();
			nativeWindowSubclass.AssignHandleCustom(hwnd);
			string path = string.Empty;
			if (uMsg == 1 && SelectLocation != string.Empty)
			{
				NativeMethods.PostMessage(hwnd, 1127, new IntPtr(1), Marshal.StringToHGlobalAuto(SelectLocation));
			}
			else
			{
				switch (uMsg)
				{
				case 2:
				{
					IntPtr intPtr = Marshal.AllocHGlobal(MAX_PATH);
					NativeMethods.SHGetPathFromIDList(lParam, intPtr);
					path = Marshal.PtrToStringAuto(intPtr);
					Marshal.FreeHGlobal(intPtr);
					break;
				}
				case 4:
					path = Marshal.PtrToStringAuto(lParam);
					break;
				}
			}
			bool result = true;
			try
			{
				FolderBrowserCallbackEventArgs e = new FolderBrowserCallbackEventArgs(nativeWindowSubclass, (FolderBrowserMessage)uMsg, path);
				OnFolderBrowserCallback(e);
				result = !e.Dismiss;
			}
			catch (Exception ex)
			{
				TraceUtil.TraceExceptionCatched(ex);
				if (!ExceptionManager.RaiseExceptionCatched(null, ex))
				{
					throw;
				}
			}
			finally
			{
				nativeWindowSubclass.ReleaseHandleCustom();
			}
			return result;
		}
		return false;
	}

	protected virtual void OnFolderBrowserCallback(FolderBrowserCallbackEventArgs arg)
	{
		if (this.FolderBrowserCallback == null)
		{
			return;
		}
		this.FolderBrowserCallback(this, arg);
		if (arg.FolderBrowserCallbackSetState != FolderBrowserCallbackSetState.None)
		{
			IntPtr intPtr = IntPtr.Zero;
			if (arg.FolderBrowserCallbackSetState != FolderBrowserCallbackSetState.DisableOK && arg.FolderBrowserCallbackSetState != FolderBrowserCallbackSetState.EnableOK)
			{
				intPtr = Marshal.StringToCoTaskMemUni(arg.BrowseCallbackText);
			}
			switch (arg.FolderBrowserCallbackSetState)
			{
			case FolderBrowserCallbackSetState.DisableOK:
				NativeMethods.SendMessage(arg.Window.Handle, 1125, IntPtr.Zero, (IntPtr)0);
				break;
			case FolderBrowserCallbackSetState.EnableOK:
				NativeMethods.SendMessage(arg.Window.Handle, 1125, IntPtr.Zero, (IntPtr)1);
				break;
			case FolderBrowserCallbackSetState.SetExpanded:
				NativeMethods.SendMessage(arg.Window.Handle, 1130, (IntPtr)1, intPtr);
				break;
			case FolderBrowserCallbackSetState.SetOKText:
				NativeMethods.SendMessage(arg.Window.Handle, 1129, IntPtr.Zero, intPtr);
				break;
			case FolderBrowserCallbackSetState.SetSelection:
				NativeMethods.SendMessage(arg.Window.Handle, 1127, (IntPtr)1, intPtr);
				break;
			case FolderBrowserCallbackSetState.SetStatusText:
				NativeMethods.SendMessage(arg.Window.Handle, 1128, IntPtr.Zero, intPtr);
				break;
			}
			if (intPtr != IntPtr.Zero)
			{
				Marshal.FreeCoTaskMem(intPtr);
			}
		}
	}

	private static NativeMethods.IMalloc GetSHMalloc()
	{
		NativeMethods.IMalloc[] array = new NativeMethods.IMalloc[1];
		NativeMethods.SHGetMalloc(array);
		return array[0];
	}

	public DialogResult ShowDialog()
	{
		return ShowDialog(null);
	}

	public DialogResult ShowDialog(IWin32Window owner)
	{
		IntPtr intPtr = owner?.Handle ?? NativeMethods.GetActiveWindow();
		IntPtr ppidl = IntPtr.Zero;
		if (startLocation == FolderBrowserFolder.CustomStartLocation)
		{
			string text = CustomStartLocation.Trim();
			int length = "file://".Length;
			if (text.Length > length)
			{
				string text2 = text.Substring(0, length).ToLower();
				if (text2 != "file://")
				{
					text = "file://" + text;
				}
			}
			ppidl = NativeMethods.SHSimpleIDListFromPath(Marshal.StringToHGlobalAuto(text));
		}
		else
		{
			NativeMethods.SHGetSpecialFolderLocation(intPtr, (int)startLocation, ref ppidl);
		}
		if ((option & FolderBrowserStyles.NewDialogStyle) != 0)
		{
			Application.OleRequired();
		}
		IntPtr intPtr2 = IntPtr.Zero;
		try
		{
			NativeMethods.BROWSEINFO bROWSEINFO = new NativeMethods.BROWSEINFO();
			bROWSEINFO.pidlRoot = ppidl;
			bROWSEINFO.hwndOwner = intPtr;
			bROWSEINFO.pszDisplayName = Marshal.AllocHGlobal(MAX_PATH);
			bROWSEINFO.lpszTitle = descriptionText;
			bROWSEINFO.ulFlags = (int)option;
			bROWSEINFO.lpfn = ValidateProc;
			bROWSEINFO.lParam = IntPtr.Zero;
			bROWSEINFO.iImage = 0;
			intPtr2 = NativeMethods.SHBrowseForFolder(bROWSEINFO);
			if (intPtr2 == IntPtr.Zero)
			{
				Marshal.FreeHGlobal(bROWSEINFO.pszDisplayName);
				return DialogResult.Cancel;
			}
			IntPtr intPtr3 = Marshal.AllocHGlobal(MAX_PATH);
			if (NativeMethods.SHGetPathFromIDList(intPtr2, intPtr3))
			{
				directoryPath = Marshal.PtrToStringAuto(intPtr3);
			}
			else
			{
				directoryPath = Marshal.PtrToStringAuto(bROWSEINFO.pszDisplayName);
			}
			Marshal.FreeHGlobal(intPtr3);
			Marshal.FreeHGlobal(bROWSEINFO.pszDisplayName);
		}
		finally
		{
			NativeMethods.IMalloc sHMalloc = GetSHMalloc();
			if (Environment.OSVersion.Version.Major < 6 && IntPtr.Size != 8)
			{
				if (ppidl != IntPtr.Zero)
				{
					sHMalloc.Free(ppidl);
				}
				if (intPtr2 != IntPtr.Zero)
				{
					sHMalloc.Free(intPtr2);
				}
			}
			Marshal.ReleaseComObject(sHMalloc);
		}
		return DialogResult.OK;
	}

	object ICustomTypeDescriptor.GetPropertyOwner(PropertyDescriptor pd)
	{
		return this;
	}

	AttributeCollection ICustomTypeDescriptor.GetAttributes()
	{
		return TypeDescriptor.GetAttributes(this, noCustomTypeDesc: true);
	}

	string ICustomTypeDescriptor.GetClassName()
	{
		return TypeDescriptor.GetClassName(this, noCustomTypeDesc: true);
	}

	string ICustomTypeDescriptor.GetComponentName()
	{
		return TypeDescriptor.GetComponentName(this, noCustomTypeDesc: true);
	}

	TypeConverter ICustomTypeDescriptor.GetConverter()
	{
		return TypeDescriptor.GetConverter(this, noCustomTypeDesc: true);
	}

	EventDescriptor ICustomTypeDescriptor.GetDefaultEvent()
	{
		return TypeDescriptor.GetDefaultEvent(this, noCustomTypeDesc: true);
	}

	PropertyDescriptor ICustomTypeDescriptor.GetDefaultProperty()
	{
		return TypeDescriptor.GetDefaultProperty(this, noCustomTypeDesc: true);
	}

	object ICustomTypeDescriptor.GetEditor(Type editorBaseType)
	{
		return TypeDescriptor.GetEditor(this, editorBaseType, noCustomTypeDesc: true);
	}

	EventDescriptorCollection ICustomTypeDescriptor.GetEvents(Attribute[] attributes)
	{
		return TypeDescriptor.GetEvents(this, attributes, noCustomTypeDesc: true);
	}

	EventDescriptorCollection ICustomTypeDescriptor.GetEvents()
	{
		return TypeDescriptor.GetEvents(this, noCustomTypeDesc: true);
	}

	PropertyDescriptorCollection ICustomTypeDescriptor.GetProperties()
	{
		return TypeDescriptor.GetProperties(this, noCustomTypeDesc: true);
	}

	PropertyDescriptorCollection ICustomTypeDescriptor.GetProperties(Attribute[] attributes)
	{
		PropertyDescriptorCollection properties = TypeDescriptor.GetProperties(this, attributes, noCustomTypeDesc: true);
		PropertyDescriptorCollection propertyDescriptorCollection = properties;
		if (propertyDescriptorCollection != null && propertyDescriptorCollection.Count > 0)
		{
			PropertyDescriptor propertyDescriptor = propertyDescriptorCollection["StartLocation"];
			if (propertyDescriptor != null)
			{
				FolderBrowserFolder folderBrowserFolder = (FolderBrowserFolder)propertyDescriptor.GetValue(this);
				propertyDescriptorCollection = new PropertyDescriptorCollection(null);
				int i = 0;
				for (int count = properties.Count; i < count; i++)
				{
					PropertyDescriptor propertyDescriptor2 = properties[i];
					if (FolderBrowserFolder.CustomStartLocation == folderBrowserFolder || "CustomStartLocation" != propertyDescriptor2.Name)
					{
						propertyDescriptorCollection.Add(propertyDescriptor2);
					}
				}
			}
		}
		return propertyDescriptorCollection;
	}
}
