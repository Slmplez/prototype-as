using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;

namespace AscetAPI.ConcurrencyTests;

public class ConcurrentReadTest
{
	public class TestResult
	{
		public int ThreadId { get; set; }

		public string Operation { get; set; }

		public long ElapsedMs { get; set; }

		public bool Success { get; set; }

		public string ErrorMessage { get; set; }

		public DateTime Timestamp { get; set; }
	}

	private dynamic ascetApp;

	private dynamic database;

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
			if (database == null)
			{
				Console.WriteLine("数据库打开失败，返回 null");
				return false;
			}
			Console.WriteLine("ASCET 连接初始化成功");
			return true;
		}
		catch (Exception ex)
		{
			Console.WriteLine($"初始化失败: {ex.Message}");
			Console.WriteLine($"堆栈跟踪: {ex.StackTrace}");
			return false;
		}
	}

	public void Test1_ConcurrentReadProjects(int threadCount = 10)
	{
		Console.WriteLine($"\n=== 测试1: {threadCount} 个线程并发读取项目列表 ===");
		List<Task> list = new List<Task>();
		ManualResetEventSlim startSignal = new ManualResetEventSlim(initialState: false);
		for (int i = 0; i < threadCount; i++)
		{
			int threadId = i;
			Task item = Task.Run(delegate
			{
				startSignal.Wait();
				ReadProjects(threadId);
			});
			list.Add(item);
		}
		Thread.Sleep(100);
		Stopwatch stopwatch = Stopwatch.StartNew();
		startSignal.Set();
		Task.WaitAll(list.ToArray());
		stopwatch.Stop();
		PrintResults($"并发读取项目列表 ({threadCount} 线程)", stopwatch.ElapsedMilliseconds);
	}

	public void Test2_ConcurrentReadElements(int threadCount = 10)
	{
		Console.WriteLine($"\n=== 测试2: {threadCount} 个线程并发读取模型元素 ===");
		List<Task> list = new List<Task>();
		ManualResetEventSlim startSignal = new ManualResetEventSlim(initialState: false);
		for (int i = 0; i < threadCount; i++)
		{
			int threadId = i;
			Task item = Task.Run(delegate
			{
				startSignal.Wait();
				ReadModelElements(threadId);
			});
			list.Add(item);
		}
		Thread.Sleep(100);
		Stopwatch stopwatch = Stopwatch.StartNew();
		startSignal.Set();
		Task.WaitAll(list.ToArray());
		stopwatch.Stop();
		PrintResults($"并发读取模型元素 ({threadCount} 线程)", stopwatch.ElapsedMilliseconds);
	}

	public void Test3_MixedReadWrite(int readerCount = 8, int writerCount = 2)
	{
		Console.WriteLine($"\n=== 测试3: 混合并发 ({readerCount} 读 + {writerCount} 写) ===");
		List<Task> list = new List<Task>();
		ManualResetEventSlim startSignal = new ManualResetEventSlim(initialState: false);
		for (int i = 0; i < readerCount; i++)
		{
			int threadId = i;
			Task item = Task.Run(delegate
			{
				startSignal.Wait();
				ReadWithLockCheck(threadId);
			});
			list.Add(item);
		}
		for (int i = 0; i < writerCount; i++)
		{
			int threadId2 = readerCount + i;
			Task item = Task.Run(delegate
			{
				startSignal.Wait();
				WriteWithLock(threadId2);
			});
			list.Add(item);
		}
		Thread.Sleep(100);
		Stopwatch stopwatch = Stopwatch.StartNew();
		startSignal.Set();
		Task.WaitAll(list.ToArray());
		stopwatch.Stop();
		PrintResults($"混合读写 ({readerCount}R + {writerCount}W)", stopwatch.ElapsedMilliseconds);
	}

	public void Test4_StressTest(int threadCount = 20, int durationSeconds = 10)
	{
		Console.WriteLine($"\n=== 测试4: 压力测试 ({threadCount} 线程, {durationSeconds} 秒) ===");
		CancellationTokenSource cts = new CancellationTokenSource();
		List<Task> list = new List<Task>();
		Stopwatch stopwatch = Stopwatch.StartNew();
		for (int i = 0; i < threadCount; i++)
		{
			int threadId = i;
			Task item = Task.Run(delegate
			{
				while (!cts.Token.IsCancellationRequested)
				{
					ReadProjects(threadId);
					Thread.Sleep(100);
				}
			}, cts.Token);
			list.Add(item);
		}
		Thread.Sleep(durationSeconds * 1000);
		cts.Cancel();
		try
		{
			Task.WaitAll(list.ToArray());
		}
		catch (AggregateException)
		{
		}
		stopwatch.Stop();
		PrintResults($"压力测试 ({threadCount} 线程)", stopwatch.ElapsedMilliseconds);
	}

	private void ReadProjects(int threadId)
	{
		Stopwatch stopwatch = Stopwatch.StartNew();
		TestResult testResult = new TestResult();
		testResult.ThreadId = threadId;
		testResult.Operation = "ReadProjects";
		testResult.Timestamp = DateTime.Now;
		TestResult testResult2 = testResult;
		try
		{
			dynamic allComponentsOfType = database.GetAllComponentsOfType("Project");
			int num = 0;
			if (allComponentsOfType != null)
			{
				foreach (dynamic item in allComponentsOfType)
				{
					object name = item.GetName();
					num++;
				}
			}
			stopwatch.Stop();
			testResult2.ElapsedMs = stopwatch.ElapsedMilliseconds;
			testResult2.Success = true;
			Console.WriteLine($"[线程 {threadId}] 读取 {num} 个项目, 耗时: {stopwatch.ElapsedMilliseconds}ms");
		}
		catch (Exception ex)
		{
			stopwatch.Stop();
			testResult2.ElapsedMs = stopwatch.ElapsedMilliseconds;
			testResult2.Success = false;
			testResult2.ErrorMessage = ex.Message;
			Console.WriteLine($"[线程 {threadId}] 读取失败: {ex.Message}");
		}
		lock (lockObj)
		{
			results.Add(testResult2);
		}
	}

	private void ReadModelElements(int threadId)
	{
		Stopwatch stopwatch = Stopwatch.StartNew();
		TestResult testResult = new TestResult();
		testResult.ThreadId = threadId;
		testResult.Operation = "ReadModelElements";
		testResult.Timestamp = DateTime.Now;
		TestResult testResult2 = testResult;
		try
		{
			int num = 0;
			string[] array = new string[3] { "ModuleESDL", "ClassESDL", "Project" };
			string[] array2 = array;
			foreach (string text in array2)
			{
				dynamic allComponentsOfType = database.GetAllComponentsOfType(text);
				if (allComponentsOfType != null)
				{
					foreach (dynamic item in allComponentsOfType)
					{
						object name = item.GetName();
						num++;
					}
				}
				if (num > 20)
				{
					break;
				}
			}
			stopwatch.Stop();
			testResult2.ElapsedMs = stopwatch.ElapsedMilliseconds;
			testResult2.Success = true;
			Console.WriteLine($"[线程 {threadId}] 读取 {num} 个元素, 耗时: {stopwatch.ElapsedMilliseconds}ms");
		}
		catch (Exception ex)
		{
			stopwatch.Stop();
			testResult2.ElapsedMs = stopwatch.ElapsedMilliseconds;
			testResult2.Success = false;
			testResult2.ErrorMessage = ex.Message;
			Console.WriteLine($"[线程 {threadId}] 读取元素失败: {ex.Message}");
		}
		lock (lockObj)
		{
			results.Add(testResult2);
		}
	}

	private void ReadWithLockCheck(int threadId)
	{
		Stopwatch stopwatch = Stopwatch.StartNew();
		TestResult testResult = new TestResult();
		testResult.ThreadId = threadId;
		testResult.Operation = "ReadWithLockCheck";
		testResult.Timestamp = DateTime.Now;
		TestResult testResult2 = testResult;
		try
		{
			bool flag = ascetApp.IsDatabaseLocked();
			if (flag)
			{
				Console.WriteLine($"[线程 {threadId}] 数据库已锁定，等待...");
				Thread.Sleep(100);
			}
			dynamic allComponentsOfType = database.GetAllComponentsOfType("Project");
			int num = 0;
			if (allComponentsOfType != null)
			{
				foreach (object item in allComponentsOfType)
				{
					num++;
				}
			}
			stopwatch.Stop();
			testResult2.ElapsedMs = stopwatch.ElapsedMilliseconds;
			testResult2.Success = true;
			Console.WriteLine($"[线程 {threadId}] 读取完成 (锁状态: {flag}), 耗时: {stopwatch.ElapsedMilliseconds}ms");
		}
		catch (Exception ex)
		{
			stopwatch.Stop();
			testResult2.ElapsedMs = stopwatch.ElapsedMilliseconds;
			testResult2.Success = false;
			testResult2.ErrorMessage = ex.Message;
			Console.WriteLine($"[线程 {threadId}] 读取失败: {ex.Message}");
		}
		lock (lockObj)
		{
			results.Add(testResult2);
		}
	}

	private void WriteWithLock(int threadId)
	{
		Stopwatch stopwatch = Stopwatch.StartNew();
		TestResult testResult = new TestResult();
		testResult.ThreadId = threadId;
		testResult.Operation = "WriteWithLock";
		testResult.Timestamp = DateTime.Now;
		TestResult testResult2 = testResult;
		try
		{
			bool flag = ascetApp.LockDatabase();
			if (!flag)
			{
				Console.WriteLine($"[线程 {threadId}] 锁定数据库失败");
				testResult2.Success = false;
				testResult2.ErrorMessage = "Failed to lock database";
				return;
			}
			Console.WriteLine($"[线程 {threadId}] 已锁定数据库");
			Thread.Sleep(200);
			bool flag2 = ascetApp.UnlockDatabase();
			if (flag2)
			{
				Console.WriteLine($"[线程 {threadId}] 已解锁数据库");
			}
			else
			{
				Console.WriteLine($"[线程 {threadId}] 解锁数据库失败");
			}
			stopwatch.Stop();
			testResult2.ElapsedMs = stopwatch.ElapsedMilliseconds;
			testResult2.Success = flag && flag2;
		}
		catch (Exception ex)
		{
			stopwatch.Stop();
			testResult2.ElapsedMs = stopwatch.ElapsedMilliseconds;
			testResult2.Success = false;
			testResult2.ErrorMessage = ex.Message;
			Console.WriteLine($"[线程 {threadId}] 写入失败: {ex.Message}");
			try
			{
				ascetApp.UnlockDatabase();
			}
			catch
			{
			}
		}
		lock (lockObj)
		{
			results.Add(testResult2);
		}
	}

	private void PrintResults(string testName, long totalMs)
	{
		Console.WriteLine($"\n--- {testName} 结果统计 ---");
		Console.WriteLine($"总耗时: {totalMs}ms");
		Console.WriteLine($"总操作数: {results.Count}");
		int num = results.Count((TestResult r) => r.Success);
		int num2 = results.Count((TestResult r) => !r.Success);
		Console.WriteLine($"成功: {num}, 失败: {num2}");
		Console.WriteLine($"成功率: {(double)num * 100.0 / (double)results.Count:F2}%");
		if (results.Any((TestResult r) => r.Success))
		{
			double num3 = results.Where((TestResult r) => r.Success).Average((TestResult r) => r.ElapsedMs);
			long num4 = results.Where((TestResult r) => r.Success).Min((TestResult r) => r.ElapsedMs);
			long num5 = results.Where((TestResult r) => r.Success).Max((TestResult r) => r.ElapsedMs);
			Console.WriteLine($"平均响应时间: {num3:F2}ms");
			Console.WriteLine($"最快响应: {num4}ms");
			Console.WriteLine($"最慢响应: {num5}ms");
		}
		if (num2 > 0)
		{
			Console.WriteLine("\n失败详情:");
			foreach (TestResult item in results.Where((TestResult r) => !r.Success).Take(5))
			{
				Console.WriteLine($"  线程 {item.ThreadId}: {item.ErrorMessage}");
			}
		}
		results.Clear();
	}

	public void Cleanup()
	{
		try
		{
			Console.WriteLine("\n正在清理资源...");
			if (database != null)
			{
				database.Close();
				Console.WriteLine("数据库已关闭");
			}
			if (ascetApp != null)
			{
				ascetApp.CloseTool();
				Console.WriteLine("ASCET 工具已关闭");
			}
			Console.WriteLine("资源清理完成");
		}
		catch (Exception ex)
		{
			Console.WriteLine($"清理失败: {ex.Message}");
		}
	}

	public static void Main(string[] args)
	{
		ConcurrentReadTest concurrentReadTest = new ConcurrentReadTest();
		try
		{
			if (!concurrentReadTest.Initialize())
			{
				Console.WriteLine("初始化失败，测试终止");
				return;
			}
			Console.WriteLine("\n开始 ASCET API 并发读取测试...\n");
			concurrentReadTest.Test1_ConcurrentReadProjects();
			Thread.Sleep(1000);
			concurrentReadTest.Test2_ConcurrentReadElements();
			Thread.Sleep(1000);
			concurrentReadTest.Test3_MixedReadWrite();
			Thread.Sleep(1000);
			concurrentReadTest.Test4_StressTest();
			Console.WriteLine("\n所有测试完成!");
		}
		catch (Exception ex)
		{
			Console.WriteLine($"\n测试异常: {ex.Message}");
			Console.WriteLine(ex.StackTrace);
		}
		finally
		{
			concurrentReadTest.Cleanup();
		}
		Console.WriteLine("\n按任意键退出...");
		Console.ReadKey();
	}
}
