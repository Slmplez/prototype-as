using System;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Windows.Forms.Tools;

namespace Syncfusion.Windows.Forms.ComponentBannerTextProviders;

public class ExtendableTextBox : ExtendableTextBoxBase
{
	private TextBoxBase m_textBox;

	public override IntPtr Handle
	{
		get
		{
			if (!m_textBox.IsHandleCreated)
			{
				return IntPtr.Zero;
			}
			return m_textBox.Handle;
		}
	}

	public override bool Focused => m_textBox.Focused;

	public override Color BackColor => m_textBox.BackColor;

	public override Rectangle ClientRectangle => m_textBox.ClientRectangle;

	public override Font Font => m_textBox.Font;

	public override RightToLeft RightToLeft => m_textBox.RightToLeft;

	public ExtendableTextBox(TextBoxBase textBox)
	{
		m_textBox = textBox;
		if (m_textBox.IsHandleCreated)
		{
			TextBoxHandleCreated(this, EventArgs.Empty);
		}
		m_textBox.TextChanged += TextBoxTextChanged;
		m_textBox.HandleCreated += TextBoxHandleCreated;
	}

	private void TextBoxHandleCreated(object sender, EventArgs e)
	{
		OnHandleCreated(this, e);
		TextBoxTextChanged(this, e);
	}

	private void TextBoxTextChanged(object sender, EventArgs e)
	{
		OnTextBoxTextChanged(this, new ValueChangedEventArgs(null, m_textBox.Text));
	}

	public override void Invalidate()
	{
		m_textBox.Invalidate();
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			m_textBox.TextChanged -= TextBoxTextChanged;
			m_textBox.HandleCreated -= TextBoxHandleCreated;
		}
		base.Dispose(disposing);
	}
}
