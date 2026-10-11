using System;
using System.ComponentModel;
using System.Drawing;

namespace Syncfusion.Windows.Forms.Tools;

[ToolboxItem(false)]
[DesignTimeVisible(false)]
public class ImagePrimitive : Primitive
{
	private Image m_image;

	private Image m_rotateImage;

	private bool m_bRotate;

	[Category("Appearance")]
	[DefaultValue(null)]
	[Description("Displayed image.")]
	public Image Image
	{
		get
		{
			return m_image;
		}
		set
		{
			if (value != m_image)
			{
				m_image = value;
				OnImageChanged();
			}
		}
	}

	[Description("Displayed text.")]
	[Category("Behavior")]
	[DefaultValue(false)]
	public bool Rotate
	{
		get
		{
			return m_bRotate;
		}
		set
		{
			if (value != m_bRotate)
			{
				m_bRotate = value;
				OnRotateChanged();
			}
		}
	}

	public event EventHandler ImageChanged;

	public event EventHandler RotateChanged;

	public ImagePrimitive(Size size, Image image, GradientPanelExt owner)
		: base(size, owner)
	{
		Image = image;
		base.PrimitiveBorderStyle = PrimitiveBorderStyle.None;
		base.BackColor = Color.Transparent;
	}

	public ImagePrimitive(Image image, GradientPanelExt owner)
		: this(Primitive.c_primitiveSize, image, owner)
	{
	}

	public ImagePrimitive(GradientPanelExt owner)
		: this(Primitive.c_primitiveSize, null, owner)
	{
	}

	public ImagePrimitive()
		: this(Primitive.c_primitiveSize, null, null)
	{
	}

	protected override void DrawBackground(Graphics g)
	{
		base.DrawBackground(g);
		if (Image != null)
		{
			if (m_rotateImage == null)
			{
				g.DrawImage(Image, base.ClientRect);
			}
			else
			{
				g.DrawImage(m_rotateImage, base.ClientRect);
			}
		}
	}

	protected override void OnAlignmentChanged()
	{
		base.OnAlignmentChanged();
		if (Rotate)
		{
			switch (base.Alignment)
			{
			case Alignment.Left:
				m_rotateImage = (Image)m_image.Clone();
				m_rotateImage.RotateFlip(RotateFlipType.Rotate270FlipNone);
				break;
			case Alignment.Right:
				m_rotateImage = (Image)m_image.Clone();
				m_rotateImage.RotateFlip(RotateFlipType.Rotate90FlipNone);
				break;
			default:
				m_rotateImage = null;
				break;
			}
		}
	}

	public override object Clone()
	{
		ImagePrimitive imagePrimitive = new ImagePrimitive(base.Size, Image, base.OwnerControl);
		imagePrimitive.Alignment = base.Alignment;
		imagePrimitive.BackColor = base.BackColor;
		imagePrimitive.BorderColor = base.BorderColor;
		imagePrimitive.PrimitiveBorderStyle = base.PrimitiveBorderStyle;
		imagePrimitive.Bounds = base.Bounds;
		imagePrimitive.Selected = base.Selected;
		imagePrimitive.Visible = base.Visible;
		imagePrimitive.Position = base.Position;
		imagePrimitive.Rotate = Rotate;
		return imagePrimitive;
	}

	private void RaiseImageChanged()
	{
		if (this.ImageChanged != null)
		{
			this.ImageChanged(this, EventArgs.Empty);
		}
	}

	private void RaiseRotateChanged()
	{
		if (this.RotateChanged != null)
		{
			this.RotateChanged(this, EventArgs.Empty);
		}
	}

	protected virtual void OnImageChanged()
	{
		RaiseImageChanged();
	}

	protected virtual void OnRotateChanged()
	{
		RaiseRotateChanged();
	}
}
