using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading;

namespace AscetAPI.ConcurrencyTests;

public class PIDConcurrentTest
{
	public class TestResult
	{
		public int ThreadId { get; set; }

		public string Operation { get; set; }

		public long ElapsedMs { get; set; }

		public bool Success { get; set; }

		public string ErrorMessage { get; set; }
	}

	private dynamic ascetApp;

	private dynamic database;

	private dynamic pidComponent;

	private readonly object lockObj = new object();

	private List<TestResult> results = new List<TestResult>();

	public bool Initialize()
	{
		try
		{
			Console.WriteLine("正在初始化 ASCET 连接...");
			Type typeFromProgID = Type.GetTypeFromProgID("Ascet.Ascet.6.4.0");
			ascetApp = Activator.CreateInstance(typeFromProgID);
			string text = "d:\\ETASData\\ASCET6.4\\Database\\Tutorial";
			Console.WriteLine($"正在打开数据库: {text}");
			database = ascetApp.OpenDataBase(text);
			Console.WriteLine("正在打开 \\DEMO\\PID...");
			dynamic ascetFolder = database.GetAscetFolder("DEMO");
			pidComponent = ascetFolder.GetComponent("PID");
			Console.WriteLine("PID 组件打开成功");
			string arg = pidComponent.GetType().Name;
			Console.WriteLine($"组件类型: {arg}");
			return true;
		}
		catch (Exception ex)
		{
			Console.WriteLine($"初始化失败: {ex.Message}");
			return false;
		}
	}

	public void Test1_ConcurrentReadElements()
	{
		Console.WriteLine("\n=== 测试1: 10 线程并发读取 PID 元素 ===");
		results.Clear();
		int num = 10;
		Thread[] array = new Thread[num];
		Stopwatch stopwatch = Stopwatch.StartNew();
		for (int i = 0; i < num; i++)
		{
			int threadId = i;
			array[i] = new Thread((ThreadStart)delegate
			{
				Stopwatch stopwatch2 = Stopwatch.StartNew();
				object obj3 = default(object);
				try
				{
					string text = pidComponent.GetName();
					int num3 = 0;
					try
					{
						dynamic elements = pidComponent.GetElements();
						num3 = elements.Length;
					}
					catch
					{
						try
						{
							dynamic methodElements = pidComponent.GetMethodElements();
							num3 = methodElements.Length;
						}
						catch
						{
						}
					}
					stopwatch2.Stop();
					Console.WriteLine($"[线程 {threadId}] 读取成功: {text}, 元素数: {num3}, 耗时: {stopwatch2.ElapsedMilliseconds}ms");
					bool lockTaken = false;
					try
					{
						Monitor.Enter(obj3 = lockObj, ref lockTaken);
						results.Add(new TestResult
						{
							ThreadId = threadId,
							Operation = "ReadElements",
							ElapsedMs = stopwatch2.ElapsedMilliseconds,
							Success = true
						});
					}
					finally
					{
						if (lockTaken)
						{
							Monitor.Exit(obj3);
						}
					}
				}
				catch (Exception ex)
				{
					stopwatch2.Stop();
					Console.WriteLine($"[线程 {threadId}] 失败: {ex.Message}, 耗时: {stopwatch2.ElapsedMilliseconds}ms");
					bool lockTaken2 = false;
					try
					{
						Monitor.Enter(obj3 = lockObj, ref lockTaken2);
						results.Add(new TestResult
						{
							ThreadId = threadId,
							Operation = "ReadElements",
							ElapsedMs = stopwatch2.ElapsedMilliseconds,
							Success = false,
							ErrorMessage = ex.Message
						});
					}
					finally
					{
						if (lockTaken2)
						{
							Monitor.Exit(obj3);
						}
					}
				}
			});
			array[i].Start();
		}
		Thread[] array2 = array;
		foreach (Thread thread in array2)
		{
			thread.Join();
		}
		stopwatch.Stop();
		PrintStatistics("并发读取元素 (10 线程)", stopwatch.ElapsedMilliseconds);
	}

