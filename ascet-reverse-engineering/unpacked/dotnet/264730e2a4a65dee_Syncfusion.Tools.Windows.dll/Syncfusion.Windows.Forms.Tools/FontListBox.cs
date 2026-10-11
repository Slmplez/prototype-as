using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Drawing;
using Syncfusion.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms.Tools;

[ToolboxBitmap(typeof(FontListBox), "ToolboxIcons.FontListBox.bmp")]
[Description("Represents a ListBox that will list the fonts installed in the system.")]
public class FontListBox : ListBox
{
	private bool multiColumn;

	private int columnWidth;

	private bool m_bUseAutoComplete;

	private string m_sAutoCompleteString = string.Empty;

	private bool m_bSkipAutoCompleteStringReset;

	[Browsable(false)]
	public new bool MultiColumn
	{
		get
		{
			return multiColumn;
		}
		set
		{
			multiColumn = value;
			if (multiColumn)
			{
				throw new ArgumentException("MultiColumn must be false");
			}
		}
	}

	[Browsable(false)]
	public new int ColumnWidth
	{
		get
		{
			return columnWidth;
		}
		set
		{
			if (value > 0)
			{
				columnWidth = value;
			}
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public new Font Font => base.Font;

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public new DrawMode DrawMode => DrawMode.OwnerDrawFixed;

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public new ObjectCollection Items => base.Items;

	[DefaultValue(false)]
	[Description("Gets or sets use auto complete.")]
	[Category("Behavior")]
	public bool UseAutoComplete
	{
		get
		{
			return m_bUseAutoComplete;
		}
		set
		{
			m_bUseAutoComplete = value;
		}
	}

	public FontListBox()
	{
		DoubleBuffered = true;
		base.DrawMode = DrawMode;
		base.Sorted = false;
		ItemHeight = 15;
		Fill();
	}

	public void Fill()
	{
		Items.Clear();
		FontFamily[] families = FontFamily.Families;
		foreach (FontFamily fontFamily in families)
		{
			if (fontFamily.IsStyleAvailable(FontStyle.Regular))
			{
				Items.Add(fontFamily.Name);
			}
		}
	}

	protected override void OnMeasureItem(MeasureItemEventArgs e)
	{
		if (e.Index >= 0)
		{
			string facename = Items[e.Index].ToString();
			Graphics graphics = CreateGraphics();
			e.ItemHeight = (int)graphics.MeasureString(facename, FontUtil.CreateFont(facename, 10f)).Height;
			if (e.ItemHeight > 20)
			{
				e.ItemHeight = 20;
			}
			graphics.Dispose();
		}
		base.OnMeasureItem(e);
	}

	private IntPtr CreateFont(string fontName, int height)
	{
		Syncfusion.Runtime.InteropServices.NativeMethods.LOGFONT lplf = new Syncfusion.Runtime.InteropServices.NativeMethods.LOGFONT
		{
			lfFaceName = fontName,
			lfHeight = height,
			lfCharSet = 1,
			lfItalic = 0,
			lfStrikeOut = 0,
			lfUnderline = 0,
			lfWeight = 300,
			lfQuality = 0
		};
		return Syncfusion.Runtime.InteropServices.NativeMethods.CreateFontIndirect(ref lplf);
	}

	protected override void OnDrawItem(DrawItemEventArgs e)
	{
		if (e.Index >= 0 && Items.Count > 0)
		{
			Graphics graphics = e.Graphics;
			Color color = BackColor;
			Color color2 = ForeColor;
			string text = Items[e.Index].ToString();
			IntPtr intPtr = CreateFont(text, ItemHeight);
			Font font = Font.FromHfont(intPtr);
			Syncfusion.Runtime.InteropServices.NativeMethods.DeleteObject(intPtr);
			if (SelectionMode != SelectionMode.None && (e.State & DrawItemState.Selected) > DrawItemState.None)
			{
				color = SystemColors.Highlight;
				color2 = SystemColors.HighlightText;
			}
			if (!base.Enabled)
			{
				color2 = SystemColors.ControlDark;
			}
			StringFormat stringFormat = (StringFormat)StringFormat.GenericTypographic.Clone();
			Point location = e.Bounds.Location;
			if (RightToLeft.Yes == RightToLeft)
			{
				stringFormat.FormatFlags |= StringFormatFlags.DirectionRightToLeft;
				location.X += e.Bounds.Width;
			}
			graphics.FillRectangle(new SolidBrush(color), e.Bounds);
			PanoseFontFamilyTypes panoseFontFamilyTypes = FontUtil.PanoseFontFamilyType(graphics, font);
			if (panoseFontFamilyTypes == PanoseFontFamilyTypes.PAN_FAMILY_PICTORIAL || panoseFontFamilyTypes == PanoseFontFamilyTypes.PAN_ANY)
			{
				graphics.DrawString(text + "  ", new Font("Arial", 9f), new SolidBrush(color2), location, stringFormat);
				location.X += (int)graphics.MeasureString(text + "  ", FontUtil.CreateFont("Arial", 10f)).Width;
			}
			graphics.DrawString(text, font, new SolidBrush(color2), location, stringFormat);
			if (SelectionMode == SelectionMode.None && (e.State & DrawItemState.Focus) > DrawItemState.None)
			{
				ControlPaint.DrawFocusRectangle(graphics, e.Bounds);
			}
		}
		base.OnDrawItem(e);
	}

	private int FindItem(string autoCompleteString)
	{
		int result = -1;
		string text = autoCompleteString.ToLower();
		for (int i = 0; i < Items.Count; i++)
		{
			string text2 = (string)Items[i];
			if (text2.Length >= text.Length)
			{
				text2 = text2.ToLower();
				int num = text2.IndexOf(text, 0, text.Length);
				if (num != -1)
				{
					result = i;
					break;
				}
			}
		}
		return result;
	}

	protected virtual bool ProcessAutoComplete(Keys keyData)
	{
		bool result = false;
		Keys keys = keyData & Keys.KeyCode;
		bool flag = (Control.ModifierKeys & Keys.Alt) == Keys.Alt;
		if (((keys >= Keys.A && keys <= Keys.Z) || (keys >= Keys.D0 && keys <= Keys.D9) || keyData == Keys.Space) && !flag)
		{
			m_sAutoCompleteString += keys;
			int num = FindItem(m_sAutoCompleteString);
			if (num >= 0)
			{
				m_bSkipAutoCompleteStringReset = true;
				SelectedIndex = num;
			}
			else
			{
				num = FindItem(keys.ToString());
				if (num >= 0)
				{
					m_bSkipAutoCompleteStringReset = true;
					SelectedIndex = num;
					m_sAutoCompleteString = keys.ToString();
				}
				else
				{
					m_sAutoCompleteString = string.Empty;
				}
			}
			result = true;
		}
		else if (keys != Keys.ControlKey && keys != Keys.ShiftKey)
		{
			m_sAutoCompleteString = string.Empty;
		}
		return result;
	}

	protected override bool ProcessCmdKey(ref Message msg, Keys keyData)
	{
		bool flag = false;
		if (keyData == Keys.Next || keyData == Keys.Prior)
		{
			if ((keyData == Keys.Next && SelectedIndex == Items.Count - 1) || (keyData == Keys.Prior && SelectedIndex == 0))
			{
				return false;
			}
			int num = SelectedIndex;
			int num2 = base.Height / GetItemHeight(0) - 1;
			switch (keyData)
			{
			case Keys.Next:
				num += num2;
				break;
			case Keys.Prior:
				num -= num2;
				break;
			}
			if (num != SelectedIndex)
			{
				if (num > Items.Count - 1)
				{
					num = Items.Count - 1;
				}
				if (num < 0)
				{
					num = 0;
				}
				SetSelected(num, value: true);
				SelectedIndex = num;
			}
		}
		if (UseAutoComplete)
		{
			flag = ProcessAutoComplete(keyData);
		}
		if (!flag)
		{
			flag = base.ProcessCmdKey(ref msg, keyData);
		}
		return flag;
	}

	protected override void OnSelectedIndexChanged(EventArgs e)
	{
		if (!m_bSkipAutoCompleteStringReset)
		{
			m_sAutoCompleteString = string.Empty;
		}
		else
		{
			m_bSkipAutoCompleteStringReset = false;
		}
		base.OnSelectedIndexChanged(e);
	}
}
