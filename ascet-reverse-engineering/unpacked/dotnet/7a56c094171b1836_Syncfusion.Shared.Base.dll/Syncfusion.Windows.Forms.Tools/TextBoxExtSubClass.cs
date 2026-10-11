using System;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

internal class TextBoxExtSubClass : NativeWindowSubclass
{
	private TextBoxExt m_textBoxExt;

	private bool m_bIsListening = true;

	public TextBoxExtSubClass(TextBoxExt textBoxExt)
	{
		if (textBoxExt == null)
		{
			throw new ArgumentNullException("textBoxExt");
		}
		m_textBoxExt = textBoxExt;
	}

	public void StopListening()
	{
		m_bIsListening = false;
		m_textBoxExt = null;
	}

	protected override void WndProc(ref Message m)
	{
		if (m_bIsListening && m_textBoxExt != null && (m.Msg == 307 || m.Msg == 312) && m.LParam == m_textBoxExt.Handle && m_textBoxExt.ShowOverflowIndicator && m_textBoxExt.GetOverflowIndicatorState() != m_textBoxExt.OverFlowIndicatorLastState)
		{
			m_textBoxExt.UpdateNCArea();
		}
		base.WndProc(ref m);
	}
}
