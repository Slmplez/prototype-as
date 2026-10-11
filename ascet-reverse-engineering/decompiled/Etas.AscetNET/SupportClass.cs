using System;
using System.Collections;
using System.Collections.Specialized;
using System.Globalization;
using System.IO;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading;
using System.Windows.Forms;

[ComVisible(false)]
public class SupportClass
{
	[ComVisible(false)]
	public class ThreadClass : IThreadRunnable
	{
		private Thread threadField;

		public Thread Instance
		{
			get
			{
				return threadField;
			}
			set
			{
				threadField = value;
			}
		}

		public string Name
		{
			get
			{
				return threadField.Name;
			}
			set
			{
				if (threadField.Name == null)
				{
					threadField.Name = value;
				}
			}
		}

		public ThreadPriority Priority
		{
			get
			{
				return threadField.Priority;
			}
			set
			{
				threadField.Priority = value;
			}
		}

		public bool IsAlive => threadField.IsAlive;

		public bool IsBackground
		{
			get
			{
				return threadField.IsBackground;
			}
			set
			{
				threadField.IsBackground = value;
			}
		}

		public ThreadClass()
		{
			threadField = new Thread(Run);
		}

		public ThreadClass(string Name)
		{
			threadField = new Thread(Run);
			this.Name = Name;
		}

		public ThreadClass(ThreadStart Start)
		{
			threadField = new Thread(Start);
		}

		public ThreadClass(ThreadStart Start, string Name)
		{
			threadField = new Thread(Start);
			this.Name = Name;
		}

		public virtual void Run()
		{
		}

		public virtual void Start()
		{
			threadField.Start();
		}

		public virtual void Interrupt()
		{
			threadField.Interrupt();
		}

		public void Join()
		{
			threadField.Join();
		}

		public void Join(long MiliSeconds)
		{
			lock (this)
			{
				threadField.Join(new TimeSpan(MiliSeconds * 10000));
			}
		}

		public void Join(long MiliSeconds, int NanoSeconds)
		{
			lock (this)
			{
				threadField.Join(new TimeSpan(MiliSeconds * 10000 + NanoSeconds * 100));
			}
		}

		public void Abort()
		{
			threadField.Abort();
		}

		public void Abort(object stateInfo)
		{
			lock (this)
			{
				threadField.Abort(stateInfo);
			}
		}

		public override string ToString()
		{
			return "Thread[" + Name + "," + Priority.ToString() + ",]";
		}

		public static ThreadClass Current()
		{
			ThreadClass threadClass = new ThreadClass();
			threadClass.Instance = Thread.CurrentThread;
			return threadClass;
		}
	}

	[ComVisible(false)]
	public class RandomAccessFileSupport
	{
		public static FileStream CreateRandomAccessFile(string fileName, string mode)
		{
			FileStream fileStream = null;
			if (mode.CompareTo("rw") == 0)
			{
				return new FileStream(fileName, FileMode.OpenOrCreate, FileAccess.ReadWrite);
			}
			if (mode.CompareTo("r") == 0)
			{
				return new FileStream(fileName, FileMode.Open, FileAccess.Read);
			}
			throw new ArgumentException();
		}

		public static FileStream CreateRandomAccessFile(FileInfo fileName, string mode)
		{
			return CreateRandomAccessFile(fileName.FullName, mode);
		}

		public static void WriteBytes(string data, FileStream fileStream)
		{
			int num = 0;
			int length = data.Length;
			while (num < length)
			{
				fileStream.WriteByte((byte)data[num++]);
			}
		}

		public static void WriteChars(string data, FileStream fileStream)
		{
			WriteBytes(data, fileStream);
		}

		public static void WriteRandomFile(sbyte[] sByteArray, FileStream fileStream)
		{
			byte[] array = ToByteArray(sByteArray);
			fileStream.Write(array, 0, array.Length);
		}
	}

	[ComVisible(false)]
	public class Tokenizer : IEnumerator
	{
		private long currentPos;

		private bool includeDelims;

		private char[] chars;

		private string delimiters = " \t\n\r\f";

		public int Count
		{
			get
			{
				long num = currentPos;
				int num2 = 0;
				try
				{
					while (true)
					{
						NextToken();
						num2++;
					}
				}
				catch (ArgumentOutOfRangeException)
				{
					currentPos = num;
					return num2;
				}
			}
		}

