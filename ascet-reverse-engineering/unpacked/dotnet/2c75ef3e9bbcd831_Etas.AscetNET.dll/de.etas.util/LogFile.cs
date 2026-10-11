using System;
using System.Globalization;
using System.IO;
using System.Runtime.InteropServices;
using de.etas.cebra;

namespace de.etas.util;

[ComVisible(false)]
public class LogFile
{
	private string dateiName;

	private long startZeit;

	private static bool logEnabled;

	private static DateTimeFormatInfo formatter;

	public virtual string Name
	{
		get
		{
			return dateiName;
		}
		set
		{
			if (dateiName.ToUpper().Equals(value.ToUpper()))
			{
				return;
			}
			try
			{
				FileInfo fileInfo = new FileInfo(dateiName);
				FileInfo fileInfo2 = new FileInfo(value);
				if (File.Exists(fileInfo2.FullName) || Directory.Exists(fileInfo2.FullName))
				{
					if (File.Exists(fileInfo2.FullName))
					{
						File.Delete(fileInfo2.FullName);
						bool flag = true;
					}
					else if (Directory.Exists(fileInfo2.FullName))
					{
						Directory.Delete(fileInfo2.FullName);
						bool flag = true;
					}
					else
					{
						bool flag = false;
					}
				}
				fileInfo.MoveTo(fileInfo2.FullName);
				dateiName = value;
			}
			catch (Exception ex)
			{
				Cebra.println("Could not rename " + dateiName + " to " + value + ".");
				Cebra.println("Exception :" + Cebra.LF + ex);
			}
		}
	}

	public LogFile(string path)
	{
		dateiName = path;
		try
		{
			FileInfo fileInfo = new FileInfo(path);
			if (File.Exists(fileInfo.FullName) || Directory.Exists(fileInfo.FullName))
			{
				if (File.Exists(fileInfo.FullName))
				{
					File.Delete(fileInfo.FullName);
					bool flag = true;
				}
				else if (Directory.Exists(fileInfo.FullName))
				{
					Directory.Delete(fileInfo.FullName);
					bool flag = true;
				}
				else
				{
					bool flag = false;
				}
			}
		}
		catch (Exception ex)
		{
			Cebra.println("Exception in " + GetType().FullName + ": " + ex);
		}
		startZeit = DateTime.Now.Ticks;
	}

	public static void enableLogging(bool t)
	{
		lock (typeof(LogFile))
		{
			logEnabled = t;
		}
	}

	protected internal static string getTimeString()
	{
		return SupportClass.FormatDateTime(formatter, DateTime.Now);
	}

	protected internal static string getTimeString(ref DateTime t)
	{
		return SupportClass.FormatDateTime(formatter, t);
	}

	public static bool loggingEnabled()
	{
		lock (typeof(LogFile))
		{
			return logEnabled;
		}
	}

	public virtual void logMessage(string msg)
	{
		lock (this)
		{
			if (msg == null || !logEnabled)
			{
				return;
			}
			try
			{
				DateTime t = DateTime.Now;
				string timeString = getTimeString(ref t);
				long num = (t.Ticks - startZeit) / 10;
				FileStream fileStream = SupportClass.RandomAccessFileSupport.CreateRandomAccessFile(dateiName, "rw");
				fileStream.Seek(fileStream.Length, SeekOrigin.Begin);
				SupportClass.RandomAccessFileSupport.WriteBytes("(" + timeString + " = " + num + " us after start):" + Cebra.LF + msg + Cebra.LF + "--------------------------------------------------------------------------------" + Cebra.LF, fileStream);
				fileStream.Close();
			}
			catch (IOException)
			{
			}
		}
	}

	static LogFile()
	{
		formatter = SupportClass.GetDateTimeFormatInstance(2, 2, CultureInfo.CurrentCulture);
	}
}
