using System;
using System.Security.Permissions;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Grid;

[DocumentationExclude]
public class GridFontState
{
	private const int _LOGPIXELSX = 88;

	private const int _LOGPIXELSY = 90;

	[DocumentationExclude]
	public static int m_nLogPixelsY;

	[DocumentationExclude]
	public static int m_nLogPixelsX;

	[DocumentationExclude]
	public static int LogPixelsX
	{
		get
		{
			if (m_nLogPixelsX == 0)
			{
				CheckLogPixels();
			}
			return m_nLogPixelsX;
		}
	}

	[DocumentationExclude]
	public static int LogPixelsY
	{
		get
		{
			if (m_nLogPixelsY == 0)
			{
				CheckLogPixels();
			}
			return m_nLogPixelsY;
		}
	}

	[DocumentationExclude]
	public GridFontState()
	{
	}

	[DocumentationExclude]
	[SecurityPermission(SecurityAction.Demand, UnmanagedCode = true)]
	private static void CheckLogPixels()
	{
		IntPtr dC = NativeMethods.GetDC(NativeMethods.NullIntPtr);
		if (dC != NativeMethods.NullIntPtr)
		{
			m_nLogPixelsX = NativeMethods.GetDeviceCaps(dC, 88);
			m_nLogPixelsY = NativeMethods.GetDeviceCaps(dC, 90);
			NativeMethods.ReleaseDC(NativeMethods.NullIntPtr, dC);
		}
	}

	[DocumentationExclude]
	public static void Reset()
	{
		m_nLogPixelsX = 0;
		m_nLogPixelsY = 0;
	}

	[DocumentationExclude]
	public static int INCHtoDP(float f)
	{
		return (int)(f * (float)LogPixelsX);
	}

	[DocumentationExclude]
	public static int CMtoDP(float f)
	{
		return (int)(f * (float)LogPixelsX / 2.54f);
	}

	[DocumentationExclude]
	public static float DPtoINCH(int f)
	{
		return (float)f / (float)LogPixelsX;
	}

	[DocumentationExclude]
	public static float DPtoCM(int f)
	{
		return (float)f * 2.54f / (float)LogPixelsX;
	}
}