		public object Current => NextToken();

		public Tokenizer(string source)
		{
			chars = source.ToCharArray();
		}

		public Tokenizer(string source, string delimiters)
			: this(source)
		{
			this.delimiters = delimiters;
		}

		public Tokenizer(string source, string delimiters, bool includeDelims)
			: this(source, delimiters)
		{
			this.includeDelims = includeDelims;
		}

		public string NextToken()
		{
			return NextToken(delimiters);
		}

		public string NextToken(string delimiters)
		{
			this.delimiters = delimiters;
			if (currentPos == chars.Length)
			{
				throw new ArgumentOutOfRangeException();
			}
			if (Array.IndexOf(delimiters.ToCharArray(), chars[currentPos]) != -1 && includeDelims)
			{
				return string.Concat(chars[currentPos++]);
			}
			return nextToken(delimiters.ToCharArray());
		}

		private string nextToken(char[] delimiters)
		{
			string text = "";
			long num = currentPos;
			while (Array.IndexOf(delimiters, chars[currentPos]) != -1)
			{
				if (++currentPos == chars.Length)
				{
					currentPos = num;
					throw new ArgumentOutOfRangeException();
				}
			}
			while (Array.IndexOf(delimiters, chars[currentPos]) == -1)
			{
				text += chars[currentPos];
				if (++currentPos == chars.Length)
				{
					break;
				}
			}
			return text;
		}

		public bool HasMoreTokens()
		{
			long num = currentPos;
			try
			{
				NextToken();
			}
			catch (ArgumentOutOfRangeException)
			{
				return false;
			}
			finally
			{
				currentPos = num;
			}
			return true;
		}

		public bool MoveNext()
		{
			return HasMoreTokens();
		}

		public void Reset()
		{
		}
	}

	[ComVisible(false)]
	public class DateTimeFormatManager
	{
		[ComVisible(false)]
		public class DateTimeFormatHashTable : Hashtable
		{
			private class DateTimeFormatProperties
			{
				public string DateFormatPattern = "d-MMM-yy";

				public string TimeFormatPattern = "h:mm:ss tt";
			}

			public void SetDateFormatPattern(DateTimeFormatInfo format, string newPattern)
			{
				if (this[format] != null)
				{
					((DateTimeFormatProperties)this[format]).DateFormatPattern = newPattern;
					return;
				}
				DateTimeFormatProperties dateTimeFormatProperties = new DateTimeFormatProperties();
				dateTimeFormatProperties.DateFormatPattern = newPattern;
				Add(format, dateTimeFormatProperties);
			}

			public string GetDateFormatPattern(DateTimeFormatInfo format)
			{
				if (this[format] == null)
				{
					return "d-MMM-yy";
				}
				return ((DateTimeFormatProperties)this[format]).DateFormatPattern;
			}

			public void SetTimeFormatPattern(DateTimeFormatInfo format, string newPattern)
			{
				if (this[format] != null)
				{
					((DateTimeFormatProperties)this[format]).TimeFormatPattern = newPattern;
					return;
				}
				DateTimeFormatProperties dateTimeFormatProperties = new DateTimeFormatProperties();
				dateTimeFormatProperties.TimeFormatPattern = newPattern;
				Add(format, dateTimeFormatProperties);
			}

			public string GetTimeFormatPattern(DateTimeFormatInfo format)
			{
				if (this[format] == null)
				{
					return "h:mm:ss tt";
				}
				return ((DateTimeFormatProperties)this[format]).TimeFormatPattern;
			}
		}

		public static DateTimeFormatHashTable manager = new DateTimeFormatHashTable();
	}

	[ComVisible(false)]
	public class DialogSupport
	{
		public static Form CreateDialog()
		{
			Form form = new Form();
			form.FormBorderStyle = FormBorderStyle.SizableToolWindow;
			form.ShowInTaskbar = false;
			return form;
		}

		public static void SetDialog(Form formInstance)
		{
			formInstance.FormBorderStyle = FormBorderStyle.SizableToolWindow;
			formInstance.ShowInTaskbar = false;
		}

