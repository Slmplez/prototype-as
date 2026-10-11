using System;

namespace Syncfusion.Windows.Forms.Tools;

public class CaptionButtonOptionsTable : IDisposable
{
	protected CaptionButtonsCollection m_Buttons = new CaptionButtonsCollection();

	protected CaptionButtonOptionsCollection m_Options = new CaptionButtonOptionsCollection();

	protected bool m_isDisposed;

	public bool IsDisposed => m_isDisposed;

	public CaptionButtonsCollection Buttons => m_Buttons;

	public CaptionButtonOptionsCollection Options => m_Options;

	public void Add(CaptionButton button, CaptionButtonOptions options)
	{
		if (button == null)
		{
			throw new ArgumentNullException("Caption button.");
		}
		if (options == null)
		{
			throw new ArgumentNullException("Caption button options.");
		}
		m_Buttons.Add(button);
		m_Options.Add(options);
	}

	public void RemoveAt(int index)
	{
		if (index < 0 || index >= m_Buttons.Count || index >= m_Options.Count)
		{
			throw new ArgumentException("Invalid index.");
		}
		m_Buttons.RemoveAt(index);
		m_Options.RemoveAt(index);
	}

	public void Clear()
	{
		m_Buttons.Clear();
		m_Options.Clear();
	}

	public void Dispose()
	{
		if (!m_isDisposed)
		{
			m_Buttons.Dispose();
			m_Options.Clear();
			m_Buttons = null;
			m_Options = null;
			m_isDisposed = true;
		}
	}
}
