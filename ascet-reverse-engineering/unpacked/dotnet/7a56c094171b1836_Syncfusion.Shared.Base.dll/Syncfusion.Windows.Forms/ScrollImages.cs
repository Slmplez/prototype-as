using System;
using System.Drawing;
using System.IO;
using System.Reflection;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms;

[DocumentationExclude]
internal class ScrollImages
{
	[ThreadStatic]
	internal static Bitmap _downFilled;

	[ThreadStatic]
	internal static Bitmap _downOut;

	[ThreadStatic]
	internal static Bitmap _leftFilled;

	[ThreadStatic]
	internal static Bitmap _leftOut;

	[ThreadStatic]
	internal static Bitmap _upFilled;

	[ThreadStatic]
	internal static Bitmap _upOut;

	[ThreadStatic]
	internal static Bitmap _rightFilled;

	[ThreadStatic]
	internal static Bitmap _rightOut;

	[ThreadStatic]
	internal static Bitmap _vs2010LeftFilled;

	[ThreadStatic]
	internal static Bitmap _vs2010RightFilled;

	[ThreadStatic]
	internal static Bitmap _vs2010DownFilled;

	[ThreadStatic]
	internal static Bitmap _vs2010UpFilled;

	[ThreadStatic]
	internal static Bitmap _vs2010LeftOut;

	[ThreadStatic]
	internal static Bitmap _vs2010RightOut;

	[ThreadStatic]
	internal static Bitmap _vs2010UpOut;

	[ThreadStatic]
	internal static Bitmap _vs2010DownOut;

	public static Bitmap downFilled
	{
		get
		{
			if (_downFilled == null)
			{
				_downFilled = GetBitmap("Syncfusion.Windows.Forms.Images.DownFilled.bmp");
				_downFilled.MakeTransparent(Color.White);
			}
			return _downFilled;
		}
	}

	public static Bitmap downOut
	{
		get
		{
			if (_downOut == null)
			{
				_downOut = GetBitmap("Syncfusion.Windows.Forms.Images.DownOut.bmp");
				_downOut.MakeTransparent(Color.White);
			}
			return _downOut;
		}
	}

	public static Bitmap leftFilled
	{
		get
		{
			if (_leftFilled == null)
			{
				_leftFilled = GetBitmap("Syncfusion.Windows.Forms.Images.LeftFilled.bmp");
				_leftFilled.MakeTransparent(Color.White);
			}
			return _leftFilled;
		}
	}

	public static Bitmap leftOut
	{
		get
		{
			if (_leftOut == null)
			{
				_leftOut = GetBitmap("Syncfusion.Windows.Forms.Images.LeftOut.bmp");
				_leftOut.MakeTransparent(Color.White);
			}
			return _leftOut;
		}
	}

	public static Bitmap upFilled
	{
		get
		{
			if (_upFilled == null)
			{
				_upFilled = GetBitmap("Syncfusion.Windows.Forms.Images.UpFilled.bmp");
				_upFilled.MakeTransparent(Color.White);
			}
			return _upFilled;
		}
	}

	public static Bitmap upOut
	{
		get
		{
			if (_upOut == null)
			{
				_upOut = GetBitmap("Syncfusion.Windows.Forms.Images.UpOut.bmp");
				_upOut.MakeTransparent(Color.White);
			}
			return _upOut;
		}
	}

	public static Bitmap rightFilled
	{
		get
		{
			if (_rightFilled == null)
			{
				_rightFilled = GetBitmap("Syncfusion.Windows.Forms.Images.RightFilled.bmp");
				_rightFilled.MakeTransparent(Color.White);
			}
			return _rightFilled;
		}
	}

	public static Bitmap rightOut
	{
		get
		{
			if (_rightOut == null)
			{
				_rightOut = GetBitmap("Syncfusion.Windows.Forms.Images.RightOut.bmp");
				_rightOut.MakeTransparent(Color.White);
			}
			return _rightOut;
		}
	}

	public static Bitmap VS2010RightOut
	{
		get
		{
			if (_vs2010RightOut == null)
			{
				_vs2010RightOut = GetBitmap("Syncfusion.Windows.Forms.Images.VS2010RightOut.bmp");
				_vs2010RightOut.MakeTransparent(Color.Black);
			}
			return _vs2010RightOut;
		}
	}

	public static Bitmap VS2010RightFilled
	{
		get
		{
			if (_vs2010RightFilled == null)
			{
				_vs2010RightFilled = GetBitmap("Syncfusion.Windows.Forms.Images.VS2010RightFilled.bmp");
				_vs2010RightFilled.MakeTransparent(Color.Black);
			}
			return _vs2010RightFilled;
		}
	}

	public static Bitmap VS2010LeftFilled
	{
		get
		{
			if (_vs2010LeftFilled == null)
			{
				_vs2010LeftFilled = GetBitmap("Syncfusion.Windows.Forms.Images.VS2010LeftFilled.bmp");
				_vs2010LeftFilled.MakeTransparent(Color.Black);
			}
			return _vs2010LeftFilled;
		}
	}

	public static Bitmap VS2010LeftOut
	{
		get
		{
			if (_vs2010LeftOut == null)
			{
				_vs2010LeftOut = GetBitmap("Syncfusion.Windows.Forms.Images.VS2010LeftOut.bmp");
				_vs2010LeftOut.MakeTransparent(Color.Black);
			}
			return _vs2010LeftOut;
		}
	}

	public static Bitmap VS2010DownFilled
	{
		get
		{
			if (_vs2010DownFilled == null)
			{
				_vs2010DownFilled = GetBitmap("Syncfusion.Windows.Forms.Images.VS2010DownFilled.bmp");
				_vs2010DownFilled.MakeTransparent(Color.Black);
			}
			return _vs2010DownFilled;
		}
	}

	public static Bitmap VS2010DownOut
	{
		get
		{
			if (_vs2010DownOut == null)
			{
				_vs2010DownOut = GetBitmap("Syncfusion.Windows.Forms.Images.VS2010DownOut.bmp");
				_vs2010DownOut.MakeTransparent(Color.Black);
			}
			return _vs2010DownOut;
		}
	}

	public static Bitmap VS2010UpFilled
	{
		get
		{
			if (_vs2010UpFilled == null)
			{
				_vs2010UpFilled = GetBitmap("Syncfusion.Windows.Forms.Images.VS2010UpFilled.bmp");
				_vs2010UpFilled.MakeTransparent(Color.Black);
			}
			return _vs2010UpFilled;
		}
	}

	public static Bitmap VS2010UpOut
	{
		get
		{
			if (_vs2010UpOut == null)
			{
				_vs2010UpOut = GetBitmap("Syncfusion.Windows.Forms.Images.VS2010UpOut.bmp");
				_vs2010UpOut.MakeTransparent(Color.Black);
			}
			return _vs2010UpOut;
		}
	}

	private static Bitmap GetBitmap(string resourceName)
	{
		Type typeFromHandle = typeof(ScrollImages);
		Assembly assembly = typeFromHandle.Module.Assembly;
		assembly.GetManifestResourceNames();
		Stream manifestResourceStream = assembly.GetManifestResourceStream(resourceName);
		return new Bitmap(manifestResourceStream);
	}
}