		public static Form CreateDialog(Form owner)
		{
			Form form = new Form();
			form.FormBorderStyle = FormBorderStyle.SizableToolWindow;
			form.ShowInTaskbar = false;
			form.Owner = owner;
			return form;
		}

		public static void SetDialog(Form formInstance, Form owner)
		{
			formInstance.FormBorderStyle = FormBorderStyle.SizableToolWindow;
			formInstance.ShowInTaskbar = false;
			formInstance.Owner = owner;
		}

		public static Form CreateDialog(Form owner, string text)
		{
			Form form = new Form();
			form.FormBorderStyle = FormBorderStyle.SizableToolWindow;
			form.ShowInTaskbar = false;
			form.Owner = owner;
			form.Text = text;
			return form;
		}

		public static void SetDialog(Form formInstance, Form owner, string text)
		{
			formInstance.FormBorderStyle = FormBorderStyle.SizableToolWindow;
			formInstance.ShowInTaskbar = false;
			formInstance.Owner = owner;
			formInstance.Text = text;
		}

		public static void SetSizable(Form formInstance, bool sizable)
		{
			if (sizable)
			{
				formInstance.FormBorderStyle = FormBorderStyle.SizableToolWindow;
			}
			else
			{
				formInstance.FormBorderStyle = FormBorderStyle.FixedDialog;
			}
		}
	}

	[ComVisible(false)]
	public class CommandManager
	{
		private static Hashtable Commands = new Hashtable();

		public static void SetCommand(object obj, string cmd)
		{
			if (obj != null)
			{
				if (Commands.Contains(obj))
				{
					Commands[obj] = cmd;
				}
				else
				{
					Commands.Add(obj, cmd);
				}
			}
		}

		public static string GetCommand(object obj)
		{
			string result = "";
			if (obj != null)
			{
				result = Convert.ToString(Commands[obj]);
			}
			return result;
		}

		public static void CheckCommand(ButtonBase button)
		{
			if (button != null && GetCommand(button).Equals(""))
			{
				SetCommand(button, button.Text);
			}
		}

		public static void CheckCommand(MenuItem menuItem)
		{
			if (menuItem != null && GetCommand(menuItem).Equals(""))
			{
				SetCommand(menuItem, menuItem.Text);
			}
		}

		public static void CheckCommand(ComboBox comboBox)
		{
			if (comboBox != null && GetCommand(comboBox).Equals(""))
			{
				SetCommand(comboBox, "comboBoxChanged");
			}
		}
	}

	public static NameValueCollection GetProperties()
	{
		NameValueCollection nameValueCollection = new NameValueCollection();
		ArrayList arrayList = new ArrayList(Environment.GetEnvironmentVariables().Keys);
		ArrayList arrayList2 = new ArrayList(Environment.GetEnvironmentVariables().Values);
		for (int i = 0; i < arrayList.Count; i++)
		{
			nameValueCollection.Add(arrayList[i].ToString(), arrayList2[i].ToString());
		}
		return nameValueCollection;
	}

	public static byte[] ToByteArray(sbyte[] sbyteArray)
	{
		byte[] array = null;
		if (sbyteArray != null)
		{
			array = new byte[sbyteArray.Length];
			for (int i = 0; i < sbyteArray.Length; i++)
			{
				array[i] = (byte)sbyteArray[i];
			}
		}
		return array;
	}

	public static byte[] ToByteArray(string sourceString)
	{
		return Encoding.GetEncoding(0).GetBytes(sourceString);
	}

	public static byte[] ToByteArray(object[] tempObjectArray)
	{
		byte[] array = null;
		if (tempObjectArray != null)
		{
			array = new byte[tempObjectArray.Length];
			for (int i = 0; i < tempObjectArray.Length; i++)
			{
				array[i] = (byte)tempObjectArray[i];
			}
		}
		return array;
	}

	public static sbyte[] ToSByteArray(byte[] byteArray)
	{
		sbyte[] array = null;
		if (byteArray != null)
		{
			array = new sbyte[byteArray.Length];
			Buffer.BlockCopy(byteArray, 0, array, 0, byteArray.Length);
		}
		return array;
	}

	public static char[] ToCharArray(sbyte[] sByteArray)
	{
		byte[] array = null;
		if (sByteArray != null)
		{
			array = new byte[sByteArray.Length];
			Buffer.BlockCopy(sByteArray, 0, array, 0, sByteArray.Length);
		}
		return ToCharArray(array);
	}

