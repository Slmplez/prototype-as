using System;
using System.ComponentModel;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

[Serializable]
[TypeConverter(typeof(ExpandableObjectConverter))]
public class XpUserStyle
{
	private bool m_bSkipEvents;

	private Font m_ActiveFont = Control.DefaultFont;

	private Color m_clrUserNameDefault = Color.Black;

	private Color m_clrUserNameActive = Color.Black;

	private Font m_font = Control.DefaultFont;

	private StyleGradientObject m_background = new StyleGradientObject();

	private StyleGradientObject m_normalRect = new StyleGradientObject();

	private StyleGradientObject m_activeRect = new StyleGradientObject();

	private Font m_fontActiveUserHelp = Control.DefaultFont;

	private Font m_fontDefaultUserHelp = Control.DefaultFont;

	private Color m_clrUserHelpActive = Color.Black;

	private Color m_clrUserHelpDefault = Color.Black;

	private int m_rectRadius = 8;

	private int m_iconRadius = 8;

	private bool m_drawShadow = true;

	private int m_shadowSize = 3;

	[Description("Get or set user name text font for default mode.")]
	public Font Font
	{
		get
		{
			return m_font;
		}
		set
		{
			if (value != m_font)
			{
				ValueChangedEventArgs args = new ValueChangedEventArgs(m_font, value);
				m_font = value;
				OnFontChanged(args);
			}
		}
	}

	[Browsable(true)]
	[Description("Get or set user name text font for active mode.")]
	[Category("Appearance")]
	public Font ActiveFont
	{
		get
		{
			return m_ActiveFont;
		}
		set
		{
			if (value != m_ActiveFont)
			{
				ValueChangedEventArgs args = new ValueChangedEventArgs(m_ActiveFont, value);
				m_ActiveFont = value;
				OnActiveFontChanged(args);
			}
		}
	}

	[Description("Get or set help name text color for active mode.")]
	public Font ActiveUserHelpFont
	{
		get
		{
			return m_fontActiveUserHelp;
		}
		set
		{
			if (value != m_fontActiveUserHelp)
			{
				ValueChangedEventArgs args = new ValueChangedEventArgs(m_fontActiveUserHelp, value);
				m_fontActiveUserHelp = value;
				OnActiveUserHelpFontChanged(args);
			}
		}
	}

