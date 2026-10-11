using System;

internal class CheckPID
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
			Console.WriteLine("\n正在列出 DEMO 文件夹中的所有组件...");
			dynamic ascetFolder = val2.GetAscetFolder("DEMO");
			dynamic components = ascetFolder.GetComponents();
			Console.WriteLine(string.Format("找到 {0} 个组件:", components.Length));
			for (int i = 0; i < components.Length; i++)
			{
				try
				{
					string arg = components[i].GetName();
					string arg2 = components[i].GetType().Name;
					Console.WriteLine($"  [{i}] {arg} (类型: {arg2})");
				}
				catch (Exception ex)
				{
					Console.WriteLine($"  [{i}] 无法读取: {ex.Message}");
				}
			}
			Console.WriteLine("\n尝试直接获取 PID 组件...");
			try
			{
				dynamic component = ascetFolder.GetComponent("PID");
				if (component != null)
				{
					Console.WriteLine(string.Format("PID 组件找到: {0}", component.GetName()));
					Console.WriteLine(string.Format("类型: {0}", component.GetType().Name));
				}
				else
				{
					Console.WriteLine("PID 组件返回 null");
				}
			}
			catch (Exception ex)
			{
				Console.WriteLine($"获取 PID 失败: {ex.Message}");
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
