using System;

namespace org.bouncycastle;

public class LICENSE
{
	public static string licenseText = "Copyright (c) 2000 The Legion Of The Bouncy Castle (http://www.bouncycastle.org) " + Environment.NewLine + Environment.NewLine + "Permission is hereby granted, free of charge, to any person obtaining a copy of this software " + Environment.NewLine + "and associated documentation files (the \"Software\"), to deal in the Software without restriction, " + Environment.NewLine + "including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, " + Environment.NewLine + "and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so," + Environment.NewLine + "subject to the following conditions:" + Environment.NewLine + Environment.NewLine + "The above copyright notice and this permission notice shall be included in all copies or substantial" + Environment.NewLine + "portions of the Software." + Environment.NewLine + Environment.NewLine + "THE SOFTWARE IS PROVIDED \"AS IS\", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED," + Environment.NewLine + "INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR" + Environment.NewLine + "PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE" + Environment.NewLine + "LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR" + Environment.NewLine + "OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER" + Environment.NewLine + "DEALINGS IN THE SOFTWARE.";

	[STAThread]
	public static void Main(string[] args)
	{
		Console.Out.WriteLine(licenseText);
	}
}
