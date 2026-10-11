using System;
using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI;

[ComVisible(false)]
public class Adapter
{
	public static T[] ToArray1Object<T>(object oParam)
	{
		if (!(oParam is object[] array))
		{
			throw new ArgumentException();
		}
		T[] array2 = new T[array.GetLength(0)];
		for (int i = array.GetLowerBound(0); i <= array.GetUpperBound(0); i++)
		{
			array2[i] = (T)array[i];
		}
		return array2;
	}

	public static T[] ToArray1Number<T>(object oParam)
	{
		if (!(oParam is object[] array))
		{
			throw new ArgumentException();
		}
		T[] array2 = new T[array.GetLength(0)];
		for (int i = array.GetLowerBound(0); i <= array.GetUpperBound(0); i++)
		{
			array2[i] = (T)Convert.ChangeType(array[i], array2[i].GetType());
		}
		return array2;
	}

	public static object ToObject<T>(T[] oTypedArray)
	{
		if (oTypedArray == null)
		{
			return DBNull.Value;
		}
		object[] array = new object[oTypedArray.Length];
		if (oTypedArray.GetType() == Type.GetType("System.Int64[]"))
		{
			for (int i = oTypedArray.GetLowerBound(0); i <= oTypedArray.GetUpperBound(0); i++)
			{
				array[i] = Convert.ChangeType(oTypedArray[i], TypeCode.Int32);
			}
		}
		else
		{
			for (int j = oTypedArray.GetLowerBound(0); j <= oTypedArray.GetUpperBound(0); j++)
			{
				array[j] = oTypedArray[j];
			}
		}
		return array;
	}

	public static T[,] ToArray2<T>(object oParam)
	{
		if (!(oParam is object[,] array))
		{
			throw new ArgumentException();
		}
		T[,] array2 = new T[array.GetLength(0), array.GetLength(1)];
		for (int i = array.GetLowerBound(0); i <= array.GetUpperBound(0); i++)
		{
			for (int j = array.GetLowerBound(1); j <= array.GetUpperBound(1); j++)
			{
				array2[i, j] = (T)Convert.ChangeType(array[i, j], array2[i, j].GetType());
			}
		}
		return array2;
	}

	public static object ToObject<T>(T[,] oTypedArray)
	{
		if (oTypedArray == null)
		{
			return DBNull.Value;
		}
		object[,] array = new object[oTypedArray.GetLength(0), oTypedArray.GetLength(1)];
		if (oTypedArray.GetType() == Type.GetType("System.Int64[,]"))
		{
			for (int i = oTypedArray.GetLowerBound(0); i <= oTypedArray.GetUpperBound(0); i++)
			{
				for (int j = oTypedArray.GetLowerBound(1); j <= oTypedArray.GetUpperBound(1); j++)
				{
					array[i, j] = Convert.ChangeType(oTypedArray[i, j], TypeCode.Int32);
				}
			}
		}
		else
		{
			for (int k = oTypedArray.GetLowerBound(0); k <= oTypedArray.GetUpperBound(0); k++)
			{
				for (int l = oTypedArray.GetLowerBound(1); l <= oTypedArray.GetUpperBound(1); l++)
				{
					array[k, l] = oTypedArray[k, l];
				}
			}
		}
		return array;
	}

	public static T[][] ToArray2Jagged<T>(object oParam)
	{
		if (!(oParam is object[,] array))
		{
			throw new ArgumentException();
		}
		T[][] array2 = new T[array.GetLength(0)][];
		for (int i = array.GetLowerBound(0); i <= array.GetUpperBound(0); i++)
		{
			array2[i] = new T[array.GetLength(1)];
			for (int j = array.GetLowerBound(1); j <= array.GetUpperBound(1); j++)
			{
				array2[i][j] = (T)Convert.ChangeType(array[i, j], array2[i][j].GetType());
			}
		}
		return array2;
	}

	public static object ToObject<T>(T[][] oTypedArray)
	{
		if (oTypedArray == null)
		{
			return DBNull.Value;
		}
		object[,] array = new object[oTypedArray.GetLength(0), oTypedArray[0].GetLength(0)];
		if (oTypedArray.GetType() == Type.GetType("System.Int64[][]"))
		{
			for (int i = oTypedArray.GetLowerBound(0); i <= oTypedArray.GetUpperBound(0); i++)
			{
				for (int j = oTypedArray[i].GetLowerBound(0); j <= oTypedArray[i].GetUpperBound(0); j++)
				{
					array[i, j] = Convert.ChangeType(oTypedArray[i][j], TypeCode.Int32);
				}
			}
		}
		else
		{
			for (int k = oTypedArray.GetLowerBound(0); k <= oTypedArray.GetUpperBound(0); k++)
			{
				for (int l = oTypedArray[k].GetLowerBound(0); l <= oTypedArray[k].GetUpperBound(0); l++)
				{
					array[k, l] = oTypedArray[k][l];
				}
			}
		}
		return array;
	}

	public static float ToFloat(double val)
	{
		return Convert.ToSingle(val);
	}

	public static double ToDouble(float val)
	{
		return Convert.ToDouble(val);
	}
}
