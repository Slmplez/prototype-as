using System;
using System.Windows.Forms;
using Syncfusion.Windows.Forms.Tools.Win32API;

namespace Syncfusion.Windows.Forms.Tools;

public class NativeWindowBase : INativeMessageFilter2, INativeMessageFilter, IDisposable
{
	private NativeMessageHandler m_handler;

	~NativeWindowBase()
	{
		Dispose(bDisposing: false);
	}

	public void AssignHandle(IntPtr hWnd)
	{
		if (m_handler == null)
		{
			if (WindowsAPI.IsWindow(hWnd) != 0)
			{
				m_handler = new NativeMessageHandler();
				m_handler.Assign(hWnd);
				m_handler.MessageFilter = this;
				return;
			}
			throw new InvalidOperationException("Invalid window handle");
		}
		throw new InvalidOperationException("Handle is already assigned");
	}

	public void ReleaseHandle()
	{
		if (m_handler != null)
		{
			m_handler.MessageFilter = null;
			m_handler = null;
		}
	}

	public virtual bool ProcessMessage(ref Message m)
	{
		return false;
	}

	public virtual void PostProcessMessage(ref Message m)
	{
	}

	public void Dispose()
	{
		Dispose(bDisposing: true);
		GC.SuppressFinalize(this);
	}

	protected virtual void Dispose(bool bDisposing)
	{
		if (bDisposing)
		{
			ReleaseHandle();
		}
	}
}
