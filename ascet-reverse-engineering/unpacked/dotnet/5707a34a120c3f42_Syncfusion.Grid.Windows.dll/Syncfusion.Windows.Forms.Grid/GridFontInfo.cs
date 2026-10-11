using System;
using System.ComponentModel;
using System.Diagnostics;
using System.Drawing;
using System.Drawing.Design;
using System.Windows.Forms;
using Syncfusion.Diagnostics;
using Syncfusion.Documentation;
using Syncfusion.Drawing;
using Syncfusion.Styles;

namespace Syncfusion.Windows.Forms.Grid;

[Editor(typeof(GridFontInfoEditor), typeof(UITypeEditor))]
[TypeConverter(typeof(StyleInfoBaseConverter))]
public class GridFontInfo : GridStyleInfoSubObject
{
	private const int MaxOrientation = 360;

	private const int MaxSize = 512;

	private const float MaxSizeF = 128f;

	private const int MaxUnit = 6;

	private const int AllFlags = int.MaxValue;

	private const char separator = ';';

	private const int FW_BOLD = 700;

	private static GridFontInfo defaultFont;

	private WeakReference _font;

	public static GridFontInfo Default
	{
		[DebuggerStepThrough]
		get
		{
			if (defaultFont == null)
			{
				defaultFont = new GridFontInfo();
				Font font = Control.DefaultFont;
				defaultFont.Facename = font.FontFamily.Name;
				defaultFont.Size = font.Size;
				defaultFont.Unit = font.Unit;
				defaultFont.FontStyle = font.Style;
			}
			return defaultFont;
		}
	}

	[Browsable(false)]
	[NotifyParentProperty(true)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public Font GdipFont
	{
		get
		{
			Font font = null;
			if (_font != null && _font.IsAlive)
			{
				font = (Font)_font.Target;
			}
			if (font == null)
			{
				_font = new WeakReference(font = GetGdipFont());
			}
			return font;
		}
	}

	[MergableProperty(true)]
	[NotifyParentProperty(true)]
	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public FontStyle FontStyle
	{
		[DebuggerStepThrough]
		get
		{
			return GetFontStyle();
		}
		[DebuggerStepThrough]
		set
		{
			SetFontStyle(value);
			try
			{
				TestGdipFont();
			}
			catch (Exception innerException)
			{
				throw new Exception(FontStyle.ToString() + " is not available for " + Facename, innerException);
			}
		}
	}

	[Browsable(true)]
	[Editor("System.Drawing.Design.FontNameEditor, System.Drawing.Design", "System.Drawing.Design.UITypeEditor, System.Drawing, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	[TypeConverter(typeof(FontConverter.FontNameConverter))]
	[Description("Gets or sets the face name of this font object.")]
	[SRCategory("StyleCategoryAppearance")]
	[NotifyParentProperty(true)]
	public string Facename
	{
		[DebuggerStepThrough]
		get
		{
			return (string)GetValue(GridFontInfoStore.FacenameProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridFontInfoStore.FacenameProperty, value);
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool HasFacename
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridFontInfoStore.FacenameProperty);
		}
	}

	[Description("Gets or sets the size in pixels of this font object.")]
	[Browsable(true)]
	[SRCategory("StyleCategoryAppearance")]
	[NotifyParentProperty(true)]
	public float Size
	{
		[DebuggerStepThrough]
		get
		{
			return (float)GetShortValue(GridFontInfoStore.SizeProperty) / 4f;
		}
		[DebuggerStepThrough]
		set
		{
			if (value < 0f || value > 128f)
			{
				throw new ArgumentOutOfRangeException("value", value, $"Size must be between 0 and {128f}");
			}
			SetValue(GridFontInfoStore.SizeProperty, (short)(value * 4f));
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool HasSize
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridFontInfoStore.SizeProperty);
		}
	}

	[Description("Gets or sets the orientation of this font object.")]
	[Browsable(true)]
	[SRCategory("StyleCategoryAppearance")]
	[NotifyParentProperty(true)]
	public int Orientation
	{
		[DebuggerStepThrough]
		get
		{
			return GetShortValue(GridFontInfoStore.OrientationProperty);
		}
		[DebuggerStepThrough]
		set
		{
			while (value < 0)
			{
				value += 360;
			}
			while (value >= 360)
			{
				value -= 360;
			}
			SetValue(GridFontInfoStore.OrientationProperty, value);
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool HasOrientation
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridFontInfoStore.OrientationProperty);
		}
	}

