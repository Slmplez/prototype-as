using System;
using System.Drawing;
using System.Reflection;

namespace Syncfusion.Drawing;

public class DoubleBufferSurface : IDisposable
{
	private BufferedGraphicsContext context = new BufferedGraphicsContext();

	private BufferedGraphics bufferedGraphics;

	private Graphics targetGraphics;

	private IntPtr dib;

	private bool dirty = true;

	public bool Dirty
	{
		get
		{
			return dirty;
		}
		set
		{
			dirty = value;
		}
	}

	public Graphics Graphics
	{
		get
		{
			dirty = true;
			return bufferedGraphics.Graphics;
		}
	}

	public DoubleBufferSurface(Graphics targetGraphics, Rectangle targetRectangle)
	{
		bufferedGraphics = context.Allocate(targetGraphics, targetRectangle);
		this.targetGraphics = targetGraphics;
		dib = Getdib(GetContext(bufferedGraphics));
	}

	public void SetTargetGraphics(Graphics g)
	{
		if (targetGraphics != null)
		{
			targetGraphics.Dispose();
		}
		targetGraphics = g;
	}

	public Bitmap CreateDrawingSurfaceBitmap()
	{
		dirty = true;
		return Image.FromHbitmap(dib);
	}

	public void Render(Graphics target)
	{
		bufferedGraphics.Render(target);
		dirty = false;
	}

	public void Render()
	{
		if (dirty)
		{
			bufferedGraphics.Render(targetGraphics);
			dirty = false;
		}
	}

	public Rectangle ScrollWindow(int xAmount, int yAmount, Rectangle rect, Rectangle clipRect)
	{
		int num = Math.Abs(yAmount);
		int num2 = Math.Abs(xAmount);
		Rectangle result = rect;
		rect.Height -= num;
		rect.Width -= num2;
		Rectangle srcRect = rect;
		Rectangle destRect = rect;
		if (yAmount < 0)
		{
			srcRect.Y += num;
			result.Y = rect.Bottom - num;
		}
		else if (yAmount > 0)
		{
			destRect.Y += num;
			result.Height = num;
		}
		if (xAmount < 0)
		{
			srcRect.X += num2;
			result.X = rect.Right - num2;
		}
		else if (xAmount > 0)
		{
			destRect.X += num2;
			result.Width = num2;
		}
		srcRect.Intersect(clipRect);
		destRect.Intersect(clipRect);
		result.Intersect(clipRect);
		Bitmap bitmap = CreateDrawingSurfaceBitmap();
		Graphics.DrawImage(bitmap, destRect, srcRect, GraphicsUnit.Pixel);
		bitmap.Dispose();
		dirty = true;
		return result;
	}

	private BufferedGraphicsContext GetContext(BufferedGraphics bg)
	{
		FieldInfo field = typeof(BufferedGraphics).GetField("context", BindingFlags.Instance | BindingFlags.NonPublic);
		return (BufferedGraphicsContext)field.GetValue(bg);
	}

	private IntPtr Getdib(BufferedGraphicsContext bgc)
	{
		FieldInfo field = typeof(BufferedGraphicsContext).GetField("dib", BindingFlags.Instance | BindingFlags.NonPublic);
		return (IntPtr)field.GetValue(bgc);
	}

	public void Dispose()
	{
		bufferedGraphics.Dispose();
		context.Dispose();
		dib = IntPtr.Zero;
		if (targetGraphics != null)
		{
			targetGraphics.Dispose();
		}
	}
}
