using System.Collections;
using System.ComponentModel;
using System.IO;
using System.Text;
using System.Text.RegularExpressions;

namespace Syncfusion.Text;

[ToolboxItem(false)]
public class SpellChecker : Component
{
	private enum ECaseUpperWord
	{
		AllUpper,
		AllLower,
		FirstUpper
	}

	private StringBuilder error_string;

	public string DictionaryPath;

	private ArrayList wrongWords = new ArrayList();

	private ArrayList repeatwordsArray = new ArrayList();

	public bool ExcludeInternetAddresses;

	public bool ExcludeEmailAddress;

	public bool ExcludeHtmlTags;

	public bool ExcludeFileNames;

	public bool ExcludeWordsInMixedCase;

	public bool ExcludeWordsInUpperCase;

	public bool ExcludeWordsWithNumbers;

	public bool ExcludeRepeatedWords;

	public int MaxSuggestions;

	public bool ExcludeSpecialSymbols;

	private Stream m_stDictionaryStream;

	private static Hashtable htdictPathVsEntriesList = new Hashtable();

	private static Hashtable htdictPathVsSoundXList = new Hashtable();

	public Stream DictionaryStream
	{
		get
		{
			return m_stDictionaryStream;
		}
		set
		{
			m_stDictionaryStream = value;
		}
	}

	public SpellChecker()
	{
	}

	public SpellChecker(IContainer container)
	{
		container.Add(this);
	}

	public string SpellCheck(string eargs)
	{
		string value = ",";
		string value2 = "*";
		EnsureDictionaryList();
		int num = 0;
		error_string = new StringBuilder();
		wrongWords.Clear();
		SplitWords(eargs);
		for (int i = 0; i < wrongWords.Count; i++)
		{
			if (i != (int)repeatwordsArray[num])
			{
				error_string.Append((string)wrongWords[i]);
				error_string.Append(value2);
				ArrayList arrayList = Suggest((string)wrongWords[i]);
				if (arrayList.Count > 0)
				{
					string value3 = MaxSuggest(arrayList, (string)wrongWords[i]);
					error_string = new StringBuilder();
					error_string.Append(value3);
				}
				error_string.Append(value);
			}
			if (i == (int)repeatwordsArray[num])
			{
				error_string.Append((string)wrongWords[i]);
				error_string.Append("#");
				error_string.Append(value2);
				error_string.Append(value);
				num++;
			}
		}
		return error_string.ToString();
	}

	private void EnsureDictionaryList()
	{
		string dictionaryPath = DictionaryPath;
		if (htdictPathVsEntriesList[dictionaryPath] == null)
		{
			StreamReader streamReader = null;
			streamReader = ((DictionaryStream != null) ? new StreamReader(DictionaryStream) : File.OpenText(dictionaryPath));
			ArrayList arrayList = new ArrayList();
			ArrayList arrayList2 = new ArrayList();
			string text;
			while ((text = streamReader.ReadLine()) != null)
			{
				arrayList.Add(text.ToLower());
				arrayList2.Add(Soundex.ToSoundexCode(text));
			}
			htdictPathVsEntriesList[dictionaryPath] = arrayList;
			htdictPathVsSoundXList[dictionaryPath] = arrayList2;
		}
	}

	private ArrayList GetDictList()
	{
		EnsureDictionaryList();
		return htdictPathVsEntriesList[DictionaryPath] as ArrayList;
	}

	private ArrayList GetSoundXList()
	{
		EnsureDictionaryList();
		return htdictPathVsSoundXList[DictionaryPath] as ArrayList;
	}

	private ArrayList Suggest(string source)
	{
		string wrongword = source.ToLower();
		ArrayList arrayList = new ArrayList();
		source = source.ToLower();
		for (int i = 0; i < source.Length; i++)
		{
			string value = source.Remove(i, 1);
			arrayList.Add(value);
		}
		int num = 0;
		int num2 = 1;
		for (int j = 0; j < source.Length - 1; j++)
		{
			string value = " ";
			value = source.Substring(0, num) + source[num2];
			value += source[num];
			value += source.Substring(num2 + 1);
			arrayList.Add(value);
			num++;
			num2++;
		}
		return ValidateSuggestions(arrayList, wrongword);
	}

