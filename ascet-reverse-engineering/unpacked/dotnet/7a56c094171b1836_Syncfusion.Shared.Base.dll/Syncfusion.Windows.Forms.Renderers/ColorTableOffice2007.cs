using System;
using System.Collections;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Renderers;

public class ColorTableOffice2007 : IColorTableOffice2007Creator
{
	protected enum OFFICE2007COLOR
	{
		scrollerGradientBegin = 0,
		scrollerGradientEnd = 1,
		arrowButtonGradientBegin = 2,
		arrowButtonGradientEnd = 3,
		arrowButtonBorderDark = 4,
		arrowButtonBorderLight = 5,
		arrowGradientBegin = 6,
		arrowGradientEnd = 7,
		arrowGradientNormalBegin = 8,
		arrowGradientNormalEnd = 9,
		thumbLinesGradientBegin = 10,
		thumbLinesGradientEnd = 11,
		scrollerBorderBegin = 12,
		scrollerBorderEnd = 13,
		scrollerGripDark = 14,
		scrollerGripLight = 15,
		scrollerGripBackGround = 16,
		[Browsable(false)]
		MAX_NORMAL_COLORS = 17,
		arrowButtonGradientSelectedBegin = 17,
		arrowButtonGradientSelectedEnd = 18,
		arrowButtonGradientPressedBegin = 19,
		arrowButtonGradientPressedEnd = 20,
		arrowButtonBorderSelectedDark = 21,
		arrowButtonBorderSelectedLight = 22,
		arrowButtonBorderPressedDark = 23,
		arrowButtonBorderPressedLight = 24,
		thumbPressedBackgroundGradientBegin = 25,
		thumbPressedBackgroundGradientEnd = 26,
		[Browsable(false)]
		MAX = 27
	}

	internal class ColorTableKey : IComparable
	{
		private ScrollBarCustomDrawStyles m_style;

		private Office2007ColorScheme m_scheme;

		public ColorTableKey(ScrollBarCustomDrawStyles style, Office2007ColorScheme scheme)
		{
			m_style = style;
			m_scheme = scheme;
		}

		int IComparable.CompareTo(object obj)
		{
			ColorTableKey colorTableKey = (ColorTableKey)obj;
			int result = -1;
			if (!Less(colorTableKey))
			{
				result = (colorTableKey.Less(this) ? 1 : 0);
			}
			return result;
		}

		private bool Less(ColorTableKey key)
		{
			bool result = true;
			if (m_style == key.m_style)
			{
				result = m_scheme < key.m_scheme;
			}
			if (m_style > key.m_style)
			{
				result = false;
			}
			return result;
		}
	}

	private Color[] m_office2007Colors;

	private static IDictionary s_colorTables;

	public virtual Color ScrollerGradientBegin => OfficeColors[0];

	public virtual Color ScrollerGradientEnd => OfficeColors[1];

	public virtual Color ArrowButtonGradientBegin => OfficeColors[2];

	public virtual Color ArrowButtonGradientEnd => OfficeColors[3];

	public virtual Color ArrowButtonGradientSelectedBegin => OfficeColors[17];

	public virtual Color ArrowButtonGradientSelectedEnd => OfficeColors[18];

	public virtual Color ArrowButtonGradientPressedBegin => OfficeColors[19];

	public virtual Color ArrowButtonGradientPressedEnd => OfficeColors[20];

	public virtual Color ArrowButtonBorderDark => OfficeColors[4];

	public virtual Color ArrowButtonBorderLight => OfficeColors[5];

	public virtual Color ArrowButtonBorderSelectedDark => OfficeColors[21];

	public virtual Color ArrowButtonBorderSelectedLight => OfficeColors[22];

	public virtual Color ArrowButtonBorderPressedDark => OfficeColors[23];

	public virtual Color ArrowButtonBorderPressedLight => OfficeColors[24];

	public virtual Color ArrowGradientBegin => OfficeColors[6];

	public virtual Color ArrowGradientEnd => OfficeColors[7];

	public virtual Color ArrowGradientNormalBegin => OfficeColors[8];

	public virtual Color ArrowGradientNormalEnd => OfficeColors[9];

