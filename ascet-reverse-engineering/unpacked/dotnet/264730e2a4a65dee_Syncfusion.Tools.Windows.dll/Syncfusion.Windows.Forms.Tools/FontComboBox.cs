using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms.Tools;

[ToolboxItem(true)]
[Description("Represents a ComboBox that will show a list of fonts installed in a system.")]
[ToolboxBitmap(typeof(FontComboBox), "ToolboxIcons.FontComboBox.bmp")]
public class FontComboBox : ThemedComboBox
{
	private AutoComplete m_autoComplete;

	private bool m_bUseAutoComplete;

	[Description("Indicates the auto complete behaviour. This property functions only when the DropDownStyle is set to DropDown.")]
	[Category("Behaviour")]
	[DefaultValue(false)]
	public bool UseAutoComplete
	{
		get
		{
			return m_bUseAutoComplete;
		}
		set
		{
			if (m_bUseAutoComplete != value)
			{
				m_bUseAutoComplete = value;
				m_autoComplete.SetAutoComplete(this, value ? AutoCompleteModes.AutoAppend : AutoCompleteModes.Disabled);
			}
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public new DrawMode DrawMode => DrawMode.OwnerDrawFixed;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public new ObjectCollection Items => base.Items;

	public FontComboBox()
	{
		base.DrawMode = DrawMode;
		base.Sorted = false;
		m_autoComplete = new AutoComplete();
		m_autoComplete.SetAutoComplete(this, AutoCompleteModes.Disabled);
		Fill();
	}

	public void Fill()
	{
		Items.Clear();
		m_autoComplete.TableData.Rows.Clear();
		FontFamily[] families = FontFamily.Families;
		foreach (FontFamily fontFamily in families)
		{
			if (fontFamily.IsStyleAvailable(FontStyle.Regular))
			{
				Items.Add(fontFamily.Name);
				m_autoComplete.AddHistoryItem(fontFamily.Name);
			}
		}
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			Items.Clear();
			if (m_autoComplete != null)
			{
				m_autoComplete.Dispose();
				m_autoComplete = null;
			}
		}
		base.Dispose(disposing);
	}

	protected override void DrawItemText(DrawItemEventArgs e)
	{
		if (e.Index >= 0)
		{
			Graphics graphics = e.Graphics;
			Color foreColor = ForeColor;
			string text = Items[e.Index].ToString();
			IntPtr intPtr = CreateFont(text, base.ItemHeight);
			Font font = Font.FromHfont(intPtr);
			Syncfusion.Runtime.InteropServices.NativeMethods.DeleteObject(intPtr);
			StringFormat stringFormat = (StringFormat)StringFormat.GenericTypographic.Clone();
			Point location = e.Bounds.Location;
			if (RightToLeft.Yes == RightToLeft)
			{
				stringFormat.FormatFlags |= StringFormatFlags.DirectionRightToLeft;
				location.X += e.Bounds.Width;
			}
			graphics.DrawString(text, font, new SolidBrush(foreColor), location, stringFormat);
		}
	}

	private Color ConvertColor(Color color)
	{
		return Color.FromArgb(0, color.B, color.G, color.R);
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

	protected override void OnDropDown(EventArgs e)
	{
		base.OnDropDown(e);
	}
}
