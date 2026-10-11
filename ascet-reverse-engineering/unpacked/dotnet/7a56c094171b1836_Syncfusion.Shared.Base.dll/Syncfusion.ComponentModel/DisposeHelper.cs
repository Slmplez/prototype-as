using System;
using System.Collections;
using System.ComponentModel;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;
using Syncfusion.Collections;
using Syncfusion.Windows.Forms;

namespace Syncfusion.ComponentModel;

public sealed class DisposeHelper
{
	public static void Dispose(ref ImageList list)
	{
		if (list != null)
		{
			list.Images.Clear();
			list.Dispose();
			list = null;
		}
	}

	public static void Dispose(ref IList collection)
	{
		if (collection != null)
		{
			collection.Clear();
			collection = null;
		}
	}

	public static void Dispose(ref IDictionary dictionary)
	{
		if (dictionary != null)
		{
			dictionary.Clear();
			dictionary = null;
		}
	}

	public static void Dispose(ref NativeWindow window)
	{
		if (window != null)
		{
			try
			{
				window.ReleaseHandle();
			}
			catch (Exception)
			{
			}
			window = null;
		}
	}

	public static void Dispose(ref IDisposable value)
	{
		if (value != null)
		{
			value.Dispose();
			value = null;
		}
	}

	public static void Dispose(ref Component component)
	{
		if (component != null)
		{
			component.Dispose();
			component = null;
		}
	}

	public static void Dispose(ref ToolTipAdv tooltip)
	{
		if (tooltip != null)
		{
			tooltip.Dispose();
			tooltip = null;
		}
	}

	public static void Dispose(ref DragHelper dragHelper)
	{
		if (dragHelper != null)
		{
			dragHelper.Dispose();
			dragHelper = null;
		}
	}

	public static void Dispose(ref Pen pen)
	{
		if (pen != null)
		{
			pen.Dispose();
			pen = null;
		}
	}

	public static void Dispose(ref Brush brush)
	{
		if (brush != null)
		{
			brush.Dispose();
			brush = null;
		}
	}

	public static void Dispose(ref Graphics graphics)
	{
		if (graphics != null)
		{
			graphics.Dispose();
			graphics = null;
		}
	}

	public static void Dispose(ref GraphicsPath path)
	{
		if (path != null)
		{
			path.Dispose();
			path = null;
		}
	}

	public static void Dispose(ref StringFormat format)
	{
		if (format != null)
		{
			format.Dispose();
			format = null;
		}
	}

	public static void Dispose(ref ArrayListExt collection)
	{
		if (collection != null)
		{
			if (collection is IDisposable)
			{
				((IDisposable)collection).Dispose();
			}
			collection.Clear();
			collection = null;
		}
	}

	public static void DisposeItems(ref IList collection)
	{
		if (collection == null)
		{
			return;
		}
		foreach (object item in collection)
		{
			if (item is IDisposable)
			{
				((IDisposable)item).Dispose();
			}
		}
		collection.Clear();
		collection = null;
	}
}