	public virtual Color ThumbLinesGradientBegin => OfficeColors[10];

	public virtual Color ThumbLinesGradientEnd => OfficeColors[11];

	public virtual Color ThumbPressedBackgroundGradientBegin => OfficeColors[25];

	public virtual Color ThumbPressedBackgroundGradientEnd => OfficeColors[26];

	public virtual Color ScrollerBorderBegin => OfficeColors[12];

	public virtual Color ScrollerBorderEnd => OfficeColors[13];

	public virtual Color ScrollerGripDark => OfficeColors[14];

	public virtual Color ScrollerGripLight => OfficeColors[15];

	public virtual Color ScrollerGripBackGround => OfficeColors[16];

	protected Color[] OfficeColors
	{
		get
		{
			if (m_office2007Colors == null)
			{
				m_office2007Colors = new Color[27];
				InitColors(ref m_office2007Colors);
			}
			return m_office2007Colors;
		}
	}

	static ColorTableOffice2007()
	{
		s_colorTables = new SortedList();
		ScrollBarCustomDrawStyles style = ScrollBarCustomDrawStyles.Office2007;
		RegisterColorTable(style, Office2007ColorScheme.Blue, new ColorTableOffice2007Blue());
		RegisterColorTable(style, Office2007ColorScheme.Silver, new ColorTableOffice2007Silver());
		RegisterColorTable(style, Office2007ColorScheme.Black, new ColorTableOffice2007Black());
		RegisterColorTable(style, Office2007ColorScheme.Managed, new ColorTableOffice2007Blue());
		style = ScrollBarCustomDrawStyles.Office2007Generic;
		RegisterColorTable(style, Office2007ColorScheme.Blue, new ColorTableGenericOffice2007Blue());
		RegisterColorTable(style, Office2007ColorScheme.Silver, new ColorTableGenericOffice2007Silver());
		RegisterColorTable(style, Office2007ColorScheme.Black, new ColorTableGenericOffice2007Black());
		RegisterColorTable(style, Office2007ColorScheme.Managed, new ColorTableGenericOffice2007Blue());
		Office2007Colors.ManagedColorsApplied += ManagedColorsApplied;
		if (Office2007Colors.ManagedBaseColor != Color.Empty)
		{
			OnManagedColorApplied(Office2007Colors.ManagedBaseColor);
		}
	}

	internal ColorTableOffice2007()
	{
	}

	public static Color GetAlphaBlendedColor(Color src, Color dest, int alpha)
	{
		int red = (src.R * alpha + (255 - alpha) * dest.R) / 255;
		int green = (src.G * alpha + (255 - alpha) * dest.G) / 255;
		int blue = (src.B * alpha + (255 - alpha) * dest.B) / 255;
		int alpha2 = (src.A * alpha + (255 - alpha) * dest.A) / 255;
		return Color.FromArgb(alpha2, red, green, blue);
	}

	public static ColorTableOffice2007 GetColorTable(ScrollBarCustomDrawStyles style, Office2007ColorScheme scheme)
	{
		ColorTableKey key = new ColorTableKey(style, scheme);
		return (ColorTableOffice2007)s_colorTables[key];
	}

	protected static void RegisterColorTable(ScrollBarCustomDrawStyles style, Office2007ColorScheme scheme, ColorTableOffice2007 colorTable)
	{
		ColorTableKey key = new ColorTableKey(style, scheme);
		s_colorTables[key] = colorTable;
	}

	internal void UpdateColors(ScrollBarCustomDrawStyles style, Color basicColor)
	{
		Color[] officeColors = OfficeColors;
		ColorTableOffice2007 colorTable = GetColorTable(style, Office2007ColorScheme.Silver);
		for (int i = 0; i < 17; i++)
		{
			ref Color reference = ref officeColors[i];
			reference = Office2007Colors.MergeColors(colorTable.OfficeColors[i], basicColor);
		}
	}

	internal void UpdateScheme(ScrollBarCustomDrawStyles style, Office2007ColorScheme scheme)
	{
		ColorTableOffice2007 colorTable = GetColorTable(style, scheme);
		ColorTableOffice2007 colorTable2 = ((IColorTableOffice2007Creator)colorTable).Create();
		RegisterColorTable(style, scheme, colorTable2);
	}

