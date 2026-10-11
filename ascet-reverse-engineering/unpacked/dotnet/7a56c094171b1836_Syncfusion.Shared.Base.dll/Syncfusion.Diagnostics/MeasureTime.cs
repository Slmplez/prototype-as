using System;
using System.Collections;
using System.Runtime.InteropServices;
using System.Text;

namespace Syncfusion.Diagnostics;

public class MeasureTime : IDisposable
{
	private static Hashtable times = new Hashtable();

	private long ticks;

	private string id = "";

	public long TickCount
	{
		get
		{
			long lpPerformanceCount = 0L;
			QueryPerformanceCounter(ref lpPerformanceCount);
			return lpPerformanceCount;
		}
	}

	[DllImport("Kernel32.dll")]
	private static extern int QueryPerformanceFrequency(ref long lpFrequency);

	[DllImport("Kernel32.dll")]
	private static extern int QueryPerformanceCounter(ref long lpPerformanceCount);

	private MeasureTime(string id)
	{
		this.id = id;
		ticks = TickCount;
	}

	public static MeasureTime Measure(string id)
	{
		return new MeasureTime(id);
	}

	public void Dispose()
	{
		long num = TickCount - ticks;
		if (times.ContainsKey(id))
		{
			times[id] = (long)times[id] + num;
		}
		else
		{
			times[id] = num;
		}
	}

	private static long GetFrequency()
	{
		long lpFrequency = 0L;
		if (QueryPerformanceFrequency(ref lpFrequency) == 0)
		{
			throw new NotSupportedException("Error while querying the performance counter frequency.");
		}
		return lpFrequency;
	}

	public static string DumpTimes()
	{
		StringBuilder stringBuilder = new StringBuilder();
		stringBuilder.Append("MeasureTime results:");
		ArrayList arrayList = new ArrayList();
		foreach (DictionaryEntry time in times)
		{
			long num = (long)time.Value;
			double num2 = (double)num / (double)GetFrequency() * 1000.0 * 1000.0;
			string arg = time.Key.ToString();
			StringBuilder stringBuilder2 = new StringBuilder("\r\n");
			if (num2 < 1000.0)
			{
				stringBuilder2.AppendFormat("{0} Time = {1} us", arg, num2.ToString("F2"));
			}
			else if (num2 < 1000000.0)
			{
				stringBuilder2.AppendFormat("{0} Time = {1} ms", arg, (num2 / 1000.0).ToString("F2"));
			}
			else
			{
				stringBuilder2.AppendFormat("{0} Time = {1} s", arg, (num2 / 1000000.0).ToString("F2"));
			}
			arrayList.Add(stringBuilder2.ToString());
		}
		arrayList.Sort();
		foreach (string item in arrayList)
		{
			stringBuilder.Append(item);
		}
		times.Clear();
		return stringBuilder.ToString();
	}
}
