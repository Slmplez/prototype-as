using System;
using System.ComponentModel;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

[ToolboxItem(false)]
public class Primitive : Component, ICloneable
{
	private const int DEF_OFFSET = 1;

	private const int DEF_BORDER_OFFSET = 3;

	private const int DEF_START_POSITION = 0;

	[NonSerialized]
	private readonly Color DEF_SELECTED_COLOR = Color.Yellow;

	[NonSerialized]
	protected static readonly Size c_primitiveSize = new Size(20, 20);

	private Size m_size;

	private int m_position;

	private Color m_clrBorder = Color.Black;

	private Color m_clrBackGround = Color.White;

	private PrimitiveBorderStyle m_enPrimitiveBorderStyle;

	[NonSerialized]
	private GradientPanelExt m_ownerControl;

	private Rectangle m_bounds = Rectangle.Empty;

	private Rectangle m_clientRect = Rectangle.Empty;

	private Rectangle m_previousBounds = Rectangle.Empty;

	private Alignment m_enAlignment = Alignment.Top;

	private bool m_bVisible = true;

	private bool m_bSelected;

	[Category("Behavior")]
	[Description("Indicate that primitive is selected.")]
	[DefaultValue(false)]
	internal bool Selected
	{
		get
		{
			return m_bSelected;
		}
		set
		{
			if (value != m_bSelected)
			{
				m_bSelected = value;
				OnSelectedChanged();
			}
		}
	}

	[DefaultValue(true)]
	[Category("Behavior")]
	[Description("Indicating whether the primitive is displayed.")]
	public bool Visible
	{
		get
		{
			return m_bVisible;
		}
		set
		{
			if (value != m_bVisible)
			{
				m_bVisible = value;
				OnVisibleChanged();
			}
		}
	}

	[Description("Alignment of the primitive.")]
	[Category("Layout")]
	[DefaultValue(typeof(Alignment), "Top")]
	public Alignment Alignment
	{
		get
		{
			return m_enAlignment;
		}
		set
		{
			if (value != m_enAlignment)
			{
				m_enAlignment = value;
				OnAlignmentChanged();
			}
		}
	}

	[Category("Layout")]
	[Description("Size of the primitive.")]
	public Size Size
	{
		get
		{
			return m_size;
		}
		set
		{
			if (value != m_size)
			{
				m_size = value;
				OnSizeChanged();
			}
		}
	}

	[Category("Appearance")]
	[Description("Border color for primitive.")]
	[DefaultValue(typeof(Color), "Black")]
	public Color BorderColor
	{
		get
		{
			return m_clrBorder;
		}
		set
		{
			if (value != m_clrBorder)
			{
				m_clrBorder = value;
				OnBorderColorChanged();
			}
		}
	}

	[Description("Background color for primitive.")]
	[Category("Appearance")]
	[DefaultValue(typeof(Color), "Transparent")]
	public Color BackColor
	{
		get
		{
			return m_clrBackGround;
		}
		set
		{
			if (value != m_clrBackGround)
			{
				m_clrBackGround = value;
				OnBackColorChanged();
			}
		}
	}

	[Description("Border style for primitive.")]
	[Category("Appearance")]
	[DefaultValue(typeof(PrimitiveBorderStyle), "Single")]
	public PrimitiveBorderStyle PrimitiveBorderStyle
	{
		get
		{
			return m_enPrimitiveBorderStyle;
		}
		set
		{
			if (value != m_enPrimitiveBorderStyle)
			{
				m_enPrimitiveBorderStyle = value;
				OnPrimitiveBorderStyleChanged();
			}
		}
	}

	[RefreshProperties(RefreshProperties.All)]
	[DefaultValue(0)]
	[Category("Layout")]
	[Description("Position of the primitive.")]
	public int Position
	{
		get
		{
			return m_position;
		}
		set
		{
			if (value != m_position)
			{
				m_position = value;
				OnPositionChanged();
			}
		}
	}

