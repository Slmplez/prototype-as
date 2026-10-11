using System;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Windows.Forms.Tools;

namespace Syncfusion.Windows.Forms.ComponentBannerTextProviders;

public abstract class ExtendableTextBoxBase : IExtendableTexBox, IDisposable
{
	private EventHandler HandleCreated;

	private ValueChangedEventHandler TextBoxTextChanged;

	public abstract IntPtr Handle { get; }

	public abstract bool Focused { get; }

	public abstract Color BackColor { get; }

	public abstract Rectangle ClientRectangle { get; }

	public abstract Font Font { get; }

	public abstract RightToLeft RightToLeft { get; }

	event EventHandler IExtendableTexBox.HandleCreated
	{
		add
		{
			HandleCreated = (EventHandler)Delegate.Combine(HandleCreated, value);
		}
		remove
		{
			Delegate.Remove(HandleCreated, value);
		}
	}

	event ValueChangedEventHandler IExtendableTexBox.TextBoxTextChanged
	{
		add
		{
			TextBoxTextChanged = (ValueChangedEventHandler)Delegate.Combine(TextBoxTextChanged, value);
		}
		remove
		{
			Delegate.Remove(TextBoxTextChanged, value);
		}
	}

	protected virtual void OnHandleCreated(object sender, EventArgs e)
	{
		if (HandleCreated != null)
		{
			HandleCreated(sender, e);
		}
	}

	protected virtual void OnTextBoxTextChanged(object sender, ValueChangedEventArgs e)
	{
		if (TextBoxTextChanged != null)
		{
			TextBoxTextChanged(sender, e);
		}
	}

	public abstract void Invalidate();

	protected virtual void Dispose(bool disposing)
	{
	}

	public void Dispose()
	{
		Dispose(disposing: true);
	}

	~ExtendableTextBoxBase()
	{
		Dispose(disposing: false);
		GC.SuppressFinalize(this);
	}
}