	private void SplitWords(string sentence)
	{
		ArrayList arrayList = new ArrayList();
		ArrayList arrayList2 = new ArrayList();
		Regex regex = new Regex("\\b[a-zA-Z0-9_'À-ÿ]+\\b", RegexOptions.Compiled);
		Regex regex2 = new Regex("[a-zA-Z0-9_\\-\\.]+@[a-zA-Z0-9_\\-\\.]+\\.[a-zA-Z]+", RegexOptions.Compiled);
		Regex regex3 = new Regex("(([a-zA-Z]+:)|www\\.)[^\"'>\\)\\]\\s]*", RegexOptions.Compiled);
		Regex regex4 = new Regex("[A-Z]", RegexOptions.Compiled);
		Regex regex5 = new Regex("\\b[A-Z]+\\b", RegexOptions.Compiled);
		Regex regex6 = new Regex("\\d", RegexOptions.Compiled);
		Regex regex7 = new Regex("[a-zA-Z0-9_$\\-\\.\\\\]*\\\\[a-zA-Z0-9_$\\-\\.\\\\]+", RegexOptions.Compiled);
		Regex regex8 = new Regex("</[c-g\\d]+>|</[i-o\\d]+>|</[a\\d]+>|</[q-z\\d]+>|<[cg]+[^>]*>|<[i-o]+[^>]*>|<[q-z]+[^>]*>|<[a]+[^>]*>|<(\\[^\\]*\\|'[^']*'|[^'\\>])*>", RegexOptions.None);
		Regex regex9 = new Regex("&#?[a-zA-Z0-9]+;", RegexOptions.Compiled);
		if (ExcludeSpecialSymbols)
		{
			MatchCollection matchCollection = regex9.Matches(sentence);
			foreach (Match item in matchCollection)
			{
				int startIndex = sentence.IndexOf(item.ToString());
				int length = item.ToString().Length;
				sentence = sentence.Remove(startIndex, length);
			}
		}
		if (ExcludeInternetAddresses)
		{
			MatchCollection matchCollection2 = regex3.Matches(sentence);
			foreach (Match item2 in matchCollection2)
			{
				int startIndex = sentence.IndexOf(item2.ToString());
				int length = item2.ToString().Length;
				sentence = sentence.Remove(startIndex, length);
			}
		}
		if (ExcludeEmailAddress)
		{
			MatchCollection matchCollection3 = regex2.Matches(sentence);
			foreach (Match item3 in matchCollection3)
			{
				int startIndex = sentence.IndexOf(item3.ToString());
				int length = item3.ToString().Length;
				sentence = sentence.Remove(startIndex, length);
			}
		}
		if (ExcludeHtmlTags)
		{
			MatchCollection matchCollection4 = regex8.Matches(sentence);
			foreach (Match item4 in matchCollection4)
			{
				int startIndex = sentence.IndexOf(item4.ToString());
				int length = item4.ToString().Length;
				sentence = sentence.Remove(startIndex, length);
			}
		}
		if (ExcludeFileNames)
		{
			MatchCollection matchCollection5 = regex7.Matches(sentence);
			foreach (Match item5 in matchCollection5)
			{
				int startIndex = sentence.IndexOf(item5.ToString());
				int length = item5.ToString().Length;
				sentence = sentence.Remove(startIndex, length);
			}
		}
		MatchCollection matchCollection6 = regex.Matches(sentence);
		foreach (Match item6 in matchCollection6)
		{
			arrayList.Add(item6.ToString());
			arrayList2.Add(item6.ToString());
		}
		for (int i = 0; i < arrayList.Count; i++)
		{
			string text = arrayList2[i].ToString();
			if (ExcludeWordsInMixedCase)
			{
				Match match7 = regex4.Match(text);
				if (match7.Success)
				{
					arrayList.Remove(text);
					continue;
				}
			}
			if (ExcludeWordsInUpperCase)
			{
				Match match8 = regex5.Match(text);
				if (match8.Success)
				{
					arrayList.Remove(text);
					continue;
				}
			}
			if (ExcludeWordsWithNumbers)
			{
				Match match9 = regex6.Match(text);
				if (match9.Success)
				{
					arrayList.Remove(text);
				}
			}
		}
		CheckForMisspelledWords(arrayList);
	}

	private bool IsInDictionary(string word)
	{
		string item = word.ToLower();
		ArrayList dictList = GetDictList();
		return dictList.Contains(item);
	}

	private ArrayList CheckForMisspelledWords(ArrayList source_arlist)
	{
		int num = 0;
		bool flag = true;
		string text = " ";
		bool flag2 = false;
		if (flag)
		{
			for (int i = 0; i < repeatwordsArray.Count; i++)
			{
				repeatwordsArray[i] = -1;
			}
			if (repeatwordsArray.Count <= 0)
			{
				repeatwordsArray.Add(-1);
			}
			flag = false;
		}
		for (int j = 0; j < source_arlist.Count; j++)
		{
			text = source_arlist[j].ToString();
			bool flag3 = IsInDictionary(text);
			if (!ExcludeRepeatedWords && j > 0 && string.Compare(text, (string)source_arlist[j - 1]) == 0 && flag3)
			{
				flag2 = true;
				flag3 = false;
			}
			if (flag3)
			{
				continue;
			}
			if (flag2)
			{
				if (repeatwordsArray.Count < num)
				{
					repeatwordsArray[num] = wrongWords.Count;
				}
				else
				{
					repeatwordsArray.Add(wrongWords.Count);
				}
				num++;
				flag2 = false;
			}
			wrongWords.Add(text);
		}
		return wrongWords;
	}

