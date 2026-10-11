using System;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms;

[DocumentationExclude]
public class NativeWindowSubclass : NativeWindow
{
	private NativeWindow cachedWindow;

	private IntPtr cachedHandle;

	private Control controlSubclassed;

	private Control SubclassedControl
	{
		get
		{
			return controlSubclassed;
		}
		set
		{
			if (controlSubclassed == value)
			{
				return;
			}
			if (controlSubclassed != null)
			{
				controlSubclassed.Disposed -= Control_Disposed;
				controlSubclassed.HandleCreated -= Control_HandleCreated;
				MyHandle = IntPtr.Zero;
			}
			controlSubclassed = value;
			if (controlSubclassed != null)
			{
				controlSubclassed.Disposed += Control_Disposed;
				if (controlSubclassed.IsHandleCreated)
				{
					AssignHandleCustom(controlSubclassed.Handle);
				}
				controlSubclassed.HandleCreated += Control_HandleCreated;
			}
		}
	}

	private IntPtr MyHandle
	{
		set
		{
			if (base.Handle != value)
			{
				if (base.Handle != IntPtr.Zero)
				{
					DoReleaseHandle();
					AfterReleaseHandle();
				}
				if (value != IntPtr.Zero)
				{
					BeforeAssignHandle(value);
					AssignHandle(value);
				}
			}
		}
	}

	private void BeforeAssignHandle(IntPtr handle)
	{
		cachedWindow = NativeWindow.FromHandle(handle);
		cachedHandle = handle;
	}

	public void AfterReleaseHandle()
	{
		if (cachedWindow is NativeWindowSubclass)
		{
			((NativeWindowSubclass)cachedWindow).AfterReleaseHandle();
		}
		ResetCachedWindow();
		cachedHandle = IntPtr.Zero;
	}

	public void DoReleaseHandle()
	{
		if (base.Handle != IntPtr.Zero)
		{
			ReleaseHandle();
			if (cachedWindow is NativeWindowSubclass)
			{
				((NativeWindowSubclass)cachedWindow).DoReleaseHandle();
			}
			else if (cachedWindow != null)
			{
				cachedWindow.ReleaseHandle();
			}
		}
	}

	private void ResetCachedWindow()
	{
		if (cachedWindow != null)
		{
			if (cachedWindow is NativeWindowSubclass)
			{
				((NativeWindowSubclass)cachedWindow).AssignHandleCustom(cachedHandle);
			}
			else
			{
				cachedWindow.AssignHandle(cachedHandle);
			}
		}
	}

	public void AssignHandleCustom(Control control)
	{
		SubclassedControl = control;
	}

	private void Control_HandleCreated(object sender, EventArgs e)
	{
		Control subclassedControl = SubclassedControl;
		SubclassedControl = null;
		SubclassedControl = subclassedControl;
	}

	private void Control_Disposed(object sender, EventArgs e)
	{
		SubclassedControl = null;
	}

	public void AssignHandleCustom(IntPtr handle)
	{
		MyHandle = handle;
	}

	public void ReleaseHandleCustom()
	{
		SubclassedControl = null;
		MyHandle = IntPtr.Zero;
	}
}