	public void Test2_ConcurrentReadProperties()
	{
		Console.WriteLine("\n=== 测试2: 10 线程并发读取 PID 属性 ===");
		results.Clear();
		int num = 10;
		Thread[] array = new Thread[num];
		Stopwatch stopwatch = Stopwatch.StartNew();
		for (int i = 0; i < num; i++)
		{
			int threadId = i;
			array[i] = new Thread((ThreadStart)delegate
			{
				Stopwatch stopwatch2 = Stopwatch.StartNew();
				object obj2 = default(object);
				try
				{
					string text = pidComponent.GetName();
					string text2 = "";
					try
					{
						text2 = pidComponent.GetDescription();
					}
					catch
					{
					}
					stopwatch2.Stop();
					Console.WriteLine($"[线程 {threadId}] 读取属性成功, 耗时: {stopwatch2.ElapsedMilliseconds}ms");
					bool lockTaken = false;
					try
					{
						Monitor.Enter(obj2 = lockObj, ref lockTaken);
						results.Add(new TestResult
						{
							ThreadId = threadId,
							Operation = "ReadProperties",
							ElapsedMs = stopwatch2.ElapsedMilliseconds,
							Success = true
						});
					}
					finally
					{
						if (lockTaken)
						{
							Monitor.Exit(obj2);
						}
					}
				}
				catch (Exception ex)
				{
					stopwatch2.Stop();
					Console.WriteLine($"[线程 {threadId}] 失败: {ex.Message}");
					bool lockTaken2 = false;
					try
					{
						Monitor.Enter(obj2 = lockObj, ref lockTaken2);
						results.Add(new TestResult
						{
							ThreadId = threadId,
							Operation = "ReadProperties",
							ElapsedMs = stopwatch2.ElapsedMilliseconds,
							Success = false,
							ErrorMessage = ex.Message
						});
					}
					finally
					{
						if (lockTaken2)
						{
							Monitor.Exit(obj2);
						}
					}
				}
			});
			array[i].Start();
		}
		Thread[] array2 = array;
		foreach (Thread thread in array2)
		{
			thread.Join();
		}
		stopwatch.Stop();
		PrintStatistics("并发读取属性 (10 线程)", stopwatch.ElapsedMilliseconds);
	}

	public void Test3_MixedReadWrite()
	{
		Console.WriteLine("\n=== 测试3: 读写混合 (8读 + 2写) ===");
		results.Clear();
		int num = 10;
		Thread[] array = new Thread[num];
		Stopwatch stopwatch = Stopwatch.StartNew();
		for (int i = 0; i < num; i++)
		{
			int threadId = i;
			bool isWriter = i >= 8;
			array[i] = new Thread((ThreadStart)delegate
			{
				Stopwatch stopwatch2 = Stopwatch.StartNew();
				object obj = default(object);
				try
				{
					if (isWriter)
					{
						Console.WriteLine($"[线程 {threadId}] 尝试锁定数据库");
						if ((bool)ascetApp.LockDatabase())
						{
							Thread.Sleep(100);
							ascetApp.UnlockDatabase();
							Console.WriteLine($"[线程 {threadId}] 已解锁数据库");
						}
					}
					else
					{
						string text = pidComponent.GetName();
						Console.WriteLine($"[线程 {threadId}] 读取成功, 耗时: {stopwatch2.ElapsedMilliseconds}ms");
					}
					stopwatch2.Stop();
					bool lockTaken = false;
					try
					{
						Monitor.Enter(obj = lockObj, ref lockTaken);
						results.Add(new TestResult
						{
							ThreadId = threadId,
							Operation = (isWriter ? "Write" : "Read"),
							ElapsedMs = stopwatch2.ElapsedMilliseconds,
							Success = true
						});
					}
					finally
					{
						if (lockTaken)
						{
							Monitor.Exit(obj);
						}
					}
				}
				catch (Exception ex)
				{
					stopwatch2.Stop();
					Console.WriteLine($"[线程 {threadId}] 失败: {ex.Message}");
					bool lockTaken2 = false;
					try
					{
						Monitor.Enter(obj = lockObj, ref lockTaken2);
						results.Add(new TestResult
						{
							ThreadId = threadId,
							Operation = (isWriter ? "Write" : "Read"),
							ElapsedMs = stopwatch2.ElapsedMilliseconds,
							Success = false,
							ErrorMessage = ex.Message
						});
					}
					finally
					{
						if (lockTaken2)
						{
							Monitor.Exit(obj);
						}
					}
				}
			});
			array[i].Start();
		}
		Thread[] array2 = array;
		foreach (Thread thread in array2)
		{
			thread.Join();
		}
		stopwatch.Stop();
		PrintStatistics("混合读写 (8R + 2W)", stopwatch.ElapsedMilliseconds);
	}