	[Description("Gets or sets a value that indicates whether this font object is bold.")]
	[NotifyParentProperty(true)]
	[Browsable(true)]
	[SRCategory("StyleCategoryAppearance")]
	public bool Bold
	{
		[DebuggerStepThrough]
		get
		{
			return GetShortValue(GridFontInfoStore.BoldProperty) != 0;
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridFontInfoStore.BoldProperty, value ? 1 : 0);
			try
			{
				TestGdipFont();
			}
			catch (Exception innerException)
			{
				throw new Exception(FontStyle.ToString() + " is not available for " + Facename, innerException);
			}
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool HasBold
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridFontInfoStore.BoldProperty);
		}
	}

	[NotifyParentProperty(true)]
	[Description("Gets or sets a value that indicates whether this font object is italic.")]
	[SRCategory("StyleCategoryAppearance")]
	[Browsable(true)]
	public bool Italic
	{
		[DebuggerStepThrough]
		get
		{
			return GetShortValue(GridFontInfoStore.ItalicProperty) != 0;
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridFontInfoStore.ItalicProperty, value ? 1 : 0);
			try
			{
				TestGdipFont();
			}
			catch (Exception innerException)
			{
				throw new Exception(FontStyle.ToString() + " is not available for " + Facename, innerException);
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool HasItalic
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridFontInfoStore.ItalicProperty);
		}
	}

	[NotifyParentProperty(true)]
	[Browsable(true)]
	[Description("Gets or sets a value that indicates whether this font object is underlined.")]
	[SRCategory("StyleCategoryAppearance")]
	public bool Underline
	{
		[DebuggerStepThrough]
		get
		{
			return GetShortValue(GridFontInfoStore.UnderlineProperty) != 0;
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridFontInfoStore.UnderlineProperty, value ? 1 : 0);
			try
			{
				TestGdipFont();
			}
			catch (Exception innerException)
			{
				throw new Exception(FontStyle.ToString() + " is not available for " + Facename, innerException);
			}
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool HasUnderline
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridFontInfoStore.UnderlineProperty);
		}
	}

	[NotifyParentProperty(true)]
	[Description("Gets or sets a value that indicates whether this font object should draw a horizontal line through the text.")]
	[Browsable(true)]
	[SRCategory("StyleCategoryAppearance")]
	public bool Strikeout
	{
		[DebuggerStepThrough]
		get
		{
			return GetShortValue(GridFontInfoStore.StrikeoutProperty) != 0;
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridFontInfoStore.StrikeoutProperty, value ? 1 : 0);
			try
			{
				TestGdipFont();
			}
			catch (Exception innerException)
			{
				throw new Exception(FontStyle.ToString() + " is not available for " + Facename, innerException);
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool HasStrikeout
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridFontInfoStore.StrikeoutProperty);
		}
	}

	[TypeConverter(typeof(FontConverter.FontUnitConverter))]
	[Description("Gets or sets the graphics unit of this font object.")]
	[SRCategory("StyleCategoryAppearance")]
	[Browsable(true)]
	[NotifyParentProperty(true)]
	public GraphicsUnit Unit
	{
		[DebuggerStepThrough]
		get
		{
			return (GraphicsUnit)GetShortValue(GridFontInfoStore.UnitProperty);
		}
		[DebuggerStepThrough]
		set
		{
			if (!Enum.IsDefined(typeof(GraphicsUnit), value))
			{
				throw new InvalidEnumArgumentException("value", (int)value, typeof(GraphicsUnit));
			}
			SetValue(GridFontInfoStore.UnitProperty, (short)value);
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool HasUnit
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridFontInfoStore.UnitProperty);
		}
	}

	internal static object CreateObject(StyleInfoSubObjectIdentity identity, object store)
	{
		if (store != null)
		{
			return new GridFontInfo(identity, store as GridFontInfoStore);
		}
		return new GridFontInfo(identity);
	}

	public override void Dispose()
	{
		_font = null;
		base.Dispose();
	}

	[DebuggerStepThrough]
	public GridFontInfo()
		: base(new GridFontInfoStore())
	{
	}

	[DebuggerStepThrough]
	public GridFontInfo(StyleInfoSubObjectIdentity identity)
		: base(identity, new GridFontInfoStore())
	{
	}

	[DebuggerStepThrough]
	public GridFontInfo(StyleInfoSubObjectIdentity identity, GridFontInfoStore store)
		: base(identity, store)
	{
	}

	[DebuggerStepThrough]
	public GridFontInfo(Font font)
		: base(new GridFontInfoStore())
	{
		Facename = font.FontFamily.Name;
		FontStyle = font.Style;
		if (font.Unit == GraphicsUnit.Inch && font.Size < 8f)
		{
			Size = font.SizeInPoints;
			Unit = GraphicsUnit.Point;
		}
		else
		{
			Size = font.Size;
			Unit = font.Unit;
		}
	}

	[DebuggerStepThrough]
	public override IStyleInfoSubObject MakeCopy(StyleInfoBase newOwner, StyleInfoProperty sip)
	{
		return new GridFontInfo(newOwner.CreateSubObjectIdentity(sip), (GridFontInfoStore)base.Store.Clone());
	}

	public static float SizeInWorldUnit(Font font)
	{
		if (font.Unit == GraphicsUnit.World)
		{
			return font.Size;
		}
		float sizeInPoints = font.SizeInPoints;
		Font font2 = null;
		try
		{
			font2 = new Font(font.FontFamily, sizeInPoints * 10f, FontStyle.Regular, GraphicsUnit.World);
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(typeof(GridFontInfo), ex))
			{
				throw;
			}
		}
		if (font2 == null)
		{
			font2 = FontUtil.CreateFont(font.Name, sizeInPoints * 10f, FontStyle.Regular, GraphicsUnit.World);
		}
		float sizeInPoints2 = font2.SizeInPoints;
		font2.Dispose();
		return sizeInPoints * (sizeInPoints * 10f) / sizeInPoints2;
	}

	[DocumentationExclude]
	public void ResetGdipFont()
	{
		_font = null;
	}

	private Font GetGdipFont()
	{
		return FontUtil.CreateFont(Facename, Size, FontStyle, Unit);
	}

	private void TestGdipFont()
	{
		GridStyleInfoIdentity gridStyleInfoIdentity = ((base.Identity is StyleInfoSubObjectIdentity styleInfoSubObjectIdentity) ? (styleInfoSubObjectIdentity.Owner as GridStyleInfo) : null)?.CellIdentity;
		GridControlBase gridControlBase = (((gridStyleInfoIdentity != null) ? (gridStyleInfoIdentity.Data as GridVolatileData) : null)?.Grid)?.ActiveGridView;
		if (gridControlBase != null && gridControlBase.IsDesignMode())
		{
			new Font(Facename, Size, FontStyle, Unit);
		}
	}

	protected override void OnStyleChanged(StyleInfoProperty sip)
	{
		_font = null;
		base.OnStyleChanged(sip);
	}

	protected override StyleInfoBase GetDefaultStyle()
	{
		return Default;
	}

	private void SetFontStyle(FontStyle fontStyle)
	{
		Bold = (fontStyle & FontStyle.Bold) != 0;
		Italic = (fontStyle & FontStyle.Italic) != 0;
		Strikeout = (fontStyle & FontStyle.Strikeout) != 0;
		Underline = (fontStyle & FontStyle.Underline) != 0;
	}

	private FontStyle GetFontStyle()
	{
		FontStyle fontStyle = FontStyle.Regular;
		if (Bold)
		{
			fontStyle |= FontStyle.Bold;
		}
		if (Italic)
		{
			fontStyle |= FontStyle.Italic;
		}
		if (Strikeout)
		{
			fontStyle |= FontStyle.Strikeout;
		}
		if (Underline)
		{
			fontStyle |= FontStyle.Underline;
		}
		return fontStyle;
	}

	[DebuggerStepThrough]
	public void ResetFacename()
	{
		ResetValue(GridFontInfoStore.FacenameProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeFacename()
	{
		return HasValue(GridFontInfoStore.FacenameProperty);
	}

	[DebuggerStepThrough]
	public void ResetSize()
	{
		ResetValue(GridFontInfoStore.SizeProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeSize()
	{
		return HasValue(GridFontInfoStore.SizeProperty);
	}

	[DebuggerStepThrough]
	public void ResetOrientation()
	{
		ResetValue(GridFontInfoStore.OrientationProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeOrientation()
	{
		return HasValue(GridFontInfoStore.OrientationProperty);
	}

	[DebuggerStepThrough]
	public void ResetBold()
	{
		ResetValue(GridFontInfoStore.BoldProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeBold()
	{
		return HasValue(GridFontInfoStore.BoldProperty);
	}

	[DebuggerStepThrough]
	public void ResetItalic()
	{
		ResetValue(GridFontInfoStore.ItalicProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeItalic()
	{
		return HasValue(GridFontInfoStore.ItalicProperty);
	}

	[DebuggerStepThrough]
	public void ResetUnderline()
	{
		ResetValue(GridFontInfoStore.UnderlineProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeUnderline()
	{
		return HasValue(GridFontInfoStore.UnderlineProperty);
	}

	[DebuggerStepThrough]
	public void ResetStrikeout()
	{
		ResetValue(GridFontInfoStore.StrikeoutProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeStrikeout()
	{
		return HasValue(GridFontInfoStore.StrikeoutProperty);
	}

	[DebuggerStepThrough]
	public void ResetUnit()
	{
		ResetValue(GridFontInfoStore.UnitProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeUnit()
	{
		return HasValue(GridFontInfoStore.UnitProperty);
	}
}
