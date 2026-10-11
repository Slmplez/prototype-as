using System;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Runtime.InteropServices;
using Syncfusion.Documentation;
using Syncfusion.Runtime.InteropServices;

namespace Syncfusion.Drawing;

[DocumentationExclude]
public sealed class CMirroredDrawer : IDisposable
{
	private const int DEF_ADVANCED_GR_STATE = 2;

	private const int DEF_MULTI_MODE = 2;

	private Graphics m_gfxTarget;

	private Graphics m_gfxCanvas;

	private Bitmap m_bmpCanvas;

	private Rectangle m_rectTargetBounds;

	private Rectangle m_rectCanvas;

	private GraphicsPath m_pathCanvas;

	private bool m_bDrawMirrored;

	private bool m_bOSSupports;

	private int m_oldGraphicsMode;

	private Matrix m_oldMatrix;

	private HandleRef m_gfxHandleWrap;

	private IntPtr m_gfxHandle;

	public Graphics VirtualGfx
	{
		get
		{
			if (!NeedBitmap)
			{
				return m_gfxTarget;
			}
			return m_gfxCanvas;
		}
	}

	public Rectangle VirtualBounds => m_rectCanvas;

	public GraphicsPath VirtualPath => m_pathCanvas;

	private bool NeedBitmap
	{
		get
		{
			if (!m_bOSSupports)
			{
				return m_bDrawMirrored;
			}
			return false;
		}
	}

	private CMirroredDrawer()
	{
		m_bOSSupports = IsSupportedByOS();
	}

	public CMirroredDrawer(Graphics gfxTarget, GraphicsPath pathTarget, bool bDrawMirrored)
		: this()
	{
		if (gfxTarget == null)
		{
			throw new ArgumentNullException("gfxTarget");
		}
		if (pathTarget == null)
		{
			throw new ArgumentNullException("pathTarget");
		}
		Rectangle rectBounds = Rectangle.Ceiling(pathTarget.GetBounds());
		Matrix matrix = new Matrix();
		matrix.Translate(0f, -rectBounds.Top);
		m_pathCanvas = pathTarget.Clone() as GraphicsPath;
		m_pathCanvas.Transform(matrix);
		Initialize(gfxTarget, rectBounds, bDrawMirrored);
	}

	public CMirroredDrawer(Graphics gfxTarget, Rectangle rectBounds, bool bDrawMirrored)
		: this()
	{
		if (gfxTarget == null)
		{
			throw new ArgumentNullException("gfxTarget");
		}
		Initialize(gfxTarget, rectBounds, bDrawMirrored);
	}

	public CMirroredDrawer(Graphics gfxTarget, Rectangle rectBounds, bool bDrawMirrored, bool bOSSupports)
	{
		m_bOSSupports = bOSSupports;
		if (gfxTarget == null)
		{
			throw new ArgumentNullException("gfxTarget");
		}
		Initialize(gfxTarget, rectBounds, bDrawMirrored);
	}

	public void Dispose()
	{
		Flush();
		if (m_gfxCanvas != null)
		{
			m_gfxCanvas.Dispose();
			m_gfxCanvas = null;
		}
		if (m_bmpCanvas != null)
		{
			m_bmpCanvas.Dispose();
			m_bmpCanvas = null;
		}
		if (m_oldMatrix != null)
		{
			m_oldMatrix.Dispose();
			m_oldMatrix = null;
		}
		m_gfxTarget = null;
		m_pathCanvas = null;
		GC.SuppressFinalize(this);
	}

