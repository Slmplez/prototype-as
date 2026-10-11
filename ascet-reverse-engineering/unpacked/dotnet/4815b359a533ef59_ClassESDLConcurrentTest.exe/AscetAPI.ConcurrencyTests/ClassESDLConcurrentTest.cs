using System;
using System.Collections;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;

namespace AscetAPI.ConcurrencyTests;

public class ClassESDLConcurrentTest
{
	public class TestResult
	{
		public int ThreadId { get; set; }

		public string Operation { get; set; }

		public long ElapsedMs { get; set; }

		public bool Success { get; set; }

		public string ErrorMessage { get; set; }

		public int ItemCount { get; set; }

		public DateTime Timestamp { get; set; }
	}

	private dynamic ascetApp;

	private dynamic database;

	private dynamic classESDL;

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
				Console.WriteLine("错误: 无法打开数据库");
				return false;
			}
			Console.WriteLine("ASCET 连接初始化成功");
			Console.WriteLine("\n正在打开 \\DEMO\\Class_ESDL...");
			dynamic ascetFolder = database.GetAscetFolder("DEMO");
			if (ascetFolder == null)
			{
				Console.WriteLine("错误: 无法找到 DEMO 文件夹");
				return false;
			}
			Console.WriteLine("DEMO 文件夹打开成功");
			classESDL = ascetFolder.GetComponent("Class_ESDL");
			if (classESDL == null)
			{
				Console.WriteLine("错误: 无法找到 Class_ESDL 组件");
				return false;
			}
			Console.WriteLine("Class_ESDL 组件打开成功");
			try
			{
				string arg = classESDL.GetName();
				Console.WriteLine($"组件名称: {arg}");
			}
			catch (Exception ex)
			{
				Console.WriteLine($"获取组件信息时出错: {ex.Message}");
			}
			return true;
		}
		catch (Exception ex)
		{
			Console.WriteLine($"初始化失败: {ex.Message}");
			return false;
		}
	}

	public void Test1_ConcurrentReadElements(int threadCount = 10)
	{
		Console.WriteLine($"\n=== 测试1: {threadCount} 个线程并发读取 Class_ESDL Elements ===");
		List<Task> list = new List<Task>();
		ManualResetEventSlim startSignal = new ManualResetEventSlim(initialState: false);
		for (int i = 0; i < threadCount; i++)
		{
			int threadId = i;
			Task item = Task.Run(delegate
			{
				startSignal.Wait();
				ReadElements(threadId);
			});
			list.Add(item);
		}
		Thread.Sleep(100);
		Stopwatch stopwatch = Stopwatch.StartNew();
		startSignal.Set();
		Task.WaitAll(list.ToArray());
		stopwatch.Stop();
		PrintResults($"并发读取 Elements ({threadCount} 线程)", stopwatch.ElapsedMilliseconds);
	}

	public void Test2_ConcurrentReadElementDetails(int threadCount = 10)
	{
		Console.WriteLine($"\n=== 测试2: {threadCount} 个线程并发读取 Element 详细信息 ===");
		List<Task> list = new List<Task>();
		ManualResetEventSlim startSignal = new ManualResetEventSlim(initialState: false);
		for (int i = 0; i < threadCount; i++)
		{
			int threadId = i;
			Task item = Task.Run(delegate
			{
				startSignal.Wait();
				ReadElementDetails(threadId);
			});
			list.Add(item);
		}
		Thread.Sleep(100);
		Stopwatch stopwatch = Stopwatch.StartNew();
		startSignal.Set();
		Task.WaitAll(list.ToArray());
		stopwatch.Stop();
		PrintResults($"并发读取 Element 详细信息 ({threadCount} 线程)", stopwatch.ElapsedMilliseconds);
	}

	public void Test3_MixedReadWrite()
	{
		Console.WriteLine("\n=== 测试3: 读写混合测试 (8读 + 2写) ===");
		List<Task> list = new List<Task>();
		ManualResetEventSlim startSignal = new ManualResetEventSlim(initialState: false);
		for (int i = 0; i < 8; i++)
		{
			int threadId = i;
			Task item = Task.Run(delegate
			{
				startSignal.Wait();
				ReadElements(threadId);
			});
			list.Add(item);
		}
		for (int i = 8; i < 10; i++)
		{
			int threadId2 = i;
			Task item = Task.Run(delegate
			{
				startSignal.Wait();
				SimulateWriteOperation(threadId2);
			});
			list.Add(item);
		}
		Thread.Sleep(100);
		Stopwatch stopwatch = Stopwatch.StartNew();
		startSignal.Set();
		Task.WaitAll(list.ToArray());
		stopwatch.Stop();
		PrintResults("混合读写 (8R + 2W)", stopwatch.ElapsedMilliseconds);
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
					ReadElements(threadId);
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

	private void ReadElements(int threadId)
	{
		Stopwatch stopwatch = Stopwatch.StartNew();
		TestResult testResult = new TestResult();
		testResult.ThreadId = threadId;
		testResult.Operation = "ReadElements";
		testResult.Timestamp = DateTime.Now;
		TestResult testResult2 = testResult;
		try
		{
			int num = 0;
			try
			{
				dynamic elements = classESDL.GetElements();
				if (elements != null)
				{
					foreach (object item in elements)
					{
						num++;
					}
				}
			}
			catch
			{
				try
				{
					dynamic elements = classESDL.GetAllElements();
					if (elements != null)
					{
						foreach (object item2 in elements)
						{
							num++;
						}
					}
				}
				catch
				{
					try
					{
						dynamic elements = classESDL.Elements;
						if (elements != null)
						{
							IEnumerator enumerator = ((IEnumerable)elements).GetEnumerator();
							try
							{
								while (true)
								{
									if (enumerator.MoveNext())
									{
										object current = enumerator.Current;
										num++;
										continue;
									}
									goto end_IL_0377;
								}
							}
							finally
							{
								IDisposable disposable = enumerator as IDisposable;
								if (disposable != null)
								{
									disposable.Dispose();
								}
							}
						}
						goto end_IL_0377;
					}
					catch
					{
						goto end_IL_0377;
					}
					end_IL_0377:;
				}
			}
			stopwatch.Stop();
			testResult2.ElapsedMs = stopwatch.ElapsedMilliseconds;
			testResult2.Success = true;
			testResult2.ItemCount = num;
			Console.WriteLine($"[线程 {threadId}] 读取 {num} 个 elements, 耗时: {stopwatch.ElapsedMilliseconds}ms");
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

	private void ReadElementDetails(int threadId)
	{
		Stopwatch stopwatch = Stopwatch.StartNew();
		TestResult testResult = new TestResult();
		testResult.ThreadId = threadId;
		testResult.Operation = "ReadElementDetails";
		testResult.Timestamp = DateTime.Now;
		TestResult testResult2 = testResult;
		try
		{
			int num = 0;
			try
			{
				dynamic elements = classESDL.GetElements();
				if (elements != null)
				{
					foreach (dynamic item in elements)
					{
						try
						{
							object name = item.GetName();
							object type = item.GetType();
							num++;
						}
						catch
						{
						}
					}
				}
			}
			catch
			{
			}
			stopwatch.Stop();
			testResult2.ElapsedMs = stopwatch.ElapsedMilliseconds;
			testResult2.Success = true;
			testResult2.ItemCount = num;
			Console.WriteLine($"[线程 {threadId}] 读取 {num} 个 element 详细信息, 耗时: {stopwatch.ElapsedMilliseconds}ms");
		}
		catch (Exception ex)
		{
			stopwatch.Stop();
			testResult2.ElapsedMs = stopwatch.ElapsedMilliseconds;
			testResult2.Success = false;
			testResult2.ErrorMessage = ex.Message;
			Console.WriteLine($"[线程 {threadId}] 读取详细信息失败: {ex.Message}");
		}
		lock (lockObj)
		{
			results.Add(testResult2);
		}
	}

	private void SimulateWriteOperation(int threadId)
	{
		Stopwatch stopwatch = Stopwatch.StartNew();
		TestResult testResult = new TestResult();
		testResult.ThreadId = threadId;
		testResult.Operation = "WriteOperation";
		testResult.Timestamp = DateTime.Now;
		TestResult testResult2 = testResult;
		try
		{
			Console.WriteLine($"[线程 {threadId}] 正在锁定数据库");
			dynamic val = ascetApp;
			val.LockDatabase();
			try
			{
				Thread.Sleep(100);
				dynamic elements = classESDL.GetElements();
				int num = 0;
				if (elements != null)
				{
					foreach (object item in elements)
					{
						num++;
					}
				}
				testResult2.ItemCount = num;
			}
			finally
			{
				val.UnlockDatabase();
				Console.WriteLine($"[线程 {threadId}] 已解锁数据库");
			}
			stopwatch.Stop();
			testResult2.ElapsedMs = stopwatch.ElapsedMilliseconds;
			testResult2.Success = true;
		}
		catch (Exception ex)
		{
			stopwatch.Stop();
			testResult2.ElapsedMs = stopwatch.ElapsedMilliseconds;
			testResult2.Success = false;
			testResult2.ErrorMessage = ex.Message;
			Console.WriteLine($"[线程 {threadId}] 写操作失败: {ex.Message}");
		}
		lock (lockObj)
		{
			results.Add(testResult2);
		}
	}

	private void PrintResults(string testName, long totalMs)
	{
		lock (lockObj)
		{
			List<TestResult> list = results.ToList();
			results.Clear();
			int count = list.Count;
			int num = list.Count((TestResult r) => r.Success);
			int num2 = count - num;
			double num3 = ((count > 0) ? ((double)num * 100.0 / (double)count) : 0.0);
			List<TestResult> source = list.Where((TestResult r) => r.Success && r.ElapsedMs > 0).ToList();
			double num4 = (source.Any() ? source.Average((TestResult r) => r.ElapsedMs) : 0.0);
			long num5 = (source.Any() ? source.Min((TestResult r) => r.ElapsedMs) : 0);
			long num6 = (source.Any() ? source.Max((TestResult r) => r.ElapsedMs) : 0);
			Console.WriteLine($"\n--- {testName} 结果统计 ---");
			Console.WriteLine($"总耗时: {totalMs}ms");
			Console.WriteLine($"总操作数: {count}");
			Console.WriteLine($"成功: {num}, 失败: {num2}");
			Console.WriteLine(string.Format("成功率: {0}", num3.ToString("F2") + "%"));
			if (source.Any())
			{
				Console.WriteLine(string.Format("平均响应时间: {0}ms", num4.ToString("F2")));
				Console.WriteLine($"最快响应: {num5}ms");
				Console.WriteLine($"最慢响应: {num6}ms");
			}
		}
	}

	public void Cleanup()
	{
		try
		{
			Console.WriteLine("\n正在清理资源...");
			if (classESDL != null)
			{
				try
				{
					classESDL.Close();
					Console.WriteLine("Class_ESDL 已关闭");
				}
				catch
				{
				}
			}
			if (database != null)
			{
				try
				{
					database.Close();
					Console.WriteLine("数据库已关闭");
				}
				catch
				{
				}
			}
			if (ascetApp != null)
			{
				try
				{
					ascetApp.Exit();
					Console.WriteLine("ASCET 连接已关闭");
				}
				catch
				{
				}
			}
			Console.WriteLine("资源清理完成");
		}
		catch (Exception ex)
		{
			Console.WriteLine($"清理资源时出错: {ex.Message}");
		}
	}

	private static void Main(string[] args)
	{
		ClassESDLConcurrentTest classESDLConcurrentTest = new ClassESDLConcurrentTest();
		try
		{
			if (!classESDLConcurrentTest.Initialize())
			{
				Console.WriteLine("\n初始化失败，测试终止");
				return;
			}
			Console.WriteLine("\n开始 Class_ESDL 并发测试...\n");
			classESDLConcurrentTest.Test1_ConcurrentReadElements();
			classESDLConcurrentTest.Test2_ConcurrentReadElementDetails();
			classESDLConcurrentTest.Test3_MixedReadWrite();
			classESDLConcurrentTest.Test4_StressTest();
			Console.WriteLine("\n所有测试完成!");
		}
		catch (Exception ex)
		{
			Console.WriteLine($"\n测试过程中发生错误: {ex.Message}");
			Console.WriteLine($"堆栈跟踪: {ex.StackTrace}");
		}
		finally
		{
			classESDLConcurrentTest.Cleanup();
		}
		Console.WriteLine("\n测试程序退出...");
	}
}
