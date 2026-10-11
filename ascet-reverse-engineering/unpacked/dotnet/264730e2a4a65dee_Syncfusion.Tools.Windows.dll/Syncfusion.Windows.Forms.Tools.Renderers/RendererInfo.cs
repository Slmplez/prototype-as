using System;
using System.Windows.Forms;
using Syncfusion.Drawing;
using Syncfusion.Windows.Forms.Tools.Enums;

namespace Syncfusion.Windows.Forms.Tools.Renderers;

public class RendererInfo : IRendererInfo
{
	protected BrushInfo m_bgBrush;

	private Orientation m_orientation;

	protected bool m_bOrientationChanged;

	private DrawState m_eDrawState;

	private bool m_bThemesEnabled;

	private bool m_bEnabled;

	private bool m_bIgnoreThemeBackground;

	private ThemedControlDrawing m_tcd;

	public BrushInfo BackgroundColor
	{
		get
		{
			return m_bgBrush;
		}
		set
		{
			if (m_bgBrush != value)
			{
				m_bgBrush = value;
			}
		}
	}

	public Orientation Orientation
	{
		get
		{
			return m_orientation;
		}
		set
		{
			if (value != m_orientation)
			{
				m_orientation = value;
				OnOrientationChanged(EventArgs.Empty);
			}
		}
	}

	public bool ThemesEnabled
	{
		get
		{
			return m_bThemesEnabled;
		}
		set
		{
			if (value != m_bThemesEnabled)
			{
				m_bThemesEnabled = value;
			}
		}
	}

	public bool Enabled
	{
		get
		{
			return m_bEnabled;
		}
		set
		{
			if (value != m_bEnabled)
			{
				m_bEnabled = value;
			}
		}
	}

	public bool IgnoreThemeBackground
	{
		get
		{
			return m_bIgnoreThemeBackground;
		}
		set
		{
			if (m_bIgnoreThemeBackground != value)
			{
				m_bIgnoreThemeBackground = value;
			}
		}
	}

	public ThemedControlDrawing ThemedControl
	{
		get
		{
			return m_tcd;
		}
		set
		{
			if (value != m_tcd)
			{
				m_tcd = value;
			}
		}
	}

	public DrawState DrawState
	{
		get
		{
			return m_eDrawState;
		}
		set
		{
			if (m_eDrawState != value)
			{
				m_eDrawState = value;
			}
		}
	}

	public event EventHandler OrientationChanged;

	protected virtual void OnOrientationChanged(EventArgs e)
	{
		if (this.OrientationChanged != null)
		{
			this.OrientationChanged(this, e);
		}
	}
}