	public static char[] ToCharArray(byte[] byteArray)
	{
		return Encoding.GetEncoding(0).GetChars(byteArray);
	}

	public static int URShift(int number, int bits)
	{
		if (number >= 0)
		{
			return number >> bits;
		}
		return (number >> bits) + (2 << ~bits);
	}

	public static int URShift(int number, long bits)
	{
		return URShift(number, (int)bits);
	}

	public static long URShift(long number, int bits)
	{
		if (number >= 0)
		{
			return number >> bits;
		}
		return (number >> bits) + (2L << ~bits);
	}

	public static long URShift(long number, long bits)
	{
		return URShift(number, (int)bits);
	}

	public static int ReadInput(Stream sourceStream, sbyte[] target, int start, int count)
	{
		if (target.Length == 0)
		{
			return 0;
		}
		byte[] array = new byte[target.Length];
		int num;
		try
		{
			num = sourceStream.Read(array, start, count);
		}
		catch (Exception)
		{
			num = 0;
		}
		if (num == 0)
		{
			return -1;
		}
		for (int i = start; i < start + num; i++)
		{
			target[i] = (sbyte)array[i];
		}
		return num;
	}

	public static int ReadInput(TextReader sourceTextReader, sbyte[] target, int start, int count)
	{
		if (target.Length == 0)
		{
			return 0;
		}
		char[] array = new char[target.Length];
		int num = sourceTextReader.Read(array, start, count);
		if (num == 0)
		{
			return -1;
		}
		for (int i = start; i < start + num; i++)
		{
			target[i] = (sbyte)array[i];
		}
		return num;
	}

	public static void SetCapacity(ArrayList vector, int newCapacity)
	{
		if (newCapacity > vector.Count)
		{
			vector.AddRange(new Array[newCapacity - vector.Count]);
		}
		else if (newCapacity < vector.Count)
		{
			vector.RemoveRange(newCapacity, vector.Count - newCapacity);
		}
		vector.Capacity = newCapacity;
	}

	public static DateTimeFormatInfo GetDateTimeFormatInstance(int dateStyle, int timeStyle, CultureInfo culture)
	{
		DateTimeFormatInfo dateTimeFormat = culture.DateTimeFormat;
		switch (timeStyle)
		{
		case -1:
			DateTimeFormatManager.manager.SetTimeFormatPattern(dateTimeFormat, "");
			break;
		case 0:
			DateTimeFormatManager.manager.SetTimeFormatPattern(dateTimeFormat, dateTimeFormat.LongTimePattern);
			break;
		case 1:
			DateTimeFormatManager.manager.SetTimeFormatPattern(dateTimeFormat, "h:mm:ss tt zzz");
			break;
		case 2:
			DateTimeFormatManager.manager.SetTimeFormatPattern(dateTimeFormat, "h:mm:ss tt");
			break;
		case 3:
			DateTimeFormatManager.manager.SetTimeFormatPattern(dateTimeFormat, dateTimeFormat.ShortTimePattern);
			break;
		}
		switch (dateStyle)
		{
		case -1:
			DateTimeFormatManager.manager.SetDateFormatPattern(dateTimeFormat, "");
			break;
		case 0:
			DateTimeFormatManager.manager.SetDateFormatPattern(dateTimeFormat, dateTimeFormat.LongDatePattern);
			break;
		case 1:
			DateTimeFormatManager.manager.SetDateFormatPattern(dateTimeFormat, "MMMM d, yyy");
			break;
		case 2:
			DateTimeFormatManager.manager.SetDateFormatPattern(dateTimeFormat, "MMM d, yyy");
			break;
		case 3:
			DateTimeFormatManager.manager.SetDateFormatPattern(dateTimeFormat, dateTimeFormat.ShortDatePattern);
			break;
		}
		return dateTimeFormat;
	}

	public static string FormatDateTime(DateTimeFormatInfo format, DateTime date)
	{
		string timeFormatPattern = DateTimeFormatManager.manager.GetTimeFormatPattern(format);
		string dateFormatPattern = DateTimeFormatManager.manager.GetDateFormatPattern(format);
		return date.ToString(dateFormatPattern + " " + timeFormatPattern, format);
	}
}
