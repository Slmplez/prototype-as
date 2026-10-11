using System;
using System.ComponentModel;
using System.Drawing;

namespace Syncfusion.Windows.Forms.Tools;

[ToolboxItem(false)]
public class DTField
{
	private FieldDefinition definition;

	private int maxWidth;

	private int maximum = 10000;

	private Point location;

	private string text;

	private DateTimePickerAdv picker;

	private int width;

	private int textWidth;

	private int height;

	private bool startedTyping;

	private int m_iInsertPosYear;

	internal bool M_bSkipYearCheck;

	private bool rightAlign;

	private static StringFormat s_sfMeasure;

	internal bool RightAlign
	{
		get
		{
			return rightAlign;
		}
		set
		{
			rightAlign = value;
		}
	}

	internal bool StartedTyping
	{
		get
		{
			return startedTyping;
		}
		set
		{
			startedTyping = value;
		}
	}

	internal int InsertPosYear
	{
		get
		{
			return m_iInsertPosYear;
		}
		set
		{
			if (m_iInsertPosYear != value)
			{
				m_iInsertPosYear = value;
			}
		}
	}

	internal int Width
	{
		get
		{
			return width;
		}
		set
		{
			width = value;
		}
	}

	internal int Height
	{
		get
		{
			return height;
		}
		set
		{
			height = value;
		}
	}

	internal Rectangle Bounds
	{
		get
		{
			return new Rectangle(location.X, location.Y, width, height);
		}
		set
		{
			location = value.Location;
			width = value.Width;
			height = value.Height;
		}
	}

	public string Text
	{
		get
		{
			return text;
		}
		set
		{
			if (text != value)
			{
				text = value;
				OnTextChanged(EventArgs.Empty);
			}
			Text_Changed();
		}
	}

	internal Rectangle TextRectangle => new Rectangle(MiddleLocation, new Size(textWidth, height));

	internal Point MiddleLocation
	{
		get
		{
			if (!rightAlign)
			{
				return new Point(location.X + (width - textWidth) / 2, location.Y);
			}
			return new Point(location.X + width - textWidth, location.Y);
		}
	}

	internal Point Location
	{
		get
		{
			return location;
		}
		set
		{
			location = value;
		}
	}

	internal int Maximum
	{
		get
		{
			return maximum;
		}
		set
		{
			maximum = value;
		}
	}

	internal int MaxWidth
	{
		get
		{
			return maxWidth;
		}
		set
		{
			maxWidth = value;
		}
	}

	public FieldDefinition Definition
	{
		get
		{
			return definition;
		}
		set
		{
			definition = value;
		}
	}

	public event EventHandler TextChanged;

	protected virtual void OnTextChanged(EventArgs e)
	{
		if (this.TextChanged != null)
		{
			this.TextChanged(this, e);
		}
	}

	public DTField(FieldDefinition fd, DateTimePickerAdv dtPicker)
	{
		definition = fd;
		picker = dtPicker;
	}

	private void Text_Changed()
	{
		if (text == string.Empty)
		{
			width = (height = 0);
			return;
		}
		Graphics graphics = picker.CreateGraphics();
		Size size = graphics.MeasureString(Text, picker.Font).ToSize();
		int num = size.Width;
		if (text.Trim() == text)
		{
			num = MeasureString(graphics, text, picker.Font) - 2;
		}
		Width = (textWidth = num);
		Height = size.Height;
		graphics.Dispose();
	}

	internal void ResetInsertYearMode()
	{
		InsertPosYear = 0;
		M_bSkipYearCheck = false;
	}

	internal bool ProcessNumberKeyYear(int val)
	{
		if (picker.ReadOnly)
		{
			return false;
		}
		int num = 4;
		string text = Text;
		InsertPosYear++;
		text += val;
		if (text.Length > num)
		{
			text = text.Remove(0, text.Length - num);
		}
		Text = text;
		bool result = false;
		if (InsertPosYear >= num)
		{
			ResetInsertYearMode();
			result = true;
		}
		else
		{
			M_bSkipYearCheck = true;
		}
		return result;
	}

	private int GetCurrentValue()
	{
		int result = -1;
		if (picker != null)
		{
			if (Definition.Type == FieldType.Month)
			{
				result = picker.Value.Month;
			}
			else if (Definition.Type == FieldType.Day && Definition.DayFormat == DayFormat.FullName)
			{
				result = picker.Value.Day;
			}
		}
		return result;
	}

	internal bool ProcessNumberKey(int val)
	{
		if (picker.ReadOnly)
		{
			return false;
		}
		bool flag = false;
		if (!startedTyping)
		{
			startedTyping = true;
			Text = "0";
			flag = true;
		}
		int num;
		try
		{
			num = int.Parse(Text);
		}
		catch
		{
			num = GetCurrentValue();
			if (num == -1)
			{
				return false;
			}
		}
		bool flag2 = num == 0;
		num = ((num * 10 + val <= maximum) ? (num * 10 + val) : val);
		Text = ((!flag2 || (picker.AutoForwarding && flag)) ? string.Empty : "0") + num;
		if (num * 10 > maximum)
		{
			return true;
		}
		if (picker.AutoForwarding)
		{
			return Text.Length == maximum.ToString().Length;
		}
		return num.ToString().Length == maximum.ToString().Length;
	}

	internal static int MeasureString(Graphics graphics, string text, Font font)
	{
		if (s_sfMeasure == null)
		{
			s_sfMeasure = new StringFormat();
		}
		lock (s_sfMeasure)
		{
			RectangleF layoutRect = new RectangleF(0f, 0f, 1000f, 1000f);
			CharacterRange[] measurableCharacterRanges = new CharacterRange[1]
			{
				new CharacterRange(0, text.Length)
			};
			Region[] array = new Region[1];
			s_sfMeasure.SetMeasurableCharacterRanges(measurableCharacterRanges);
			array = graphics.MeasureCharacterRanges(text, font, layoutRect, s_sfMeasure);
			return (int)array[0].GetBounds(graphics).Right;
		}
	}
}