	private ArrayList ValidateSuggestions(ArrayList source_arlist, string wrongword)
	{
		string text = " ";
		bool flag = false;
		ArrayList arrayList = new ArrayList();
		for (int i = 0; i < source_arlist.Count; i++)
		{
			text = (string)source_arlist[i];
			if (IsInDictionary(text) && !arrayList.Contains(text))
			{
				arrayList.Add(text);
			}
		}
		SuggestionSound(arrayList, wrongword);
		return arrayList;
	}

	private void SuggestionSound(ArrayList suggest_list, string wrongword)
	{
		string text = Soundex.ToSoundexCode(wrongword);
		ArrayList dictList = GetDictList();
		string text2 = wrongword[0].ToString().ToLower();
		dictList.IndexOf(text2);
		int num = 0;
		if (text2 == "z")
		{
			num = dictList.Count;
		}
		else
		{
			string value = Soundex.NextLetter(text2);
			num = dictList.IndexOf(value);
		}
		int length = wrongword.Length;
		ArrayList soundXList = GetSoundXList();
		for (int i = 0; i < num; i++)
		{
			if (soundXList[i].ToString() == text)
			{
				int length2 = dictList[i].ToString().Length;
				int num2 = Soundex.EditDistanceCompute(wrongword, dictList[i].ToString());
				if (num2 < 4 && (length2 == length || length2 == length + 1 || length2 == length - 1 || length2 == length - 2 || length2 == length + 2) && !suggest_list.Contains(dictList[i].ToString()))
				{
					suggest_list.Add(dictList[i].ToString());
				}
			}
		}
	}

	private int CalculateStartAndEndWord(string word, string WrongWord)
	{
		int num = 0;
		for (int num2 = WrongWord.Length; num2 >= 0; num2--)
		{
			for (int i = 0; i <= WrongWord.Length - num2; i++)
			{
				int num3 = 0;
				int num4 = 0;
				if ((num4 = word.IndexOf(WrongWord.Substring(i, num2))) < 0)
				{
					continue;
				}
				for (int num5 = WrongWord.Length - i - num2; num5 >= 0; num5--)
				{
					string text = WrongWord.Substring(WrongWord.Length - num5);
					if (num4 + num2 <= word.IndexOf(text, num4 + num2) && text.Length > num3)
					{
						num3 = text.Length;
					}
				}
				num3 += num2;
				if (num < num3)
				{
					num = num3;
				}
			}
		}
		return num;
	}

	private Hashtable SelectWordFromList(ArrayList suggest_list, string wrongWord)
	{
		Hashtable hashtable = new Hashtable();
		for (int i = 0; i < suggest_list.Count; i++)
		{
			string empty = string.Empty;
			int num = CalculateStartAndEndWord(empty = (string)suggest_list[i], wrongWord.ToLower());
			if (hashtable[num] == null)
			{
				hashtable.Add(num, new ArrayList());
			}
			((ArrayList)hashtable[num]).Add(empty);
		}
		return hashtable;
	}

	private ECaseUpperWord CaseFromWord(string wrongWord)
	{
		ECaseUpperWord result = ECaseUpperWord.AllLower;
		if (!char.IsLower(wrongWord[0]))
		{
			result = ECaseUpperWord.FirstUpper;
			if (wrongWord.ToUpper() == wrongWord)
			{
				result = ECaseUpperWord.AllUpper;
			}
		}
		return result;
	}

	private string MaxSuggest(ArrayList suggest_list, string wrongWord)
	{
		Hashtable hashtable = SelectWordFromList(suggest_list, wrongWord);
		ECaseUpperWord eCaseUpperWord = CaseFromWord(wrongWord);
		int num = ((MaxSuggestions <= suggest_list.Count) ? MaxSuggestions : suggest_list.Count);
		int num2 = wrongWord.Length;
		while (num2 >= 0 && num > 0)
		{
			if (hashtable[num2] != null)
			{
				ArrayList arrayList = (ArrayList)hashtable[num2];
				for (int i = 0; i < arrayList.Count; i++)
				{
					if (num <= 0)
					{
						break;
					}
					error_string.Append("\\");
					string text = (string)arrayList[i];
					switch (eCaseUpperWord)
					{
					case ECaseUpperWord.AllLower:
						error_string.Append(text);
						break;
					case ECaseUpperWord.FirstUpper:
						error_string.Append(text[0].ToString().ToUpper() + text.Substring(1));
						break;
					case ECaseUpperWord.AllUpper:
						error_string.Append(text.ToUpper());
						break;
					}
					num--;
				}
			}
			num2--;
		}
		return error_string.ToString();
	}
}
