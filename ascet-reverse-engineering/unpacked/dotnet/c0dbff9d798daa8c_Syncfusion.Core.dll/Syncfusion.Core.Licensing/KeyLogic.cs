using System;
using System.Collections.Specialized;
using System.Reflection;

namespace Syncfusion.Core.Licensing;

public class KeyLogic
{
	private BitVector32 bv = new BitVector32(0);

	private static BitVector32.Section mySect1;

	private static BitVector32.Section mySect2;

	private static BitVector32.Section mySect3;

	private static BitVector32.Section mySect4;

	private static BitVector32.Section mySect5;

	private int emailChecksum;

	private uint prods;

	public int EmailChecksum
	{
		get
		{
			return emailChecksum;
		}
		set
		{
			emailChecksum = value;
		}
	}

	public uint Prods
	{
		get
		{
			return prods;
		}
		set
		{
			prods = value;
		}
	}

	public int DaysExpire
	{
		get
		{
			return bv[mySect1];
		}
		set
		{
			bv[mySect1] = value;
		}
	}

	public DateTime DateExpire
	{
		get
		{
			return new DateTime(2005, 1, 1).AddDays(DaysExpire);
		}
		set
		{
			DaysExpire = (int)(value - new DateTime(2005, 1, 1)).TotalDays;
		}
	}

	public int Type
	{
		get
		{
			return bv[mySect2];
		}
		set
		{
			bv[mySect2] = value;
		}
	}

	public int V1
	{
		get
		{
			return bv[mySect3];
		}
		set
		{
			bv[mySect3] = value;
		}
	}

	public int V2
	{
		get
		{
			return bv[mySect4];
		}
		set
		{
			bv[mySect4] = value;
		}
	}

	public int V3
	{
		get
		{
			return bv[mySect5];
		}
		set
		{
			bv[mySect5] = value;
		}
	}

	public void InitializeBitVector()
	{
		mySect1 = BitVector32.CreateSection(short.MaxValue);
		mySect2 = BitVector32.CreateSection(2, mySect1);
		if (Convert.ToInt32(Assembly.GetExecutingAssembly().GetName().Version.ToString().Substring(0, 1)) > 7)
		{
			mySect3 = BitVector32.CreateSection(14, mySect2);
		}
		else
		{
			mySect3 = BitVector32.CreateSection(7, mySect2);
		}
		mySect4 = BitVector32.CreateSection(14, mySect3);
		mySect5 = BitVector32.CreateSection(14, mySect4);
	}

	public void InitializeBitVector(int version)
	{
		mySect1 = BitVector32.CreateSection(short.MaxValue);
		mySect2 = BitVector32.CreateSection(2, mySect1);
		if (version > 7)
		{
			mySect3 = BitVector32.CreateSection(14, mySect2);
		}
		else
		{
			mySect3 = BitVector32.CreateSection(7, mySect2);
		}
		mySect4 = BitVector32.CreateSection(14, mySect3);
		mySect5 = BitVector32.CreateSection(14, mySect4);
	}

	public KeyLogic()
	{
		InitializeBitVector();
	}

	public KeyLogic(byte[] bytes)
	{
		InitializeBitVector();
		bv = new BitVector32(BitConverter.ToInt32(bytes, 0));
		emailChecksum = BitConverter.ToInt32(bytes, 4);
		prods = BitConverter.ToUInt32(bytes, 8);
	}

	public KeyLogic(int version, byte[] bytes)
	{
		InitializeBitVector(version);
		bv = new BitVector32(BitConverter.ToInt32(bytes, 0));
		emailChecksum = BitConverter.ToInt32(bytes, 4);
		prods = BitConverter.ToUInt32(bytes, 8);
	}

	public byte[] GetBytes()
	{
		byte[] array = new byte[12];
		BitConverter.GetBytes(bv.Data).CopyTo(array, 0);
		BitConverter.GetBytes(emailChecksum).CopyTo(array, 4);
		BitConverter.GetBytes(prods).CopyTo(array, 8);
		return array;
	}
}