	internal GradientPanelExt OwnerControl
	{
		get
		{
			return m_ownerControl;
		}
		set
		{
			if (value != m_ownerControl)
			{
				m_ownerControl = value;
				OnOwnerControlChanged();
			}
		}
	}

	internal Rectangle Bounds
	{
		get
		{
			return m_bounds;
		}
		set
		{
			if (value != m_bounds)
			{
				m_bounds = value;
				OnBoundsChanged();
			}
		}
	}

	protected Rectangle ClientRect
	{
		get
		{
			if (m_clientRect == Rectangle.Empty)
			{
				m_clientRect = GetClientRect();
			}
			return m_clientRect;
		}
	}

	internal event EventHandler SelectedChanged;

	public event EventHandler SizeChanged;

	public event EventHandler BorderColorChanged;

	public event EventHandler BackColorChanged;

	public event EventHandler PrimitiveBorderStyleChanged;

	public event EventHandler PositionChanged;

	public event EventHandler PropertyChanged;

	public event EventHandler BoundsChanged;

	public event EventHandler AlignmentChanged;

	public event EventHandler VisibleChanged;

	public event MouseEventHandler MouseMove;

	public event MouseEventHandler MouseDown;

	public event EventHandler OwnerControlChanged;

	public Primitive(Size size, int position, GradientPanelExt owner)
	{
		m_size = size;
		m_position = position;
		m_ownerControl = owner;
	}

	public Primitive(GradientPanelExt owner)
		: this(c_primitiveSize, 0, owner)
	{
	}

	public Primitive()
		: this(c_primitiveSize, 0, null)
	{
	}

	public Primitive(Size size, GradientPanelExt owner)
		: this(size, 0, owner)
	{
	}

	public void Draw(Graphics g)
	{
		if (Visible)
		{
			DrawBorder(g, PrimitiveBorderStyle);
			DrawBackground(g);
			if (Selected)
			{
				DrawSelectedBorder(g);
			}
		}
	}

	public void Invalidate()
	{
		if (OwnerControl != null)
		{
			int num = 4;
			Rectangle rc = new Rectangle(Bounds.Location, Bounds.Size);
			rc.Inflate(num, num);
			OwnerControl.Invalidate(rc);
			if (m_previousBounds != Rectangle.Empty)
			{
				m_previousBounds.Inflate(num, num);
				OwnerControl.Invalidate(m_previousBounds);
				m_previousBounds = Rectangle.Empty;
			}
		}
	}

	protected virtual void DrawBorder(Graphics g, PrimitiveBorderStyle style)
	{
		g.SmoothingMode = SmoothingMode.None;
		Rectangle bounds = Bounds;
		Pen pen = style switch
		{
			PrimitiveBorderStyle.Single => new Pen(BorderColor), 
			PrimitiveBorderStyle.None => new Pen(m_clrBackGround), 
			_ => new Pen(SystemColors.Control), 
		};
		if (PrimitiveBorderStyle != PrimitiveBorderStyle.None)
		{
			g.DrawRectangle(pen, bounds);
		}
	}

	protected virtual void DrawBackground(Graphics g)
	{
		Rectangle clientRect = ClientRect;
		Brush brush = new SolidBrush(BackColor);
		g.FillRectangle(brush, clientRect);
	}

	protected void DrawSelectedBorder(Graphics g)
	{
		Rectangle selectedRect = GetSelectedRect();
		Pen pen = new Pen(DEF_SELECTED_COLOR);
		g.DrawRectangle(pen, selectedRect);
	}

	private Rectangle GetSelectedRect()
	{
		Rectangle result = new Rectangle(Bounds.X - 1, Bounds.Y - 1, Bounds.Size.Width + 2, Bounds.Size.Height + 2);
		return result;
	}

	private Rectangle GetClientRect()
	{
		int num = 1;
		Point location = new Point(Bounds.Location.X + num, Bounds.Location.Y + num);
		Size size = new Size(Bounds.Size.Width - num, Bounds.Size.Height - num);
		return new Rectangle(location, size);
	}

