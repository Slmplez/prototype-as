using System;
using System.IO;

namespace de.kandid.io;

public class File
{
	private string _path;

	private static readonly char[] _pathSeps = new char[2] { '/', '\\' };

	public File(File parent, File child)
		: this(parent, child._path)
	{
	}

	public File(File parent, string child)
	{
		_path = ((parent._path.Length == 0) ? child : (parent._path + "/" + child));
	}

	public File(string path)
	{
		_path = path;
	}

	public string getPath()
	{
		return _path;
	}

	public string getName()
	{
		int num = _path.LastIndexOfAny(_pathSeps);
		if (num == -1)
		{
			return _path;
		}
		return _path.Substring(num + 1);
	}

	public bool isDirectory()
	{
		return Directory.Exists(_path);
	}

	public void mkdirs()
	{
		Directory.CreateDirectory(_path);
	}

	public File getParentFile()
	{
		return new File(Directory.GetParent(_path).FullName);
	}

	public bool exists()
	{
		return System.IO.File.Exists(_path);
	}

	public override string ToString()
	{
		return _path;
	}

	public string[] list()
	{
		return list("*");
	}

	public string[] list(string pattern)
	{
		string[] fileSystemEntries = Directory.GetFileSystemEntries(_path, pattern);
		for (int i = 0; i < fileSystemEntries.Length; i++)
		{
			fileSystemEntries[i] = fileSystemEntries[i].Substring(fileSystemEntries[i].LastIndexOfAny(_pathSeps) + 1);
		}
		return fileSystemEntries;
	}

	public static void remove(File dir, string pattern)
	{
		Console.WriteLine(string.Concat("Checking in ", dir, " pattern: ", pattern));
		if (dir.isDirectory())
		{
			Console.WriteLine(string.Concat("Removing in ", dir, " pattern: ", pattern));
			remove(new DirectoryInfo(dir._path), pattern);
		}
	}

	public static void remove(DirectoryInfo dir, string pattern)
	{
		FileInfo[] files = dir.GetFiles(pattern);
		foreach (FileInfo fileInfo in files)
		{
			fileInfo.Delete();
		}
		DirectoryInfo[] directories = dir.GetDirectories(pattern);
		foreach (DirectoryInfo directoryInfo in directories)
		{
			directoryInfo.Delete(recursive: true);
		}
	}

	public static void copy(File src, File dest, string pattern)
	{
		copy(new DirectoryInfo(src._path), new DirectoryInfo(dest._path), pattern);
	}

	public static void copy(DirectoryInfo source, DirectoryInfo target, string pattern)
	{
		if (!Directory.Exists(target.FullName))
		{
			Directory.CreateDirectory(target.FullName);
		}
		FileInfo[] files = source.GetFiles(pattern);
		foreach (FileInfo fileInfo in files)
		{
			fileInfo.CopyTo(Path.Combine(target.ToString(), fileInfo.Name), overwrite: true);
		}
		DirectoryInfo[] directories = source.GetDirectories(pattern);
		foreach (DirectoryInfo directoryInfo in directories)
		{
			DirectoryInfo target2 = target.CreateSubdirectory(directoryInfo.Name);
			copy(directoryInfo, target2, "*");
		}
	}
}
