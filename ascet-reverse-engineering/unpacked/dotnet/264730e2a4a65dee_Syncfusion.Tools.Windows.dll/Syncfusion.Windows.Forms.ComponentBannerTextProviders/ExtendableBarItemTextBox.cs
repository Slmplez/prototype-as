using System;
using System.Collections;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Windows.Forms.Grid;
using Syncfusion.Windows.Forms.Tools;
using Syncfusion.Windows.Forms.Tools.XPMenus;

namespace Syncfusion.Windows.Forms.ComponentBannerTextProviders;

internal abstract class ExtendableBarItemTextBox : ExtendableTextBoxBase
{
	protected BarItem m_barItem;

	protected IDictionary m_textBox2ETB = new Hashtable();

	protected IExtendableTexBox m_etb;

	protected BannerTextProvider m_provider;

	public override IntPtr Handle
	{
		get
		{
			if (m_etb == null)
			{
				return IntPtr.Zero;
			}
			return m_etb.Handle;
		}
	}

	public override bool Focused
	{
		get
		{
			if (m_etb == null)
			{
				return false;
			}
			return m_etb.Focused;
		}
	}

	public override Color BackColor
	{
		get
		{
			if (m_etb == null)
			{
				return SystemColors.Window;
			}
			return m_etb.BackColor;
		}
	}

	public override Rectangle ClientRectangle
	{
		get
		{
			if (m_etb == null)
			{
				return Rectangle.Empty;
			}
			return m_etb.ClientRectangle;
		}
	}

	public override Font Font
	{
		get
		{
			if (m_etb == null)
			{
				return SystemFonts.DefaultFont;
			}
			return m_etb.Font;
		}
	}

	public override RightToLeft RightToLeft
	{
		get
		{
			RightToLeft result = RightToLeft.Inherit;
			if (m_etb != null)
			{
				result = m_etb.RightToLeft;
			}
			else if (m_barItem.Manager != null)
			{
				result = m_barItem.Manager.RightToLeft;
			}
			return result;
		}
	}

	public ExtendableBarItemTextBox(BarItem barItem, BannerTextProvider provider)
	{
		m_barItem = barItem;
		m_provider = provider;
	}

	protected void AdwiseTextBoxEvents(TextBoxBase textBoxBase)
	{
		textBoxBase.Disposed += TextBoxDisposed;
	}

	protected void UnadwiseTextBoxEvents(TextBoxBase textBoxBase)
	{
		textBoxBase.Disposed -= TextBoxDisposed;
	}

	private void TextBoxDisposed(object sender, EventArgs e)
	{
		TextBoxBase textBoxBase = (TextBoxBase)sender;
		IExtendableTexBox etb = (IExtendableTexBox)m_textBox2ETB[textBoxBase];
		m_textBox2ETB.Remove(textBoxBase);
		UnadwiseTextBoxEvents(textBoxBase);
		UndwiseExtendableTextBoxEvents(etb);
	}

	protected void AdwiseExtendableTextBoxEvents(IExtendableTexBox etb)
	{
		if (etb.Handle != IntPtr.Zero)
		{
			ExtandbaleTextBoxHandleCreated(this, EventArgs.Empty);
		}
		etb.TextBoxTextChanged += ExtendableTextBoxTextChanged;
		etb.HandleCreated += ExtandbaleTextBoxHandleCreated;
	}

	protected void UndwiseExtendableTextBoxEvents(IExtendableTexBox etb)
	{
		etb.TextBoxTextChanged -= ExtendableTextBoxTextChanged;
		etb.HandleCreated -= ExtandbaleTextBoxHandleCreated;
	}

	protected virtual void ExtandbaleTextBoxHandleCreated(object sender, EventArgs e)
	{
		OnHandleCreated(this, e);
	}

	protected virtual void ExtendableTextBoxTextChanged(object sender, ValueChangedEventArgs e)
	{
		OnTextBoxTextChanged(this, e);
	}

	protected virtual void TextBoxBarItemAfterPopupItemPaint(object sender, PopupItemPaintEventArgs drawItemInfo)
	{
		if (drawItemInfo.Element == DrawElement.TextBox || drawItemInfo.Element == DrawElement.ComboBox)
		{
			BannerTextInfo bannerText = m_provider.GetBannerText(m_barItem);
			GridStyleInfo style = drawItemInfo.Style;
			if (bannerText != null && BannerTextProvider.TextBoxExtender.IsBannerTextVisible(bannerText, m_etb != null && m_etb.Focused, style.Text.Length == 0))
			{
				Rectangle bounds = drawItemInfo.Bounds;
				GridMargins gridMargins = style.TextMargins.ToMargins();
				bounds.X += gridMargins.Width + gridMargins.Left;
				bounds.Width -= 2 * gridMargins.Width;
				BannerTextProvider.TextBoxExtender.DrawBannerText(drawItemInfo.Graphics, bannerText, style.BackColor, style.Font.GdipFont, style.RightToLeft, bounds);
				drawItemInfo.Handled = true;
			}
		}
	}

	protected void OnTextBoxBound(TextBoxBase textBoxBase)
	{
		if (!m_textBox2ETB.Contains(textBoxBase))
		{
			IExtendableTexBox extendableTexBox = new ExtendableTextBox(textBoxBase);
			m_textBox2ETB.Add(textBoxBase, extendableTexBox);
			if (m_etb == null)
			{
				m_etb = extendableTexBox;
				AdwiseExtendableTextBoxEvents(m_etb);
			}
			else
			{
				BannerTextProvider2.Extend(m_provider, this, extendableTexBox);
			}
		}
		ExtendableTextBoxTextChanged(textBoxBase, new ValueChangedEventArgs(null, textBoxBase.Text));
	}

	public override void Invalidate()
	{
		if (m_etb != null)
		{
			m_etb.Invalidate();
		}
	}
}
