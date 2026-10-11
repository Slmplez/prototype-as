using System;
using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

public class AutoCompleteCustomizeEventArgs : EventArgs
{
	private Point m_autoSuggestLocation;

	private string m_textForAutoCompletion;

	private bool m_bHandled;

	private bool m_bCancel;

	private Control m_activeFocusControl;

	public bool Handled
	{
		get
		{
			return m_bHandled;
		}
		set
		{
			m_bHandled = value;
		}
	}

	public bool Cancel
	{
		get
		{
			return m_bCancel;
		}
		set
		{
			m_bCancel = value;
		}
	}

	public Point AutoSuggestLocation
	{
		get
		{
			return m_autoSuggestLocation;
		}
		set
		{
			m_autoSuggestLocation = value;
		}
	}

	public string TextForAutoCompletion
	{
		get
		{
			return m_textForAutoCompletion;
		}
		set
		{
			m_textForAutoCompletion = value;
		}
	}

	public Control ActiveFocusControl
	{
		get
		{
			return m_activeFocusControl;
		}
		set
		{
			m_activeFocusControl = value;
		}
	}

	public AutoCompleteCustomizeEventArgs(string textForAutoCompletion, Point autoSuggestLocation, Control activeFocusControl)
	{
		m_textForAutoCompletion = textForAutoCompletion;
		m_autoSuggestLocation = autoSuggestLocation;
		m_activeFocusControl = activeFocusControl;
	}
}