	public static void ApplyManagedColors(ScrollBarCustomDrawStyles style, Color baseColor)
	{
		ColorTableOffice2007 colorTable = GetColorTable(style, Office2007ColorScheme.Managed);
		colorTable.UpdateColors(style, baseColor);
	}

	public static void ApplyManagedScheme(Form form, ScrollBarCustomDrawStyles style, Office2007ColorScheme scheme)
	{
		ColorTableOffice2007 colorTable = GetColorTable(style, scheme);
		colorTable.UpdateScheme(style, scheme);
		form.Invalidate(invalidateChildren: true);
	}

	private static void ManagedColorsApplied(Office2007Colors.ManagedColorsAppliedEventArgs args)
	{
		OnManagedColorApplied(args.BaseColor);
	}

	protected static void OnManagedColorApplied(Color baseColor)
	{
		ApplyManagedColors(ScrollBarCustomDrawStyles.Office2007, baseColor);
		ApplyManagedColors(ScrollBarCustomDrawStyles.Office2007Generic, baseColor);
	}

	protected virtual void InitColors(ref Color[] colors)
	{
		ref Color reference = ref colors[0];
		reference = Color.FromArgb(149, 176, 210);
		ref Color reference2 = ref colors[1];
		reference2 = Color.FromArgb(115, 149, 192);
		ref Color reference3 = ref colors[2];
		reference3 = Color.FromArgb(229, 234, 238);
		ref Color reference4 = ref colors[3];
		reference4 = Color.FromArgb(201, 212, 225);
		ref Color reference5 = ref colors[17];
		reference5 = Color.FromArgb(216, 232, 249);
		ref Color reference6 = ref colors[18];
		reference6 = Color.FromArgb(176, 209, 242);
		ref Color reference7 = ref colors[19];
		reference7 = Color.FromArgb(180, 209, 247);
		ref Color reference8 = ref colors[20];
		reference8 = Color.FromArgb(121, 173, 241);
		ref Color reference9 = ref colors[4];
		reference9 = Color.FromArgb(88, 104, 145);
		ref Color reference10 = ref colors[5];
		reference10 = Color.FromArgb(225, 231, 239);
		ref Color reference11 = ref colors[21];
		reference11 = Color.FromArgb(60, 110, 176);
		ref Color reference12 = ref colors[22];
		reference12 = Color.FromArgb(253, 253, 255);
		ref Color reference13 = ref colors[23];
		reference13 = Color.FromArgb(23, 73, 138);
		ref Color reference14 = ref colors[24];
		reference14 = Color.FromArgb(194, 211, 231);
		ref Color reference15 = ref colors[6];
		reference15 = Color.FromArgb(110, 126, 166);
		ref Color reference16 = ref colors[7];
		reference16 = Color.FromArgb(66, 75, 99);
		ref Color reference17 = ref colors[8];
		reference17 = Color.FromArgb(110, 126, 166);
		ref Color reference18 = ref colors[9];
		reference18 = Color.FromArgb(66, 75, 99);
		ref Color reference19 = ref colors[10];
		reference19 = Color.FromArgb(139, 142, 144);
		ref Color reference20 = ref colors[11];
		reference20 = Color.FromArgb(120, 126, 134);
		ref Color reference21 = ref colors[25];
		reference21 = Color.FromArgb(94, 100, 117);
		ref Color reference22 = ref colors[26];
		reference22 = Color.FromArgb(73, 81, 101);
		ref Color reference23 = ref colors[12];
		reference23 = Color.FromArgb(149, 176, 210);
		ref Color reference24 = ref colors[13];
		reference24 = Color.FromArgb(124, 155, 193);
		ref Color reference25 = ref colors[14];
		reference25 = Color.FromArgb(69, 93, 128);
		ref Color reference26 = ref colors[15];
		reference26 = Color.FromArgb(177, 201, 232);
		ref Color reference27 = ref colors[16];
		reference27 = Color.FromArgb(127, 163, 211);
	}

	ColorTableOffice2007 IColorTableOffice2007Creator.Create()
	{
		return new ColorTableOffice2007();
	}
}