	public Point GetCenter()
	{
		Point result = new Point(Bounds.X + Bounds.Size.Width / 2, Bounds.Y + Bounds.Height / 2);
		return result;
	}

	private int GetCountPosition(Alignment alignment)
	{
		int num = 0;
		if (OwnerControl != null)
		{
			switch (alignment)
			{
			case Alignment.Top:
				num = OwnerControl.Size.Width;
				break;
			case Alignment.Bottom:
				num = OwnerControl.Size.Width;
				break;
			case Alignment.Left:
				num = OwnerControl.Size.Height;
				break;
			case Alignment.Right:
				num = OwnerControl.Size.Height;
				break;
			}
			num -= 2 * OwnerControl.CornerRadius + OwnerControl.BorderGap;
		}
		return num;
	}

	private int GetCorrectPosition()
	{
		int num = Position;
		if (OwnerControl != null)
		{
			Point startPosition = OwnerControl.GetStartPosition(Alignment);
			Point endPosition = OwnerControl.GetEndPosition(Alignment);
			switch (Alignment)
			{
			case Alignment.Top:
				if (num < 0)
				{
					num = 0;
				}
				else if (startPosition.X + num + Size.Width > endPosition.X)
				{
					num = GetCountPosition(Alignment.Top);
					num -= Size.Width + OwnerControl.CornerRadius;
				}
				break;
			case Alignment.Bottom:
				if (num < 0)
				{
					num = 0;
				}
				else if (startPosition.X + num + Size.Width > endPosition.X)
				{
					num = GetCountPosition(Alignment.Bottom);
					num -= Size.Width + OwnerControl.CornerRadius;
				}
				break;
			case Alignment.Left:
				if (num < 0)
				{
					num = 0;
				}
				else if (startPosition.Y + num + Size.Height > endPosition.Y)
				{
					num = GetCountPosition(Alignment.Left);
					num -= Size.Width + OwnerControl.CornerRadius;
				}
				break;
			case Alignment.Right:
				if (num < 0)
				{
					num = 0;
				}
				else if (startPosition.Y + num + Size.Height > endPosition.Y)
				{
					num = GetCountPosition(Alignment.Right);
					num -= Size.Width + OwnerControl.CornerRadius;
				}
				break;
			}
		}
		return num;
	}

	public override string ToString()
	{
		if (Site != null)
		{
			return Site.Name;
		}
		return base.ToString();
	}

	private void RaiseSelectedChanged()
	{
		if (this.SelectedChanged != null)
		{
			this.SelectedChanged(this, EventArgs.Empty);
		}
	}

	private void RaiseVisibleChanged()
	{
		if (this.VisibleChanged != null)
		{
			this.VisibleChanged(this, EventArgs.Empty);
		}
	}

	private void RaiseAlignmentChanged()
	{
		if (this.AlignmentChanged != null)
		{
			this.AlignmentChanged(this, EventArgs.Empty);
		}
	}

	private void RaiseSizeChanged()
	{
		if (this.SizeChanged != null)
		{
			this.SizeChanged(this, EventArgs.Empty);
		}
	}

	private void RaiseBorderColorChanged()
	{
		if (this.BorderColorChanged != null)
		{
			this.BorderColorChanged(this, EventArgs.Empty);
		}
	}

	private void RaiseBackColorChanged()
	{
		if (this.BackColorChanged != null)
		{
			this.BackColorChanged(this, EventArgs.Empty);
		}
	}

	private void RaisePrimitiveBorderStyleChanged()
	{
		if (this.PrimitiveBorderStyleChanged != null)
		{
			this.PrimitiveBorderStyleChanged(this, EventArgs.Empty);
		}
	}

	private void RaisePositionChanged()
	{
		if (this.PositionChanged != null)
		{
			this.PositionChanged(this, EventArgs.Empty);
		}
	}

	private void RaisePropertyChanged()
	{
		if (this.PropertyChanged != null)
		{
			this.PropertyChanged(this, EventArgs.Empty);
		}
	}