	public void Test4_StressTest()
	{
		Console.WriteLine("\n=== 测试4: 压力测试 (20 线程, 10 秒) ===");
		results.Clear();
		int num = 20;
		Thread[] array = new Thread[num];
		Stopwatch stopwatch = Stopwatch.StartNew();
		bool running = true;
		for (int i = 0; i < num; i++)
		{
			int threadId = i;
			array[i] = new Thread((ThreadStart)delegate
			{
				object obj = default(object);
				while (running && stopwatch.ElapsedMilliseconds < 10000)
				{
					Stopwatch stopwatch2 = Stopwatch.StartNew();
					try
					{
						string text = pidComponent.GetName();
						stopwatch2.Stop();
						Console.WriteLine($"[线程 {threadId}] 读取成功, 耗时: {stopwatch2.ElapsedMilliseconds}ms");
						bool lockTaken = false;
						try
						{
							Monitor.Enter(obj = lockObj, ref lockTaken);
							results.Add(new TestResult
							{
								ThreadId = threadId,
								Operation = "StressRead",
								ElapsedMs = stopwatch2.ElapsedMilliseconds,
								Success = true
							});
						}
						finally
						{
							if (lockTaken)
							{
								Monitor.Exit(obj);
							}
						}
						Thread.Sleep(10);
					}
					catch (Exception ex)
					{
						stopwatch2.Stop();
						bool lockTaken2 = false;
						try
						{
							Monitor.Enter(obj = lockObj, ref lockTaken2);
							results.Add(new TestResult
							{
								ThreadId = threadId,
								Operation = "StressRead",
								ElapsedMs = stopwatch2.ElapsedMilliseconds,
								Success = false,
								ErrorMessage = ex.Message
							});
						}
						finally
						{
							if (lockTaken2)
							{
								Monitor.Exit(obj);
							}
						}
					}
				}
			});
			array[i].Start();
		}
		Thread[] array2 = array;
		foreach (Thread thread in array2)
		{
			thread.Join();
		}
		running = false;
		stopwatch.Stop();
		PrintStatistics("压力测试 (20 线程)", stopwatch.ElapsedMilliseconds);
	}

	private void PrintStatistics(string testName, long totalMs)
	{
		Console.WriteLine($"\n--- {testName} 测试统计 ---");
		Console.WriteLine($"总耗时: {totalMs}ms");
		Console.WriteLine($"总操作数: {results.Count}");
		int num = results.Count((TestResult r) => r.Success);
		int num2 = results.Count((TestResult r) => !r.Success);
		Console.WriteLine($"成功: {num}, 失败: {num2}");
		Console.WriteLine($"成功率: {(double)num * 100.0 / (double)results.Count:F2}%");
		if (num > 0)
		{
			List<TestResult> source = results.Where((TestResult r) => r.Success).ToList();
			double num3 = source.Average((TestResult r) => r.ElapsedMs);
			long num4 = source.Min((TestResult r) => r.ElapsedMs);
			long num5 = source.Max((TestResult r) => r.ElapsedMs);
			Console.WriteLine($"平均响应时间: {num3:F2}ms");
			Console.WriteLine($"最快响应: {num4}ms");
			Console.WriteLine($"最慢响应: {num5}ms");
		}
	}

	public void Cleanup()
	{
		try
		{
			Console.WriteLine("\n正在清理资源...");
			if (database != null)
			{
				database.Close();
			}
			if (ascetApp != null)
			{
				ascetApp.Exit();
			}
		}
		catch (Exception ex)
		{
			Console.WriteLine($"清理失败: {ex.Message}");
		}
	}

	private static void Main(string[] args)
	{
		PIDConcurrentTest pIDConcurrentTest = new PIDConcurrentTest();
		if (!pIDConcurrentTest.Initialize())
		{
			Console.WriteLine("\n初始化失败，测试终止");
			return;
		}
		Console.WriteLine("\n开始 PID 组件并发测试...");
		pIDConcurrentTest.Test1_ConcurrentReadElements();
		pIDConcurrentTest.Test2_ConcurrentReadProperties();
		pIDConcurrentTest.Test3_MixedReadWrite();
		pIDConcurrentTest.Test4_StressTest();
		Console.WriteLine("\n所有测试完成!");
		pIDConcurrentTest.Cleanup();
	}
}
