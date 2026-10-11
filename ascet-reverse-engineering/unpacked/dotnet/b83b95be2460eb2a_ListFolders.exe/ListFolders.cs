using System;

internal class ListFolders
{
	private static void Main()
	{
		try
		{
			Console.WriteLine("正在初始化 ASCET...");
			Type typeFromProgID = Type.GetTypeFromProgID("Ascet.Ascet.6.4.0");
			dynamic val = Activator.CreateInstance(typeFromProgID);
			string text = "d:\\ETASData\\ASCET6.4\\Database\\Tutorial";
			Console.WriteLine($"正在打开数据库: {text}");
			dynamic val2 = val.OpenDataBase(text);
			if (val2 == null)
			{
				Console.WriteLine("数据库打开失败");
				return;
			}
			Console.WriteLine("\n正在列出所有顶层文件夹...");
			dynamic allAscetFolders = val2.GetAllAscetFolders();
			Console.WriteLine(string.Format("找到 {0} 个文件夹:", allAscetFolders.Length));
			for (int i = 0; i < allAscetFolders.Length; i++)
			{
				try
				{
					string arg = allAscetFolders[i].GetName();
					Console.WriteLine($"  [{i}] {arg}");
				}
				catch (Exception ex)
				{
					Console.WriteLine($"  [{i}] 无法读取: {ex.Message}");
				}
			}
			val2.Close();
			val.Exit();
		}
		catch (Exception ex)
		{
			Console.WriteLine($"错误: {ex.Message}");
		}
	}
}