	[Description("Get or set help name text color for default mode.")]
	public Font DefaultUserHelpFont
	{
		get
		{
			return m_fontDefaultUserHelp;
		}
		set
		{
			if (value != m_fontDefaultUserHelp)
			{
				ValueChangedEventArgs args = new ValueChangedEventArgs(m_fontDefaultUserHelp, value);
				m_fontDefaultUserHelp = value;
				OnDefaultUserHelpFontChanged(args);
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[Description("Get or set background gradient style.")]
	public StyleGradientObject Background
	{
		get
		{
			return m_background;
		}
		set
		{
			if (value != m_background)
			{
				if (m_background != null)
				{
					m_background.OnChanged -= gradients_OnChanged;
				}
				m_background = ((value == null) ? new StyleGradientObject() : value);
				m_background.OnChanged += gradients_OnChanged;
			}
		}
	}

	[Description("Get or set gradient style rectangle in user icon for default mode.")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	public StyleGradientObject NormalRectangle
	{
		get
		{
			return m_normalRect;
		}
		set
		{
			if (value != m_normalRect)
			{
				if (m_normalRect != null)
				{
					m_normalRect.OnChanged -= gradients_OnChanged;
				}
				m_normalRect = ((value == null) ? new StyleGradientObject() : value);
				m_normalRect.OnChanged += gradients_OnChanged;
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[Description("Get or set gradient style rectangle in user icon for active mode.")]
	public StyleGradientObject ActiveRectangle
	{
		get
		{
			return m_activeRect;
		}
		set
		{
			if (value != m_activeRect)
			{
				if (m_activeRect != null)
				{
					m_activeRect.OnChanged -= gradients_OnChanged;
				}
				m_activeRect = ((value == null) ? new StyleGradientObject() : value);
				m_activeRect.OnChanged += gradients_OnChanged;
			}
		}
	}

	[Description("User name text font for default mode.")]
	public Color UserNameColorDefault
	{
		get
		{
			return m_clrUserNameDefault;
		}
		set
		{
			if (value != m_clrUserNameDefault)
			{
				ValueChangedEventArgs args = new ValueChangedEventArgs(m_clrUserNameDefault, value);
				m_clrUserNameDefault = value;
				OnUserNameColorDefaultChanged(args);
			}
		}
	}

	[Description("Get or set User name text font for active mode.")]
	public Color UserNameColorActive
	{
		get
		{
			return m_clrUserNameActive;
		}
		set
		{
			if (value != m_clrUserNameActive)
			{
				ValueChangedEventArgs args = new ValueChangedEventArgs(m_clrUserNameActive, value);
				m_clrUserNameActive = value;
				OnUserNameColorActiveChanged(args);
			}
		}
	}

	[Description("Get or set user name text color for active mode.")]
	public Color UserHelpColorActive
	{
		get
		{
			return m_clrUserHelpActive;
		}
		set
		{
			if (value != m_clrUserHelpActive)
			{
				ValueChangedEventArgs args = new ValueChangedEventArgs(m_clrUserHelpActive, value);
				m_clrUserHelpActive = value;
				OnUserHelpColorActiveChanged(args);
			}
		}
	}

	[Description("Get or set user name text color for default mode.")]
	public Color UserHelpColorDefault
	{
		get
		{
			return m_clrUserHelpDefault;
		}
		set
		{
			if (value != m_clrUserHelpDefault)
			{
				ValueChangedEventArgs args = new ValueChangedEventArgs(m_clrUserHelpDefault, value);
				m_clrUserHelpDefault = value;
				OnUserHelpColorDefaultChanged(args);
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[Description("Get or set radius rounded rectangle in icon.")]
	[Category("Appearance")]
	[DefaultValue(8)]
	public int RectRadius
	{
		get
		{
			return m_rectRadius;
		}
		set
		{
			if (value != m_rectRadius)
			{
				ValueChangedEventArgs args = new ValueChangedEventArgs(m_rectRadius, value);
				m_rectRadius = value;
				OnRectRadiusChanged(args);
			}
		}
	}

	[Category("Appearance")]
	[DefaultValue(8)]
	[Description("Get or set radius rounded icons.")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	public int IconRadius
	{
		get
		{
			return m_iconRadius;
		}
		set
		{
			if (value != m_iconRadius)
			{
				ValueChangedEventArgs args = new ValueChangedEventArgs(m_iconRadius, value);
				m_iconRadius = value;
				OnIconRadiusChanged(args);
			}
		}
	}

	[Category("Appearance")]
	[Description("Get or set draw shadow rectangle in icon.")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[DefaultValue(true)]
	public bool DrawShadow
	{
		get
		{
			return m_drawShadow;
		}
		set
		{
			if (value != m_drawShadow)
			{
				ValueChangedEventArgs args = new ValueChangedEventArgs(m_drawShadow, value);
				m_drawShadow = value;
				OnDrawShadowChanged(args);
			}
		}
	}

	[Description("Get orset shadow size at pixel.")]
	[DefaultValue(3)]
	[Category("Appearance")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	public int ShadowSize
	{
		get
		{
			return m_shadowSize;
		}
		set
		{
			if (value != m_shadowSize)
			{
				ValueChangedEventArgs args = new ValueChangedEventArgs(m_shadowSize, value);
				m_shadowSize = value;
				OnShadowSizeChanged(args);
			}
		}
	}

	[Description("True - do not raise any events, otherwise False.")]
	protected internal bool QuietMode
	{
		get
		{
			return m_bSkipEvents;
		}
		set
		{
			if (value != m_bSkipEvents)
			{
				m_bSkipEvents = value;
				OnQuietModeChanged();
			}
		}
	}

	public event EventHandler QuietModeChanged;

	[Category("Property Changed")]
	public event EventHandler OnChanged;

	[Category("Property Changed")]
	public event ValueChangedEventHandler ActiveFontChanged;

	[Category("Property Changed")]
	public event ValueChangedEventHandler RectColorDefaultChanged;

	[Category("Property Changed")]
	public event ValueChangedEventHandler RectColorActiveChanged;

	[Category("Property Changed")]
	public event ValueChangedEventHandler UserNameColorDefaultChanged;

	[Category("Property Changed")]
	public event ValueChangedEventHandler UserNameColorActiveChanged;

	[Category("Property Changed")]
	public event ValueChangedEventHandler FontChanged;

	[Category("Property Changed")]
	public event ValueChangedEventHandler BackgroundStartColorChanged;

	[Category("Property Changed")]
	public event ValueChangedEventHandler BackgroundEndColorChanged;

	[Category("Property Changed")]
	public event ValueChangedEventHandler BackgroundGradientChanged;

	[Category("Property Changed")]
	public event ValueChangedEventHandler ActiveUserHelpFontChanged;

	[Category("Property Changed")]
	public event ValueChangedEventHandler DefaultUserHelpFontChanged;

	[Category("Property Changed")]
	public event ValueChangedEventHandler UserHelpColorActiveChanged;

	[Category("Property Changed")]
	public event ValueChangedEventHandler UserHelpColorDefaultChanged;

	[Category("Property Changed")]
	public event ValueChangedEventHandler RectRadiusChanged;

	[Category("Property Changed")]
	public event ValueChangedEventHandler IconRadiusChanged;

	[Category("Property Changed")]
	public event ValueChangedEventHandler DrawShadowChanged;

	[Category("Property Changed")]
	public event ValueChangedEventHandler ShadowSizeChanged;

	protected bool ShouldSerializeFont()
	{
		return Font != Control.DefaultFont;
	}

	protected bool ShouldSerializeActiveFont()
	{
		return ActiveFont != Control.DefaultFont;
	}

	protected bool ShouldSerializeActiveUserHelpFont()
	{
		return ActiveUserHelpFont != Control.DefaultFont;
	}

	protected bool ShouldSerializeDefaultUserHelpFont()
	{
		return DefaultUserHelpFont != Control.DefaultFont;
	}

	protected bool ShouldSerializeUserNameColorDefault()
	{
		return UserNameColorDefault != Color.Black;
	}

	protected bool ShouldSerializeUserNameColorActive()
	{
		return UserNameColorActive != Color.Black;
	}

	protected bool ShouldSerializeUserHelpColorActive()
	{
		return UserHelpColorActive != Color.Black;
	}

	protected bool ShouldSerializeUserHelpColorDefault()
	{
		return UserHelpColorDefault != Color.Black;
	}

	public XpUserStyle()
	{
		m_background.OnChanged += gradients_OnChanged;
		m_normalRect.OnChanged += gradients_OnChanged;
		m_activeRect.OnChanged += gradients_OnChanged;
	}

	public void DrawImageRect(Graphics g, GraphicsPath rc, bool bActive)
	{
		if (bActive)
		{
			m_activeRect.FillRectangle(g, rc);
		}
		else
		{
			m_normalRect.FillRectangle(g, rc);
		}
	}

	public void DrawControlBackground(Graphics g, Rectangle bounds)
	{
		m_background.FillRectangle(g, bounds);
	}

	protected void RaiseOnChanged(ValueChangedEventArgs args)
	{
		if (this.OnChanged != null && !QuietMode)
		{
			this.OnChanged(this, args);
		}
	}

	protected void RaiseQuietModeChangedEvent()
	{
		if (this.QuietModeChanged != null)
		{
			this.QuietModeChanged(this, EventArgs.Empty);
		}
	}

	protected void RaiseActiveFontChanged(ValueChangedEventArgs args)
	{
		if (this.ActiveFontChanged != null && !QuietMode)
		{
			this.ActiveFontChanged(this, args);
		}
		RaiseOnChanged(args);
	}

	protected void RaiseRectColorDefaultChanged(ValueChangedEventArgs args)
	{
		if (this.RectColorDefaultChanged != null && !QuietMode)
		{
			this.RectColorDefaultChanged(this, args);
		}
		RaiseOnChanged(args);
	}

	protected void RaiseRectColorActiveChanged(ValueChangedEventArgs args)
	{
		if (this.RectColorActiveChanged != null && !QuietMode)
		{
			this.RectColorActiveChanged(this, args);
		}
		RaiseOnChanged(args);
	}

	protected void RaiseUserNameColorDefaultChanged(ValueChangedEventArgs args)
	{
		if (this.UserNameColorDefaultChanged != null && !QuietMode)
		{
			this.UserNameColorDefaultChanged(this, args);
		}
		RaiseOnChanged(args);
	}

	protected void RaiseUserNameColorActiveChanged(ValueChangedEventArgs args)
	{
		if (this.UserNameColorActiveChanged != null && !QuietMode)
		{
			this.UserNameColorActiveChanged(this, args);
		}
		RaiseOnChanged(args);
	}

	protected void RaiseFontChanged(ValueChangedEventArgs args)
	{
		if (this.FontChanged != null)
		{
			this.FontChanged(this, args);
		}
		RaiseOnChanged(args);
	}

	protected void RaiseBackgroundStartColorChanged(ValueChangedEventArgs args)
	{
		if (this.BackgroundStartColorChanged != null)
		{
			this.BackgroundStartColorChanged(this, args);
		}
	}

	protected void RaiseBackgroundEndColorChanged(ValueChangedEventArgs args)
	{
		if (this.BackgroundEndColorChanged != null)
		{
			this.BackgroundEndColorChanged(this, args);
		}
	}

	protected void RaiseBackgroundGradientChanged(ValueChangedEventArgs args)
	{
		if (this.BackgroundGradientChanged != null)
		{
			this.BackgroundGradientChanged(this, args);
		}
	}

	protected void RaiseActiveUserHelpFontChanged(ValueChangedEventArgs args)
	{
		if (this.ActiveUserHelpFontChanged != null && !QuietMode)
		{
			this.ActiveUserHelpFontChanged(this, args);
		}
		RaiseOnChanged(args);
	}

	protected void RaiseDefaultUserHelpFontChanged(ValueChangedEventArgs args)
	{
		if (this.DefaultUserHelpFontChanged != null && !QuietMode)
		{
			this.DefaultUserHelpFontChanged(this, args);
		}
		RaiseOnChanged(args);
	}

	protected void RaiseUserHelpColorActiveChanged(ValueChangedEventArgs args)
	{
		if (this.UserHelpColorActiveChanged != null && !QuietMode)
		{
			this.UserHelpColorActiveChanged(this, args);
		}
		RaiseOnChanged(args);
	}

	protected void RaiseUserHelpColorDefaultChanged(ValueChangedEventArgs args)
	{
		if (this.UserHelpColorDefaultChanged != null && !QuietMode)
		{
			this.UserHelpColorDefaultChanged(this, args);
		}
		RaiseOnChanged(args);
	}

	protected void RaiseRectRadiusChanged(ValueChangedEventArgs args)
	{
		if (this.RectRadiusChanged != null && !QuietMode)
		{
			this.RectRadiusChanged(this, args);
		}
		RaiseOnChanged(args);
	}

	protected void RaiseIconRadiusChanged(ValueChangedEventArgs args)
	{
		if (this.IconRadiusChanged != null)
		{
			this.IconRadiusChanged(this, args);
		}
		RaiseOnChanged(args);
	}

	protected void RaiseDrawShadowChanged(ValueChangedEventArgs args)
	{
		if (this.DrawShadowChanged != null)
		{
			this.DrawShadowChanged(this, args);
		}
		RaiseOnChanged(args);
	}

	protected void RaiseShadowSizeChanged(ValueChangedEventArgs args)
	{
		if (this.ShadowSizeChanged != null)
		{
			this.ShadowSizeChanged(this, args);
		}
		RaiseOnChanged(args);
	}

	protected virtual void OnQuietModeChanged()
	{
		RaiseQuietModeChangedEvent();
	}

	protected virtual void OnActiveFontChanged(ValueChangedEventArgs args)
	{
		RaiseActiveFontChanged(args);
	}

	protected virtual void OnRectColorDefaultChanged(ValueChangedEventArgs args)
	{
		RaiseRectColorDefaultChanged(args);
	}

	protected virtual void OnRectColorActiveChanged(ValueChangedEventArgs args)
	{
		RaiseRectColorActiveChanged(args);
	}

	protected virtual void OnUserNameColorDefaultChanged(ValueChangedEventArgs args)
	{
		RaiseUserNameColorDefaultChanged(args);
	}

	protected virtual void OnUserNameColorActiveChanged(ValueChangedEventArgs args)
	{
		RaiseUserNameColorActiveChanged(args);
	}

	protected virtual void OnFontChanged(ValueChangedEventArgs args)
	{
		RaiseFontChanged(args);
	}

	protected virtual void OnBackgroundStartColorChanged(ValueChangedEventArgs args)
	{
		RaiseBackgroundStartColorChanged(args);
	}

	protected virtual void OnBackgroundEndColorChanged(ValueChangedEventArgs args)
	{
		RaiseBackgroundEndColorChanged(args);
	}

	protected virtual void OnBackgroundGradientChanged(ValueChangedEventArgs args)
	{
		RaiseBackgroundGradientChanged(args);
	}

	protected virtual void OnActiveUserHelpFontChanged(ValueChangedEventArgs args)
	{
		RaiseActiveUserHelpFontChanged(args);
	}

	protected virtual void OnDefaultUserHelpFontChanged(ValueChangedEventArgs args)
	{
		RaiseDefaultUserHelpFontChanged(args);
	}

	protected virtual void OnUserHelpColorActiveChanged(ValueChangedEventArgs args)
	{
		RaiseUserHelpColorActiveChanged(args);
	}

	protected virtual void OnUserHelpColorDefaultChanged(ValueChangedEventArgs args)
	{
		RaiseUserHelpColorDefaultChanged(args);
	}

	protected virtual void OnRectRadiusChanged(ValueChangedEventArgs args)
	{
		RaiseRectRadiusChanged(args);
	}

	protected virtual void OnIconRadiusChanged(ValueChangedEventArgs args)
	{
		RaiseIconRadiusChanged(args);
	}

	protected virtual void OnDrawShadowChanged(ValueChangedEventArgs args)
	{
		RaiseDrawShadowChanged(args);
	}

	protected virtual void OnShadowSizeChanged(ValueChangedEventArgs args)
	{
		RaiseShadowSizeChanged(args);
	}

	private void gradients_OnChanged(object sender, EventArgs e)
	{
		RaiseOnChanged((ValueChangedEventArgs)e);
	}
}
