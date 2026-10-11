using System.IO;

namespace de.kandid.io;

public abstract class RootFile
{
	public class Dir : RootFile
	{
		public File _root;

		public Dir(File root)
		{
			_root = root;
		}

		public override Stream getInputStream(File subPath)
		{
			return System.IO.File.OpenRead(new File(_root, subPath).getPath());
		}

		public override bool exists(File subPath)
		{
			return new File(_root, subPath).exists();
		}

		public override File[] getChidren(File subPath)
		{
			string[] array = new File(_root, subPath).list();
			File[] array2 = new File[array.Length];
			for (int i = 0; i < array2.Length; i++)
			{
				array2[i] = new File(subPath, array[i]);
			}
			return array2;
		}

		public override bool isDirectory(File subPath)
		{
			return new File(_root, subPath).isDirectory();
		}

		public override string ToString()
		{
			return "file://" + _root;
		}
	}

	public static readonly File ROOT = new File("");

	public abstract Stream getInputStream(File subPath);

	public abstract bool exists(File subPath);

	public abstract File[] getChidren(File subPath);

	public abstract bool isDirectory(File subPath);

	public static RootFile makeFrom(File root)
	{
		return new Dir(root);
	}
}
