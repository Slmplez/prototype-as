using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;

namespace AscetAPI.ConcurrencyTests;

public class ClassESDLSimpleTest
{
	public class TestResult
	{
		public int ThreadId { get; set; }

		public string Operation { get; set; }

		public long ElapsedMs { get; set; }

		public bool Success { get; set; }

		public string ErrorMessage { get; set; }

		public int ItemCount { get; set; }
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
			Console.WriteLine("\n正在打开 \\DEMO\\Class_ESDL...");
			dynamic ascetFolder = database.GetAscetFolder("DEMO");
			if (ascetFolder == null)
			{
				Console.WriteLine("错误: 无法找到 DEMO 文件夹");
				return false;
			}
			classESDL = ascetFolder.GetComponent("Class_ESDL");
			if (classESDL == null)
			{
				Console.WriteLine("错误: 无法找到 Class_ESDL 组件");
				return false;
			}
			Console.WriteLine("Class_ESDL 组件打开成功\n");
			return true;
		}
		catch (Exception ex)
		{
			Console.WriteLine($"初始化失败: {ex.Message}");
			return false;
		}
	}

	public void Test1_ConcurrentReadMethodElements(int threadCount = 10)
	{
		Console.WriteLine($"=== 测试1: {threadCount} 个线程并发读取方法元素 ===");
		List<Task> list = new List<Task>();
		ManualResetEventSlim startSignal = new ManualResetEventSlim(initialState: false);
		for (int i = 0; i < threadCount; i++)
		{
			int threadId = i;
			list.Add(Task.Run(delegate
			{
				startSignal.Wait();
				ReadMethodElements(threadId);
			}));
		}
		Thread.Sleep(100);
		Stopwatch stopwatch = Stopwatch.StartNew();
		startSignal.Set();
		Task.WaitAll(list.ToArray());
		stopwatch.Stop();
		PrintResults($"并发读取方法元素 ({threadCount} 线程)", stopwatch.ElapsedMilliseconds);
	}

	public void Test2_ConcurrentReadProperties(int threadCount = 10)
	{
		Console.WriteLine($"\n=== 测试2: {threadCount} 个线程并发读取组件属性 ===");
		List<Task> list = new List<Task>();
		ManualResetEventSlim startSignal = new ManualResetEventSlim(initialState: false);
		for (int i = 0; i < threadCount; i++)
		{
			int threadId = i;
			list.Add(Task.Run(delegate
			{
				startSignal.Wait();
				ReadProperties(threadId);
			}));
		}
		Thread.Sleep(100);
		Stopwatch stopwatch = Stopwatch.StartNew();
		startSignal.Set();
		Task.WaitAll(list.ToArray());
		stopwatch.Stop();
		PrintResults($"并发读取属性 ({threadCount} 线程)", stopwatch.ElapsedMilliseconds);
	}

	public void Test3_MixedReadWrite()
	{
		Console.WriteLine("\n=== 测试3: 读写混合 (8读 + 2写) ===");
		List<Task> list = new List<Task>();
		ManualResetEventSlim startSignal = new ManualResetEventSlim(initialState: false);
		for (int i = 0; i < 8; i++)
		{
			int threadId = i;
			list.Add(Task.Run(delegate
			{
				startSignal.Wait();
				ReadMethodElements(threadId);
			}));
		}
		for (int i = 8; i < 10; i++)
		{
			int threadId2 = i;
			list.Add(Task.Run(delegate
			{
				startSignal.Wait();
				SimulateWrite(threadId2);
			}));
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
			list.Add(Task.Run(delegate
			{
				while (!cts.Token.IsCancellationRequested)
				{
					ReadMethodElements(threadId);
					Thread.Sleep(100);
				}
			}, cts.Token));
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

	private void ReadMethodElements(int threadId)
	{
		Stopwatch stopwatch = Stopwatch.StartNew();
		TestResult testResult = new TestResult();
		testResult.ThreadId = threadId;
		testResult.Operation = "ReadMethodElements";
		TestResult testResult2 = testResult;
		try
		{
			dynamic methodElements = classESDL.GetMethodElements();
			int num = 0;
			if (methodElements != null)
			{
				foreach (object item in methodElements)
				{
					num++;
				}
			}
			stopwatch.Stop();
			testResult2.ElapsedMs = stopwatch.ElapsedMilliseconds;
			testResult2.Success = true;
			testResult2.ItemCount = num;
			Console.WriteLine($"[线程 {threadId}] 读取 {num} 个方法元素, 耗时: {stopwatch.ElapsedMilliseconds}ms");
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

	private void ReadProperties(int threadId)
	{
		Stopwatch stopwatch = Stopwatch.StartNew();
		TestResult testResult = new TestResult();
		testResult.ThreadId = threadId;
		testResult.Operation = "ReadProperties";
		TestResult testResult2 = testResult;
		try
		{
			object name = classESDL.GetName();
			object date = classESDL.GetDate();
			object version = classESDL.GetVersion();
			stopwatch.Stop();
			testResult2.ElapsedMs = stopwatch.ElapsedMilliseconds;
			testResult2.Success = true;
			Console.WriteLine($"[线程 {threadId}] 读取属性成功, 耗时: {stopwatch.ElapsedMilliseconds}ms");
		}
		catch (Exception ex)
		{
			stopwatch.Stop();
			testResult2.ElapsedMs = stopwatch.ElapsedMilliseconds;
			testResult2.Success = false;
			testResult2.ErrorMessage = ex.Message;
			Console.WriteLine($"[线程 {threadId}] 读取属性失败: {ex.Message}");
		}
		lock (lockObj)
		{
			results.Add(testResult2);
		}
	}

	private void SimulateWrite(int threadId)
	{
		Stopwatch stopwatch = Stopwatch.StartNew();
		TestResult testResult = new TestResult();
		testResult.ThreadId = threadId;
		testResult.Operation = "SimulateWrite";
		TestResult testResult2 = testResult;
		try
		{
			Console.WriteLine($"[线程 {threadId}] 正在锁定数据库");
			ascetApp.LockDatabase();
			Thread.Sleep(100);
			dynamic methodElements = classESDL.GetMethodElements();
			int num = 0;
			if (methodElements != null)
			{
				foreach (object item in methodElements)
				{
					num++;
				}
			}
			ascetApp.UnlockDatabase();
			Console.WriteLine($"[线程 {threadId}] 已解锁数据库");
			stopwatch.Stop();
			testResult2.ElapsedMs = stopwatch.ElapsedMilliseconds;
			testResult2.Success = true;
			testResult2.ItemCount = num;
		}
		catch (Exception ex)
		{
			stopwatch.Stop();
			testResult2.ElapsedMs = stopwatch.ElapsedMilliseconds;
			testResult2.Success = false;
			testResult2.ErrorMessage = ex.Message;
			Console.WriteLine($"[线程 {threadId}] 写操作失败: {ex.Message}");
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
		lock (lockObj)
		{
			List<TestResult> list = results.ToList();
			results.Clear();
			int count = list.Count;
			int num = list.Count((TestResult r) => r.Success);
			double num2 = ((count > 0) ? ((double)num * 100.0 / (double)count) : 0.0);
			List<TestResult> source = list.Where((TestResult r) => r.Success && r.ElapsedMs > 0).ToList();
			double num3 = (source.Any() ? source.Average((TestResult r) => r.ElapsedMs) : 0.0);
			long num4 = (source.Any() ? source.Min((TestResult r) => r.ElapsedMs) : 0);
			long num5 = (source.Any() ? source.Max((TestResult r) => r.ElapsedMs) : 0);
			Console.WriteLine($"\n--- {testName} 结果统计 ---");
			Console.WriteLine($"总耗时: {totalMs}ms");
			Console.WriteLine($"总操作数: {count}");
			Console.WriteLine($"成功: {num}, 失败: {count - num}");
			Console.WriteLine($"成功率: {num2:F2}%");
			if (source.Any())
			{
				Console.WriteLine($"平均响应时间: {num3:F2}ms");
				Console.WriteLine($"最快响应: {num4}ms");
				Console.WriteLine($"最慢响应: {num5}ms");
			}
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
			Console.WriteLine("资源清理完成");
		}
		catch (Exception ex)
		{
			Console.WriteLine($"清理失败: {ex.Message}");
		}
	}

	private static void Main(string[] args)
	{
		ClassESDLSimpleTest classESDLSimpleTest = new ClassESDLSimpleTest();
		try
		{
			if (!classESDLSimpleTest.Initialize())
			{
				Console.WriteLine("\n初始化失败，测试终止");
				return;
			}
			Console.WriteLine("开始 Class_ESDL 并发测试...\n");
			classESDLSimpleTest.Test1_ConcurrentReadMethodElements();
			classESDLSimpleTest.Test2_ConcurrentReadProperties();
			classESDLSimpleTest.Test3_MixedReadWrite();
			classESDLSimpleTest.Test4_StressTest();
			Console.WriteLine("\n所有测试完成!");
		}
		catch (Exception ex)
		{
			Console.WriteLine($"\n测试错误: {ex.Message}");
		}
		finally
		{
			classESDLSimpleTest.Cleanup();
		}
	}
}