	private void Initialize(Graphics gfxTarget, Rectangle rectBounds, bool bDrawMirrored)
	{
		if (gfxTarget == null)
		{
			throw new ArgumentNullException("gfxTarget");
		}
		m_gfxTarget = gfxTarget;
		m_bDrawMirrored = bDrawMirrored;
		m_rectTargetBounds = rectBounds;
		m_rectCanvas = rectBounds;
		if (NeedBitmap)
		{
			if (rectBounds.Width > 0 && rectBounds.Height > 0)
			{
				m_bmpCanvas = new Bitmap(rectBounds.Width, rectBounds.Height, m_gfxTarget);
			}
			m_gfxCanvas = ((m_bmpCanvas != null) ? Graphics.FromImage(m_bmpCanvas) : m_gfxTarget);
			m_rectCanvas.X = 0;
			m_rectCanvas.Y = 0;
		}
		else if (m_bOSSupports && m_bDrawMirrored)
		{
			TransformGraphics();
		}
	}

	private bool IsSupportedByOS()
	{
		OperatingSystem oSVersion = Environment.OSVersion;
		bool result = false;
		bool flag = oSVersion.Version.Major > 3 || (oSVersion.Version.Major == 3 && oSVersion.Version.Minor >= 1);
		if (oSVersion.Platform == PlatformID.Win32NT && flag)
		{
			result = true;
		}
		return result;
	}

	private void TransformGraphics()
	{
		if (!m_bOSSupports || !m_bDrawMirrored)
		{
			return;
		}
		m_oldMatrix = m_gfxTarget.Transform;
		m_gfxHandle = m_gfxTarget.GetHdc();
		float num = 0f;
		float num2 = 0f;
		try
		{
			m_gfxHandleWrap = new HandleRef(m_gfxTarget, m_gfxHandle);
			m_oldGraphicsMode = NativeMethods.SetGraphicsMode(m_gfxHandleWrap, 2);
			if (m_oldGraphicsMode != 0)
			{
				num = (m_bDrawMirrored ? (-1f) : 1f);
				num2 = (m_bDrawMirrored ? (2 * m_rectTargetBounds.X + m_rectTargetBounds.Width) : 0);
				NativeMethods.XFORM xform = new NativeMethods.XFORM
				{
					eM11 = num,
					eM12 = 0f,
					eM21 = 0f,
					eM22 = 1f,
					eDx = num2,
					eDy = 0f
				};
				NativeMethods.ModifyWorldTransform(HandleRef.ToIntPtr(m_gfxHandleWrap), ref xform, 2);
			}
		}
		finally
		{
			m_gfxTarget.ReleaseHdc(m_gfxHandle);
			Matrix matrix = new Matrix(num, 0f, 0f, 1f, num2, 0f);
			m_gfxTarget.MultiplyTransform(matrix);
		}
	}

	private void RestoreGraphics()
	{
		if (m_bOSSupports && m_bDrawMirrored && m_oldGraphicsMode != 0)
		{
			NativeMethods.XFORM xform = new NativeMethods.XFORM
			{
				eM11 = m_oldMatrix.Elements[0],
				eM12 = m_oldMatrix.Elements[1],
				eM21 = m_oldMatrix.Elements[2],
				eM22 = m_oldMatrix.Elements[3],
				eDx = m_oldMatrix.Elements[4],
				eDy = m_oldMatrix.Elements[5]
			};
			NativeMethods.SetWorldTransform(HandleRef.ToIntPtr(m_gfxHandleWrap), ref xform);
			NativeMethods.SetGraphicsMode(m_gfxHandleWrap, m_oldGraphicsMode);
			m_gfxTarget.Transform = m_oldMatrix;
		}
	}

	private void Flush()
	{
		if (NeedBitmap)
		{
			if (m_bmpCanvas != null)
			{
				Matrix transform = m_gfxTarget.Transform;
				Matrix matrix = new Matrix(-1f, 0f, 0f, 1f, m_rectTargetBounds.Right + m_rectTargetBounds.Left, 0f);
				m_gfxTarget.MultiplyTransform(matrix);
				m_gfxTarget.DrawImage(m_bmpCanvas, m_rectTargetBounds);
				m_gfxTarget.Transform = transform;
			}
		}
		else if (m_bOSSupports)
		{
			RestoreGraphics();
		}
	}
}