	private void RaiseBoundsChanged()
	{
		if (this.BoundsChanged != null)
		{
			this.BoundsChanged(this, EventArgs.Empty);
		}
	}

	private void RaiseMouseMove(MouseEventArgs args)
	{
		if (this.MouseMove != null)
		{
			this.MouseMove(this, args);
		}
	}

	private void RaiseMouseDown(MouseEventArgs args)
	{
		if (this.MouseDown != null)
		{
			this.MouseDown(this, args);
		}
	}

	private void RaiseOwnerControlChanged()
	{
		if (this.OwnerControlChanged != null)
		{
			this.OwnerControlChanged(this, EventArgs.Empty);
		}
	}

	protected virtual void OnOwnerControlChanged()
	{
		if (OwnerControl != null)
		{
			Bounds = OwnerControl.GetPrimitiveRectangle(this);
			OwnerControl.MouseMove += owner_MouseMove;
			OwnerControl.MouseDown += owner_MouseDown;
		}
		RaiseOwnerControlChanged();
	}

	protected virtual void OnSizeChanged()
	{
		if (OwnerControl != null)
		{
			Bounds = OwnerControl.GetPrimitiveRectangle(this);
		}
		Invalidate();
		RaiseSizeChanged();
	}

	protected virtual void OnBorderColorChanged()
	{
		Invalidate();
		RaiseBorderColorChanged();
	}

	protected virtual void OnBackColorChanged()
	{
		Invalidate();
		RaiseBackColorChanged();
	}

	protected virtual void OnPrimitiveBorderStyleChanged()
	{
		Invalidate();
		RaisePrimitiveBorderStyleChanged();
	}

	protected virtual void OnPositionChanged()
	{
		Position = GetCorrectPosition();
		if (OwnerControl != null)
		{
			m_previousBounds = new Rectangle(Bounds.Location, Bounds.Size);
			Bounds = OwnerControl.GetPrimitiveRectangle(this);
		}
		Invalidate();
		RaisePositionChanged();
	}

	protected virtual void OnBoundsChanged()
	{
		m_clientRect = GetClientRect();
		Invalidate();
		RaiseBoundsChanged();
	}

	protected virtual void OnAlignmentChanged()
	{
		Invalidate();
		RaiseAlignmentChanged();
	}

	protected virtual void OnVisibleChanged()
	{
		if (OwnerControl != null)
		{
			Bounds = OwnerControl.GetPrimitiveRectangle(this);
		}
		Invalidate();
		RaiseVisibleChanged();
	}

	protected virtual void OnMouseMove(MouseEventArgs args)
	{
		RaiseMouseMove(args);
	}

	protected virtual void OnMouseDown(MouseEventArgs args)
	{
		RaiseMouseDown(args);
	}

	protected virtual void OnSelectedChanged()
	{
		if (OwnerControl != null)
		{
			Rectangle rc = new Rectangle(Bounds.X - 1, Bounds.Y - 1, Bounds.Size.Width + 3, Bounds.Size.Height + 3);
			OwnerControl.Invalidate(rc);
		}
		RaiseSelectedChanged();
	}

	private void owner_MouseMove(object sender, MouseEventArgs e)
	{
		Point pt = new Point(e.X, e.Y);
		if (Bounds.Contains(pt))
		{
			OnMouseMove(e);
		}
	}

	private void owner_MouseDown(object sender, MouseEventArgs e)
	{
		Point pt = new Point(e.X, e.Y);
		if (Bounds.Contains(pt))
		{
			OnMouseDown(e);
		}
	}

	public virtual object Clone()
	{
		Primitive primitive = new Primitive(Size, Position, OwnerControl);
		primitive.m_enAlignment = Alignment;
		primitive.m_clrBackGround = BackColor;
		primitive.m_clrBorder = BorderColor;
		primitive.m_enPrimitiveBorderStyle = PrimitiveBorderStyle;
		primitive.m_bounds = Bounds;
		primitive.m_bSelected = Selected;
		primitive.m_bVisible = Visible;
		primitive.m_ownerControl = OwnerControl;
		return primitive;
	}
}
