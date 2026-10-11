using System;
using System.Collections;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Globalization;
using System.Text;
using Syncfusion.Diagnostics;
using Syncfusion.Documentation;
using Syncfusion.Styles;

namespace Syncfusion.Windows.Forms.Grid;

public class GridFormulaEngine
{
	internal class AdjustInfo
	{
		internal GridModel grd1;

		internal int row;

		internal int col;

		internal string newFormula;

		internal AdjustInfo(GridModel grd1, int row, int col, string newFormula)
		{
			this.grd1 = grd1;
			this.row = row;
			this.col = col;
			this.newFormula = newFormula;
		}
	}

	[DocumentationExclude]
	public class LenComparer : IComparer
	{
		[DocumentationExclude]
		public LenComparer()
		{
		}

		[DocumentationExclude]
		public int Compare(object x, object y)
		{
			return y.ToString().Length - x.ToString().Length;
		}
	}

	public delegate string LibraryFunction(string args);

	private delegate double MathFunc(double d);

	internal class SortedArrayList : ArrayList
	{
		internal bool InsertIfNotPresent(string s)
		{
			bool result = false;
			int num = BinarySearch(s);
			if (num < 0)
			{
				Insert(-num - 1, s);
				result = true;
			}
			return result;
		}
	}

	internal const char sheetToken = '!';

	private const char TOKEN_multiply = 'm';

	private const char CHAR_multiply = '*';

	private const char TOKEN_divide = 'd';

	private const char CHAR_divide = '/';

	private const char TOKEN_add = 'a';

	private const char CHAR_add = '+';

	private const char TOKEN_subtract = 's';

	private const char CHAR_subtract = '-';

	private const char TOKEN_less = 'l';

	private const char CHAR_less = '<';

	private const char TOKEN_greater = 'g';

	private const char CHAR_greater = '>';

	private const char TOKEN_equal = 'e';

	private const char CHAR_equal = '=';

	private const char TOKEN_lesseq = 'k';

	private const char CHAR_lesseq = 'f';

	private const string STRING_lesseq = "<=";

	private const char TOKEN_greatereq = 'j';

	private const char CHAR_greatereq = 'h';

	private const string STRING_greatereq = ">=";

	private const char TOKEN_noequal = 'o';

	private const char CHAR_noequal = 'p';

	private const string STRING_noequal = "<>";

	private const string STRING_fixedreference = "$";

	private const string STRING_empty = "";

	private const char TOKEN_and = 'c';

	private const char TOKEN_pow = '~';

	private const char TOKEN_EP = 't';

	private const char TOKEN_EM = 'v';

	private const char LEADMINUS = '\u0084';

	private const char ZMARKER = 'z';

	private const char BMARKER = 'b';

	private const char SHEETTOKENCHECK = '\u0085';

	private GridModel grid;

	internal char formulaChar;

	internal string cell;

	private bool supportBlanksInSheetNames = true;

	private bool fixedReferenceOnlyOnPaste;

	[ThreadStatic]
	private static Hashtable sheetFamiliesList;

	[ThreadStatic]
	private static int sheetFamilyID;

	[ThreadStatic]
	private static GridSheetFamilyItem defaultFamilyItem;

	private Hashtable dependentCells;

	private Hashtable dependentFormulaCells;

	private GridFormulaCopyFlags formulaCopyFlags;

	[ThreadStatic]
	internal static GridFormulaCopyFlags sheetedFormulaCopyFlags;

	private bool doCircularCheckInValidating;

	private int maxCircularChecks = -1;

	private int circularCheckCount;

	internal bool inPaste;

	[ThreadStatic]
	internal static int TokenCount;

	[ThreadStatic]
	internal static Hashtable modelToSheetID;

	[ThreadStatic]
	public static string ValidSheetChars;

	[ThreadStatic]
	private static bool yesToCloning;

	private bool useVirtualDataSource = true;

	private bool calculationsSuspended;

	private int maximumRecursiveCalls = 100;

	private bool currentRowNotationEnabled = true;

	private SortedArrayList refreshedCells;

	private int dependencyLevel;

	private bool forceSaveCellInfo;

	private bool catchExceptionsInRecalculateRange;

	public string[] FormulaErrorStrings = new string[32]
	{
		"binary operators cannot start an expression", "cannot parse", "bad library", "invalid char in front of", "number contains 2 decimal points", "expression cannot end with an operator", "invalid characters following an operator", "invalid character in number", "mismatched parentheses", "unknown formula name",
		"requires a single argument", "requires 3 arguments", "invalid Math argument", "requires 2 arguments", "bad index", "too complex", "circular reference: ", "missing formula", "improper formula", "invalid expression",
		"cell empty", "bad formula", "empty expression", "Virtual Mode required - set UsesVirtualDataSource", "mismatched string quotes", "wrong number of arguments", "invalid arguments", "iterations do not converge", "Control named '{0}' is already registered", "Calculation overflow",
		"missing operand", "unknown sheet"
	};

	internal int operators_cannot_start_an_expression;

	internal int cannot_parse = 1;

	internal int bad_library = 2;

	internal int invalid_char_in_front_of = 3;

	internal int number_contains_2_decimal_points = 4;

	internal int expression_cannot_end_with_an_operator = 5;

	internal int invalid_characters_following_an_operator = 6;

	internal int invalid_char_in_number = 7;

	internal int mismatched_parentheses = 8;

	internal int unknown_formula_name = 9;

	internal int requires_a_single_argument = 10;

	internal int requires_3_args = 11;

	internal int invalid_Math_argument = 12;

	internal int requires_2_args = 13;

	internal int bad_index = 14;

	internal int too_complex = 15;

	internal int circular_reference_ = 16;

	internal int missing_formula = 17;

	internal int improper_formula = 18;

	internal int invalid_expression = 19;

	internal int cell_empty = 20;

	internal int bad_formula = 21;

	internal int empty_expression = 22;

	internal int virtual_mode_required = 23;

	internal int mismatched_tics = 24;

	internal int wrong_number_arguments = 25;

	internal int invalid_arguments = 26;

	internal int iterations_dont_converge = 27;

	internal int already_registered = 28;

	internal int calculation_overflow = 29;

	internal int missing_operand = 30;

	internal int unknown_sheet = 31;

	private char UNIQUESLASHMARKER = '\u0081';

	private char UNIQUESTRINGMARKER = '\u007f';

	[ThreadStatic]
	public static char ParseDecimalSeparator;

	[ThreadStatic]
	public static char ParseArgumentSeparator;

	private ArrayList errorStrings;

	private bool markUnknownSheetRanges;

	private char CHAR_and = 'i';

	private string STRING_and = "&";

	private char CHAR_pow = 'w';

	private string STRING_pow = "^";

	private char CHAR_EP = 'x';

	private char CHAR_EM = 'r';

	private string STRING_EP = "E+";

	private string STRING_E = "E";

	private string STRING_EM = "E-";

	private string TIC = "\"";

	private string BRACELEFT = "{";

	private string BRACERIGHT = "}";

	private char[] BRACEDELIMETER = new char[1] { ',' };

	private char LEFTBRACKET = '\u0082';

	private char RIGHTBRACKET = '\u0083';

	private string IFMarker = "qIF" + '\u0082';

	private char[] tokens;

	private bool forceParsingOfLibraryFunctionArguments;

	private Hashtable namedRangesOriginalNames;

	private Hashtable namedRanges;

	private Hashtable dependentNamedRangeCells;

	private ArrayList namedRangesSized;

	private Hashtable libraryFunctions;

	internal bool lockDependencies;

	private Random rand;

	private double[] guesses = new double[18]
	{
		0.1, -0.1, 0.2, -0.2, 0.3, -0.3, 0.4, -0.4, 0.5, -0.5,
		0.6, -0.6, 0.7, -0.7, 0.8, -0.8, 0.9, -0.9
	};

	private static int[] factorialTable;

	private string TRUEVALUESTR = "TRUE";

	private string FALSEVALUESTR = "FALSE";

	public static bool Treat1900AsLeapYear;

	private DateTime dateTime1900 = new DateTime(1900, 1, 1, 0, 0, 0);

	private static double[] gammaAs;

	private static int gauss_n;

	private static double[] gauss_x;

	private static double[] gauss_w;

	private static bool useCommonLibraryFunction;

	private StringCollection textFunctions;

	private char MarkerChar = '`';

	private bool stringOK;

	private int computeFunctionLevel;

	private bool useNoAmpersandQuotes;

	private int maxStackDepth = 100;

	private int computedValueLevel;

	[ThreadStatic]
	private static GridFormulaEngine functionEngineContext;

	private string activeFunctionName;

	private bool allowShortCircuitIFs;

	private bool returnNAN;

	private double ABSOLUTEZERO = 1E-20;

	public string FormulaContextCell
	{
		get
		{
			return cell;
		}
		set
		{
			cell = value;
		}
	}

	internal bool IsSheeted => GetSheetFamilyItem(grid)?.isSheeted ?? false;

	public bool SupportBlanksInSheetNames
	{
		get
		{
			return supportBlanksInSheetNames;
		}
		set
		{
			supportBlanksInSheetNames = value;
		}
	}

	public bool FixedReferenceOnlyOnPaste
	{
		get
		{
			return fixedReferenceOnlyOnPaste;
		}
		set
		{
			fixedReferenceOnlyOnPaste = value;
		}
	}

	public Hashtable DependentCells
	{
		get
		{
			if (IsSheeted)
			{
				GridSheetFamilyItem sheetFamilyItem = GetSheetFamilyItem(grid);
				if (sheetFamilyItem.sheetDependentCells == null)
				{
					sheetFamilyItem.sheetDependentCells = new Hashtable();
				}
				return sheetFamilyItem.sheetDependentCells;
			}
			if (dependentCells == null)
			{
				dependentCells = new Hashtable();
			}
			return dependentCells;
		}
	}

	public Hashtable DependentFormulaCells
	{
		get
		{
			if (IsSheeted)
			{
				GridSheetFamilyItem sheetFamilyItem = GetSheetFamilyItem(grid);
				if (sheetFamilyItem.sheetDependentFormulaCells == null)
				{
					sheetFamilyItem.sheetDependentFormulaCells = new Hashtable();
				}
				return sheetFamilyItem.sheetDependentFormulaCells;
			}
			if (dependentFormulaCells == null)
			{
				dependentFormulaCells = new Hashtable();
			}
			return dependentFormulaCells;
		}
	}

	public GridFormulaCopyFlags FormulaCopyFlags
	{
		get
		{
			if (IsSheeted)
			{
				return sheetedFormulaCopyFlags;
			}
			return formulaCopyFlags;
		}
		set
		{
			if (IsSheeted)
			{
				sheetedFormulaCopyFlags = value;
			}
			else
			{
				formulaCopyFlags = value;
			}
		}
	}

	public int MaximumCircularChecks
	{
		get
		{
			return maxCircularChecks;
		}
		set
		{
			maxCircularChecks = value;
		}
	}

	public bool DoCircularCheckInValidating
	{
		get
		{
			return doCircularCheckInValidating;
		}
		set
		{
			doCircularCheckInValidating = value;
		}
	}

	public static bool CloneableFormulaTags
	{
		get
		{
			return yesToCloning;
		}
		set
		{
			if (value != yesToCloning)
			{
				yesToCloning = value;
				GridStyleInfoStore.FormulaTagProperty.IsCloneable = yesToCloning;
				GridStyleInfoStore.FormulaTagProperty.IsDisposable = yesToCloning;
			}
		}
	}

	public bool UsesVirtualDataSource
	{
		get
		{
			return useVirtualDataSource;
		}
		set
		{
			useVirtualDataSource = value;
		}
	}

	public bool CalculatingSuspended
	{
		get
		{
			return calculationsSuspended;
		}
		set
		{
			calculationsSuspended = value;
		}
	}

	public int MaximumRecursiveCalls
	{
		get
		{
			return maximumRecursiveCalls;
		}
		set
		{
			maximumRecursiveCalls = value;
		}
	}

	public bool CurrentRowNotationEnabled
	{
		get
		{
			return currentRowNotationEnabled;
		}
		set
		{
			currentRowNotationEnabled = value;
		}
	}

	public bool ForceSaveCellInfo
	{
		get
		{
			return forceSaveCellInfo;
		}
		set
		{
			forceSaveCellInfo = value;
		}
	}

	public bool CatchExceptionsInRecalculateRange
	{
		get
		{
			return catchExceptionsInRecalculateRange;
		}
		set
		{
			catchExceptionsInRecalculateRange = value;
		}
	}

	public bool MarkUnknownSheetRanges
	{
		get
		{
			return markUnknownSheetRanges;
		}
		set
		{
			markUnknownSheetRanges = value;
		}
	}

	public bool ForceParsingOfLibraryFunctionArguments
	{
		get
		{
			return forceParsingOfLibraryFunctionArguments;
		}
		set
		{
			forceParsingOfLibraryFunctionArguments = value;
		}
	}

	public Hashtable NamedRanges
	{
		get
		{
			if (IsSheeted)
			{
				GridSheetFamilyItem sheetFamilyItem = GetSheetFamilyItem(grid);
				if (sheetFamilyItem.sheetNamedRanges == null)
				{
					sheetFamilyItem.sheetNamedRanges = new Hashtable();
				}
				return sheetFamilyItem.sheetNamedRanges;
			}
			if (namedRanges == null)
			{
				namedRanges = new Hashtable();
			}
			return namedRanges;
		}
	}

	public Hashtable NamedRangesOriginalNames
	{
		get
		{
			if (IsSheeted)
			{
				GridSheetFamilyItem sheetFamilyItem = GetSheetFamilyItem(grid);
				if (sheetFamilyItem.sheetNamedRangesOriginalNames == null)
				{
					sheetFamilyItem.sheetNamedRangesOriginalNames = new Hashtable();
				}
				return sheetFamilyItem.sheetNamedRangesOriginalNames;
			}
			if (namedRangesOriginalNames == null)
			{
				namedRangesOriginalNames = new Hashtable();
			}
			return namedRangesOriginalNames;
		}
	}

	protected ArrayList NamedRangesSized
	{
		get
		{
			if (namedRangesSized == null)
			{
				namedRangesSized = new ArrayList();
				foreach (string key in NamedRanges.Keys)
				{
					namedRangesSized.Add(key);
				}
				AdjustNameRangesForSize();
			}
			return namedRangesSized;
		}
	}

	public Hashtable DependentNamedRangeCells
	{
		get
		{
			if (IsSheeted)
			{
				GridSheetFamilyItem sheetFamilyItem = GetSheetFamilyItem(grid);
				if (sheetFamilyItem.sheetDependentNamedRangeCells == null)
				{
					sheetFamilyItem.sheetDependentNamedRangeCells = new Hashtable();
				}
				return sheetFamilyItem.sheetDependentNamedRangeCells;
			}
			if (dependentNamedRangeCells == null)
			{
				dependentNamedRangeCells = new Hashtable();
			}
			return dependentNamedRangeCells;
		}
	}

	public Hashtable LibraryFunctions => libraryFunctions;

	public static bool UseCommonLibrary
	{
		get
		{
			return useCommonLibraryFunction;
		}
		set
		{
			useCommonLibraryFunction = value;
		}
	}

	public bool UseNoAmpersandQuotes
	{
		get
		{
			return useNoAmpersandQuotes;
		}
		set
		{
			useNoAmpersandQuotes = value;
		}
	}

	public int MaximumStackDepth
	{
		get
		{
			return maxStackDepth;
		}
		set
		{
			maxStackDepth = value;
		}
	}

	public static GridFormulaEngine FunctionEngineContext => functionEngineContext;

	public string ActiveFunctionName => activeFunctionName;

	public bool AllowShortCircuitIFs
	{
		get
		{
			return allowShortCircuitIFs;
		}
		set
		{
			allowShortCircuitIFs = value;
		}
	}

	public bool ReturnNAN
	{
		get
		{
			return returnNAN;
		}
		set
		{
			returnNAN = value;
		}
	}

	public event GridFormulaParsingEventHandler FormulaParsing;

	public static GridSheetFamilyItem GetSheetFamilyItem(GridModel model)
	{
		if (sheetFamilyID == 0)
		{
			if (defaultFamilyItem == null)
			{
				defaultFamilyItem = new GridSheetFamilyItem();
			}
			return defaultFamilyItem;
		}
		if (sheetFamiliesList == null)
		{
			sheetFamiliesList = new Hashtable();
		}
		int num = (int)modelToSheetID[model];
		if (sheetFamiliesList[num] == null)
		{
			sheetFamiliesList.Add(num, new GridSheetFamilyItem());
		}
		return sheetFamiliesList[num] as GridSheetFamilyItem;
	}

	internal bool IsCircularReference(string cell)
	{
		if (maxCircularChecks == -1)
		{
			return false;
		}
		circularCheckCount = 0;
		Hashtable ht = (Hashtable)DependentCells[cell];
		return DoesHashtableOrChildContain(ht, cell);
	}

	private bool DoesHashtableOrChildContain(Hashtable ht, string cell)
	{
		if (ht == null)
		{
			return false;
		}
		if (ht.ContainsKey(cell))
		{
			return true;
		}
		if (circularCheckCount > maxCircularChecks)
		{
			return false;
		}
		circularCheckCount++;
		foreach (string key in ht.Keys)
		{
			Hashtable hashtable = (Hashtable)DependentCells[key];
			if (hashtable != null && DoesHashtableOrChildContain(hashtable, cell))
			{
				return true;
			}
		}
		return false;
	}

	internal bool AdjustReferencesForRangeChange(GridModel grd, bool isCols, bool isInsert, int start, int end, bool isDelete)
	{
		if ((FormulaCopyFlags & GridFormulaCopyFlags.InsDelRangeReferencesUpdated) == 0 && (FormulaCopyFlags & GridFormulaCopyFlags.NamedRangeReferencesUpdated) == 0)
		{
			return false;
		}
		SortedArrayList sortedArrayList = new SortedArrayList();
		GridModel gridModel = grid;
		grid = grd;
		bool enabled = grid.Model.CommandStack.Enabled;
		grid.Model.CommandStack.Enabled = false;
		string text = (IsSheeted ? GetSheetFamilyItem(grid).GridModelToToken[grid].ToString() : string.Empty);
		string requiredSheetName = (IsSheeted ? GetSheetFamilyItem(grid).TokenToSheetName[text].ToString().ToUpper() : string.Empty);
		Hashtable hashtable = null;
		if ((FormulaCopyFlags & GridFormulaCopyFlags.NamedRangeReferencesUpdated) != GridFormulaCopyFlags.None)
		{
			hashtable = new Hashtable();
			foreach (string key6 in NamedRanges.Keys)
			{
				string arg = NamedRanges[key6].ToString();
				string text2 = $"=sum({arg})";
				int num = (isInsert ? (end - start + 1) : (start - end - 1));
				string text3 = (isCols ? AdjustReferences(text2, 0, num, -1, start, requiredSheetName, string.Empty) : AdjustReferences(text2, num, 0, start, -1));
				if (text2 != text3)
				{
					text3 = text3.Substring(5, text3.Length - 6);
					hashtable.Add(key6, text3);
				}
			}
			foreach (string key7 in hashtable.Keys)
			{
				NamedRanges[key7] = hashtable[key7];
			}
		}
		if ((FormulaCopyFlags & GridFormulaCopyFlags.InsDelRangeReferencesUpdated) != GridFormulaCopyFlags.None)
		{
			SortedArrayList sortedArrayList2 = new SortedArrayList();
			SortedArrayList sortedArrayList3 = new SortedArrayList();
			UpdateDependencies(cell);
			foreach (string key8 in DependentCells.Keys)
			{
				string text5 = SheetToken(key8);
				int num2 = RowIndex(key8);
				int num3 = ColIndex(key8);
				if (text != text5 || (isCols && num3 < start) || (!isCols && num2 < start))
				{
					continue;
				}
				bool num4;
				if (!isCols)
				{
					if (num2 <= end)
					{
						num4 = num2 >= start;
						goto IL_02bc;
					}
				}
				else if (num3 <= end)
				{
					num4 = num3 >= start;
					goto IL_02bc;
				}
				goto IL_02d2;
				IL_02d2:
				Hashtable hashtable2 = (Hashtable)DependentCells[key8];
				new SortedArrayList();
				foreach (object key9 in hashtable2.Keys)
				{
					string s = key9 as string;
					sortedArrayList2.InsertIfNotPresent(s);
				}
				continue;
				IL_02bc:
				if (num4 && isDelete)
				{
					sortedArrayList3.Add(key8);
					continue;
				}
				goto IL_02d2;
			}
			foreach (string item in sortedArrayList3)
			{
				ClearFormulaDependentCells(item);
			}
			foreach (string item2 in sortedArrayList2)
			{
				if (sortedArrayList.InsertIfNotPresent(item2))
				{
					ClearFormulaDependentCells(item2);
				}
			}
			if (DependentFormulaCells.Keys.Count > 0)
			{
				string[] array = new string[DependentFormulaCells.Keys.Count];
				DependentFormulaCells.Keys.CopyTo(array, 0);
				string[] array2 = array;
				foreach (string text7 in array2)
				{
					if (sortedArrayList2.BinarySearch(text7) < 0 && sortedArrayList.InsertIfNotPresent(text7))
					{
						ClearFormulaDependentCells(text7);
					}
				}
			}
			Hashtable hashtable3 = new Hashtable();
			foreach (string item3 in sortedArrayList2)
			{
				GridModel gridModel2 = grid;
				string text9 = SheetToken(item3);
				if (text9.Length > 0)
				{
					gridModel2 = GetSheetFamilyItem(grid).TokenToGridModel[text9] as GridModel;
				}
				string currentSheetName = (IsSheeted ? GetSheetFamilyItem(grid).TokenToSheetName[text9].ToString().ToUpper() : string.Empty);
				int num5 = RowIndex(item3);
				int num6 = ColIndex(item3);
				int num7 = (isInsert ? (end - start + 1) : (start - end - 1));
				if (text9 == text || text == string.Empty)
				{
					if (isCols)
					{
						num6 += ((num6 >= start && (num6 != start || !isDelete)) ? num7 : 0);
					}
					else
					{
						num5 += ((num5 >= start && (num5 != start || !isDelete)) ? num7 : 0);
					}
				}
				string text10 = gridModel2[num5, num6].Text;
				string text11 = (isCols ? AdjustReferences(text10, 0, num7, -1, start, requiredSheetName, currentSheetName, isDelete) : AdjustReferences(text10, num7, 0, start, -1, requiredSheetName, currentSheetName, isDelete));
				if (text10 != text11)
				{
					hashtable3.Add(item3, new AdjustInfo(gridModel2, num5, num6, text11));
					if (sortedArrayList.IndexOf(item3) > -1)
					{
						sortedArrayList.Remove(item3);
					}
					bool ignoreReadOnly = gridModel2.Model.IgnoreReadOnly;
					gridModel2.Model.IgnoreReadOnly = true;
					gridModel2[num5, num6].Text = text11;
					gridModel2[num5, num6].FormulaTag = null;
					gridModel2.Model.IgnoreReadOnly = ignoreReadOnly;
				}
			}
			foreach (string key10 in hashtable3.Keys)
			{
				AdjustInfo adjustInfo = hashtable3[key10] as AdjustInfo;
				bool ignoreReadOnly2 = adjustInfo.grd1.Model.IgnoreReadOnly;
				adjustInfo.grd1.Model.IgnoreReadOnly = true;
				GridRangeInfo range = GridRangeInfo.Auto(adjustInfo.row, adjustInfo.col);
				if (!adjustInfo.grd1.ActiveGridView.ViewLayout.VisibleCellsRange.Contains(range) || adjustInfo.grd1.Updating)
				{
					string text12 = cell;
					GridModel gridModel3 = grid;
					grid = adjustInfo.grd1;
					cell = GridRangeInfo.GetAlphaLabel(adjustInfo.col) + adjustInfo.row;
					string formula = Parse(adjustInfo.newFormula);
					adjustInfo.grd1[adjustInfo.row, adjustInfo.col].FormulaTag = new GridFormulaTag(formula, ComputedValue(formula), adjustInfo.row, adjustInfo.col);
					if (ForceSaveCellInfo)
					{
						adjustInfo.grd1.RaiseSaveCellInfo(new GridSaveCellInfoEventArgs(adjustInfo.row, adjustInfo.col, adjustInfo.grd1[adjustInfo.row, adjustInfo.col], StyleModifyType.Override));
					}
					grid = gridModel3;
					cell = text12;
				}
				adjustInfo.grd1.Model.IgnoreReadOnly = ignoreReadOnly2;
			}
			hashtable3.Clear();
		}
		if ((FormulaCopyFlags & GridFormulaCopyFlags.NamedRangeReferencesUpdated) != GridFormulaCopyFlags.None)
		{
			foreach (string key11 in hashtable.Keys)
			{
				Hashtable hashtable4 = (Hashtable)DependentNamedRangeCells[key11];
				if (hashtable4 != null)
				{
					string[] array3 = new string[hashtable4.Keys.Count];
					hashtable4.Keys.CopyTo(array3, 0);
					string[] array2 = array3;
					foreach (string formulaCell in array2)
					{
						updateFormulasInCells(formulaCell, sortedArrayList);
					}
				}
			}
		}
		foreach (string item4 in sortedArrayList)
		{
			if (DependentFormulaCells[item4] is Hashtable hashtable5)
			{
				foreach (string key12 in hashtable5.Keys)
				{
					if (!(DependentCells[key12] is Hashtable hashtable6))
					{
						Hashtable hashtable7 = new Hashtable();
						hashtable7.Add(item4, item4);
						DependentCells.Add(key12, hashtable7);
					}
					else if (!hashtable6.ContainsKey(item4))
					{
						hashtable6.Add(item4, item4);
					}
				}
			}
			else
			{
				updateFormulasInCells(item4, null);
			}
		}
		grid.Model.CommandStack.Enabled = enabled;
		hashtable?.Clear();
		sortedArrayList.Clear();
		sortedArrayList.TrimToSize();
		grid = gridModel;
		return true;
	}

	private void updateFormulasInCells(string formulaCell, SortedArrayList clearedFormulaCells)
	{
		int num = formulaCell.LastIndexOf('!');
		GridModel gridModel = grid;
		_ = string.Empty;
		int num2;
		int num3;
		if (num > -1)
		{
			GridSheetFamilyItem sheetFamilyItem = GetSheetFamilyItem(grid);
			formulaCell.Substring(0, num + 1);
			grid = (GridModel)sheetFamilyItem.TokenToGridModel[formulaCell.Substring(0, num + 1)];
			num2 = RowIndex(formulaCell);
			num3 = ColIndex(formulaCell);
		}
		else
		{
			num2 = RowIndex(formulaCell);
			num3 = ColIndex(formulaCell);
		}
		if (clearedFormulaCells != null && clearedFormulaCells.InsertIfNotPresent(formulaCell))
		{
			ClearFormulaDependentCells(formulaCell);
		}
		bool ignoreReadOnly = gridModel.Model.IgnoreReadOnly;
		gridModel.Model.IgnoreReadOnly = true;
		string text = cell;
		cell = GridRangeInfo.GetAlphaLabel(num3) + num2;
		string text2 = grid[num2, num3].Text;
		grid[num2, num3].FormulaTag = null;
		if (text2.Length > 0 && text2[0] == formulaChar)
		{
			string formula = Parse(text2);
			gridModel[num2, num3].FormulaTag = new GridFormulaTag(formula, ComputedValue(formula), num2, num3);
			if (ForceSaveCellInfo || grid.Updating)
			{
				GridRangeInfo range = GridRangeInfo.Auto(num2, num3);
				if (!grid.ActiveGridView.ViewLayout.VisibleCellsRange.Contains(range) || grid.Updating)
				{
					grid.RaiseSaveCellInfo(new GridSaveCellInfoEventArgs(num2, num3, grid[num2, num3], StyleModifyType.Override));
				}
			}
		}
		gridModel.Model.IgnoreReadOnly = ignoreReadOnly;
		cell = text;
		grid = gridModel;
	}

	public string AdjustReferences(string origText, int rowOffset, int colOffset)
	{
		return AdjustReferences(origText, rowOffset, colOffset, -1, -1);
	}

	public string AdjustReferences(string origText, int rowOffset, int colOffset, string sheetNameWhereCopied, string currentSheetName)
	{
		return AdjustReferences(origText, rowOffset, colOffset, -1, -1, sheetNameWhereCopied, currentSheetName);
	}

	private string AdjustReferences(string origText, int rowOffset, int colOffset, int rowCut, int colCut)
	{
		return AdjustReferences(origText, rowOffset, colOffset, rowCut, colCut, string.Empty, string.Empty);
	}

	private bool CheckNeedToAdjust(string sheetName, string requiredSheetName, string currentSheetName)
	{
		if (!inPaste && !(requiredSheetName == sheetName))
		{
			if (currentSheetName == requiredSheetName)
			{
				return sheetName == string.Empty;
			}
			return false;
		}
		return true;
	}

	private string AdjustReferences(string origText, int rowOffset, int colOffset, int rowCut, int colCut, string requiredSheetName, string currentSheetName)
	{
		return AdjustReferences(origText, rowOffset, colOffset, rowCut, colCut, requiredSheetName, currentSheetName, isDelete: false);
	}

	private string AdjustReferences(string origText, int rowOffset, int colOffset, int rowCut, int colCut, string requiredSheetName, string currentSheetName, bool isDelete)
	{
		string text = string.Empty;
		string text2 = origText.ToUpper();
		string empty = string.Empty;
		requiredSheetName = requiredSheetName.ToUpper();
		currentSheetName = currentSheetName.ToUpper();
		bool flag = CheckNeedToAdjust(empty, requiredSheetName, currentSheetName);
		int i = 0;
		int length = origText.Length;
		while (i < length)
		{
			if (text2[i] == "$"[0] && (inPaste || !FixedReferenceOnlyOnPaste))
			{
				text += origText[i];
				for (i++; i < length && char.IsLetter(text2, i); i++)
				{
					text += origText[i];
				}
				if (i < length && text2[i] == "$"[0])
				{
					text += origText[i];
					for (i++; i < length && char.IsDigit(text2, i); i++)
					{
						text += origText[i];
					}
				}
				else if (i < length)
				{
					int num = 0;
					for (; i < length && char.IsDigit(text2, i); i++)
					{
						num = 10 * num + int.Parse(text2[i].ToString());
					}
					if (num >= rowCut && flag)
					{
						num = Math.Max(num + rowOffset, grid.Model.Rows.HeaderCount + 1);
					}
					text += num;
				}
			}
			else if (char.IsLetter(text2, i))
			{
				int num2 = i;
				for (i++; i < length && (char.IsLetter(text2, i) || text2[i] == ' ' || text2[i] == '_'); i++)
				{
				}
				if (i < length && text2[i] == "$"[0])
				{
					string s = text2.Substring(num2, i - num2) + "1";
					int num3 = ColIndex(s);
					if (num3 >= colCut && flag)
					{
						num3 = Math.Max(num3 + colOffset, grid.Model.Cols.HeaderCount + 1);
					}
					text += GridRangeInfo.GetAlphaLabel(num3);
					text += origText[i];
					for (i++; i < length && char.IsDigit(text2, i); i++)
					{
						text += origText[i];
					}
				}
				else if (i < length && char.IsDigit(text2, i))
				{
					for (; i < length && char.IsDigit(text2, i); i++)
					{
					}
					if (i < length - 1 && (text2[i] == '!' || char.IsLetter(text2, i)))
					{
						i++;
						text += text2.Substring(num2, i - num2);
						continue;
					}
					string s2 = text2.Substring(num2, i - num2);
					if (!text2[num2 - 1].Equals('"') && !text2[i - num2 + 1].Equals('"'))
					{
						int num4 = RowIndex(s2);
						int num5 = ColIndex(s2);
						if ((num4 >= rowCut && num4 <= -rowOffset + rowCut - 1) || (num5 >= colCut && num5 <= -colOffset + colCut - 1))
						{
							return "=#REF!";
						}
						if (flag && (num4 > rowCut || (num4 == rowCut && !isDelete)))
						{
							num4 = Math.Max(num4 + rowOffset, grid.Model.Rows.HeaderCount + 1);
						}
						if (flag && (num5 > colCut || (num5 == colCut && !isDelete)))
						{
							num5 = Math.Max(num5 + colOffset, grid.Model.Cols.HeaderCount + 1);
						}
						text = text + GridRangeInfo.GetAlphaLabel(num5) + num4;
					}
					else
					{
						text += origText.Substring(num2, i - num2);
					}
				}
				else
				{
					empty = origText.Substring(num2, i - num2);
					text += empty;
					empty = ((i < length && origText[i] == '!') ? empty.ToUpper(CultureInfo.InvariantCulture) : string.Empty);
					flag = CheckNeedToAdjust(empty, requiredSheetName, currentSheetName);
				}
			}
			else
			{
				text += origText[i];
				i++;
			}
		}
		return text;
	}

	public override string ToString()
	{
		return "GridFormulaEngine { Cell: " + ((cell != null) ? cell.ToString() : "null") + " " + ((DependentCells != null) ? DependentCells.Count : (-1)) + "}";
	}

	public static void RemoveGridSheet(string sheetName, GridModel grid)
	{
		GridSheetFamilyItem sheetFamilyItem = GetSheetFamilyItem(grid);
		ChangeGridSheetName(sheetName, "#REF", grid, setREF: true);
		UnregisterGridAsSheet("#REF", grid);
		foreach (GridModel value in sheetFamilyItem.SheetNameToGridModel.Values)
		{
			if (value.ActiveGridView != null && value.ActiveGridView.Visible)
			{
				value.ActiveGridView.Refresh();
			}
		}
	}

	public static bool ChangeGridSheetName(string oldName, string newName, GridModel grid)
	{
		return ChangeGridSheetName(oldName, newName, grid, setREF: false);
	}

	private static bool ChangeGridSheetName(string oldName, string newName, GridModel grid, bool setREF)
	{
		bool result = false;
		try
		{
			GridFormulaEngine engine = ((GridFormulaCellModel)grid.CellModels["FormulaCell"]).Engine;
			GridSheetFamilyItem sheetFamilyItem = GetSheetFamilyItem(grid);
			string text = oldName.ToUpper();
			string text2 = newName.ToUpper();
			string validSheetChars = ValidSheetChars;
			if (engine != null && sheetFamilyItem != null && sheetFamilyItem.SheetNameToGridModel.ContainsKey(text) && !sheetFamilyItem.SheetNameToGridModel.ContainsKey(text2))
			{
				object value = sheetFamilyItem.SheetNameToGridModel[text];
				sheetFamilyItem.SheetNameToGridModel.Remove(text);
				sheetFamilyItem.SheetNameToGridModel.Add(text2, value);
				object obj = sheetFamilyItem.SheetNameToToken[text];
				sheetFamilyItem.SheetNameToToken.Remove(text);
				sheetFamilyItem.TokenToSheetName.Remove(obj);
				sheetFamilyItem.SheetNameToToken.Add(text2, obj);
				sheetFamilyItem.TokenToSheetName.Add(obj, newName);
				sheetFamilyItem.sheetNamesSized.Remove(text);
				sheetFamilyItem.sheetNamesSized.Add(text2);
				sheetFamilyItem.sheetNamesSized.Sort(new LenComparer());
				text += '!';
				newName += '!';
				foreach (GridModel value2 in sheetFamilyItem.SheetNameToGridModel.Values)
				{
					GridData data = value2.Data;
					for (int i = 1; i <= data.RowCount; i++)
					{
						for (int j = 1; j <= data.ColCount; j++)
						{
							if (data[i, j] == null)
							{
								continue;
							}
							GridStyleInfo gridStyleInfo = new GridStyleInfo(data[i, j]);
							string text3 = gridStyleInfo.Text;
							string text4 = text3.ToUpper();
							if (text3.Length <= 0 || text3[0] != engine.formulaChar)
							{
								continue;
							}
							int num = text4.Length;
							bool flag = false;
							while (num > -1 && (num = text4.Substring(0, num).LastIndexOf(text)) > -1)
							{
								int num2 = num;
								int startIndex = num + text.Length;
								num--;
								int num3 = num;
								while (num > -1 && text4[num] == ' ')
								{
									num--;
								}
								if (num > -1 && (num == 0 || validSheetChars.IndexOf(text4[num]) > -1))
								{
									text3 = text3.Substring(0, num3 + 1) + newName + text3.Substring(startIndex);
									flag = true;
								}
								else if (num > -1)
								{
									num = num2 - 1;
								}
							}
							if (flag)
							{
								gridStyleInfo.Text = text3;
								if (setREF && gridStyleInfo.FormulaTag != null)
								{
									gridStyleInfo.FormulaTag.Text = "#REF!";
								}
								data[i, j] = gridStyleInfo.Store;
							}
						}
					}
				}
				result = true;
			}
		}
		catch
		{
			result = false;
		}
		return result;
	}

	public static void RegisterGridAsSheet(string refName, GridModel model, int sheetFamilyID)
	{
		if (modelToSheetID == null)
		{
			modelToSheetID = new Hashtable();
		}
		if (modelToSheetID[model] == null)
		{
			modelToSheetID.Add(model, sheetFamilyID);
		}
		GridSheetFamilyItem sheetFamilyItem = GetSheetFamilyItem(model);
		sheetFamilyItem.isSheeted = true;
		string text = refName.ToUpper();
		if (sheetFamilyItem.SheetNameToGridModel == null)
		{
			sheetFamilyItem.SheetNameToGridModel = new Hashtable();
		}
		if (sheetFamilyItem.TokenToGridModel == null)
		{
			sheetFamilyItem.TokenToGridModel = new Hashtable();
		}
		if (sheetFamilyItem.SheetNameToToken == null)
		{
			sheetFamilyItem.SheetNameToToken = new Hashtable();
		}
		if (sheetFamilyItem.TokenToSheetName == null)
		{
			sheetFamilyItem.TokenToSheetName = new Hashtable();
		}
		if (sheetFamilyItem.GridModelToToken == null)
		{
			sheetFamilyItem.GridModelToToken = new Hashtable();
		}
		if (sheetFamilyItem.SheetNameToGridModel.ContainsKey(text))
		{
			string text2 = (string)sheetFamilyItem.SheetNameToToken[text];
			sheetFamilyItem.TokenToGridModel[text2] = model;
			sheetFamilyItem.GridModelToToken[model] = text2;
			sheetFamilyItem.TokenToSheetName[text2] = refName;
		}
		else
		{
			string text3 = '!' + TokenCount.ToString() + '!';
			TokenCount++;
			sheetFamilyItem.TokenToGridModel.Add(text3, model);
			sheetFamilyItem.SheetNameToToken.Add(text, text3);
			sheetFamilyItem.SheetNameToGridModel.Add(text, model);
			sheetFamilyItem.GridModelToToken.Add(model, text3);
			sheetFamilyItem.TokenToSheetName[text3] = refName;
			model.CellsChanged += GridCellsChanged;
		}
		if (sheetFamilyItem.sheetNamesSized == null)
		{
			sheetFamilyItem.sheetNamesSized = new ArrayList();
		}
		sheetFamilyItem.sheetNamesSized.Add(text);
		sheetFamilyItem.sheetNamesSized.Sort(new LenComparer());
	}

	public static int CreateSheetFamilyID()
	{
		if (sheetFamilyID == int.MaxValue)
		{
			sheetFamilyID = int.MinValue;
		}
		return sheetFamilyID++;
	}

	private static void GridCellsChanged(object sender, GridCellsChangedEventArgs e)
	{
		GridModel gridModel = sender as GridModel;
		GridSheetFamilyItem sheetFamilyItem = GetSheetFamilyItem(gridModel);
		if (gridModel == null || !e.Range.IsCells)
		{
			return;
		}
		string text = sheetFamilyItem.GridModelToToken[sender] as string;
		GridFormulaEngine engine = ((GridFormulaCellModel)gridModel.CellModels["FormulaCell"]).Engine;
		if (e.Range.GetFirstCell(out var top, out var left))
		{
			string s = text + GridRangeInfo.GetAlphaLabel(left) + top;
			engine.Refresh(s);
			while (e.Range.GetNextCell(ref top, ref left, bSortByRow: false))
			{
				s = text + GridRangeInfo.GetAlphaLabel(left) + top;
				engine.Refresh(s);
			}
		}
	}

	public static void UnregisterGridAsSheet(string refName, GridModel model)
	{
		GridSheetFamilyItem sheetFamilyItem = GetSheetFamilyItem(model);
		string text = refName.ToUpper();
		if (sheetFamilyItem.SheetNameToGridModel != null && sheetFamilyItem.SheetNameToGridModel.ContainsKey(text))
		{
			sheetFamilyItem.SheetNameToGridModel.Remove(text);
			string key = (string)sheetFamilyItem.SheetNameToToken[text];
			if (model != null)
			{
				model.CellsChanged -= GridCellsChanged;
			}
			sheetFamilyItem.SheetNameToToken.Remove(text);
			sheetFamilyItem.TokenToGridModel.Remove(key);
			sheetFamilyItem.TokenToSheetName.Remove(refName);
			sheetFamilyItem.sheetNamesSized.Remove(text);
			modelToSheetID.Remove(model);
			sheetFamilyItem.GridModelToToken.Remove(model);
		}
	}

	private void PutTokensForSheets(ref string text, char toke)
	{
		GridSheetFamilyItem sheetFamilyItem = GetSheetFamilyItem(grid);
		if (sheetFamilyItem.sheetNamesSized == null)
		{
			return;
		}
		foreach (string item in sheetFamilyItem.sheetNamesSized)
		{
			string newValue = (string)sheetFamilyItem.SheetNameToToken[item];
			string oldValue = item.ToUpper() + toke;
			text = text.Replace(oldValue, newValue);
		}
	}

	private void PutTokensForSheets(ref string text)
	{
		PutTokensForSheets(ref text, '!');
	}

	public GridFormulaEngine(GridModel gridModel)
	{
		GridStyleInfoStore.FormulaTagProperty.IsCloneable = yesToCloning;
		GridStyleInfoStore.FormulaTagProperty.IsDisposable = yesToCloning;
		grid = gridModel;
		InitLibraryFunctions();
		formulaChar = '\0';
		tokens = new char[10] { 'a', 's', 'm', 'd', 'l', 'g', 'e', 'k', 'j', 'o' };
		refreshedCells = new SortedArrayList();
		formulaCopyFlags = GridFormulaCopyFlags.ClipBoardText;
	}

	public void Refresh(string s)
	{
		if (CalculatingSuspended)
		{
			return;
		}
		if (dependencyLevel == 0)
		{
			refreshedCells.Clear();
		}
		if (dependencyLevel > MaximumRecursiveCalls)
		{
			dependencyLevel--;
		}
		else
		{
			if (DependentCells[s] == null)
			{
				return;
			}
			refreshedCells.InsertIfNotPresent(s);
			dependencyLevel++;
			bool enabled = true;
			try
			{
				enabled = grid.Model.CommandStack.Enabled;
				grid.Model.CommandStack.Enabled = false;
				GridSheetFamilyItem sheetFamilyItem = GetSheetFamilyItem(grid);
				Hashtable hashtable = (Hashtable)DependentCells[s];
				foreach (object key in hashtable.Keys)
				{
					if (!(key is string text))
					{
						continue;
					}
					GridModel gridModel = grid;
					string text2 = SheetToken(text);
					if (text2.Length > 0)
					{
						grid = sheetFamilyItem.TokenToGridModel[text2] as GridModel;
					}
					int num = RowIndex(text);
					int num2 = ColIndex(text);
					GridStyleInfo gridStyleInfo = (UsesVirtualDataSource ? grid.Model[num, num2] : new GridStyleInfo(new GridStyleInfoIdentity(grid.VolatileData, num, num2, offLine: true), grid.Data[num, num2]));
					GridFormulaTag formulaTag;
					try
					{
						formulaTag = gridStyleInfo.FormulaTag;
					}
					catch
					{
						grid = gridModel;
						throw new NullReferenceException(FormulaErrorStrings[virtual_mode_required]);
					}
					if (formulaTag != null)
					{
						SetDirty(formulaTag);
						if (refreshedCells.BinarySearch(text) < 0)
						{
							Refresh(text);
						}
					}
					GridRangeInfo range = GridRangeInfo.Cell(num, num2);
					if (grid.ActiveGridView != null && (grid.ActiveGridView.ViewLayout.VisibleCellsRange.Contains(range) || num <= grid.Rows.FrozenCount || num2 <= grid.Cols.FrozenCount))
					{
						grid.ActiveGridView.Invalidate(grid.ActiveGridView.RangeInfoToRectangle(range));
					}
					else if (forceSaveCellInfo)
					{
						string text3 = cell;
						cell = GridRangeInfo.GetAlphaLabel(num2) + num;
						bool calculatingSuspended = CalculatingSuspended;
						CalculatingSuspended = true;
						formulaTag.Text = ComputedValue(formulaTag.Formula);
						CalculatingSuspended = calculatingSuspended;
						cell = text3;
						grid.RaiseSaveCellInfo(new GridSaveCellInfoEventArgs(num, num2, gridStyleInfo, StyleModifyType.Override));
					}
					grid = gridModel;
				}
			}
			finally
			{
				dependencyLevel--;
				if (dependencyLevel == 0)
				{
					refreshedCells.Clear();
					refreshedCells.TrimToSize();
				}
				grid.Model.CommandStack.Enabled = enabled;
			}
		}
	}

	public void RefreshRange(GridRangeInfo range)
	{
		range = range.ExpandRange(1, 1, grid.RowCount, grid.ColCount);
		for (int i = range.Top; i <= range.Bottom; i++)
		{
			for (int j = range.Left; j <= range.Right; j++)
			{
				string s = GridRangeInfo.GetAlphaLabel(j) + GridRangeInfo.GetNumericLabel(i);
				Refresh(s);
			}
		}
	}

	public void RecalculateRange(GridRangeInfo range)
	{
		RecalculateRange(range, forceCalculations: false);
	}

	public void RecalculateRange(GridRangeInfo range, bool forceCalculations)
	{
		RecalculateRange(range, forceCalculations, forceParsing: false);
	}

	public void RecalculateRange(GridRangeInfo range, bool forceCalculations, bool forceParsing)
	{
		RecalculateRange(range, grid, forceCalculations, forceParsing);
	}

	public void RecalculateRange(GridRangeInfo range, GridModel grd, bool forceCalculations, bool forceParsing)
	{
		RecalculateRange(range, grd, forceCalculations, forceParsing, useBeginUpdate: true);
	}

	internal void RecalculateRange(GridRangeInfo range, GridModel grd, bool forceCalculations, bool forceParsing, bool useBeginUpdate)
	{
		if (CalculatingSuspended)
		{
			return;
		}
		GridModel gridModel = grid;
		grid = grd;
		bool ignoreReadOnly = grid.IgnoreReadOnly;
		grid.IgnoreReadOnly = true;
		range = range.ExpandRange(1, 1, grid.RowCount, grid.ColCount);
		if (useBeginUpdate)
		{
			grid.BeginUpdate();
		}
		GridData data = grid.Model.Data;
		for (int i = range.Top; i <= range.Bottom; i++)
		{
			for (int j = range.Left; j <= range.Right; j++)
			{
				if (data[i, j] == null && !UsesVirtualDataSource)
				{
					continue;
				}
				GridStyleInfo gridStyleInfo = (UsesVirtualDataSource ? grid[i, j] : new GridStyleInfo(new GridStyleInfoIdentity(grid.Model.VolatileData, i, j, offLine: true), data[i, j]));
				if (gridStyleInfo.Store == null || !(gridStyleInfo.CellModel is GridFormulaCellModel))
				{
					continue;
				}
				string s = gridStyleInfo.Text;
				GetFormulaText(ref s);
				bool flag = formulaChar != 0 && s.Length > 0 && s[0] == formulaChar;
				if (formulaChar != 0 && !flag)
				{
					continue;
				}
				if (flag)
				{
					s = s.Substring(1);
				}
				string text = ((gridStyleInfo.FormulaTag != null && !forceParsing) ? gridStyleInfo.FormulaTag.Formula : string.Empty);
				gridStyleInfo.FormulaTag = null;
				if (forceCalculations)
				{
					cell = GridRangeInfo.GetAlphaLabel(j) + i;
					if (text.Length == 0 && s.Length > 0)
					{
						if (catchExceptionsInRecalculateRange)
						{
							try
							{
								text = Parse(s);
							}
							catch (Exception)
							{
								text = "#REF!";
							}
						}
						else
						{
							text = Parse(s);
						}
					}
					string text2 = "";
					if (catchExceptionsInRecalculateRange)
					{
						if (text == "#REF!")
						{
							text2 = "#REF!";
						}
						else if (text.Length > 0)
						{
							double result = 0.0;
							if (text[0] != 'b' && !double.TryParse(text, out result))
							{
								text2 = "#REF!";
							}
							else
							{
								bool passThroughExceptions = ExceptionManager.PassThroughExceptions;
								ExceptionManager.PassThroughExceptions = true;
								try
								{
									text2 = ComputedValue(text);
								}
								catch (Exception)
								{
									text2 = "#REF!";
								}
								finally
								{
									ExceptionManager.PassThroughExceptions = passThroughExceptions;
								}
							}
						}
					}
					else
					{
						text2 = ComputedValue(text);
					}
					gridStyleInfo.FormulaTag = new GridFormulaTag(text, text2, i, j);
				}
				if (!UsesVirtualDataSource)
				{
					data[i, j] = gridStyleInfo.Store;
				}
			}
		}
		grid.IgnoreReadOnly = ignoreReadOnly;
		if (useBeginUpdate)
		{
			grid.EndUpdate();
		}
		grid.InvalidateRange(range, GridRangeOptions.None);
		grid = gridModel;
	}

	private Hashtable SaveStrings(ref string text)
	{
		text = text.Replace("#N/A", "#N" + UNIQUESLASHMARKER + "A");
		Hashtable hashtable = null;
		string oldValue = TIC + TIC;
		int num = 0;
		int num2 = -1;
		if ((num2 = text.IndexOf(TIC)) > -1)
		{
			while (num2 > -1 && num2 < text.Length)
			{
				if (hashtable == null)
				{
					hashtable = new Hashtable();
				}
				int num3 = ((num2 + 1 < text.Length) ? text.IndexOf(TIC, num2 + 1) : (-1));
				if (num3 > -1)
				{
					string text2 = TIC + UNIQUESTRINGMARKER + num.ToString() + TIC;
					if (num3 < text.Length - 2 && text[num3 + 1] == TIC[0])
					{
						num3 = text.IndexOf(TIC, num3 + 2);
						if (num3 == -1)
						{
							throw new ArgumentException(FormulaErrorStrings[mismatched_tics]);
						}
					}
					string text3 = text.Substring(num2, num3 - num2 + 1);
					hashtable.Add(text2, text3);
					text3 = text3.Replace(oldValue, TIC);
					num++;
					text = text.Substring(0, num2) + text2 + text.Substring(num3 + 1);
					num2 += text2.Length;
					if (num2 < text.Length)
					{
						num2 = text.IndexOf(TIC, num2);
					}
					continue;
				}
				throw new ArgumentException(FormulaErrorStrings[mismatched_tics]);
			}
		}
		return hashtable;
	}

	private void SetStrings(ref string retValue, Hashtable strings)
	{
		retValue = retValue.Replace("#N" + UNIQUESLASHMARKER + "A", "#N/A");
		foreach (string key in strings.Keys)
		{
			retValue = retValue.Replace(key, (string)strings[key]);
		}
	}

	static GridFormulaEngine()
	{
		sheetFamiliesList = null;
		sheetFamilyID = 0;
		defaultFamilyItem = null;
		sheetedFormulaCopyFlags = GridFormulaCopyFlags.ClipBoardText;
		TokenCount = 0;
		modelToSheetID = null;
		ValidSheetChars = "+-/*<>=(,:";
		yesToCloning = false;
		ParseDecimalSeparator = '.';
		ParseArgumentSeparator = ',';
		factorialTable = new int[13]
		{
			1, 1, 2, 6, 24, 120, 720, 5040, 40320, 362880,
			3628800, 39916800, 479001600
		};
		Treat1900AsLeapYear = true;
		gammaAs = new double[5] { 0.918938533204673, 0.000595238095238, 0.000793650793651, 0.002777777777778, 0.083333333333333 };
		gauss_n = 16;
		gauss_x = new double[16]
		{
			0.04830766569, 0.14447196158, 0.23928736225, 0.33186860228, 0.42135127613, 0.50689990893, 0.58771575724, 0.66304426693, 0.73218211874, 0.79448379597,
			0.84936761373, 0.89632115577, 0.93490607594, 0.96476225559, 0.98561151155, 0.99726386185
		};
		gauss_w = new double[16]
		{
			0.09654008851, 0.09563872008, 0.09384439908, 0.0911738787, 0.087652093, 0.08331192423, 0.07819389579, 0.07234579411, 0.06582222278, 0.05868409348,
			0.05099805926, 0.04283589802, 0.03427386291, 0.02539206531, 0.01627439473, 0.00701861001
		};
		useCommonLibraryFunction = false;
		functionEngineContext = null;
		ParseDecimalSeparator = '.';
		ParseArgumentSeparator = ',';
	}

	public bool IsFormulaValid(string text, out string parsedFormula, out string errorMessage, out string computedValue)
	{
		string text2 = cell;
		cell = string.Empty;
		errorMessage = string.Empty;
		parsedFormula = string.Empty;
		computedValue = string.Empty;
		bool flag = lockDependencies;
		try
		{
			lockDependencies = true;
			parsedFormula = Parse(text);
			computedValue = ComputedValue(parsedFormula);
			if (errorStrings == null)
			{
				errorStrings = new ArrayList();
				errorStrings.AddRange(FormulaErrorStrings);
			}
			int num = errorStrings.IndexOf(computedValue);
			if (num > -1)
			{
				errorMessage = errorStrings[num].ToString();
				computedValue = string.Empty;
			}
			return num == -1;
		}
		catch (Exception ex)
		{
			errorMessage = ex.Message;
			return false;
		}
		finally
		{
			lockDependencies = flag;
			cell = text2;
		}
	}

	public bool IsFormulaValid(string text)
	{
		string parsedFormula;
		string errorMessage;
		string computedValue;
		return IsFormulaValid(text, out parsedFormula, out errorMessage, out computedValue);
	}

	public string Parse(string text)
	{
		GetFormulaText(ref text);
		if (formulaChar != 0 && text.Length > 0 && text[0] == formulaChar)
		{
			text = text.Substring(1);
		}
		if (GridUtil.IsEmpty(text))
		{
			return text;
		}
		text = text.Replace(BRACELEFT, TIC);
		text = text.Replace(BRACERIGHT, TIC);
		Hashtable hashtable = SaveStrings(ref text);
		if (formulaChar != 0 && formulaChar == text[0])
		{
			text = text.Substring(1);
		}
		int num = 0;
		text = text.ToUpper(CultureInfo.InvariantCulture);
		if (!SupportBlanksInSheetNames)
		{
			text = text.Replace(" ", string.Empty);
		}
		if (NamedRanges.ContainsKey(text))
		{
			SetNamedRangeDependency(text, cell);
			text = ((string)NamedRanges[text]).ToUpper();
		}
		else
		{
			StringBuilder stringBuilder = new StringBuilder(text);
			foreach (string item in NamedRangesSized)
			{
				int num2 = -1;
				int num3 = 0;
				string text3 = string.Empty;
				while (num3 < stringBuilder.Length && (num2 = stringBuilder.ToString().IndexOf(item, num3)) > -1)
				{
					int length = item.Length;
					if ((num2 == 0 || !char.IsLetterOrDigit(stringBuilder[num2 - 1])) && (num2 + length == stringBuilder.Length || !char.IsLetterOrDigit(stringBuilder[num2 + length])))
					{
						if (text3.Length == 0)
						{
							SetNamedRangeDependency(item, cell);
							text3 = "(" + NamedRanges[item].ToString().ToUpper() + ")";
						}
						stringBuilder.Replace(item, text3, num2, length);
						length = text3.Length;
					}
					num3 = num2 + length;
				}
			}
			text = stringBuilder.ToString();
		}
		GridSheetFamilyItem sheetFamilyItem = GetSheetFamilyItem(grid);
		if (sheetFamilyItem.SheetNameToGridModel != null && sheetFamilyItem.SheetNameToGridModel.Count > 0)
		{
			try
			{
				text = text.Replace('!', '\u0085');
				PutTokensForSheets(ref text, '\u0085');
				if (text.IndexOf('\u0085') > -1)
				{
					if (MarkUnknownSheetRanges)
					{
						return "\"#REF!\"";
					}
					text = text.Replace('\u0085', '!');
					throw new ArgumentException(FormulaErrorStrings[unknown_sheet]);
				}
			}
			catch (Exception ex)
			{
				TraceUtil.TraceExceptionCatched(ex);
				if (!ExceptionManager.RaiseExceptionCatched(this, ex))
				{
					throw ex;
				}
				throw ex;
			}
		}
		if (!CheckSheetTokens(text))
		{
			throw new ArgumentException(FormulaErrorStrings[unknown_sheet]);
		}
		if (SupportBlanksInSheetNames)
		{
			text = text.Replace(" ", string.Empty);
		}
		try
		{
			MarkLibraryFormulas(ref text);
		}
		catch (Exception ex2)
		{
			TraceUtil.TraceExceptionCatched(ex2);
			if (!ExceptionManager.RaiseExceptionCatched(this, ex2))
			{
				throw ex2;
			}
			throw ex2;
		}
		while ((num = text.IndexOf(')')) > -1)
		{
			int num4 = text.Substring(0, num).LastIndexOf('(');
			if (num4 == -1)
			{
				throw new ArgumentException(FormulaErrorStrings[mismatched_parentheses]);
			}
			if (num4 == num - 1)
			{
				throw new ArgumentException(FormulaErrorStrings[empty_expression]);
			}
			string text4 = text.Substring(num4 + 1, num - num4 - 1);
			text = text.Substring(0, num4) + ParseSimple(text4) + text.Substring(num + 1);
		}
		if (text.IndexOf('(') > -1)
		{
			throw new ArgumentException(FormulaErrorStrings[mismatched_parentheses]);
		}
		string retValue = ParseSimple(text);
		if (hashtable != null && hashtable.Count > 0)
		{
			SetStrings(ref retValue, hashtable);
		}
		return retValue;
	}

	private bool CheckSheetTokens(string text)
	{
		bool flag = true;
		int num = 0;
		while (flag && num < text.Length && (num = text.IndexOf('!', num)) > -1)
		{
			int num2 = num;
			for (num++; num < text.Length && text[num] != '!'; num++)
			{
			}
			if (num2 + 1 >= num || num == text.Length)
			{
				flag = false;
			}
			else
			{
				GridSheetFamilyItem sheetFamilyItem = GetSheetFamilyItem(grid);
				if (!sheetFamilyItem.TokenToGridModel.ContainsKey(text.Substring(num2, num - num2 + 1)))
				{
					flag = false;
				}
			}
			num++;
		}
		return flag;
	}

	private string ParseSimple(string text)
	{
		if (text.Length > 0 && text[0] == '+')
		{
			text = text.Substring(1);
		}
		if (text.Trim().Length == 0 || text == "#N/A")
		{
			return text;
		}
		text = HandleEmbeddedEs(text);
		StringBuilder stringBuilder = new StringBuilder(text);
		bool flag = true;
		while (flag)
		{
			stringBuilder.Replace("--", "+");
			stringBuilder.Replace("++", "+");
			stringBuilder.Replace(",-", ",u").Replace(LEFTBRACKET + "-", LEFTBRACKET + "u").Replace("=-", "=u")
				.Replace(">-", ">u")
				.Replace("<-", "<u")
				.Replace("/-", "/u")
				.Replace("*-", "*u")
				.Replace("+-", "+u")
				.Replace("^-", "^u");
			stringBuilder.Replace(",+", ",").Replace(LEFTBRACKET + "+", LEFTBRACKET.ToString()).Replace("=+", "=")
				.Replace(">+", ">")
				.Replace("<+", "<")
				.Replace("/+", "/")
				.Replace("*+", "*")
				.Replace("^+", "^");
			if (stringBuilder.Length > 0 && stringBuilder[0] == '+')
			{
				stringBuilder.Remove(0, 1);
			}
			flag = text != stringBuilder.ToString();
			text = stringBuilder.ToString();
		}
		text = stringBuilder.Replace("<=", 'f'.ToString()).Replace(">=", 'h'.ToString()).Replace("<>", 'p'.ToString())
			.Replace("$", "")
			.Replace(STRING_pow, CHAR_pow.ToString())
			.Replace(STRING_and, CHAR_and.ToString())
			.ToString();
		bool needToContinue = true;
		text = ParseSimple(text, new char[2] { 't', 'v' }, new char[2] { CHAR_EP, CHAR_EM }, ref needToContinue);
		if (needToContinue)
		{
			text = ParseSimple(text, new char[1] { '~' }, new char[1] { CHAR_pow }, ref needToContinue);
		}
		if (needToContinue)
		{
			text = ParseSimple(text, new char[2] { 'm', 'd' }, new char[2] { '*', '/' }, ref needToContinue);
		}
		if (needToContinue)
		{
			text = ParseSimple(text, new char[2] { 'a', 's' }, new char[2] { '+', '-' }, ref needToContinue);
		}
		if (needToContinue)
		{
			text = ParseSimple(text, new char[6] { 'l', 'g', 'e', 'k', 'j', 'o' }, new char[6] { '<', '>', '=', 'f', 'h', 'p' }, ref needToContinue);
		}
		if (needToContinue)
		{
			text = ParseSimple(text, new char[1] { 'c' }, new char[1] { CHAR_and }, ref needToContinue);
		}
		return text;
	}

	private bool EInsideBMARKERs(int j, string text)
	{
		int num = text.Substring(0, j).LastIndexOf('b');
		int num2 = text.IndexOf('b', j);
		if (num > -1 && j > num)
		{
			return j < num2;
		}
		return false;
	}

	private string HandleEmbeddedEs(string text)
	{
		int num = 0;
		while (num > -1 && (num = text.IndexOf(STRING_EP, num)) > -1 && !EInsideBMARKERs(num, text))
		{
			int num2 = num;
			while (num2 > 0 && (char.IsDigit(text[num2 - 1]) || text[num2 - 1] == ParseDecimalSeparator))
			{
				num2--;
			}
			if (num2 != num && (num2 == 0 || !char.IsUpper(text[num2 - 1])))
			{
				int i;
				for (i = num + STRING_EP.Length; i < text.Length && char.IsDigit(text[i]); i++)
				{
				}
				if (i != num + STRING_EP.Length)
				{
					text = text.Substring(0, num) + CHAR_EP + text.Substring(num + STRING_EP.Length);
				}
			}
			num++;
		}
		num = 0;
		while (num > -1 && (num = text.IndexOf(STRING_EM, num)) > -1 && !EInsideBMARKERs(num, text))
		{
			int num3 = num;
			while (num3 > 0 && (char.IsDigit(text[num3 - 1]) || text[num3 - 1] == ParseDecimalSeparator))
			{
				num3--;
			}
			if (num3 != num && (num3 == 0 || !char.IsUpper(text[num3 - 1])))
			{
				int j;
				for (j = num + STRING_EM.Length; j < text.Length && char.IsDigit(text[j]); j++)
				{
				}
				if (j != num + STRING_EM.Length)
				{
					text = text.Substring(0, num) + CHAR_EM + text.Substring(num + STRING_EM.Length);
				}
			}
			num++;
		}
		num = 0;
		while (num > -1 && (num = text.IndexOf(STRING_E, num)) > -1 && !EInsideBMARKERs(num, text))
		{
			int num4 = num;
			while (num4 > 0 && (char.IsDigit(text[num4 - 1]) || text[num4 - 1] == ParseDecimalSeparator))
			{
				num4--;
			}
			if (num4 != num && (num4 == 0 || !char.IsUpper(text[num4 - 1])))
			{
				int k;
				for (k = num + STRING_E.Length; k < text.Length && char.IsDigit(text[k]); k++)
				{
				}
				if (k != num + STRING_E.Length && (num4 == -1 || !char.IsUpper(text[num4])))
				{
					text = text.Substring(0, num) + CHAR_EP + text.Substring(num + STRING_E.Length);
				}
			}
			num++;
		}
		return text;
	}

	private string ZapBlocks(string text)
	{
		if (text.IndexOf('b') > -1)
		{
			int num = 0;
			for (int num2 = text.Length - 1; num2 >= 0; num2--)
			{
				if (text[num2] == RIGHTBRACKET)
				{
					num--;
				}
				else if (text[num2] == LEFTBRACKET)
				{
					num++;
				}
				else if (text[num2] == 'b' && num == 0)
				{
					text = text.Remove(num2, 1);
				}
			}
		}
		return text;
	}

	private int FindNonQB(string text)
	{
		int result = -1;
		if (text.IndexOf('b') > -1)
		{
			int num = 0;
			for (int i = 0; i < text.Length; i++)
			{
				if (text[i] == RIGHTBRACKET)
				{
					num--;
				}
				else if (text[i] == LEFTBRACKET)
				{
					num++;
				}
				else if (text[i] == 'b' && num == 0)
				{
					result = i;
					break;
				}
			}
		}
		return result;
	}

	private string ParseSimple(string text, char[] markers, char[] operators, ref bool needToContinue)
	{
		string text2 = string.Empty;
		foreach (char c in operators)
		{
			text2 += c;
		}
		if (text.Length > 0 && text[0] == '-')
		{
			text = text.Substring(1).Replace('-', '\u0084');
			text = "0-" + text;
			text = ParseSimple(text, new char[1] { 's' }, new char[1] { '-' }, ref needToContinue);
			text = text.Replace('\u0084', '-');
		}
		if (NamedRanges.ContainsKey(text))
		{
			SetNamedRangeDependency(text, cell);
			text = NamedRanges[text].ToString().ToUpper();
		}
		if (text.IndexOfAny(operators) > -1)
		{
			int num;
			while ((num = text.IndexOfAny(operators)) > -1)
			{
				string empty = string.Empty;
				string empty2 = string.Empty;
				int num2 = 0;
				int num3 = 0;
				if (num < 1 && text[num] != '-')
				{
					throw new ArgumentException(FormulaErrorStrings[operators_cannot_start_an_expression]);
				}
				int num4 = num - 1;
				if (num == 0 && text[num] == '-')
				{
					text = "bnu" + text.Substring(1) + 'b';
					continue;
				}
				if (text[num4] == TIC[0])
				{
					int num5 = text.Substring(0, num4 - 1).LastIndexOf(TIC);
					if (num5 < 0)
					{
						throw new ArgumentException(FormulaErrorStrings[cannot_parse]);
					}
					empty = text.Substring(num5, num4 - num5 + 1);
					num2 = num5;
				}
				else if (text[num4] == 'b')
				{
					int num6 = FindLastNonQB(text.Substring(0, num4 - 1));
					if (num6 < 0)
					{
						throw new ArgumentException(FormulaErrorStrings[cannot_parse]);
					}
					empty = text.Substring(num6 + 1, num4 - num6 - 1);
					num2 = num6 + 1;
				}
				else if (text[num4] == RIGHTBRACKET)
				{
					int num7 = 0;
					int num8 = num4 - 1;
					while (num8 > 0 && (text[num8] != 'q' || num7 != 0))
					{
						if (text[num8] == 'q')
						{
							num7--;
						}
						else if (text[num8] == RIGHTBRACKET)
						{
							num7++;
						}
						num8--;
					}
					if (num8 < 0)
					{
						throw new ArgumentException(FormulaErrorStrings[bad_library]);
					}
					empty = text.Substring(num8, num4 - num8 + 1);
					empty = empty.Replace('b', 'z');
					num2 = num8;
				}
				else if (!char.IsDigit(text[num4]) && text[num4] != '%')
				{
					while (num4 >= 0 && char.IsUpper(text[num4]))
					{
						num4--;
					}
					empty = text.Substring(num4 + 1, num - num4 - 1);
					num2 = num4 + 1;
					if (NamedRanges.ContainsKey(empty))
					{
						empty = Parse((string)NamedRanges[empty]);
					}
					else if (empty == TRUEVALUESTR)
					{
						empty = 'n' + TRUEVALUESTR;
					}
					else
					{
						if (!(empty == FALSEVALUESTR))
						{
							throw new ArgumentException(FormulaErrorStrings[invalid_char_in_front_of] + " " + text[num]);
						}
						empty = 'n' + FALSEVALUESTR;
					}
				}
				else
				{
					bool flag = false;
					bool flag2 = false;
					while (num4 > -1 && (char.IsDigit(text[num4]) || (!flag && text[num4] == ParseDecimalSeparator) || (!flag2 && text[num4] == '%')))
					{
						if (text[num4] == ParseDecimalSeparator)
						{
							flag = true;
						}
						else if (text[num4] == '%')
						{
							flag2 = true;
						}
						num4--;
					}
					if (num4 > -1 && flag && text[num4] == ParseDecimalSeparator)
					{
						throw new ArgumentException(FormulaErrorStrings[number_contains_2_decimal_points]);
					}
					if (num4 > -1 && text[num4] == 'u')
					{
						num4--;
					}
					num4++;
					if (num4 == 0 || (num4 > 0 && !char.IsUpper(text[num4 - 1])) || (num4 == 1 && text[0] == 'u'))
					{
						if (num4 == 1 && text[0] == 'u')
						{
							num4--;
						}
						empty = 'n' + text.Substring(num4, num - num4);
						num2 = num4;
					}
					else
					{
						num4--;
						while (num4 > -1 && char.IsUpper(text[num4]))
						{
							num4--;
						}
						if (num4 > -1 && text[num4] == '!')
						{
							num4--;
							while (num4 > -1 && text[num4] != '!')
							{
								num4--;
							}
							if (num4 > -1 && text[num4] == '!')
							{
								num4--;
							}
						}
						num4++;
						empty = text.Substring(num4, num - num4);
						if (currentRowNotationEnabled && empty.Length > 1 && empty[empty.Length - 1] == '0' && !char.IsDigit(empty[empty.Length - 2]))
						{
							empty = empty.Substring(0, empty.Length - 1) + RowIndex(cell);
						}
						num2 = num4;
					}
				}
				if (num == text.Length - 1)
				{
					throw new ArgumentException(FormulaErrorStrings[expression_cannot_end_with_an_operator]);
				}
				num4 = num + 1;
				bool flag3 = text[num4] == 'u';
				if (flag3)
				{
					num4++;
				}
				if (text[num4] == TIC[0])
				{
					int num9 = text.Substring(num4 + 1).IndexOf(TIC);
					if (num9 < 0)
					{
						throw new ArgumentException(FormulaErrorStrings[cannot_parse]);
					}
					empty2 = text.Substring(num4, num9 + 2);
					num3 = num9 + num4 + 2;
				}
				else if (text[num4] == 'b')
				{
					int num10 = FindNonQB(text.Substring(num4 + 1));
					if (num10 < 0)
					{
						throw new ArgumentException(FormulaErrorStrings[cannot_parse]);
					}
					empty2 = text.Substring(num4 + 1, num10);
					if (flag3)
					{
						empty2 += "nu1m";
					}
					num3 = num10 + num4 + 2;
				}
				else if (text[num4] == 'q')
				{
					int num11 = 0;
					int j;
					for (j = num4 + 1; j < text.Length && (text[j] != RIGHTBRACKET || num11 != 0); j++)
					{
						if (text[j] == RIGHTBRACKET)
						{
							num11++;
						}
						else if (text[j] == 'q')
						{
							num11--;
						}
					}
					if (j == text.Length)
					{
						throw new ArgumentException(FormulaErrorStrings[cannot_parse]);
					}
					empty2 = text.Substring(num4, j - num4 + 1);
					if (flag3)
					{
						empty2 = 'u' + empty2;
					}
					empty2 = empty2.Replace('b', 'z');
					num3 = j + 1;
				}
				else if (char.IsDigit(text[num4]) || text[num4] == ParseDecimalSeparator)
				{
					bool flag4 = text[num4] == ParseDecimalSeparator;
					for (num4++; num4 < text.Length && (char.IsDigit(text[num4]) || (!flag4 && text[num4] == ParseDecimalSeparator)); num4++)
					{
						if (text[num4] == ParseDecimalSeparator)
						{
							flag4 = true;
						}
					}
					if (num4 < text.Length && text[num4] == '%')
					{
						num4++;
					}
					if (flag4 && num4 < text.Length && text[num4] == ParseDecimalSeparator)
					{
						throw new ArgumentException(FormulaErrorStrings[number_contains_2_decimal_points]);
					}
					empty2 = 'n' + text.Substring(num + 1, num4 - num - 1);
					num3 = num4;
				}
				else
				{
					if (!char.IsUpper(text[num4]) && text[num4] != '!' && text[num4] != 'u')
					{
						throw new ArgumentException(FormulaErrorStrings[invalid_characters_following_an_operator]);
					}
					if (text[num4] == '!')
					{
						for (num4++; num4 < text.Length && text[num4] != '!'; num4++)
						{
						}
					}
					num4++;
					int num12 = 0;
					while (num4 < text.Length && char.IsUpper(text[num4]))
					{
						num4++;
						num12++;
					}
					bool flag5 = num4 == text.Length || !char.IsDigit(text[num4]);
					if (num12 > 4)
					{
						for (; num4 < text.Length && (char.IsUpper(text[num4]) || char.IsDigit(text[num4])); num4++)
						{
						}
						flag5 = true;
					}
					for (; num4 < text.Length && char.IsDigit(text[num4]); num4++)
					{
					}
					num4--;
					empty2 = text.Substring(num + 1, num4 - num);
					if (flag3)
					{
						empty2 = 'u' + empty2;
					}
					if (!flag5)
					{
						if (currentRowNotationEnabled && empty2.Length > 1 && empty2[empty2.Length - 1] == '0' && !char.IsDigit(empty2[empty2.Length - 2]))
						{
							empty2 = empty2.Substring(0, empty2.Length - 1) + RowIndex(cell);
						}
						UpdateDependencies(empty2);
					}
					else if (NamedRanges.ContainsKey(empty2))
					{
						SetNamedRangeDependency(empty2, cell);
						empty2 = Parse((string)NamedRanges[empty2]);
					}
					else if (empty2 == TRUEVALUESTR)
					{
						empty2 = 'n' + TRUEVALUESTR;
					}
					else
					{
						if (!(empty2 == FALSEVALUESTR))
						{
							throw new ArgumentException(FormulaErrorStrings[invalid_characters_following_an_operator]);
						}
						empty2 = 'n' + FALSEVALUESTR;
					}
					num3 = num4 + 1;
				}
				int num13 = text2.IndexOf(text[num]);
				string text3 = 'b' + ZapBlocks(empty) + ZapBlocks(empty2) + markers[num13] + 'b';
				text3 = text3.Replace('z', 'b');
				if (num2 > 0)
				{
					text3 = text.Substring(0, num2) + text3;
				}
				if (num3 < text.Length)
				{
					text3 += text.Substring(num3);
				}
				text3 = text3.Replace("bb", "b");
				text = text3;
			}
		}
		else
		{
			int num14 = text.Length - 1;
			if (text[num14] == 'b')
			{
				int num15 = FindLastNonQB(text.Substring(0, num14 - 1));
				if (num15 < 0)
				{
					throw new ArgumentException(FormulaErrorStrings[cannot_parse]);
				}
			}
			else if (text[num14] == RIGHTBRACKET)
			{
				int num16 = 0;
				int num17 = num14 - 1;
				while (num17 > 0 && (text[num17] != 'q' || num16 != 0))
				{
					if (text[num17] == 'q')
					{
						num16--;
					}
					else if (text[num17] == RIGHTBRACKET)
					{
						num16++;
					}
					num17--;
				}
				if (num17 < 0)
				{
					throw new ArgumentException(FormulaErrorStrings[bad_library]);
				}
			}
			else
			{
				bool flag6 = false;
				bool flag7 = false;
				while (num14 > -1 && (char.IsDigit(text[num14]) || (!flag6 && text[num14] == ParseDecimalSeparator) || (!flag7 && text[num14] == '%')))
				{
					if (text[num14] == ParseDecimalSeparator)
					{
						flag6 = true;
					}
					else if (text[num14] == '%')
					{
						flag7 = true;
					}
					num14--;
				}
				if (num14 > -1 && flag6 && text[num14] == ParseDecimalSeparator)
				{
					throw new ArgumentException(FormulaErrorStrings[number_contains_2_decimal_points]);
				}
			}
			if (text.Length > 0 && (char.IsUpper(text, 0) || text[0] == '!'))
			{
				bool flag8 = true;
				bool flag9 = true;
				for (int k = 0; k < text.Length; k++)
				{
					if (text[k] == '!')
					{
						for (k++; k < text.Length && char.IsDigit(text[k]); k++)
						{
						}
						if (k == text.Length || text[k] != '!')
						{
							flag8 = false;
							break;
						}
						continue;
					}
					if (!flag9 && char.IsUpper(text, k))
					{
						flag8 = false;
						break;
					}
					if (char.IsDigit(text, k) || char.IsUpper(text, k) || text[k] == '!')
					{
						flag9 = char.IsUpper(text, k);
						continue;
					}
					flag8 = false;
					break;
				}
				if (flag8)
				{
					if (currentRowNotationEnabled && text.Length > 1 && text[text.Length - 1] == '0' && !char.IsDigit(text[text.Length - 2]))
					{
						text = text.Substring(0, text.Length - 1) + RowIndex(cell);
					}
					UpdateDependencies(text);
					needToContinue = false;
				}
			}
		}
		return text;
	}

	private int FindLastNonQB(string text)
	{
		int result = -1;
		if (text.IndexOf('b') > -1)
		{
			int num = 0;
			for (int num2 = text.Length - 1; num2 >= 0; num2--)
			{
				if (text[num2] == RIGHTBRACKET)
				{
					num--;
				}
				else if (text[num2] == LEFTBRACKET)
				{
					num++;
				}
				else if (text[num2] == 'b' && num == 0)
				{
					result = num2;
					break;
				}
			}
		}
		return result;
	}

	private void MarkNamedRanges(ref string argList)
	{
		argList.IndexOf(')');
		char[] array = new char[10] { ')', '\0', '}', '+', '-', '*', '/', '<', '>', '=' };
		array[1] = ParseArgumentSeparator;
		char[] anyOf = array;
		int num = 0;
		int i = num + 1;
		int num2 = argList.Substring(i).IndexOfAny(anyOf);
		while (num2 > -1 && num2 + i < argList.Length)
		{
			string formula = (string)NamedRanges[argList.Substring(i, num2)];
			if (formula != null)
			{
				SetNamedRangeDependency(argList.Substring(i, num2), cell);
				formula = formula.ToUpper();
				MarkLibraryFormulas(ref formula);
				PutTokensForSheets(ref formula);
			}
			if (formula != null)
			{
				argList = argList.Substring(0, i) + formula.ToString() + argList.Substring(i + num2);
				i += formula.ToString().Length + 1;
			}
			else
			{
				for (i += num2 + 1; i < argList.Length && !char.IsUpper(argList[i]); i++)
				{
				}
			}
			num2 = argList.Substring(i).IndexOfAny(anyOf);
		}
	}

	private void MarkLibraryFormulas(ref string formula)
	{
		for (int num = formula.IndexOf(')'); num > -1; num = formula.IndexOf(')'))
		{
			int num2 = 0;
			int num3 = num - 1;
			while (num3 > -1 && (formula[num3] != '(' || num2 != 0))
			{
				if (formula[num3] == ')')
				{
					num2++;
				}
				else if (formula[num3] == ')')
				{
					num2--;
				}
				num3--;
			}
			if (num3 == -1)
			{
				throw new ArgumentException(FormulaErrorStrings[mismatched_parentheses]);
			}
			int num4 = num3 - 1;
			while (num4 > -1 && char.IsLetterOrDigit(formula[num4]))
			{
				num4--;
			}
			int num5 = num3 - num4 - 1;
			if (num5 > 0 && LibraryFunctions[formula.Substring(num4 + 1, num5)] != null)
			{
				string argList = formula.Substring(num3, num - num3 + 1);
				MarkNamedRanges(ref argList);
				if (forceParsingOfLibraryFunctionArguments)
				{
					SwapInnerParens(ref argList);
					AddParensToArgs(ref argList);
				}
				formula = formula.Substring(0, num4 + 1) + 'q' + formula.Substring(num4 + 1, num5) + argList.Replace('(', LEFTBRACKET).Replace(')', RIGHTBRACKET) + formula.Substring(num + 1);
			}
			else
			{
				if (num5 > 0)
				{
					throw new ArgumentException(FormulaErrorStrings[unknown_formula_name]);
				}
				string text = string.Empty;
				if (num3 > 0)
				{
					text = formula.Substring(0, num3);
				}
				text = text + '{' + formula.Substring(num3 + 1, num - num3 - 1) + '}';
				if (num < formula.Length)
				{
					text += formula.Substring(num + 1);
				}
				formula = text;
			}
		}
		formula = formula.Replace('{', '(').Replace('}', ')');
	}

	private void SwapInnerParens(ref string s)
	{
		if (s.Length > 2)
		{
			s = s[0] + s.Substring(1, s.Length - 2).Replace("(", "{").Replace(")", "}") + s[s.Length - 1];
		}
	}

	private void AddParensToArgs(ref string formula)
	{
		if (formula.Length == 0)
		{
			return;
		}
		char[] anyOf = new char[2] { ParseArgumentSeparator, RIGHTBRACKET };
		int num = formula.LastIndexOf(ParseArgumentSeparator);
		if (num == -1)
		{
			if (formula.Length > 2 && formula[0] == '(' && formula[formula.Length - 1] == ')' && formula[1] != '{' && formula[1] != '(')
			{
				formula = formula.Substring(0, formula.Length - 1) + "}" + formula.Substring(formula.Length - 1);
				formula = formula[0] + "{" + formula.Substring(1);
			}
			return;
		}
		bool flag = true;
		while (num > -1)
		{
			int num2 = formula.IndexOfAny(anyOf, num + 1);
			if (num2 == -1 && formula[formula.Length - 1] == ')')
			{
				num2 = formula.Length - 1;
			}
			if (num2 > 0 && formula[num + 1] != '{' && formula[num2 - 1] != '}')
			{
				formula = formula.Substring(0, num2) + "}" + formula.Substring(num2);
				formula = formula.Substring(0, num + 1) + "{" + formula.Substring(num + 1);
			}
			num = formula.Substring(0, num).LastIndexOf(ParseArgumentSeparator);
			if (flag && num == -1 && formula[0] == '(')
			{
				num = 0;
				flag = false;
			}
		}
	}

	public void UpdateDependentNamedRangeCell(string key)
	{
		if (!DependentNamedRangeCells.ContainsKey(key))
		{
			return;
		}
		Hashtable hashtable = (Hashtable)((Hashtable)DependentNamedRangeCells[key]).Clone();
		foreach (string key2 in hashtable.Keys)
		{
			string text2 = key2;
			int num = key2.LastIndexOf('!');
			GridModel gridModel = grid;
			int row;
			int col;
			if (num > -1)
			{
				GridSheetFamilyItem sheetFamilyItem = GetSheetFamilyItem(grid);
				grid = (GridModel)sheetFamilyItem.TokenToGridModel[text2.Substring(0, num + 1)];
				row = RowIndex(text2);
				col = ColIndex(text2);
			}
			else
			{
				row = RowIndex(text2);
				col = ColIndex(text2);
			}
			RecalculateRange(GridRangeInfo.Cell(row, col), forceCalculations: true, forceParsing: true);
			grid = gridModel;
		}
	}

	public void RemoveNamedRangeDependency(string key)
	{
		if (DependentNamedRangeCells.ContainsKey(key))
		{
			Hashtable hashtable = (Hashtable)DependentNamedRangeCells[key];
			hashtable.Clear();
			DependentNamedRangeCells.Remove(key);
		}
	}

	public void SetNamedRangeDependency(string key, string cell1)
	{
		GridSheetFamilyItem sheetFamilyItem = GetSheetFamilyItem(grid);
		if (sheetFamilyItem.SheetNameToGridModel != null && cell1.IndexOf('!') == -1)
		{
			string text = sheetFamilyItem.GridModelToToken[grid] as string;
			cell1 = text + cell1;
		}
		if (DependentNamedRangeCells.ContainsKey(key))
		{
			Hashtable hashtable = (Hashtable)DependentNamedRangeCells[key];
			if (!hashtable.ContainsKey(cell1))
			{
				hashtable.Add(cell1, string.Empty);
			}
		}
		else
		{
			Hashtable hashtable2 = new Hashtable();
			hashtable2.Add(cell1, string.Empty);
			DependentNamedRangeCells.Add(key, hashtable2);
		}
	}

	public void AdjustNameRangesForSize()
	{
		NamedRangesSized.Sort(new LenComparer());
	}

	public bool AddNamedRange(string name, string range)
	{
		string key = name.ToUpper(CultureInfo.InvariantCulture);
		if (NamedRanges[key] == null)
		{
			if (range.StartsWith("="))
			{
				range = range.Substring(1);
			}
			NamedRanges.Add(key, range.Replace(" ", string.Empty));
			NamedRangesOriginalNames.Add(key, name);
			namedRangesSized = null;
			return true;
		}
		return false;
	}

	public bool RemoveNamedRange(string name)
	{
		name = name.ToUpper(CultureInfo.InvariantCulture);
		if (NamedRanges[name] != null)
		{
			NamedRanges.Remove(name);
			NamedRangesOriginalNames.Remove(name);
			namedRangesSized = null;
			return true;
		}
		return false;
	}

	public bool AddFunction(string name, LibraryFunction func)
	{
		name = name.ToUpper(CultureInfo.InvariantCulture);
		if (UseCommonLibrary)
		{
			GridSheetFamilyItem sheetFamilyItem = GetSheetFamilyItem(grid);
			if (sheetFamilyItem.GridModelToToken != null)
			{
				foreach (GridModel key in sheetFamilyItem.GridModelToToken.Keys)
				{
					GridFormulaEngine engine = ((GridFormulaCellModel)key.CellModels["FormulaCell"]).Engine;
					if (engine.LibraryFunctions[name] == null)
					{
						engine.LibraryFunctions.Add(name, func);
					}
				}
				return true;
			}
		}
		if (LibraryFunctions[name] == null)
		{
			LibraryFunctions.Add(name, func);
			return true;
		}
		return false;
	}

	public bool RemoveFunction(string name)
	{
		if (UseCommonLibrary)
		{
			GridSheetFamilyItem sheetFamilyItem = GetSheetFamilyItem(grid);
			if (sheetFamilyItem.GridModelToToken != null)
			{
				foreach (GridModel key in sheetFamilyItem.GridModelToToken.Keys)
				{
					GridFormulaEngine engine = ((GridFormulaCellModel)key.CellModels["FormulaCell"]).Engine;
					if (engine.LibraryFunctions[name] == null)
					{
						engine.LibraryFunctions.Remove(name);
					}
				}
				return true;
			}
		}
		if (LibraryFunctions[name] != null)
		{
			LibraryFunctions.Remove(name);
			return true;
		}
		return false;
	}

	internal void UpdateDependencies(string s)
	{
		if (!lockDependencies)
		{
			GridSheetFamilyItem sheetFamilyItem = GetSheetFamilyItem(grid);
			if (cell == null)
			{
				cell = GridRangeInfo.GetAlphaLabel(grid.currentCol) + grid.currentRow;
			}
			string text = cell;
			if (sheetFamilyItem.SheetNameToGridModel != null && text.IndexOf('!') == -1)
			{
				string text2 = sheetFamilyItem.GridModelToToken[grid] as string;
				text = text2 + text;
			}
			if (sheetFamilyItem.SheetNameToGridModel != null && s.IndexOf('!') == -1)
			{
				string text3 = sheetFamilyItem.GridModelToToken[grid] as string;
				s = text3 + s;
			}
			if (!DependentCells.ContainsKey(s))
			{
				DependentCells.Add(s, new Hashtable());
				((Hashtable)DependentCells[s]).Add(text, text);
				AddToFormulaDependentCells(s);
			}
			else if (!((Hashtable)DependentCells[s]).ContainsKey(text))
			{
				((Hashtable)DependentCells[s]).Add(text, text);
				AddToFormulaDependentCells(s);
			}
		}
	}

	internal void ClearFormulaDependentCells(string cell)
	{
		Hashtable hashtable = (Hashtable)DependentFormulaCells[cell];
		if (hashtable != null)
		{
			foreach (object key2 in hashtable.Keys)
			{
				string key = key2 as string;
				Hashtable hashtable2 = DependentCells[key] as Hashtable;
				if (hashtable2.ContainsKey(cell))
				{
					hashtable2.Remove(cell);
					if (hashtable2.Count == 0)
					{
						DependentCells.Remove(key);
					}
				}
			}
			DependentFormulaCells.Remove(cell);
		}
		foreach (Hashtable value in DependentNamedRangeCells.Values)
		{
			if (value.ContainsKey(cell))
			{
				value.Remove(cell);
			}
		}
	}

	private void AddToFormulaDependentCells(string s)
	{
		string text = cell;
		GridSheetFamilyItem sheetFamilyItem = GetSheetFamilyItem(grid);
		if (sheetFamilyItem.SheetNameToGridModel != null && text.IndexOf('!') == -1)
		{
			string text2 = sheetFamilyItem.GridModelToToken[grid] as string;
			text = text2 + text;
		}
		if (!DependentFormulaCells.ContainsKey(text))
		{
			DependentFormulaCells.Add(text, new Hashtable());
			((Hashtable)DependentFormulaCells[text]).Add(s, s);
		}
		else if (!((Hashtable)DependentFormulaCells[text]).ContainsKey(s))
		{
			((Hashtable)DependentFormulaCells[text]).Add(s, s);
		}
	}

	public string ComputeAvg(string range)
	{
		double num = 0.0;
		int num2 = 0;
		string[] array = range.Split(ParseArgumentSeparator);
		foreach (string text in array)
		{
			double result;
			string valueFromArg;
			if (text.IndexOf(':') > -1)
			{
				string[] cellsFromArgs = GetCellsFromArgs(text);
				foreach (string arg in cellsFromArgs)
				{
					try
					{
						valueFromArg = GetValueFromArg(arg);
					}
					catch (Exception ex)
					{
						TraceUtil.TraceExceptionCatched(ex);
						if (!ExceptionManager.RaiseExceptionCatched(this, ex))
						{
							throw ex;
						}
						return ex.Message;
					}
					if (valueFromArg.Length > 0 && double.TryParse(valueFromArg, NumberStyles.Number | NumberStyles.AllowExponent, null, out result))
					{
						num += result;
						num2++;
					}
				}
				continue;
			}
			try
			{
				valueFromArg = GetValueFromArg(text);
			}
			catch (Exception ex2)
			{
				TraceUtil.TraceExceptionCatched(ex2);
				if (!ExceptionManager.RaiseExceptionCatched(this, ex2))
				{
					throw ex2;
				}
				return ex2.Message;
			}
			if (valueFromArg.Length > 0 && double.TryParse(valueFromArg, NumberStyles.Number | NumberStyles.AllowExponent, null, out result))
			{
				num += result;
				num2++;
			}
		}
		if (num2 > 0)
		{
			num /= (double)num2;
		}
		return num.ToString();
	}

	public string ComputeOr(string range)
	{
		bool flag = false;
		string[] array = range.Split(ParseArgumentSeparator);
		foreach (string text in array)
		{
			double result;
			if (text.IndexOf(':') > -1)
			{
				string[] cellsFromArgs = GetCellsFromArgs(text);
				foreach (string arg in cellsFromArgs)
				{
					string valueFromArg;
					try
					{
						valueFromArg = GetValueFromArg(arg);
					}
					catch (Exception ex)
					{
						TraceUtil.TraceExceptionCatched(ex);
						if (!ExceptionManager.RaiseExceptionCatched(this, ex))
						{
							throw ex;
						}
						return ex.Message;
					}
					if (valueFromArg.Length > 0)
					{
						if (valueFromArg == TRUEVALUESTR)
						{
							flag = true;
							break;
						}
						if (double.TryParse(valueFromArg, NumberStyles.Number | NumberStyles.AllowExponent, null, out result) && Math.Abs(result) > 1E-10)
						{
							flag = true;
							break;
						}
					}
				}
			}
			else
			{
				string valueFromArg;
				try
				{
					valueFromArg = GetValueFromArg(text);
				}
				catch (Exception ex2)
				{
					TraceUtil.TraceExceptionCatched(ex2);
					if (!ExceptionManager.RaiseExceptionCatched(this, ex2))
					{
						throw ex2;
					}
					return ex2.Message;
				}
				if (valueFromArg.Length > 0)
				{
					if (valueFromArg == TRUEVALUESTR)
					{
						flag = true;
						break;
					}
					if (double.TryParse(valueFromArg, NumberStyles.Number | NumberStyles.AllowExponent, null, out result) && Math.Abs(result) > 1E-10)
					{
						flag = true;
						break;
					}
				}
			}
			if (flag)
			{
				break;
			}
		}
		if (!flag)
		{
			return FALSEVALUESTR;
		}
		return TRUEVALUESTR;
	}

	public string ComputeAnd(string range)
	{
		bool flag = true;
		string[] array = range.Split(ParseArgumentSeparator);
		foreach (string text in array)
		{
			double result;
			if (text.IndexOf(':') > -1)
			{
				string[] cellsFromArgs = GetCellsFromArgs(text);
				foreach (string arg in cellsFromArgs)
				{
					string valueFromArg;
					try
					{
						valueFromArg = GetValueFromArg(arg);
					}
					catch (Exception ex)
					{
						TraceUtil.TraceExceptionCatched(ex);
						if (!ExceptionManager.RaiseExceptionCatched(this, ex))
						{
							throw ex;
						}
						return ex.Message;
					}
					if (valueFromArg.Length > 0)
					{
						if (valueFromArg == FALSEVALUESTR)
						{
							flag = false;
							break;
						}
						if (double.TryParse(valueFromArg, NumberStyles.Number | NumberStyles.AllowExponent, null, out result) && Math.Abs(result) < 1E-10)
						{
							flag = false;
							break;
						}
						continue;
					}
					flag = false;
					break;
				}
			}
			else
			{
				string valueFromArg;
				try
				{
					valueFromArg = GetValueFromArg(text);
				}
				catch (Exception ex2)
				{
					TraceUtil.TraceExceptionCatched(ex2);
					if (!ExceptionManager.RaiseExceptionCatched(this, ex2))
					{
						throw ex2;
					}
					return ex2.Message;
				}
				if (valueFromArg.Length <= 0)
				{
					flag = false;
					break;
				}
				if (valueFromArg == FALSEVALUESTR)
				{
					flag = false;
					break;
				}
				if (double.TryParse(valueFromArg, NumberStyles.Number | NumberStyles.AllowExponent, null, out result) && Math.Abs(result) < 1E-10)
				{
					flag = false;
					break;
				}
			}
			if (!flag)
			{
				break;
			}
		}
		if (!flag)
		{
			return FALSEVALUESTR;
		}
		return TRUEVALUESTR;
	}

	public string ComputeNot(string args)
	{
		string arg = args;
		if (args.Length > 0 && !char.IsLetter(args[0]) && args.IndexOfAny(new char[2] { ParseArgumentSeparator, ':' }) > -1)
		{
			return FormulaErrorStrings[requires_a_single_argument];
		}
		try
		{
			arg = GetValueFromArg(arg);
			if (arg == FALSEVALUESTR)
			{
				arg = "0";
			}
			else if (arg == TRUEVALUESTR)
			{
				arg = "1";
			}
			if (double.TryParse(arg, NumberStyles.Number | NumberStyles.AllowExponent, null, out var result))
			{
				arg = ((!(Math.Abs(result) > 1E-10)) ? TRUEVALUESTR : FALSEVALUESTR);
			}
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(this, ex))
			{
				throw ex;
			}
			return ex.Message;
		}
		return arg;
	}

	private string Checkub(string s)
	{
		return s.Replace("ub", "bu");
	}

	public string ComputeIf(string args)
	{
		string empty = string.Empty;
		if (args.Length > 0 && args.IndexOfAny(new char[2] { ParseArgumentSeparator, ':' }) == -1)
		{
			return FormulaErrorStrings[requires_3_args];
		}
		string[] cellsFromArgs = GetCellsFromArgs(args);
		if (cellsFromArgs.GetLength(0) >= 2)
		{
			try
			{
				empty = GetValueFromArg(cellsFromArgs[0]);
				if (empty.ToUpper() == FALSEVALUESTR)
				{
					empty = "0";
				}
				else if (empty.ToUpper() == TRUEVALUESTR)
				{
					empty = "1";
				}
				if (double.TryParse(empty, NumberStyles.Number | NumberStyles.AllowExponent, null, out var result))
				{
					empty = ((!(Math.Abs(result) > 1E-10)) ? ((cellsFromArgs.GetLength(0) == 3) ? GetValueFromArg(Checkub(cellsFromArgs[2])) : FALSEVALUESTR) : GetValueFromArg(Checkub(cellsFromArgs[1])));
				}
			}
			catch (Exception ex)
			{
				TraceUtil.TraceExceptionCatched(ex);
				if (!ExceptionManager.RaiseExceptionCatched(this, ex))
				{
					throw ex;
				}
				return ex.Message;
			}
			return empty;
		}
		return FormulaErrorStrings[requires_3_args];
	}

	public string ComputeSum(string range)
	{
		double num = 0.0;
		string[] array = range.Split(ParseArgumentSeparator);
		foreach (string text in array)
		{
			double result;
			string text2;
			if (text.IndexOf(':') > -1)
			{
				string[] cellsFromArgs = GetCellsFromArgs(text);
				foreach (string arg in cellsFromArgs)
				{
					try
					{
						text2 = GetValueFromArg(arg).Replace(TIC, string.Empty);
					}
					catch (Exception ex)
					{
						TraceUtil.TraceExceptionCatched(ex);
						if (!ExceptionManager.RaiseExceptionCatched(this, ex))
						{
							throw ex;
						}
						return ex.Message;
					}
					if (text2.Length > 0 && double.TryParse(text2, NumberStyles.Number | NumberStyles.AllowExponent, null, out result))
					{
						num += result;
					}
				}
				continue;
			}
			try
			{
				text2 = GetValueFromArg(text).Replace(TIC, string.Empty);
			}
			catch (Exception ex2)
			{
				TraceUtil.TraceExceptionCatched(ex2);
				if (!ExceptionManager.RaiseExceptionCatched(this, ex2))
				{
					throw ex2;
				}
				return ex2.Message;
			}
			if (text2.Length > 0 && double.TryParse(text2, NumberStyles.Number | NumberStyles.AllowExponent, null, out result))
			{
				num += result;
			}
		}
		return num.ToString();
	}

	public string ComputeMax(string range)
	{
		double num = double.MinValue;
		string[] array = range.Split(ParseArgumentSeparator);
		foreach (string text in array)
		{
			double result;
			string valueFromArg;
			if (text.IndexOf(':') > -1)
			{
				string[] cellsFromArgs = GetCellsFromArgs(text);
				foreach (string arg in cellsFromArgs)
				{
					try
					{
						valueFromArg = GetValueFromArg(arg);
					}
					catch (Exception ex)
					{
						TraceUtil.TraceExceptionCatched(ex);
						if (!ExceptionManager.RaiseExceptionCatched(this, ex))
						{
							throw ex;
						}
						return ex.Message;
					}
					if (valueFromArg.Length > 0 && double.TryParse(valueFromArg, NumberStyles.Number | NumberStyles.AllowExponent, null, out result))
					{
						num = Math.Max(num, result);
					}
				}
				continue;
			}
			try
			{
				valueFromArg = ((text == string.Empty) ? "0" : GetValueFromArg(text));
			}
			catch (Exception ex2)
			{
				TraceUtil.TraceExceptionCatched(ex2);
				if (!ExceptionManager.RaiseExceptionCatched(this, ex2))
				{
					throw ex2;
				}
				return ex2.Message;
			}
			if (valueFromArg.Length > 0 && double.TryParse(valueFromArg, NumberStyles.Number | NumberStyles.AllowExponent, null, out result))
			{
				num = Math.Max(num, result);
			}
		}
		if (num != double.MinValue)
		{
			return num.ToString();
		}
		return string.Empty;
	}

	public string ComputeMin(string range)
	{
		double num = double.MaxValue;
		string[] array = range.Split(ParseArgumentSeparator);
		foreach (string text in array)
		{
			double result;
			if (text.IndexOf(':') > -1)
			{
				string[] cellsFromArgs = GetCellsFromArgs(text);
				foreach (string arg in cellsFromArgs)
				{
					string valueFromArg;
					try
					{
						valueFromArg = GetValueFromArg(arg);
					}
					catch (Exception ex)
					{
						return ex.Message;
					}
					if (valueFromArg.Length > 0 && double.TryParse(valueFromArg, NumberStyles.Number | NumberStyles.AllowExponent, null, out result))
					{
						num = Math.Min(num, result);
					}
				}
			}
			else
			{
				string valueFromArg;
				try
				{
					valueFromArg = ((text == string.Empty) ? "0" : GetValueFromArg(text));
				}
				catch (Exception ex2)
				{
					return ex2.Message;
				}
				if (valueFromArg.Length > 0 && double.TryParse(valueFromArg, NumberStyles.Number | NumberStyles.AllowExponent, null, out result))
				{
					num = Math.Min(num, result);
				}
			}
		}
		if (num != double.MaxValue)
		{
			return num.ToString();
		}
		return string.Empty;
	}

	public string ComputePI(string args)
	{
		return Math.PI.ToString();
	}

	public string ComputeSign(string args)
	{
		int num = 0;
		double result;
		if (args.Length > 0 && !char.IsLetter(args[0]) && args.IndexOfAny(new char[2] { ParseArgumentSeparator, ':' }) == -1)
		{
			if (!double.TryParse(args, NumberStyles.Number | NumberStyles.AllowExponent, null, out result))
			{
				return FormulaErrorStrings[invalid_Math_argument];
			}
			num = Math.Sign(result);
		}
		else if (args.Length > 0 && (args[0] == 'b' || args[0] == 'u' || args[0] == 'n' || args.IndexOfAny(tokens) > -1))
		{
			args = args.Replace('{', '(');
			args = args.Replace('}', ')');
			string s;
			try
			{
				s = ComputedValue(args);
			}
			catch (Exception ex)
			{
				TraceUtil.TraceExceptionCatched(ex);
				if (!ExceptionManager.RaiseExceptionCatched(this, ex))
				{
					throw ex;
				}
				return ex.Message;
			}
			if (!double.TryParse(s, NumberStyles.Number | NumberStyles.AllowExponent, null, out result))
			{
				return FormulaErrorStrings[invalid_Math_argument];
			}
			num = Math.Sign(result);
		}
		else
		{
			string[] cellsFromArgs = GetCellsFromArgs(args);
			foreach (string arg in cellsFromArgs)
			{
				string s;
				try
				{
					s = GetValueFromArg(arg);
				}
				catch (Exception ex2)
				{
					TraceUtil.TraceExceptionCatched(ex2);
					if (!ExceptionManager.RaiseExceptionCatched(this, ex2))
					{
						throw ex2;
					}
					return ex2.Message;
				}
				if (s.Length > 0 && double.TryParse(s, NumberStyles.Number | NumberStyles.AllowExponent, null, out result))
				{
					num = Math.Sign(result);
					break;
				}
			}
		}
		return num.ToString();
	}

	public string ComputePow(string args)
	{
		double num = 0.0;
		if (args.Length > 0 && !char.IsLetter(args[0]) && args.IndexOfAny(new char[2] { ParseArgumentSeparator, ':' }) == -1)
		{
			return FormulaErrorStrings[requires_2_args];
		}
		string[] cellsFromArgs = GetCellsFromArgs(args);
		if (cellsFromArgs.GetLength(0) == 2)
		{
			string valueFromArg;
			string valueFromArg2;
			try
			{
				valueFromArg = GetValueFromArg(cellsFromArgs[0]);
				valueFromArg2 = GetValueFromArg(cellsFromArgs[1]);
			}
			catch (Exception ex)
			{
				TraceUtil.TraceExceptionCatched(ex);
				if (!ExceptionManager.RaiseExceptionCatched(this, ex))
				{
					throw ex;
				}
				return ex.Message;
			}
			if (double.TryParse(valueFromArg, NumberStyles.Number | NumberStyles.AllowExponent, null, out var result) && double.TryParse(valueFromArg2, NumberStyles.Number | NumberStyles.AllowExponent, null, out var result2))
			{
				num = Math.Pow(result, result2);
			}
			return num.ToString();
		}
		return FormulaErrorStrings[requires_2_args];
	}

	private string ComputeMath(string args, MathFunc func)
	{
		double num = 0.0;
		double result;
		if (args.Length > 0 && ((!char.IsLetter(args[0]) && args[0] != '!') || args[0] == 'u') && args.IndexOfAny(new char[2] { ParseArgumentSeparator, ':' }) == -1)
		{
			args = args.Replace('u', '-').Replace("n", string.Empty);
			if (!double.TryParse(args, NumberStyles.Number | NumberStyles.AllowExponent, null, out result))
			{
				return FormulaErrorStrings[invalid_Math_argument];
			}
			num = func(result);
		}
		else if (args.Length > 0 && (args[0] == 'b' || args[0] == 'n' || args.IndexOfAny(tokens) > -1))
		{
			args = args.Replace('{', '(');
			args = args.Replace('}', ')');
			string s;
			try
			{
				s = ComputedValue(args);
			}
			catch (Exception ex)
			{
				TraceUtil.TraceExceptionCatched(ex);
				if (!ExceptionManager.RaiseExceptionCatched(this, ex))
				{
					throw ex;
				}
				return ex.Message;
			}
			if (!double.TryParse(s, NumberStyles.Number | NumberStyles.AllowExponent, null, out result))
			{
				return FormulaErrorStrings[invalid_Math_argument];
			}
			num = func(result);
		}
		else
		{
			string[] cellsFromArgs = GetCellsFromArgs(args);
			int num2 = 0;
			if (num2 < cellsFromArgs.Length)
			{
				string arg = cellsFromArgs[num2];
				string s;
				try
				{
					s = GetValueFromArg(arg);
				}
				catch (Exception ex2)
				{
					TraceUtil.TraceExceptionCatched(ex2);
					if (!ExceptionManager.RaiseExceptionCatched(this, ex2))
					{
						throw ex2;
					}
					return ex2.Message;
				}
				if (s.Length > 0 && double.TryParse(s, NumberStyles.Number | NumberStyles.AllowExponent, null, out result))
				{
					num = func(result);
				}
			}
		}
		return num.ToString();
	}

	public string ComputeAcos(string args)
	{
		return ComputeMath(args, Math.Acos).ToString();
	}

	public string ComputeAsin(string args)
	{
		return ComputeMath(args, Math.Asin).ToString();
	}

	public string ComputeAtan(string args)
	{
		return ComputeMath(args, Math.Atan).ToString();
	}

	public string ComputeCos(string args)
	{
		return ComputeMath(args, Math.Cos).ToString();
	}

	public string ComputeSin(string args)
	{
		return ComputeMath(args, Math.Sin).ToString();
	}

	public string ComputeCosh(string args)
	{
		return ComputeMath(args, Math.Cosh).ToString();
	}

	public string ComputeSinh(string args)
	{
		return ComputeMath(args, Math.Sinh).ToString();
	}

	public string ComputeTanh(string args)
	{
		return ComputeMath(args, Math.Tanh).ToString();
	}

	public string ComputeCeiling(string args)
	{
		string[] array = args.Split(ParseArgumentSeparator);
		int length = array.GetLength(0);
		if (length != 2)
		{
			return FormulaErrorStrings[wrong_number_arguments];
		}
		double num = 0.0;
		if (double.TryParse(GetValueFromArg(array[0]), out var result) && double.TryParse(GetValueFromArg(array[1]), out var result2))
		{
			if (result * result2 <= 0.0)
			{
				return "#NUM!";
			}
			num = Math.Floor(result / result2) * result2;
			if (result2 > 0.0)
			{
				for (; num < result; num += result2)
				{
				}
			}
			else
			{
				for (; num > result; num += result2)
				{
				}
			}
		}
		return num.ToString();
	}

	public string ComputeFloor(string args)
	{
		string[] array = args.Split(ParseArgumentSeparator);
		int length = array.GetLength(0);
		if (length != 2)
		{
			return FormulaErrorStrings[wrong_number_arguments];
		}
		double num = 0.0;
		if (double.TryParse(GetValueFromArg(array[0]), out var result) && double.TryParse(GetValueFromArg(array[1]), out var result2))
		{
			if (result * result2 <= 0.0)
			{
				return "#NUM!";
			}
			num = Math.Ceiling(result / result2) * result2;
			if (result2 > 0.0)
			{
				while (num > result)
				{
					num -= result2;
				}
			}
			else
			{
				while (num < result)
				{
					num -= result2;
				}
			}
		}
		return num.ToString();
	}

	public string ComputeLn(string args)
	{
		return ComputeMath(args, Math.Log).ToString();
	}

	public string ComputeLog(string argList)
	{
		string[] array = argList.Split(ParseArgumentSeparator);
		int length = array.GetLength(0);
		if (length != 1 && length != 2)
		{
			return FormulaErrorStrings[wrong_number_arguments];
		}
		double result = 10.0;
		double result2 = 10.0;
		if (double.TryParse(GetValueFromArg(array[0]), out result) && result > 0.0 && (length == 1 || double.TryParse(GetValueFromArg(array[1]), out result2)))
		{
			return Math.Log(result, result2).ToString();
		}
		return FormulaErrorStrings[wrong_number_arguments];
	}

	public string ComputeLog10(string args)
	{
		return ComputeMath(args, Math.Log10).ToString();
	}

	public string ComputeExp(string args)
	{
		return ComputeMath(args, Math.Exp).ToString();
	}

	public string ComputeSqrt(string args)
	{
		return ComputeMath(args, Math.Sqrt).ToString();
	}

	public string ComputeAbs(string args)
	{
		return ComputeMath(args, Math.Abs).ToString();
	}

	public string ComputeTan(string args)
	{
		return ComputeMath(args, Math.Tan).ToString();
	}

	public string ComputeRand(string args)
	{
		if (rand == null)
		{
			rand = new Random();
		}
		return rand.NextDouble().ToString("0.0#############");
	}

	public string ComputeSumIf(string range)
	{
		string[] array = range.Split(ParseArgumentSeparator);
		int length = array.GetLength(0);
		if (length != 2 && length != 3)
		{
			return FormulaErrorStrings[wrong_number_arguments];
		}
		string text = array[0];
		string text2 = array[1];
		text2 = ((text2.Length <= 1 || text2[0] != TIC[0] || "=><".IndexOf(text2[1]) != -1) ? text2.Replace(TIC, string.Empty) : ("=" + text2));
		string args = ((length == 2) ? text : array[2]);
		string[] cellsFromArgs = GetCellsFromArgs(text);
		string[] cellsFromArgs2 = GetCellsFromArgs(args);
		double num = 0.0;
		int length2 = cellsFromArgs.GetLength(0);
		for (int i = 0; i < length2; i++)
		{
			string text3 = cellsFromArgs[i] + text2;
			text3 = Parse(text3);
			text3 = ComputedValue(text3);
			if (text3 == TRUEVALUESTR)
			{
				text3 = cellsFromArgs2[i];
				text3 = GetValueFromArg(text3);
				if (double.TryParse(text3, out var result))
				{
					num += result;
				}
			}
		}
		return num.ToString();
	}

	public string ComputeDb(string argList)
	{
		string[] array = argList.Split(ParseArgumentSeparator);
		int length = array.GetLength(0);
		if (length != 5 && length != 4)
		{
			return FormulaErrorStrings[wrong_number_arguments];
		}
		double result = 12.0;
		double num = 0.0;
		for (int i = 0; i < length; i++)
		{
			array[i] = GetValueFromArg(array[i]);
		}
		if (double.TryParse(array[0], out var result2) && double.TryParse(array[1], out var result3) && double.TryParse(array[2], out var result4) && double.TryParse(array[3], out var result5) && (length == 4 || double.TryParse(array[4], out result)))
		{
			double num2 = Math.Round(1.0 - Math.Pow(result3 / result2, 1.0 / result4), 3);
			double num3 = 0.0;
			for (int j = 1; (double)j <= result5; j++)
			{
				num = ((j != 1) ? ((!((double)j > result4)) ? ((result2 - num3) * num2) : ((result2 - num3) * num2 * (12.0 - result) / 12.0)) : (result2 * num2 * result / 12.0));
				num3 += num;
			}
			return num.ToString();
		}
		return FormulaErrorStrings[invalid_arguments];
	}

	public string ComputeDdb(string argList)
	{
		string[] array = argList.Split(ParseArgumentSeparator);
		int length = array.GetLength(0);
		if (length != 5 && length != 4)
		{
			return FormulaErrorStrings[wrong_number_arguments];
		}
		double result = 2.0;
		double num = 0.0;
		for (int i = 0; i < length; i++)
		{
			array[i] = GetValueFromArg(array[i]);
		}
		if (double.TryParse(array[0], out var result2) && double.TryParse(array[1], out var result3) && double.TryParse(array[2], out var result4) && double.TryParse(array[3], out var result5) && (length == 4 || double.TryParse(array[4], out result)))
		{
			double num2 = result / result4;
			double num3 = 0.0;
			for (int j = 1; (double)j <= result5; j++)
			{
				num = (((double)j != result4) ? ((result2 - num3) * num2) : (result2 - result3 - num3));
				num3 += num;
			}
			return num.ToString();
		}
		return FormulaErrorStrings[invalid_arguments];
	}

	public string ComputeFv(string argList)
	{
		string[] array = argList.Split(ParseArgumentSeparator);
		int length = array.GetLength(0);
		if (length != 5 && length != 4 && length != 3)
		{
			return FormulaErrorStrings[wrong_number_arguments];
		}
		double result = 0.0;
		double result2 = 0.0;
		double result3 = 0.0;
		double num = 0.0;
		for (int i = 0; i < length; i++)
		{
			array[i] = GetValueFromArg(array[i]);
		}
		if (double.TryParse(array[0], out var result4) && double.TryParse(array[1], out var result5) && double.TryParse(array[2], out result))
		{
			if (length >= 4)
			{
				double.TryParse(array[3], out result2);
			}
			if (length == 5)
			{
				double.TryParse(array[4], out result3);
			}
			result3 = ((!(Math.Abs(result3) > 0.5)) ? 0.0 : 1.0);
			double num2 = Math.Pow(1.0 + result4, result5);
			return (result * (1.0 + result4 * result3) * (1.0 - num2) / result4 - result2 * num2).ToString();
		}
		return FormulaErrorStrings[invalid_arguments];
	}

	public string ComputeIpmt(string argList)
	{
		string[] array = argList.Split(ParseArgumentSeparator);
		int length = array.GetLength(0);
		if (length != 6 && length != 5 && length != 4)
		{
			return FormulaErrorStrings[wrong_number_arguments];
		}
		double result = 0.0;
		double result2 = 0.0;
		double result3 = 0.0;
		double num = 0.0;
		for (int i = 0; i < length; i++)
		{
			array[i] = GetValueFromArg(array[i]);
		}
		if (!double.TryParse(array[0], out var result4) || !double.TryParse(array[1], out var result5) || !double.TryParse(array[2], out var result6) || !double.TryParse(array[3], out result) || (length != 4 && !double.TryParse(array[4], out result2)) || (length > 5 && !double.TryParse(array[5], out result3)))
		{
			return FormulaErrorStrings[invalid_arguments];
		}
		result3 = ((!(Math.Abs(result3) > 0.5)) ? 0.0 : 1.0);
		double num2 = Math.Pow(1.0 + result4, result6);
		double num3 = Math.Pow(1.0 + result4, result5);
		double num4 = result4 * (result2 + result * num2) / ((1.0 + result4 * result3) * (1.0 - num2));
		double num5 = num4 * (1.0 + result4 * result3) * (1.0 - num3) / result4 - result * num3;
		double num6 = Math.Pow(1.0 + result4, result5 - 1.0);
		double num7 = num4 * (1.0 + result4 * result3) * (1.0 - num6) / result4 - result * num6;
		return (num4 - num7 + num5).ToString();
	}

	public string ComputeIrr(string argList)
	{
		string[] array = argList.Split(ParseArgumentSeparator);
		int length = array.GetLength(0);
		if (length != 1 && length != 2)
		{
			return FormulaErrorStrings[wrong_number_arguments];
		}
		double result = 0.1;
		string args = array[0];
		if (length == 2)
		{
			double.TryParse(GetValueFromArg(array[1]), out result);
		}
		array = GetCellsFromArgs(args);
		length = array.GetLength(0);
		double[] array2 = new double[length];
		int num = 0;
		string[] array3 = array;
		foreach (string arg in array3)
		{
			if (double.TryParse(GetValueFromArg(arg), out var result2))
			{
				array2[num] = result2;
			}
			num++;
		}
		int j;
		for (j = 0; j < 20; j++)
		{
			double num2 = 0.0;
			double num3 = 0.0;
			double num4 = Math.Abs(result + 1.0);
			double num5 = num4;
			for (num = 0; num < length; num++)
			{
				num2 += array2[num] / num5;
				num5 *= num4;
				num3 += (double)(num + 1) * array2[num] / num5;
			}
			num2 /= num3;
			if (Math.Abs(num2 / result) < 1E-05)
			{
				result += num2;
				break;
			}
			result += num2;
		}
		if (j >= 20)
		{
			return FormulaErrorStrings[invalid_arguments];
		}
		return result.ToString();
	}

	private bool GetDaySerialNumberFromDateTime(string s, out double days)
	{
		bool flag = true;
		DateTime result = DateTime.Now;
		flag = DateTime.TryParse(s, out result);
		days = 1 + (result.Date - dateTime1900).Days;
		if (Treat1900AsLeapYear && days > 59.0)
		{
			days += 1.0;
		}
		return flag;
	}

	public string ComputeXirr(string argList)
	{
		string[] array = argList.Split(ParseArgumentSeparator);
		int length = array.GetLength(0);
		if (length != 2 && length != 3)
		{
			return FormulaErrorStrings[wrong_number_arguments];
		}
		double result = 0.1;
		string args = array[0];
		string args2 = array[1];
		if (length == 3)
		{
			double.TryParse(GetValueFromArg(array[2]), out result);
		}
		if (Math.Abs(result) >= 1.0)
		{
			return FormulaErrorStrings[invalid_arguments];
		}
		int num = 0;
		array = GetCellsFromArgs(args);
		length = array.GetLength(0);
		double[] array2 = new double[length];
		int num2 = 0;
		string[] array3 = array;
		double result2;
		foreach (string arg in array3)
		{
			if (double.TryParse(GetValueFromArg(arg), out result2))
			{
				array2[num2] = result2;
			}
			num2++;
		}
		array = GetCellsFromArgs(args2);
		double[] array4 = new double[length];
		num2 = 0;
		string[] array5 = array;
		foreach (string arg2 in array5)
		{
			string valueFromArg = GetValueFromArg(arg2);
			if (double.TryParse(valueFromArg, out result2) || GetDaySerialNumberFromDateTime(valueFromArg, out result2))
			{
				array4[num2] = result2;
			}
			num2++;
		}
		int k = 0;
		double num3 = 0.0;
		for (; k < 100; k++)
		{
			double num4 = 0.0;
			double num5 = 0.0;
			double num6 = result + 1.0;
			for (num2 = 0; num2 < length; num2++)
			{
				double num7 = (array4[0] - array4[num2]) / 365.0;
				double num8 = Math.Pow(Math.Abs(num6), num7);
				num4 += array2[num2] * num8;
				num5 += num7 * array2[num2] * num8 / num6;
			}
			num4 /= num5;
			if (Math.Abs(num4 / result) < 1E-06)
			{
				result -= num4;
				break;
			}
			if (num4 > 1.0)
			{
				num4 /= 2.0;
			}
			else if (num4 < -2.0)
			{
				num4 = -2.0;
			}
			if (num < guesses.Length && k > 10 && Math.Abs(num4 / result) > num3)
			{
				result = guesses[num];
				num++;
				k = 0;
			}
			else
			{
				num3 = Math.Abs(num4 / result);
				result -= num4;
			}
		}
		if (k >= 100)
		{
			return FormulaErrorStrings[invalid_arguments];
		}
		return result.ToString();
	}

	public string ComputeIspmt(string argList)
	{
		string[] array = argList.Split(ParseArgumentSeparator);
		int length = array.GetLength(0);
		if (length != 4)
		{
			return FormulaErrorStrings[wrong_number_arguments];
		}
		double result = 0.0;
		double num = 0.0;
		for (int i = 0; i < length; i++)
		{
			array[i] = GetValueFromArg(array[i]);
		}
		if (!double.TryParse(array[0], out var result2) || !double.TryParse(array[1], out var result3) || !double.TryParse(array[2], out var result4) || !double.TryParse(array[3], out result))
		{
			return FormulaErrorStrings[invalid_arguments];
		}
		return ((0.0 - result2) * result * (result4 - result3) / result4).ToString();
	}

	public string ComputeMirr(string argList)
	{
		string[] array = argList.Split(ParseArgumentSeparator);
		int length = array.GetLength(0);
		if (length != 3)
		{
			return FormulaErrorStrings[wrong_number_arguments];
		}
		double num = 0.0;
		double result = 0.1;
		double result2 = 0.1;
		double.TryParse(GetValueFromArg(array[1]), out result);
		double.TryParse(GetValueFromArg(array[2]), out result2);
		string args = array[0];
		array = GetCellsFromArgs(args);
		length = array.GetLength(0);
		double[] array2 = new double[length];
		int num2 = 0;
		string[] array3 = array;
		foreach (string arg in array3)
		{
			if (double.TryParse(GetValueFromArg(arg), out var result3))
			{
				array2[num2] = result3;
			}
			num2++;
		}
		double num3 = 0.0;
		double num4 = 0.0;
		double num5 = 1.0;
		double num6 = 1.0 + result;
		for (num2 = 0; num2 < length; num2++)
		{
			num5 *= 1.0 + result2;
			if (array2[num2] > 0.0)
			{
				num3 += array2[num2] / num5;
			}
			else
			{
				num4 += array2[num2] / num6;
			}
			num6 *= 1.0 + result;
		}
		num3 = (0.0 - num3) * num5;
		num4 *= 1.0 + result;
		return (Math.Pow(num3 / num4, 1.0 / ((double)length - 1.0)) - 1.0).ToString();
	}

	public string ComputeNper(string argList)
	{
		string[] array = argList.Split(ParseArgumentSeparator);
		int length = array.GetLength(0);
		if (length != 5 && length != 4 && length != 3)
		{
			return FormulaErrorStrings[wrong_number_arguments];
		}
		double result = 0.0;
		double result2 = 0.0;
		double result3 = 0.0;
		double result4 = 0.0;
		double num = 0.0;
		for (int i = 0; i < length; i++)
		{
			array[i] = GetValueFromArg(array[i]);
		}
		if (!double.TryParse(array[0], out var result5) || !double.TryParse(array[1], out result) || !double.TryParse(array[2], out result2) || (length != 3 && !double.TryParse(array[3], out result3)) || (length > 4 && !double.TryParse(array[4], out result4)))
		{
			return FormulaErrorStrings[invalid_arguments];
		}
		result4 = ((!(Math.Abs(result4) > 0.5)) ? 0.0 : 1.0);
		return (Math.Log10((result * (1.0 + result5 * result4) - result3 * result5) / (result * (1.0 + result5 * result4) + result2 * result5)) / Math.Log10(1.0 + result5)).ToString();
	}

	public string ComputeNpv(string argList)
	{
		string[] array = argList.Split(ParseArgumentSeparator);
		int length = array.GetLength(0);
		if (length < 2)
		{
			return FormulaErrorStrings[wrong_number_arguments];
		}
		double.TryParse(GetValueFromArg(array[0]), out var result);
		double num = 0.0;
		double num2 = 1.0;
		for (int i = 1; i < length; i++)
		{
			string text = array[i];
			double result2;
			if (text.IndexOf(':') > -1)
			{
				string[] cellsFromArgs = GetCellsFromArgs(text);
				foreach (string arg in cellsFromArgs)
				{
					if (double.TryParse(GetValueFromArg(arg), out result2))
					{
						num2 *= 1.0 + result;
						num += result2 / num2;
					}
				}
			}
			else if (double.TryParse(GetValueFromArg(text), out result2))
			{
				num2 *= 1.0 + result;
				num += result2 / num2;
			}
		}
		return num.ToString();
	}

	public string ComputePmt(string argList)
	{
		string[] array = argList.Split(ParseArgumentSeparator);
		int length = array.GetLength(0);
		if (length != 5 && length != 4 && length != 3)
		{
			return FormulaErrorStrings[wrong_number_arguments];
		}
		double result = 0.0;
		double result2 = 0.0;
		double result3 = 0.0;
		double result4 = 0.0;
		double num = 0.0;
		for (int i = 0; i < length; i++)
		{
			array[i] = GetValueFromArg(array[i]);
		}
		if (!double.TryParse(array[0], out var result5) || !double.TryParse(array[1], out result) || !double.TryParse(array[2], out result2) || (length != 3 && !double.TryParse(array[3], out result3)) || (length > 4 && !double.TryParse(array[4], out result4)))
		{
			return FormulaErrorStrings[invalid_arguments];
		}
		result4 = ((!(Math.Abs(result4) > 0.5)) ? 0.0 : 1.0);
		double num2 = Math.Pow(1.0 + result5, result);
		return (result5 * (result3 + result2 * num2) / ((1.0 + result5 * result4) * (1.0 - num2))).ToString();
	}

	public string ComputePpmt(string argList)
	{
		string[] array = argList.Split(ParseArgumentSeparator);
		int length = array.GetLength(0);
		if (length != 6 && length != 5 && length != 4)
		{
			return FormulaErrorStrings[wrong_number_arguments];
		}
		double result = 0.0;
		double result2 = 0.0;
		double result3 = 0.0;
		double num = 0.0;
		for (int i = 0; i < length; i++)
		{
			array[i] = GetValueFromArg(array[i]);
		}
		if (!double.TryParse(array[0], out var result4) || !double.TryParse(array[1], out var _) || !double.TryParse(array[2], out var result6) || !double.TryParse(array[3], out result) || (length != 4 && !double.TryParse(array[4], out result2)) || (length > 5 && !double.TryParse(array[5], out result3)))
		{
			return FormulaErrorStrings[invalid_arguments];
		}
		result3 = ((!(Math.Abs(result3) > 0.5)) ? 0.0 : 1.0);
		double num2 = Math.Pow(1.0 + result4, result6);
		double num3 = result4 * (result2 + result * num2) / ((1.0 + result4 * result3) * (1.0 - num2));
		double result7 = 0.0;
		double.TryParse(ComputeIpmt(argList), out result7);
		return (num3 - result7).ToString();
	}

	public string ComputePv(string argList)
	{
		string[] array = argList.Split(ParseArgumentSeparator);
		int length = array.GetLength(0);
		if (length != 5 && length != 4 && length != 3)
		{
			return FormulaErrorStrings[wrong_number_arguments];
		}
		double result = 0.0;
		double num = 0.0;
		double result2 = 0.0;
		double result3 = 0.0;
		for (int i = 0; i < length; i++)
		{
			array[i] = GetValueFromArg(array[i]);
		}
		if (double.TryParse(array[0], out var result4) && double.TryParse(array[1], out var result5) && double.TryParse(array[2], out result))
		{
			if (length >= 4)
			{
				double.TryParse(array[3], out result3);
			}
			if (length == 5)
			{
				double.TryParse(array[4], out result2);
			}
			result2 = ((!(Math.Abs(result2) > 0.5)) ? 0.0 : 1.0);
			result2 = ((!(Math.Abs(result2) > 0.5)) ? 0.0 : 1.0);
			double num2 = Math.Pow(1.0 + result4, result5);
			return ((result * (1.0 + result4 * result2) * (1.0 - num2) - result4 * num) / (result4 * num2)).ToString();
		}
		return FormulaErrorStrings[invalid_arguments];
	}

	public string ComputeRate(string argList)
	{
		string[] array = argList.Split(ParseArgumentSeparator);
		int length = array.GetLength(0);
		if (length != 6 && length != 5 && length != 4 && length != 3)
		{
			return FormulaErrorStrings[wrong_number_arguments];
		}
		double result = 0.0;
		double result2 = 0.0;
		double result3 = 0.1;
		for (int i = 0; i < length; i++)
		{
			array[i] = GetValueFromArg(array[i]);
		}
		if (double.TryParse(array[0], out var result4) && double.TryParse(array[1], out var result5) && double.TryParse(array[2], out var result6) && (length == 3 || double.TryParse(array[3], out result)) && (length <= 4 || double.TryParse(array[4], out result2)) && (length <= 5 || double.TryParse(array[5], out result3)))
		{
			result2 = ((!(Math.Abs(result2) > 0.5)) ? 0.0 : 1.0);
			int j;
			for (j = 0; j < 20; j++)
			{
				double x = Math.Abs(result3 + 1.0);
				double num = Math.Pow(x, result4);
				double num2 = Math.Pow(x, result4 - 1.0);
				double num3 = result3 * (result + result6 * num);
				double num4 = (1.0 + result3 * result2) * (1.0 - num);
				double num5 = result + result6 * (num + result3 * result4 * num2);
				double num6 = (1.0 + result3 * result2) * (0.0 - result4) * num2 + (1.0 - num) * result2;
				double num7 = (num5 * num4 - num3 * num6) / (num4 * num4);
				double num8 = result5 - num3 / num4;
				double num9 = num8 / num7;
				if (Math.Abs(num9) < 1E-07)
				{
					result3 += num9;
					break;
				}
				result3 += num9;
			}
			if (j < 20)
			{
				return result3.ToString();
			}
		}
		return FormulaErrorStrings[invalid_arguments];
	}

	public string ComputeSln(string argList)
	{
		string[] array = argList.Split(ParseArgumentSeparator);
		int length = array.GetLength(0);
		if (length != 3)
		{
			return FormulaErrorStrings[requires_3_args];
		}
		double num = 0.0;
		for (int i = 0; i < length; i++)
		{
			array[i] = GetValueFromArg(array[i]);
		}
		if (!double.TryParse(array[0], out var result) || !double.TryParse(array[1], out var result2) || !double.TryParse(array[2], out var result3))
		{
			return FormulaErrorStrings[invalid_arguments];
		}
		return ((result - result2) / result3).ToString();
	}

	public string ComputeSyd(string argList)
	{
		string[] array = argList.Split(ParseArgumentSeparator);
		int length = array.GetLength(0);
		if (length != 4)
		{
			return FormulaErrorStrings[wrong_number_arguments];
		}
		double num = 0.0;
		for (int i = 0; i < length; i++)
		{
			array[i] = GetValueFromArg(array[i]);
		}
		if (!double.TryParse(array[0], out var result) || !double.TryParse(array[1], out var result2) || !double.TryParse(array[2], out var result3) || !double.TryParse(array[3], out var result4))
		{
			return FormulaErrorStrings[invalid_arguments];
		}
		return ((result - result2) * (result3 - result4 + 1.0) * 2.0 / (result3 * (result3 + 1.0))).ToString();
	}

	public string ComputeVdb(string argList)
	{
		string[] array = argList.Split(ParseArgumentSeparator);
		int length = array.GetLength(0);
		if (length != 5 && length != 6 && length != 7)
		{
			return FormulaErrorStrings[wrong_number_arguments];
		}
		double result = 2.0;
		double result2 = 0.0;
		double num = 0.0;
		double num2 = 0.0;
		for (int i = 0; i < length; i++)
		{
			array[i] = GetValueFromArg(array[i]);
		}
		if (double.TryParse(array[0], out var result3) && double.TryParse(array[1], out var result4) && double.TryParse(array[2], out var result5) && double.TryParse(array[3], out var result6) && double.TryParse(array[4], out var result7) && (length == 5 || double.TryParse(array[5], out result)) && (length <= 6 || double.TryParse(array[6], out result2)))
		{
			double num3 = result / result5;
			double num4 = 0.0;
			double num5 = (result3 - result4) / result5;
			bool flag = Math.Abs(result2) > 0.5;
			int num6 = 0;
			while ((double)num6 < result7)
			{
				num6++;
				if ((double)num6 == result5)
				{
					num = result3 - result4 - num4;
				}
				else
				{
					num = (result3 - num4) * num3;
					if (flag && num < num5)
					{
						num = num5;
					}
				}
				num4 += num;
				if ((double)num6 > result6 && (double)num6 <= result7)
				{
					num2 += num;
				}
				else if ((double)num6 - result7 < 0.99 && (double)num6 - result7 > 0.0)
				{
					num2 += num * (result7 - (double)num6 + 1.0);
				}
			}
			return num2.ToString();
		}
		return FormulaErrorStrings[invalid_arguments];
	}

	public string ComputeAcosh(string args)
	{
		if (!double.TryParse(GetValueFromArg(args), out var result) || !(result >= 1.0))
		{
			return FormulaErrorStrings[invalid_arguments];
		}
		return Math.Log(result + Math.Sqrt(result * result - 1.0)).ToString();
	}

	public string ComputeAsinh(string args)
	{
		if (!double.TryParse(GetValueFromArg(args), out var result))
		{
			return FormulaErrorStrings[invalid_arguments];
		}
		return ((double)Math.Sign(result) * Math.Log(Math.Abs(result) + Math.Sqrt(result * result + 1.0))).ToString();
	}

	public string ComputeAtanh(string args)
	{
		double num;
		if (!double.TryParse(GetValueFromArg(args), out var result) || !((num = Math.Abs(result)) < 1.0))
		{
			return FormulaErrorStrings[invalid_arguments];
		}
		return (0.5 * (double)Math.Sign(result) * Math.Log((1.0 + num) / (1.0 - num))).ToString();
	}

	public string ComputeAtan2(string argList)
	{
		string[] array = argList.Split(ParseArgumentSeparator);
		int length = array.GetLength(0);
		if (length != 2)
		{
			return FormulaErrorStrings[requires_2_args];
		}
		double num = 0.0;
		if (!double.TryParse(GetValueFromArg(array[0]), out var result) || !double.TryParse(GetValueFromArg(array[1]), out var result2))
		{
			return FormulaErrorStrings[invalid_arguments];
		}
		return Math.Atan2(result2, result).ToString();
	}

	public string ComputeCombin(string argList)
	{
		string[] array = argList.Split(ParseArgumentSeparator);
		int length = array.GetLength(0);
		if (length != 2)
		{
			return FormulaErrorStrings[requires_2_args];
		}
		double num = 0.0;
		if (double.TryParse(GetValueFromArg(array[0]), out var result) && double.TryParse(GetValueFromArg(array[1]), out var result2))
		{
			int k = (int)(result2 + 0.1);
			int n = (int)(result + 0.1);
			return comb(k, n).ToString();
		}
		return FormulaErrorStrings[invalid_arguments];
	}

	public string ComputeDegrees(string args)
	{
		double num = 0.0;
		if (!double.TryParse(GetValueFromArg(args), out var result))
		{
			return FormulaErrorStrings[invalid_arguments];
		}
		return (180.0 * result / Math.PI).ToString();
	}

	public string ComputeEven(string args)
	{
		double num = 0.0;
		if (double.TryParse(GetValueFromArg(args), out var result))
		{
			int num2 = Math.Sign(result);
			result = Math.Abs(result);
			if ((double)(int)result != result)
			{
				result = (int)(result + 1.0);
			}
			return ((result % 2.0 != 1.0) ? ((double)num2 * result) : ((double)num2 * (result + 1.0))).ToString();
		}
		return FormulaErrorStrings[invalid_arguments];
	}

	public string ComputeFact(string args)
	{
		double result = 0.0;
		double num = 0.0;
		if (double.TryParse(GetValueFromArg(args), out result) && result >= 0.0)
		{
			int num2 = (int)result;
			if (num2 > 12)
			{
				num = factorialTable[12];
				for (int i = 13; i <= num2; i++)
				{
					num *= (double)i;
				}
			}
			else
			{
				num = factorialTable[num2];
			}
			return num.ToString();
		}
		if (result < 0.0)
		{
			return "#NUM!";
		}
		return FormulaErrorStrings[invalid_arguments];
	}

	public string ComputeOdd(string args)
	{
		double num = 0.0;
		if (double.TryParse(GetValueFromArg(args), out var result))
		{
			int num2 = Math.Sign(result);
			result = Math.Abs(result);
			if ((double)(int)result != result)
			{
				result = (int)(result + 1.0);
			}
			return ((result % 2.0 != 0.0) ? ((double)num2 * result) : ((double)num2 * (result + 1.0))).ToString();
		}
		return FormulaErrorStrings[invalid_arguments];
	}

	public string ComputeRadians(string args)
	{
		double num = 0.0;
		if (!double.TryParse(GetValueFromArg(args), out var result))
		{
			return FormulaErrorStrings[invalid_arguments];
		}
		return (Math.PI * result / 180.0).ToString();
	}

	public string ComputeRound(string argList)
	{
		string[] array = argList.Split(ParseArgumentSeparator);
		switch (array.GetLength(0))
		{
		case 1:
			return ComputeMath(argList, Math.Round).ToString();
		default:
			return FormulaErrorStrings[invalid_arguments];
		case 2:
		{
			double result = 0.0;
			double result2 = 0.0;
			double num = 0.0;
			string valueFromArg = GetValueFromArg(array[0]);
			string valueFromArg2 = GetValueFromArg(array[1]);
			if ((valueFromArg.Length == 0 || double.TryParse(valueFromArg, out result)) && (valueFromArg2.Length == 0 || double.TryParse(valueFromArg2, out result2)))
			{
				if (result2 > 0.0)
				{
					num = Math.Round(result, (int)result2);
				}
				else
				{
					double num2 = Math.Pow(10.0, 0.0 - result2);
					num = Math.Round(result / num2) * num2;
				}
				return num.ToString();
			}
			return FormulaErrorStrings[invalid_arguments];
		}
		}
	}

	public string ComputeRounddown(string argList)
	{
		double result = 0.0;
		string[] array = argList.Split(ParseArgumentSeparator);
		switch (array.GetLength(0))
		{
		case 1:
			double.TryParse(GetValueFromArg(argList), out result);
			result -= 0.5 * (double)Math.Sign(result);
			return ComputeRound($"{result}");
		default:
			return FormulaErrorStrings[invalid_arguments];
		case 2:
		{
			double result2 = 0.0;
			double.TryParse(GetValueFromArg(array[0]), out result);
			double.TryParse(GetValueFromArg(array[1]), out result2);
			result -= 0.5 * Math.Pow(10.0, 0.0 - result2) * (double)Math.Sign(result);
			return ComputeRound($"{result}{ParseArgumentSeparator}{result2}");
		}
		}
	}

	public string ComputeRoundup(string argList)
	{
		double result = 0.0;
		string[] array = argList.Split(ParseArgumentSeparator);
		switch (array.GetLength(0))
		{
		case 1:
			double.TryParse(GetValueFromArg(argList), out result);
			if (result > 0.0)
			{
				result += 0.4999999999;
			}
			else if (result < 0.0)
			{
				result -= 0.4999999999;
			}
			result = Math.Round(result, 0, MidpointRounding.AwayFromZero);
			return $"{result}";
		default:
			return FormulaErrorStrings[invalid_arguments];
		case 2:
		{
			double result2 = 0.0;
			double.TryParse(GetValueFromArg(array[0]), out result);
			double.TryParse(GetValueFromArg(array[1]), out result2);
			if (result2 >= 0.0)
			{
				if (result > 0.0)
				{
					result += 0.4999999999 / Math.Pow(10.0, result2);
				}
				else if (result < 0.0)
				{
					result -= 0.4999999999 / Math.Pow(10.0, result2);
				}
				result = Math.Round(result, (int)result2, MidpointRounding.AwayFromZero);
			}
			else
			{
				if (result > 0.0)
				{
					result = result / Math.Pow(10.0, 0.0 - result2) + 0.49999;
				}
				else if (result < 0.0)
				{
					result = result / Math.Pow(10.0, 0.0 - result2) - 0.49999;
				}
				result = Math.Round(result, 0, MidpointRounding.AwayFromZero) * Math.Pow(10.0, 0.0 - result2);
			}
			return $"{result}";
		}
		}
	}

	public string ComputeSumsq(string range)
	{
		double num = 0.0;
		string[] array = range.Split(ParseArgumentSeparator);
		foreach (string text in array)
		{
			double result;
			if (text.IndexOf(':') > -1)
			{
				string[] cellsFromArgs = GetCellsFromArgs(text);
				foreach (string arg in cellsFromArgs)
				{
					string valueFromArg;
					try
					{
						valueFromArg = GetValueFromArg(arg);
					}
					catch (Exception ex)
					{
						return ex.Message;
					}
					if (valueFromArg.Length > 0 && double.TryParse(valueFromArg, NumberStyles.Number | NumberStyles.AllowExponent, null, out result))
					{
						num += result * result;
					}
				}
			}
			else
			{
				string valueFromArg;
				try
				{
					valueFromArg = GetValueFromArg(text);
				}
				catch (Exception ex2)
				{
					return ex2.Message;
				}
				if (valueFromArg.Length > 0 && double.TryParse(valueFromArg, NumberStyles.Number | NumberStyles.AllowExponent, null, out result))
				{
					num += result * result;
				}
			}
		}
		return num.ToString();
	}

	public string ComputeSumx2my2(string range)
	{
		string[] array = range.Split(ParseArgumentSeparator);
		int length = array.GetLength(0);
		if (length != 2)
		{
			return FormulaErrorStrings[requires_2_args];
		}
		string args = array[0];
		string args2 = array[1];
		string[] cellsFromArgs = GetCellsFromArgs(args);
		string[] cellsFromArgs2 = GetCellsFromArgs(args2);
		int length2 = cellsFromArgs.GetLength(0);
		if (length2 != cellsFromArgs2.GetLength(0))
		{
			return FormulaErrorStrings[invalid_arguments];
		}
		double num = 0.0;
		double result = 0.0;
		double result2 = 0.0;
		for (int i = 0; i < length2; i++)
		{
			if (double.TryParse(GetValueFromArg(cellsFromArgs[i]), out result) && double.TryParse(GetValueFromArg(cellsFromArgs2[i]), out result2))
			{
				num += result * result - result2 * result2;
			}
		}
		return num.ToString();
	}

	public string ComputeSumx2py2(string range)
	{
		string[] array = range.Split(ParseArgumentSeparator);
		int length = array.GetLength(0);
		if (length != 2)
		{
			return FormulaErrorStrings[requires_2_args];
		}
		string args = array[0];
		string args2 = array[1];
		string[] cellsFromArgs = GetCellsFromArgs(args);
		string[] cellsFromArgs2 = GetCellsFromArgs(args2);
		int length2 = cellsFromArgs.GetLength(0);
		if (length2 != cellsFromArgs2.GetLength(0))
		{
			return FormulaErrorStrings[invalid_arguments];
		}
		double num = 0.0;
		double result = 0.0;
		double result2 = 0.0;
		for (int i = 0; i < length2; i++)
		{
			if (double.TryParse(GetValueFromArg(cellsFromArgs[i]), out result) && double.TryParse(GetValueFromArg(cellsFromArgs2[i]), out result2))
			{
				num += result * result + result2 * result2;
			}
		}
		return num.ToString();
	}

	public string ComputeSumxmy2(string range)
	{
		string[] array = range.Split(ParseArgumentSeparator);
		int length = array.GetLength(0);
		if (length != 2)
		{
			return FormulaErrorStrings[requires_2_args];
		}
		string args = array[0];
		string args2 = array[1];
		string[] cellsFromArgs = GetCellsFromArgs(args);
		string[] cellsFromArgs2 = GetCellsFromArgs(args2);
		int length2 = cellsFromArgs.GetLength(0);
		if (length2 != cellsFromArgs2.GetLength(0))
		{
			return FormulaErrorStrings[invalid_arguments];
		}
		double num = 0.0;
		double result = 0.0;
		double result2 = 0.0;
		for (int i = 0; i < length2; i++)
		{
			if (double.TryParse(GetValueFromArg(cellsFromArgs[i]), out result) && double.TryParse(GetValueFromArg(cellsFromArgs2[i]), out result2))
			{
				num += Math.Pow(result - result2, 2.0);
			}
		}
		return num.ToString();
	}

	public string ComputeDate(string argList)
	{
		string[] array = argList.Split(ParseArgumentSeparator);
		int length = array.GetLength(0);
		if (length != 3)
		{
			return FormulaErrorStrings[wrong_number_arguments];
		}
		int num = 0;
		for (int i = 0; i < length; i++)
		{
			array[i] = GetValueFromArg(array[i]);
		}
		if (double.TryParse(array[0], out var result) && double.TryParse(array[1], out var result2) && double.TryParse(array[2], out var result3))
		{
			if (result < 0.0)
			{
				return "#NUM";
			}
			DateTime dateTime = new DateTime((int)result, 1, 1).AddMonths((int)result2 - 1).AddDays((int)result3 - 1);
			return GetSerialDateFromDate(dateTime.Year, dateTime.Month, dateTime.Day).ToString();
		}
		return "#VALUE!";
	}

	public int GetSerialDateFromDate(int y, int m, int d)
	{
		int num = 0;
		if (y < 1900)
		{
			y += 1900;
		}
		num = 1 + (new DateTime(y, m, d, 0, 0, 0) - dateTime1900).Days;
		if (Treat1900AsLeapYear && num > 59)
		{
			num++;
		}
		return num;
	}

	public DateTime GetDateFromSerialDate(int serialDayNumber)
	{
		serialDayNumber--;
		if (Treat1900AsLeapYear && serialDayNumber > 59)
		{
			serialDayNumber--;
		}
		return dateTime1900.AddDays(serialDayNumber);
	}

	public string ComputeDatevalue(string argList)
	{
		argList = GetValueFromArg(argList);
		DateTime dateTime;
		try
		{
			dateTime = DateTime.Parse(argList.Replace(TIC, string.Empty));
		}
		catch
		{
			return FormulaErrorStrings[invalid_arguments];
		}
		int num = 1 + (dateTime - dateTime1900).Days;
		if (Treat1900AsLeapYear && num > 59)
		{
			num++;
		}
		return num.ToString();
	}

	public string ComputeDay(string argList)
	{
		double num = 1.0;
		if (!double.TryParse(GetValueFromArg(argList), out var result))
		{
			return FormulaErrorStrings[invalid_arguments];
		}
		return ((double)GetDateFromSerialDate((int)result).Day).ToString();
	}

	public string ComputeDays360(string argList)
	{
		string[] array = argList.Split(ParseArgumentSeparator);
		int length = array.GetLength(0);
		if (length != 2 && length != 3)
		{
			return FormulaErrorStrings[wrong_number_arguments];
		}
		bool flag = false;
		int num = 0;
		if (double.TryParse(GetValueFromArg(array[0]), out var result) && double.TryParse(GetValueFromArg(array[1]), out var result2) && (length == 2 || (flag = array[2] == TRUEVALUESTR)))
		{
			DateTime dateTime = GetDateFromSerialDate((int)result);
			DateTime dateTime2 = GetDateFromSerialDate((int)result2);
			bool flag2 = false;
			if (dateTime.Day == 31)
			{
				dateTime = dateTime.AddDays(-1.0);
			}
			if (dateTime2.Day == 31 && !flag && dateTime.Day < 30)
			{
				dateTime2 = dateTime2.AddDays(1.0);
			}
			else if (dateTime2.Day == 31)
			{
				dateTime2 = dateTime2.AddDays(-1.0);
			}
			if (dateTime2 < dateTime)
			{
				flag2 = true;
				DateTime dateTime3 = dateTime;
				dateTime = dateTime2;
				dateTime2 = dateTime3;
			}
			num = dateTime2.Day - dateTime.Day;
			num += 30 * (dateTime2.Month - dateTime.Month);
			num += 360 * (dateTime2.Year - dateTime.Year);
			if (flag2)
			{
				num = -num;
			}
			return num.ToString();
		}
		return FormulaErrorStrings[invalid_arguments];
	}

	public string ComputeHour(string argList)
	{
		DateTime now = DateTime.Now;
		argList = GetValueFromArg(argList);
		if (argList.IndexOf(TIC) > -1)
		{
			argList = argList.Replace(TIC, string.Empty);
			now = DateTime.Parse(argList);
		}
		else
		{
			try
			{
				now = ((!double.TryParse(argList, out var result)) ? DateTime.Parse(argList) : DateTime.FromOADate(result));
			}
			catch
			{
				return FormulaErrorStrings[invalid_arguments];
			}
		}
		return now.Hour.ToString();
	}

	public string ComputeMinute(string argList)
	{
		DateTime now = DateTime.Now;
		argList = GetValueFromArg(argList);
		if (argList.IndexOf(TIC) > -1)
		{
			argList = argList.Replace(TIC, string.Empty);
			now = DateTime.Parse(argList);
		}
		else
		{
			try
			{
				now = ((!double.TryParse(argList, out var result)) ? DateTime.Parse(argList) : DateTime.FromOADate(result));
			}
			catch
			{
				return FormulaErrorStrings[invalid_arguments];
			}
		}
		return now.Minute.ToString();
	}

	public string ComputeSecond(string argList)
	{
		DateTime now = DateTime.Now;
		argList = GetValueFromArg(argList);
		if (argList.IndexOf(TIC) > -1)
		{
			argList = argList.Replace(TIC, string.Empty);
			now = DateTime.Parse(argList);
		}
		else
		{
			try
			{
				now = ((!double.TryParse(argList, out var result)) ? DateTime.Parse(argList) : DateTime.FromOADate(result));
			}
			catch
			{
				return FormulaErrorStrings[invalid_arguments];
			}
		}
		return now.Second.ToString();
	}

	public string ComputeMonth(string argList)
	{
		double num = 1.0;
		if (!double.TryParse(GetValueFromArg(argList), out var result))
		{
			return FormulaErrorStrings[invalid_arguments];
		}
		return ((double)GetDateFromSerialDate((int)result).Month).ToString();
	}

	public string ComputeNow(string argList)
	{
		return DateTime.Now.ToOADate().ToString();
	}

	public string ComputeToday(string argList)
	{
		DateTime now = DateTime.Now;
		return GetSerialDateFromDate(now.Year, now.Month, now.Day).ToString();
	}

	public string ComputeTime(string argList)
	{
		string[] array = argList.Split(ParseArgumentSeparator);
		int length = array.GetLength(0);
		if (length != 3)
		{
			return FormulaErrorStrings[wrong_number_arguments];
		}
		double num = 0.0;
		for (int i = 0; i < length; i++)
		{
			array[i] = GetValueFromArg(array[i]);
		}
		if (double.TryParse(array[0], out var result) && double.TryParse(array[1], out var result2) && double.TryParse(array[2], out var result3))
		{
			num = (result + (result2 + result3 / 60.0) / 60.0) / 24.0;
		}
		return num.ToString("0.0########");
	}

	public string ComputeTimevalue(string argList)
	{
		DateTime now = DateTime.Now;
		argList = GetValueFromArg(argList);
		double num;
		try
		{
			if (argList.IndexOf(TIC) > -1)
			{
				argList = argList.Replace(TIC, string.Empty);
				now = DateTime.Parse(argList);
				num = ((double)now.Hour + ((double)now.Minute + (double)now.Second / 60.0) / 60.0) / 24.0;
			}
			else
			{
				now = DateTime.Parse(argList);
				num = ((double)now.Hour + ((double)now.Minute + (double)now.Second / 60.0) / 60.0) / 24.0;
			}
		}
		catch
		{
			return FormulaErrorStrings[invalid_arguments];
		}
		return num.ToString("0.0###########");
	}

	public string ComputeWeekday(string argList)
	{
		string[] array = argList.Split(ParseArgumentSeparator);
		int length = array.GetLength(0);
		if (length != 1 && length != 2)
		{
			return FormulaErrorStrings[wrong_number_arguments];
		}
		double result = 1.0;
		double num = 0.0;
		if (double.TryParse(GetValueFromArg(array[0]), out var result2) && (length == 1 || double.TryParse(GetValueFromArg(array[1]), out result)))
		{
			num = (double)GetDateFromSerialDate((int)result2).DayOfWeek;
			if (result == 1.0)
			{
				num += 1.0;
			}
			else
			{
				if (num == 0.0)
				{
					num = 7.0;
				}
				if (result == 3.0)
				{
					num -= 1.0;
				}
			}
		}
		return num.ToString();
	}

	public string ComputeYear(string argList)
	{
		double num = 1.0;
		if (!double.TryParse(GetValueFromArg(argList), out var result))
		{
			return FormulaErrorStrings[invalid_arguments];
		}
		return ((double)GetDateFromSerialDate((int)result).Year).ToString();
	}

	public string ComputeAvedev(string range)
	{
		double num = 0.0;
		ArrayList arrayList = new ArrayList();
		string[] array = range.Split(ParseArgumentSeparator);
		foreach (string text in array)
		{
			double result;
			if (text.IndexOf(':') > -1)
			{
				string[] cellsFromArgs = GetCellsFromArgs(text);
				foreach (string arg in cellsFromArgs)
				{
					string valueFromArg;
					try
					{
						valueFromArg = GetValueFromArg(arg);
					}
					catch (Exception ex)
					{
						return ex.Message;
					}
					if (valueFromArg.Length > 0 && double.TryParse(valueFromArg, out result))
					{
						num += result;
						arrayList.Add(result);
					}
				}
			}
			else
			{
				string valueFromArg;
				try
				{
					valueFromArg = GetValueFromArg(text);
				}
				catch (Exception ex2)
				{
					return ex2.Message;
				}
				if (valueFromArg.Length > 0 && double.TryParse(valueFromArg, out result))
				{
					num += result;
					arrayList.Add(result);
				}
			}
		}
		if (arrayList.Count > 0)
		{
			double num2 = num / (double)arrayList.Count;
			num = 0.0;
			for (int k = 0; k < arrayList.Count; k++)
			{
				num += Math.Abs((double)arrayList[k] - num2);
			}
			num /= (double)arrayList.Count;
		}
		return num.ToString();
	}

	public string ComputeAveragea(string range)
	{
		double num = 0.0;
		int num2 = 0;
		string[] array = range.Split(ParseArgumentSeparator);
		foreach (string text in array)
		{
			double result;
			string valueFromArg;
			if (text.IndexOf(':') > -1)
			{
				string[] cellsFromArgs = GetCellsFromArgs(text);
				foreach (string arg in cellsFromArgs)
				{
					try
					{
						valueFromArg = GetValueFromArg(arg, returnString: true);
					}
					catch (Exception ex)
					{
						return ex.Message;
					}
					if (valueFromArg.Length > 0)
					{
						num2++;
						if (double.TryParse(valueFromArg, out result))
						{
							num += result;
						}
					}
				}
				continue;
			}
			try
			{
				valueFromArg = GetValueFromArg(text, returnString: true);
			}
			catch (Exception ex2)
			{
				return ex2.Message;
			}
			if (valueFromArg.Length > 0)
			{
				num2++;
				if (double.TryParse(valueFromArg, out result))
				{
					num += result;
				}
			}
		}
		if (num2 > 0)
		{
			num /= (double)num2;
		}
		return num.ToString();
	}

	private double gammaln(double x)
	{
		double num = x;
		double num2 = 0.0;
		if (num < 7.0)
		{
			num2 = num;
			num += 1.0;
			while (num < 7.0)
			{
				num2 *= num;
				if (num < 7.0)
				{
					num += 1.0;
				}
			}
			num2 = 0.0 - Math.Log(num2);
		}
		double num3 = 1.0 / (num * num);
		return num2 + (num - 0.5) * Math.Log(num) - num + gammaAs[0] + ((((0.0 - gammaAs[1]) * num3 + gammaAs[2]) * num3 - gammaAs[3]) * num3 + gammaAs[4]) / num;
	}

	public string ComputeGammaln(string argList)
	{
		double result = 0.0;
		if (!double.TryParse(GetValueFromArg(argList), out result) || !(result > 0.0))
		{
			return FormulaErrorStrings[invalid_arguments];
		}
		return gammaln(result).ToString();
	}

	private double gammainv(double p, double a, double b)
	{
		double num = ((a > b) ? (b * Math.Abs(Math.Log(b * p))) : (a * Math.Abs(Math.Log(a * p))));
		if (a == b)
		{
			num = p;
		}
		double num2 = num / 2.0;
		double num3 = 0.0;
		double num4 = 1E-07;
		int i = 100;
		int num5 = 3;
		while (i == 100 && num5 > 0)
		{
			num5--;
			num /= 2.0;
			num2 = num / 2.0;
			for (i = 0; i < 100; i++)
			{
				num3 = gammadist(a, b, num);
				if (Math.Abs((num3 - p) / p) < num4)
				{
					break;
				}
				if (num3 < p)
				{
					num += num2;
					continue;
				}
				num2 /= 2.0;
				if (num - num2 < 0.0)
				{
					num2 = num / 2.0;
				}
				num -= num2;
			}
		}
		if (i == 100)
		{
			num = -1.0;
		}
		return num;
	}

	private double gammadist(double a, double b, double x)
	{
		int num = 4;
		double num2 = x / (double)num;
		double num3 = x / 12.0;
		double num4 = gammadensity(a, b, x);
		double num5 = 4.0 * (gammadensity(a, b, num2) + gammadensity(a, b, 3.0 * num2));
		double num6 = 2.0 * gammadensity(a, b, 2.0 * num2);
		double num7 = num3 * (num4 + num6 + num5);
		double num8 = num7;
		double num9 = 1E-07;
		for (int i = 0; i < 30; i++)
		{
			num *= 2;
			num6 += num5 / 2.0;
			num5 = 0.0;
			num2 = x / (double)num;
			for (int j = 0; j < num; j++)
			{
				if (j % 2 == 1)
				{
					double num10 = gammadensity(a, b, num2 * (double)j);
					num5 += num10;
				}
			}
			num5 = 4.0 * num5;
			num3 /= 2.0;
			num7 = num3 * (num4 + num6 + num5);
			if (Math.Abs((num7 - num8) / num8) < num9)
			{
				break;
			}
			num8 = num7;
		}
		return num7;
	}

	private double gammadensity(double a, double b, double x)
	{
		return Math.Pow(x / b, a - 1.0) * Math.Exp((0.0 - x) / b) / (b * Math.Exp(gammaln(a)));
	}

	public string ComputeGammadist(string argList)
	{
		string[] array = argList.Split(ParseArgumentSeparator);
		int length = array.GetLength(0);
		if (length != 4 && length != 3)
		{
			return FormulaErrorStrings[wrong_number_arguments];
		}
		double num = 0.0;
		double num2 = 0.0;
		for (int i = 0; i < length; i++)
		{
			array[i] = GetValueFromArg(array[i]);
		}
		if (double.TryParse(array[0], out var result) && double.TryParse(array[1], out var result2) && double.TryParse(array[2], out var result3))
		{
			if (length != 3)
			{
				num = ((array[3] == TRUEVALUESTR || array[3] == "1") ? 1 : 0);
			}
			num2 = ((num != 0.0) ? gammadist(result2, result3, result) : gammadensity(result2, result3, result));
		}
		return num2.ToString();
	}

	public string ComputeGammainv(string argList)
	{
		string[] array = argList.Split(ParseArgumentSeparator);
		int length = array.GetLength(0);
		if (length != 3)
		{
			return FormulaErrorStrings[wrong_number_arguments];
		}
		double num = 0.0;
		for (int i = 0; i < length; i++)
		{
			array[i] = GetValueFromArg(array[i]);
		}
		if (double.TryParse(array[0], out var result) && result > 0.0 && result < 1.0 && double.TryParse(array[1], out var result2) && double.TryParse(array[2], out var result3))
		{
			num = gammainv(result, result2, result3);
		}
		if (num <= 0.0)
		{
			return FormulaErrorStrings[iterations_dont_converge];
		}
		return num.ToString();
	}

	public string ComputeGeomean(string range)
	{
		double num = 1.0;
		int num2 = 0;
		string[] array = range.Split(ParseArgumentSeparator);
		foreach (string text in array)
		{
			double result;
			if (text.IndexOf(':') > -1)
			{
				string[] cellsFromArgs = GetCellsFromArgs(text);
				foreach (string arg in cellsFromArgs)
				{
					string valueFromArg;
					try
					{
						valueFromArg = GetValueFromArg(arg);
					}
					catch (Exception ex)
					{
						return ex.Message;
					}
					if (valueFromArg.Length > 0 && double.TryParse(valueFromArg, out result))
					{
						num2++;
						num *= result;
					}
				}
			}
			else
			{
				string valueFromArg;
				try
				{
					valueFromArg = GetValueFromArg(text);
				}
				catch (Exception ex2)
				{
					return ex2.Message;
				}
				if (valueFromArg.Length > 0 && double.TryParse(valueFromArg, out result))
				{
					num2++;
					num *= result;
				}
			}
		}
		if (num2 > 0)
		{
			num = Math.Pow(num, 1.0 / (double)num2);
		}
		return num.ToString();
	}

	public string ComputeHarmean(string range)
	{
		double num = 0.0;
		int num2 = 0;
		string[] array = range.Split(ParseArgumentSeparator);
		foreach (string text in array)
		{
			double result;
			if (text.IndexOf(':') > -1)
			{
				string[] cellsFromArgs = GetCellsFromArgs(text);
				foreach (string arg in cellsFromArgs)
				{
					string valueFromArg;
					try
					{
						valueFromArg = GetValueFromArg(arg);
					}
					catch (Exception ex)
					{
						return ex.Message;
					}
					if (valueFromArg.Length > 0 && double.TryParse(valueFromArg, out result) && result != 0.0)
					{
						num2++;
						num += 1.0 / result;
					}
				}
			}
			else
			{
				string valueFromArg;
				try
				{
					valueFromArg = GetValueFromArg(text);
				}
				catch (Exception ex2)
				{
					return ex2.Message;
				}
				if (valueFromArg.Length > 0 && double.TryParse(valueFromArg, out result) && result != 0.0)
				{
					num2++;
					num += 1.0 / result;
				}
			}
		}
		if (num2 > 0)
		{
			num = (double)num2 / num;
		}
		return num.ToString();
	}

	private double comb(int k, int n)
	{
		double num = 1.0;
		for (int i = k + 1; i <= n; i++)
		{
			num *= (double)i;
		}
		double num2 = 1.0;
		for (int j = 2; j <= n - k; j++)
		{
			num2 *= (double)j;
		}
		return num / num2;
	}

	public string ComputeHypgeomdist(string argList)
	{
		string[] array = argList.Split(ParseArgumentSeparator);
		int length = array.GetLength(0);
		if (length != 4)
		{
			return FormulaErrorStrings[wrong_number_arguments];
		}
		double result = 0.0;
		double result2 = 0.0;
		double result3 = 0.0;
		double result4 = 0.0;
		double num = 0.0;
		for (int i = 0; i < length; i++)
		{
			array[i] = GetValueFromArg(array[i]);
		}
		if (double.TryParse(array[0], NumberStyles.Integer, null, out result) && double.TryParse(array[1], NumberStyles.Integer, null, out result2) && double.TryParse(array[2], NumberStyles.Integer, null, out result3) && double.TryParse(array[3], NumberStyles.Integer, null, out result4))
		{
			int num2 = (int)result;
			int num3 = (int)result2;
			int num4 = (int)result3;
			int num5 = (int)result4;
			if (num2 < 0 || num3 < num2 || num4 < 0 || num5 < num4 || num2 > num4 || num3 > num5)
			{
				return FormulaErrorStrings[invalid_Math_argument];
			}
			num = comb(num2, num4) * comb(num3 - num2, num5 - num4) / comb(num3, num5);
		}
		return num.ToString();
	}

	public string ComputeIntercept(string range)
	{
		string[] array = range.Split(ParseArgumentSeparator);
		int length = array.GetLength(0);
		if (length != 2)
		{
			return FormulaErrorStrings[wrong_number_arguments];
		}
		double[] doubleArray = GetDoubleArray(array[0]);
		double[] doubleArray2 = GetDoubleArray(array[1]);
		int length2 = doubleArray2.GetLength(0);
		if (length2 <= 0 || length2 != doubleArray.GetLength(0))
		{
			return FormulaErrorStrings[wrong_number_arguments];
		}
		double num = 0.0;
		double num2 = 0.0;
		for (int i = 0; i < length2; i++)
		{
			num += doubleArray2[i];
			num2 += doubleArray[i];
		}
		num /= (double)length2;
		num2 /= (double)length2;
		double num3 = 0.0;
		double num4 = 0.0;
		for (int j = 0; j < length2; j++)
		{
			double num5 = doubleArray2[j] - num;
			num3 += num5 * (doubleArray[j] - num2);
			num4 += num5 * num5;
		}
		return (num2 - num3 / num4 * num).ToString();
	}

	public string ComputeBinomdist(string argList)
	{
		string[] array = argList.Split(ParseArgumentSeparator);
		int length = array.GetLength(0);
		if (length != 4)
		{
			return FormulaErrorStrings[wrong_number_arguments];
		}
		double num = 0.0;
		double num2 = 0.0;
		for (int i = 0; i < length; i++)
		{
			array[i] = GetValueFromArg(array[i]);
		}
		if (double.TryParse(array[0], out var result) && double.TryParse(array[1], out var result2) && double.TryParse(array[2], out var result3))
		{
			num = ((array[3] == TRUEVALUESTR || array[3] == "1") ? 1 : 0);
			num2 = ((num != 0.0) ? binomdist((int)result2, (int)result, result3) : (comb((int)result, (int)result2) * Math.Pow(result3, result) * Math.Pow(1.0 - result3, result2 - result)));
		}
		return num2.ToString();
	}

	private double binomdist(int trials, int successes, double p)
	{
		double num = 1.0;
		double num2 = 1.0 - p;
		Math.Pow(num2, trials);
		double num3 = 0.0;
		double num4 = num * Math.Pow(num2, trials);
		if (num4 == 0.0)
		{
			return double.NaN;
		}
		for (int i = 0; i <= successes; i++)
		{
			num3 += num4;
			num4 = num4 * p / num2 * (double)(trials - i) / (double)(i + 1);
			if (double.IsInfinity(num4) || double.IsNaN(num4))
			{
				num3 = double.NaN;
				break;
			}
		}
		return num3;
	}

	public string ComputeChidist(string argList)
	{
		string[] array = argList.Split(ParseArgumentSeparator);
		int length = array.GetLength(0);
		if (length != 2)
		{
			return FormulaErrorStrings[wrong_number_arguments];
		}
		double num = 0.0;
		for (int i = 0; i < length; i++)
		{
			array[i] = GetValueFromArg(array[i]);
		}
		if (double.TryParse(array[0], out var result) && double.TryParse(array[1], out var result2))
		{
			num = 1.0 - chidist(result, result2);
		}
		return num.ToString();
	}

	private double chidist(double x, double v)
	{
		double num = v / 2.0;
		double num2 = 1.0 / (Math.Pow(2.0, num) * Math.Exp(gammaln(num)));
		num -= 1.0;
		double num3 = 0.0;
		double num4 = (num3 + x) / 2.0;
		double num5 = (x - num3) / 2.0;
		double num6 = 0.0;
		for (int i = 0; i < gauss_n; i++)
		{
			double num7 = gauss_x[i] * num5;
			num6 += gauss_w[i] * (Math.Pow(num4 + num7, num) * Math.Exp((0.0 - (num4 + num7)) / 2.0) + Math.Pow(num4 - num7, num) * Math.Exp((0.0 - (num4 - num7)) / 2.0));
		}
		return num2 * num6 * num5;
	}

	private double chiinv(double p, double v)
	{
		double num = p;
		double num2 = num / 2.0;
		double num3 = 0.0;
		double num4 = 1E-07;
		int i = 100;
		int num5 = 3;
		while (i == 100 && num5 > 0)
		{
			num5--;
			num /= 2.0;
			num2 = num / 2.0;
			for (i = 0; i < 100; i++)
			{
				num3 = 1.0 - chidist(num, v);
				if (Math.Abs((num3 - p) / p) < num4)
				{
					break;
				}
				if (num3 > p)
				{
					num += num2;
					continue;
				}
				num2 /= 2.0;
				if (num - num2 < 0.0)
				{
					num2 = num / 2.0;
				}
				num -= num2;
			}
		}
		if (i == 100)
		{
			num = -1.0;
		}
		return num;
	}

	public string ComputeChiinv(string argList)
	{
		string[] array = argList.Split(ParseArgumentSeparator);
		int length = array.GetLength(0);
		if (length != 2)
		{
			return FormulaErrorStrings[wrong_number_arguments];
		}
		double num = 0.0;
		for (int i = 0; i < length; i++)
		{
			array[i] = GetValueFromArg(array[i]);
		}
		if (double.TryParse(array[0], out var result) && double.TryParse(array[1], out var result2))
		{
			num = chiinv(result, result2);
		}
		return num.ToString();
	}

	public string ComputeChitest(string range)
	{
		string[] array = range.Split(ParseArgumentSeparator);
		int length = array.GetLength(0);
		if (length != 2)
		{
			return FormulaErrorStrings[wrong_number_arguments];
		}
		string text = array[0];
		double num = 0.0;
		double num2 = 0.0;
		if (text.IndexOf(':') > -1)
		{
			string s = text.Substring(0, text.IndexOf(':'));
			int num3 = ColIndex(s);
			int num4 = RowIndex(s);
			s = text.Substring(text.IndexOf(':') + 1);
			int num5 = ColIndex(s);
			int num6 = RowIndex(s);
			num2 = Math.Abs(num3 - num5) * Math.Abs(num4 - num6);
			if (num2 < 1.0)
			{
				return FormulaErrorStrings[invalid_Math_argument];
			}
		}
		double[] doubleArray = GetDoubleArray(array[0]);
		double[] doubleArray2 = GetDoubleArray(array[1]);
		int length2 = doubleArray2.GetLength(0);
		if (length2 <= 0 || length2 != doubleArray.GetLength(0))
		{
			return FormulaErrorStrings[wrong_number_arguments];
		}
		double num7 = 0.0;
		for (int i = 0; i < length2; i++)
		{
			num = doubleArray[i] - doubleArray2[i];
			num7 += num * num / doubleArray2[i];
		}
		return (1.0 - chidist(num7, num2)).ToString();
	}

	private double normaldensity(double x, double u, double s)
	{
		return 1.0 / (Math.Sqrt(Math.PI * 2.0) * s) * Math.Exp((0.0 - (x - u)) * (x - u) / (2.0 * s * s));
	}

	private double normaldist(double x, double u, double s)
	{
		int num = 32;
		double num2;
		double num3;
		if (x > u)
		{
			num2 = u - (x - u);
			num3 = x;
		}
		else
		{
			num2 = x;
			num3 = u + (u - x);
		}
		double num4 = (num3 - num2) / (double)num;
		double num5 = num4 / 3.0;
		double num6 = normaldensity(num2, u, s) + normaldensity(num3, u, s);
		double num7 = 0.0;
		for (int i = 1; i < num; i += 2)
		{
			num7 += 4.0 * normaldensity(num2 + (double)i * num4, u, s);
		}
		double num8 = 0.0;
		for (int j = 2; j < num; j += 2)
		{
			num8 += 2.0 * normaldensity(num2 + (double)j * num4, u, s);
		}
		double num9 = num5 * (num6 + num8 + num7);
		double num10 = num9;
		double num11 = 1E-07;
		int num12 = 0;
		for (num12 = 0; num12 < 20; num12++)
		{
			num *= 2;
			num8 += num7 / 2.0;
			num7 = 0.0;
			num4 = (num4 = (num3 - num2) / (double)num);
			for (int k = 0; k < num; k++)
			{
				if (k % 2 == 1)
				{
					double num13 = normaldensity(num2 + num4 * (double)k, u, s);
					num7 += num13;
				}
			}
			num7 = 4.0 * num7;
			num5 = num4 / 3.0;
			num9 = num5 * (num6 + num8 + num7);
			if (Math.Abs((num9 - num10) / num10) < num11)
			{
				break;
			}
			num10 = num9;
		}
		if (x > u)
		{
			return num9 + (1.0 - num9) / 2.0;
		}
		return (1.0 - num9) / 2.0;
	}

	public string ComputeNormdist(string argList)
	{
		string[] array = argList.Split(ParseArgumentSeparator);
		int length = array.GetLength(0);
		if (length != 4 && length != 3)
		{
			return FormulaErrorStrings[wrong_number_arguments];
		}
		double num = 0.0;
		double num2 = 0.0;
		for (int i = 0; i < length; i++)
		{
			array[i] = GetValueFromArg(array[i]);
		}
		if (double.TryParse(array[0], out var result) && double.TryParse(array[1], out var result2) && double.TryParse(array[2], out var result3))
		{
			if (length != 3)
			{
				num = ((array[3] == TRUEVALUESTR || array[3] == "1") ? 1 : 0);
			}
			num2 = ((num != 0.0) ? normaldist(result, result2, result3) : normaldensity(result, result2, result3));
		}
		return num2.ToString();
	}

	public string ComputeNormsDist(string argList)
	{
		string argList2 = argList + ", 0, 1, " + TRUEVALUESTR;
		return ComputeNormdist(argList2);
	}

	public string ComputeNorminv(string argList)
	{
		string[] array = argList.Split(ParseArgumentSeparator);
		int length = array.GetLength(0);
		if (length != 3)
		{
			return FormulaErrorStrings[wrong_number_arguments];
		}
		double num = 0.0;
		for (int i = 0; i < length; i++)
		{
			array[i] = GetValueFromArg(array[i]);
		}
		if (double.TryParse(array[0], out var result) && result > 0.0 && result < 1.0 && double.TryParse(array[1], out var result2) && double.TryParse(array[2], out var result3))
		{
			num = normalinv(result, result2, result3);
		}
		if (num <= 0.0)
		{
			return FormulaErrorStrings[iterations_dont_converge];
		}
		return num.ToString();
	}

	private double normalinv(double p, double u, double s)
	{
		double num = u;
		num = ((p < 0.05) ? (u - 2.0 * s) : ((p < 0.5) ? u : ((!(p < 0.95)) ? (u + 5.0 * s) : (u + 2.0 * s))));
		double num2 = num / 2.0;
		double num3 = 0.0;
		double num4 = 1E-07;
		int i = 100;
		int num5 = 3;
		int num6 = 0;
		while (i == 100 && num5 > 0)
		{
			num5--;
			num /= 2.0;
			num2 = num / 2.0;
			for (i = 0; i < 100; i++)
			{
				num6++;
				num3 = normaldist(num, u, s);
				if (Math.Abs((num3 - p) / p) < num4)
				{
					break;
				}
				if (num3 < p)
				{
					num += num2;
					continue;
				}
				num2 /= 2.0;
				if (num - num2 < 0.0)
				{
					num2 = num / 2.0;
				}
				num -= num2;
			}
		}
		if (i == 100)
		{
			num = -1.0;
		}
		return num;
	}

	public string ComputeNormsInv(string argList)
	{
		string argList2 = argList + ", 0, 1";
		return ComputeNorminv(argList2);
	}

	public string ComputeConfidence(string argList)
	{
		string[] array = argList.Split(ParseArgumentSeparator);
		int length = array.GetLength(0);
		if (length != 3)
		{
			return FormulaErrorStrings[wrong_number_arguments];
		}
		double num = 0.0;
		for (int i = 0; i < length; i++)
		{
			array[i] = GetValueFromArg(array[i]);
		}
		if (double.TryParse(array[0], out var result) && double.TryParse(array[1], out var result2) && double.TryParse(array[2], out var result3))
		{
			num = normalinv(1.0 - result + result / 2.0, 0.0, 1.0);
			num = num * result2 / Math.Sqrt(result3);
		}
		return num.ToString();
	}

	public string ComputeCorrel(string range)
	{
		string[] array = range.Split(ParseArgumentSeparator);
		int length = array.GetLength(0);
		if (length != 2)
		{
			return FormulaErrorStrings[wrong_number_arguments];
		}
		double[] doubleArray = GetDoubleArray(array[0]);
		double[] doubleArray2 = GetDoubleArray(array[1]);
		int length2 = doubleArray2.GetLength(0);
		if (length2 <= 0 || length2 != doubleArray.GetLength(0))
		{
			return FormulaErrorStrings[wrong_number_arguments];
		}
		double num = 0.0;
		double num2 = 0.0;
		for (int i = 0; i < length2; i++)
		{
			num += doubleArray2[i];
			num2 += doubleArray[i];
		}
		num /= (double)length2;
		num2 /= (double)length2;
		double num3 = 0.0;
		double num4 = 0.0;
		double num5 = 0.0;
		double num6 = 0.0;
		double num7 = 0.0;
		for (int j = 0; j < length2; j++)
		{
			num6 = doubleArray2[j] - num;
			num7 = doubleArray[j] - num2;
			num3 += num6 * num7;
			num4 += num6 * num6;
			num5 += num7 * num7;
		}
		return (num3 / Math.Sqrt(num4 * num5)).ToString();
	}

	public string ComputeCount(string range)
	{
		int num = 0;
		string[] array = range.Split(ParseArgumentSeparator);
		foreach (string text in array)
		{
			double result;
			if (text.IndexOf(':') > -1)
			{
				string[] cellsFromArgs = GetCellsFromArgs(text);
				foreach (string arg in cellsFromArgs)
				{
					string valueFromArg;
					try
					{
						valueFromArg = GetValueFromArg(arg);
					}
					catch (Exception ex)
					{
						return ex.Message;
					}
					if (valueFromArg.Length > 0 && double.TryParse(valueFromArg, out result))
					{
						num++;
					}
				}
			}
			else
			{
				string valueFromArg;
				try
				{
					valueFromArg = GetValueFromArg(text);
				}
				catch (Exception ex2)
				{
					return ex2.Message;
				}
				if (valueFromArg.Length > 0 && double.TryParse(valueFromArg, out result))
				{
					num++;
				}
			}
		}
		return num.ToString();
	}

	public string ComputeCounta(string range)
	{
		int num = 0;
		string[] array = range.Split(ParseArgumentSeparator);
		foreach (string text in array)
		{
			if (text.IndexOf(':') > -1)
			{
				string[] cellsFromArgs = GetCellsFromArgs(text);
				foreach (string arg in cellsFromArgs)
				{
					string valueFromArg;
					try
					{
						valueFromArg = GetValueFromArg(arg, returnString: true);
					}
					catch (Exception ex)
					{
						return ex.Message;
					}
					if (valueFromArg.Length > 0)
					{
						num++;
					}
				}
			}
			else
			{
				string valueFromArg;
				try
				{
					valueFromArg = GetValueFromArg(text, returnString: true);
				}
				catch (Exception ex2)
				{
					return ex2.Message;
				}
				if (valueFromArg.Length > 0)
				{
					num++;
				}
			}
		}
		return num.ToString();
	}

	public string ComputeCountblank(string range)
	{
		int num = 0;
		string text = TIC + TIC;
		string[] array = range.Split(ParseArgumentSeparator);
		foreach (string text2 in array)
		{
			if (text2.IndexOf(':') > -1)
			{
				string[] cellsFromArgs = GetCellsFromArgs(text2);
				foreach (string arg in cellsFromArgs)
				{
					string valueFromArg;
					try
					{
						valueFromArg = GetValueFromArg(arg);
					}
					catch (Exception ex)
					{
						return ex.Message;
					}
					if (valueFromArg.Length == 0 || valueFromArg == text)
					{
						num++;
					}
				}
			}
			else
			{
				string valueFromArg;
				try
				{
					valueFromArg = GetValueFromArg(text2);
				}
				catch (Exception ex2)
				{
					return ex2.Message;
				}
				if (valueFromArg.Length == 0 || valueFromArg == text)
				{
					num++;
				}
			}
		}
		return num.ToString();
	}

	public string ComputeCountif(string argList)
	{
		string[] array = argList.Split(ParseArgumentSeparator);
		int length = array.GetLength(0);
		if (length != 2)
		{
			return FormulaErrorStrings[wrong_number_arguments];
		}
		string args = array[0];
		string text = array[1];
		text = ((text.Length <= 1 || text[0] != TIC[0] || "=><".IndexOf(text[1]) != -1) ? text.Replace(TIC, string.Empty) : ("=" + text));
		string[] cellsFromArgs = GetCellsFromArgs(args);
		int num = 0;
		int length2 = cellsFromArgs.GetLength(0);
		for (int i = 0; i < length2; i++)
		{
			string text2 = cellsFromArgs[i] + text;
			text2 = Parse(text2);
			text2 = ComputedValue(text2);
			if (text2 == TRUEVALUESTR)
			{
				num++;
			}
		}
		return num.ToString();
	}

	public string ComputeCovar(string range)
	{
		string[] array = range.Split(ParseArgumentSeparator);
		int length = array.GetLength(0);
		if (length != 2)
		{
			return FormulaErrorStrings[wrong_number_arguments];
		}
		double[] doubleArray = GetDoubleArray(array[0]);
		double[] doubleArray2 = GetDoubleArray(array[1]);
		int length2 = doubleArray2.GetLength(0);
		if (length2 <= 0 || length2 != doubleArray.GetLength(0))
		{
			return FormulaErrorStrings[wrong_number_arguments];
		}
		double num = 0.0;
		double num2 = 0.0;
		for (int i = 0; i < length2; i++)
		{
			num += doubleArray2[i];
			num2 += doubleArray[i];
		}
		num /= (double)length2;
		num2 /= (double)length2;
		double num3 = 0.0;
		for (int j = 0; j < length2; j++)
		{
			num3 += (doubleArray2[j] - num) * (doubleArray[j] - num2);
		}
		return (num3 / (double)length2).ToString();
	}

	public string ComputeCritbinom(string argList)
	{
		string[] array = argList.Split(ParseArgumentSeparator);
		int length = array.GetLength(0);
		if (length != 3)
		{
			return FormulaErrorStrings[wrong_number_arguments];
		}
		double result = 0.0;
		int num = 0;
		for (int i = 0; i < length; i++)
		{
			array[i] = GetValueFromArg(array[i]);
		}
		if (double.TryParse(array[0], out var result2) && double.TryParse(array[1], out var result3) && double.TryParse(array[2], out result))
		{
			if (!(result3 > 0.0) || !(result3 < 1.0) || !(result > 0.0) || !(result < 1.0))
			{
				return FormulaErrorStrings[invalid_arguments];
			}
			num = critbinom((int)result2, result3, result);
			if (num == int.MaxValue)
			{
				return FormulaErrorStrings[calculation_overflow];
			}
		}
		return num.ToString();
	}

	private int critbinom(int nTrials, double p, double alpha)
	{
		int num = nTrials;
		int num2 = nTrials;
		double num3 = 1.0;
		double num4 = 1.0;
		do
		{
			num2 = num2 / 2 + 1;
			if (num3 >= alpha)
			{
				num4 = binomdist(nTrials, num - 1, p);
				if (double.IsNaN(num4))
				{
					return int.MaxValue;
				}
				if (num4 < alpha && num4 > 0.0)
				{
					break;
				}
				num -= num2;
			}
			else
			{
				num4 = binomdist(nTrials, num + 1, p);
				if (num4 >= alpha)
				{
					num++;
					break;
				}
				num += num2;
			}
			num3 = binomdist(nTrials, num, p);
		}
		while (num < nTrials && num > 0);
		return num;
	}

	public string ComputeDevsq(string range)
	{
		double[] doubleArray = GetDoubleArray(range);
		int length = doubleArray.GetLength(0);
		if (length <= 0)
		{
			return FormulaErrorStrings[wrong_number_arguments];
		}
		double num = 0.0;
		for (int i = 0; i < length; i++)
		{
			num += doubleArray[i];
		}
		num /= (double)length;
		double num2 = 0.0;
		for (int j = 0; j < length; j++)
		{
			double num3 = doubleArray[j] - num;
			num2 += num3 * num3;
		}
		return num2.ToString();
	}

	public string ComputeExpondist(string argList)
	{
		string[] array = argList.Split(ParseArgumentSeparator);
		int length = array.GetLength(0);
		if (length != 3)
		{
			return FormulaErrorStrings[wrong_number_arguments];
		}
		double num = 0.0;
		double num2 = 0.0;
		for (int i = 0; i < length; i++)
		{
			array[i] = GetValueFromArg(array[i]);
		}
		if (double.TryParse(array[0], out var result) && double.TryParse(array[1], out var result2))
		{
			num = ((array[2] == "1" || array[2] == TRUEVALUESTR) ? 1 : 0);
			num2 = ((num != 0.0) ? (1.0 - Math.Exp((0.0 - result2) * result)) : (result2 * Math.Exp((0.0 - result2) * result)));
		}
		return num2.ToString();
	}

	public string ComputeFdist(string argList)
	{
		string[] array = argList.Split(ParseArgumentSeparator);
		int length = array.GetLength(0);
		if (length != 3)
		{
			return FormulaErrorStrings[wrong_number_arguments];
		}
		double result = 0.0;
		double result2 = 0.0;
		double num = 0.0;
		for (int i = 0; i < length; i++)
		{
			array[i] = GetValueFromArg(array[i]);
		}
		if (double.TryParse(array[0], out var result3) && double.TryParse(array[1], out result) && double.TryParse(array[2], out result2))
		{
			double num2 = Math.Exp(gammaln((result + result2) / 2.0) - gammaln(result / 2.0) - gammaln(result2 / 2.0) + result / 2.0 * Math.Log(result / result2));
			num = 1.0 - num2 * fdist(result3, (int)result, (int)result2);
		}
		return num.ToString();
	}

	private double fdensity(double x, int df1, int df2)
	{
		return Math.Pow(x, (double)(df1 - 2) / 2.0) / Math.Pow(1.0 + (double)df1 * x / (double)df2, (double)(df1 + df2) / 2.0);
	}

	private double fdist(double x, int df1, int df2)
	{
		int num = 32;
		double num2 = 0.0;
		double num3 = (x - num2) / (double)num;
		double num4 = num3 / 3.0;
		double num5 = fdensity(num2, df1, df2) + fdensity(x, df1, df2);
		double num6 = 0.0;
		for (int i = 1; i < num; i += 2)
		{
			num6 += 4.0 * fdensity(num2 + (double)i * num3, df1, df2);
		}
		double num7 = 0.0;
		for (int j = 2; j < num; j += 2)
		{
			num7 += 2.0 * fdensity(num2 + (double)j * num3, df1, df2);
		}
		double num8 = num4 * (num5 + num7 + num6);
		double num9 = num8;
		double num10 = 1E-07;
		int num11 = 0;
		for (num11 = 0; num11 < 20; num11++)
		{
			num *= 2;
			num7 += num6 / 2.0;
			num6 = 0.0;
			num3 = (x - num2) / (double)num;
			for (int k = 0; k < num; k++)
			{
				if (k % 2 == 1)
				{
					double num12 = fdensity(num2 + num3 * (double)k, df1, df2);
					num6 += num12;
				}
			}
			num6 = 4.0 * num6;
			num4 = num3 / 3.0;
			num8 = num4 * (num5 + num7 + num6);
			if (Math.Abs((num8 - num9) / num9) < num10)
			{
				break;
			}
			num9 = num8;
		}
		return num8;
	}

	private double finv(double p, int df1, int df2)
	{
		double num = Math.Exp(gammaln((double)(df1 + df2) / 2.0) - gammaln((double)df1 / 2.0) - gammaln((double)df2 / 2.0) + (double)df1 / 2.0 * Math.Log((double)df1 / (double)df2));
		double num2 = num;
		double num3 = num2 / 2.0;
		double num4 = 0.0;
		double num5 = 1E-07;
		int i = 100;
		int num6 = 3;
		int num7 = 0;
		while (i == 100 && num6 > 0)
		{
			num6--;
			num2 /= 2.0;
			num3 = num2 / 2.0;
			for (i = 0; i < 100; i++)
			{
				num7++;
				num4 = 1.0 - num * fdist(num2, df1, df2);
				if (Math.Abs((num4 - p) / p) < num5)
				{
					break;
				}
				if (num4 > p)
				{
					num2 += num3;
					continue;
				}
				num3 /= 2.0;
				if (num2 - num3 < 0.0)
				{
					num3 = num2 / 2.0;
				}
				num2 -= num3;
			}
		}
		if (i == 100)
		{
			num2 = -1.0;
		}
		return num2;
	}

	public string ComputeFinv(string argList)
	{
		string[] array = argList.Split(ParseArgumentSeparator);
		int length = array.GetLength(0);
		if (length != 3)
		{
			return FormulaErrorStrings[wrong_number_arguments];
		}
		double num = 0.0;
		for (int i = 0; i < length; i++)
		{
			array[i] = GetValueFromArg(array[i]);
		}
		if (double.TryParse(array[0], out var result) && result > 0.0 && result < 1.0 && double.TryParse(array[1], out var result2) && double.TryParse(array[2], out var result3))
		{
			num = finv(result, (int)result2, (int)result3);
		}
		if (num <= 0.0)
		{
			return FormulaErrorStrings[iterations_dont_converge];
		}
		return num.ToString();
	}

	public string ComputeFisher(string argList)
	{
		string[] array = argList.Split(ParseArgumentSeparator);
		int length = array.GetLength(0);
		if (length != 1)
		{
			return FormulaErrorStrings[wrong_number_arguments];
		}
		double num = 0.0;
		string valueFromArg = GetValueFromArg(array[0]);
		if (double.TryParse(valueFromArg, out var result) && result > -1.0 && result < 1.0)
		{
			num = 0.5 * Math.Log((1.0 + result) / (1.0 - result));
		}
		return num.ToString();
	}

	public string ComputeFisherinv(string argList)
	{
		string[] array = argList.Split(ParseArgumentSeparator);
		int length = array.GetLength(0);
		if (length != 1)
		{
			return FormulaErrorStrings[wrong_number_arguments];
		}
		double num = 0.0;
		string valueFromArg = GetValueFromArg(array[0]);
		if (double.TryParse(valueFromArg, out var result))
		{
			double num2 = Math.Exp(2.0 * result);
			num = (num2 - 1.0) / (num2 + 1.0);
		}
		return num.ToString();
	}

	public string ComputeForecast(string range)
	{
		string[] array = range.Split(ParseArgumentSeparator);
		int length = array.GetLength(0);
		if (length != 3)
		{
			return FormulaErrorStrings[wrong_number_arguments];
		}
		string valueFromArg = GetValueFromArg(array[0]);
		if (!double.TryParse(valueFromArg, out var result))
		{
			return FormulaErrorStrings[invalid_arguments];
		}
		double[] doubleArray = GetDoubleArray(array[1]);
		double[] doubleArray2 = GetDoubleArray(array[2]);
		int length2 = doubleArray2.GetLength(0);
		if (length2 <= 0 || length2 != doubleArray.GetLength(0))
		{
			return FormulaErrorStrings[wrong_number_arguments];
		}
		double num = 0.0;
		double num2 = 0.0;
		for (int i = 0; i < length2; i++)
		{
			num += doubleArray2[i];
			num2 += doubleArray[i];
		}
		num /= (double)length2;
		num2 /= (double)length2;
		double num3 = 0.0;
		double num4 = 0.0;
		for (int j = 0; j < length2; j++)
		{
			double num5 = doubleArray2[j] - num;
			num3 += num5 * (doubleArray[j] - num2);
			num4 += num5 * num5;
		}
		double num6 = num3 / num4;
		double num7 = num2 - num6 * num;
		return (num7 + num6 * result).ToString();
	}

	private double var(double[] x)
	{
		double num = 0.0;
		int length = x.GetLength(0);
		for (int i = 0; i < length; i++)
		{
			num += x[i];
		}
		num /= (double)length;
		double num2 = 0.0;
		for (int j = 0; j < length; j++)
		{
			double num3 = x[j] - num;
			num2 += num3 * num3;
		}
		return num2 / (double)(length - 1);
	}

	public string ComputeKurt(string range)
	{
		double[] doubleArray = GetDoubleArray(range);
		int length = doubleArray.GetLength(0);
		if (length <= 3)
		{
			return FormulaErrorStrings[wrong_number_arguments];
		}
		double xbar = 0.0;
		double num = sd(doubleArray, out xbar);
		double num2 = 0.0;
		for (int i = 0; i < length; i++)
		{
			num2 += Math.Pow((doubleArray[i] - xbar) / num, 4.0);
		}
		xbar = length;
		return (xbar * (xbar + 1.0) / ((xbar - 1.0) * (xbar - 2.0) * (xbar - 3.0)) * num2 - 3.0 * (xbar - 1.0) * (xbar - 1.0) / ((xbar - 2.0) * (xbar - 3.0))).ToString();
	}

	public string ComputeLarge(string range)
	{
		string[] array = range.Split(ParseArgumentSeparator);
		int length = array.GetLength(0);
		if (length != 2)
		{
			return FormulaErrorStrings[wrong_number_arguments];
		}
		string valueFromArg = GetValueFromArg(array[1]);
		if (!double.TryParse(valueFromArg, NumberStyles.Integer, null, out var result))
		{
			return FormulaErrorStrings[invalid_arguments];
		}
		int num = (int)result;
		double[] doubleArray = GetDoubleArray(array[0]);
		int length2 = doubleArray.GetLength(0);
		if (num < 1 || num > length2)
		{
			return FormulaErrorStrings[invalid_arguments];
		}
		Array.Sort(doubleArray);
		return doubleArray[length2 - num].ToString();
	}

	public string ComputeLognormdist(string argList)
	{
		string[] array = argList.Split(ParseArgumentSeparator);
		int length = array.GetLength(0);
		if (length != 3)
		{
			return FormulaErrorStrings[wrong_number_arguments];
		}
		double num = 0.0;
		for (int i = 0; i < length; i++)
		{
			array[i] = GetValueFromArg(array[i]);
		}
		if (double.TryParse(array[0], out var result) && double.TryParse(array[1], out var result2) && double.TryParse(array[2], out var result3))
		{
			num = normaldist(Math.Log(result), result2, result3);
		}
		return num.ToString();
	}

	public string ComputeLoginv(string argList)
	{
		string[] array = argList.Split(ParseArgumentSeparator);
		int length = array.GetLength(0);
		if (length != 3)
		{
			return FormulaErrorStrings[wrong_number_arguments];
		}
		double num = 0.0;
		for (int i = 0; i < length; i++)
		{
			array[i] = GetValueFromArg(array[i]);
		}
		if (double.TryParse(array[0], out var result) && double.TryParse(array[1], out var result2) && double.TryParse(array[2], out var result3))
		{
			num = Math.Exp(normalinv(result, result2, result3));
		}
		return num.ToString();
	}

	public string ComputeMaxa(string range)
	{
		double num = double.MinValue;
		string[] array = range.Split(ParseArgumentSeparator);
		foreach (string text in array)
		{
			string valueFromArg;
			if (text.IndexOf(':') > -1)
			{
				string[] cellsFromArgs = GetCellsFromArgs(text);
				foreach (string arg in cellsFromArgs)
				{
					try
					{
						valueFromArg = GetValueFromArg(arg);
					}
					catch (Exception ex)
					{
						return ex.Message;
					}
					if (valueFromArg.Length > 0)
					{
						double result = 0.0;
						if (valueFromArg.ToUpper() == TRUEVALUESTR)
						{
							result = 1.0;
						}
						else
						{
							double.TryParse(valueFromArg, NumberStyles.Number | NumberStyles.AllowExponent, null, out result);
						}
						num = Math.Max(num, result);
					}
				}
				continue;
			}
			try
			{
				valueFromArg = GetValueFromArg(text);
			}
			catch (Exception ex2)
			{
				return ex2.Message;
			}
			if (valueFromArg.Length > 0)
			{
				double result = 0.0;
				if (valueFromArg.ToUpper() == TRUEVALUESTR)
				{
					result = 1.0;
				}
				else
				{
					double.TryParse(valueFromArg, NumberStyles.Number | NumberStyles.AllowExponent, null, out result);
				}
				num = Math.Max(num, result);
			}
		}
		if (num != double.MinValue)
		{
			return num.ToString();
		}
		return string.Empty;
	}

	public string ComputeMedian(string range)
	{
		double[] doubleArray = GetDoubleArray(range);
		Array.Sort(doubleArray);
		int num = doubleArray.GetLength(0) / 2;
		string empty = string.Empty;
		if (doubleArray.GetLength(0) % 2 == 1)
		{
			return doubleArray[num].ToString();
		}
		return ((doubleArray[num] + doubleArray[num - 1]) / 2.0).ToString();
	}

	public string ComputeMina(string range)
	{
		double num = double.MaxValue;
		string[] array = range.Split(ParseArgumentSeparator);
		foreach (string text in array)
		{
			string valueFromArg;
			if (text.IndexOf(':') > -1)
			{
				string[] cellsFromArgs = GetCellsFromArgs(text);
				foreach (string arg in cellsFromArgs)
				{
					try
					{
						valueFromArg = GetValueFromArg(arg);
					}
					catch (Exception ex)
					{
						return ex.Message;
					}
					if (valueFromArg.Length > 0)
					{
						double result = 0.0;
						if (valueFromArg.ToUpper() == TRUEVALUESTR)
						{
							result = 1.0;
						}
						else
						{
							double.TryParse(valueFromArg, NumberStyles.Number | NumberStyles.AllowExponent, null, out result);
						}
						num = Math.Min(num, result);
					}
				}
				continue;
			}
			try
			{
				valueFromArg = GetValueFromArg(text);
			}
			catch (Exception ex2)
			{
				return ex2.Message;
			}
			if (valueFromArg.Length > 0)
			{
				double result = 0.0;
				if (valueFromArg.ToUpper() == TRUEVALUESTR)
				{
					result = 1.0;
				}
				else
				{
					double.TryParse(valueFromArg, NumberStyles.Number | NumberStyles.AllowExponent, null, out result);
				}
				num = Math.Min(num, result);
			}
		}
		if (num != double.MaxValue)
		{
			return num.ToString();
		}
		return string.Empty;
	}

	public string ComputeMode(string range)
	{
		double[] doubleArray = GetDoubleArray(range);
		double[] array = doubleArray.Clone() as double[];
		int length = doubleArray.GetLength(0);
		if (length <= 1)
		{
			return "#N/A";
		}
		Array.Sort(doubleArray);
		ArrayList arrayList = new ArrayList();
		double num = double.NaN;
		int num2 = 0;
		int num3 = 0;
		for (int i = 1; i < length; i++)
		{
			if (doubleArray[i] == doubleArray[i - 1])
			{
				num2++;
				continue;
			}
			if (num2 > num3)
			{
				num3 = num2;
				num = doubleArray[i - 1];
				arrayList.Clear();
				arrayList.Add(num);
			}
			else if (num2 == num3)
			{
				arrayList.Add(doubleArray[i - 1]);
			}
			num2 = 0;
		}
		if (num2 > num3)
		{
			num3 = num2;
			num = doubleArray[length - 1];
			arrayList.Clear();
			arrayList.Add(num);
		}
		if (num3 > 0)
		{
			if (num2 == num3)
			{
				arrayList.Add(doubleArray[length - 1]);
			}
			if (arrayList.Count > 1)
			{
				double[] array2 = array;
				foreach (double num4 in array2)
				{
					if (arrayList.IndexOf(num4) > -1)
					{
						num = num4;
						break;
					}
				}
			}
			return num.ToString();
		}
		return "#N/A";
	}

	public string ComputeNegbinomdist(string argList)
	{
		string[] array = argList.Split(ParseArgumentSeparator);
		int length = array.GetLength(0);
		if (length != 3)
		{
			return FormulaErrorStrings[wrong_number_arguments];
		}
		double num = 0.0;
		for (int i = 0; i < length; i++)
		{
			array[i] = GetValueFromArg(array[i]);
		}
		if (double.TryParse(array[0], out var result) && double.TryParse(array[1], out var result2) && double.TryParse(array[2], out var result3))
		{
			num = negbinomdensity((int)result, (int)result2, result3);
		}
		return num.ToString();
	}

	private double negbinomdensity(int failures, int successes, double p)
	{
		return comb(successes - 1, failures + successes - 1) * Math.Pow(p, successes) * Math.Pow(1.0 - p, failures);
	}

	public string ComputePearson(string range)
	{
		string[] array = range.Split(ParseArgumentSeparator);
		int length = array.GetLength(0);
		if (length != 2)
		{
			return FormulaErrorStrings[wrong_number_arguments];
		}
		double[] doubleArray = GetDoubleArray(array[0]);
		double[] doubleArray2 = GetDoubleArray(array[1]);
		int length2 = doubleArray2.GetLength(0);
		if (length2 < 2 || length2 != doubleArray.GetLength(0))
		{
			return FormulaErrorStrings[wrong_number_arguments];
		}
		double num = 0.0;
		double num2 = 0.0;
		for (int i = 0; i < length2; i++)
		{
			num += doubleArray2[i];
			num2 += doubleArray[i];
		}
		num /= (double)length2;
		num2 /= (double)length2;
		double num3 = 0.0;
		double num4 = 0.0;
		double num5 = 0.0;
		for (int j = 0; j < length2; j++)
		{
			double num6 = doubleArray2[j] - num;
			double num7 = doubleArray[j] - num2;
			num3 += num6 * num7;
			num4 += num6 * num6;
			num5 += num7 * num7;
		}
		return (num3 / Math.Sqrt(num4 * num5)).ToString();
	}

	public string ComputePercentile(string range)
	{
		string[] array = range.Split(ParseArgumentSeparator);
		int length = array.GetLength(0);
		if (length != 2)
		{
			return FormulaErrorStrings[wrong_number_arguments];
		}
		string valueFromArg = GetValueFromArg(array[1]);
		if (!double.TryParse(valueFromArg, out var result) && (result < 0.0 || result > 1.0))
		{
			return FormulaErrorStrings[invalid_arguments];
		}
		double[] doubleArray = GetDoubleArray(array[0]);
		int length2 = doubleArray.GetLength(0);
		Array.Sort(doubleArray);
		double num = 1.0 / (double)(length2 - 1);
		double num2 = doubleArray[length2 - 1];
		for (int i = 0; i < length2 - 1; i++)
		{
			if ((double)(i + 1) * num > result)
			{
				result = (result - (double)i * num) / num;
				num2 = doubleArray[i] + result * (doubleArray[i + 1] - doubleArray[i]);
				break;
			}
		}
		return num2.ToString();
	}

	public string ComputePercentrank(string range)
	{
		string[] array = range.Split(ParseArgumentSeparator);
		int length = array.GetLength(0);
		if (length != 2 && length != 3)
		{
			return FormulaErrorStrings[wrong_number_arguments];
		}
		double result = 3.0;
		string valueFromArg = GetValueFromArg(array[1]);
		if (!double.TryParse(valueFromArg, out var result2))
		{
			return FormulaErrorStrings[invalid_arguments];
		}
		if (length == 3)
		{
			valueFromArg = GetValueFromArg(array[2]);
			if (!double.TryParse(valueFromArg, NumberStyles.Integer, null, out result) && result < 1.0)
			{
				return FormulaErrorStrings[invalid_arguments];
			}
		}
		double[] doubleArray = GetDoubleArray(array[0]);
		int length2 = doubleArray.GetLength(0);
		Array.Sort(doubleArray);
		double num = 1.0;
		for (int i = 0; i < length2; i++)
		{
			if (doubleArray[i] > result2)
			{
				int j;
				for (j = 0; j + i < length2 && doubleArray[j + i] == result2; j++)
				{
				}
				num = (double)(i - 1) / (double)(i + length2 - i - j - 1);
				if (i > 0 && doubleArray[i - 1] < result2)
				{
					double num2 = (double)i / (double)(length2 - 1);
					num = num2 + (num - num2) * (1.0 - (result2 - doubleArray[i - 1]) / (doubleArray[i] - doubleArray[i - 1]));
				}
				break;
			}
		}
		string text = "0." + new string('#', (int)(result + 1.0));
		text = num.ToString(text);
		return text.Substring(0, text.Length - 1);
	}

	public string ComputePermut(string argList)
	{
		string[] array = argList.Split(ParseArgumentSeparator);
		int length = array.GetLength(0);
		if (length != 2)
		{
			return FormulaErrorStrings[requires_2_args];
		}
		double num = 0.0;
		if (double.TryParse(GetValueFromArg(array[0]), out var result) && double.TryParse(GetValueFromArg(array[1]), out var result2))
		{
			int num2 = (int)(result2 + 0.1);
			int num3 = (int)(result + 0.1);
			double num4 = 1.0;
			for (int i = num3 - num2 + 1; i <= num3; i++)
			{
				num4 *= (double)i;
			}
			num = num4;
			return num.ToString();
		}
		return FormulaErrorStrings[invalid_arguments];
	}

	public string ComputePoisson(string argList)
	{
		string[] array = argList.Split(ParseArgumentSeparator);
		int length = array.GetLength(0);
		if (length != 3)
		{
			return FormulaErrorStrings[wrong_number_arguments];
		}
		double num = 0.0;
		double num2 = 0.0;
		for (int i = 0; i < length; i++)
		{
			array[i] = GetValueFromArg(array[i]);
		}
		if (double.TryParse(array[0], out var result) && double.TryParse(array[1], out var result2))
		{
			num = ((array[2] == TRUEVALUESTR || array[2] == "1") ? 1 : 0);
			int num3 = (int)result;
			if (num == 0.0)
			{
				double num4 = 1.0;
				for (int j = 2; j <= num3; j++)
				{
					num4 *= (double)j;
				}
				num2 = Math.Exp(0.0 - result2) * Math.Pow(result2, num3) / num4;
			}
			else
			{
				double num5 = 1.0;
				num2 = 0.0;
				double num6 = 1.0;
				for (int k = 0; k <= num3; k++)
				{
					num2 += num6 / num5;
					num5 *= (double)(k + 1);
					num6 *= result2;
				}
				num2 = Math.Exp(0.0 - result2) * num2;
			}
		}
		return num2.ToString();
	}

	public string ComputeProb(string range)
	{
		string[] array = range.Split(ParseArgumentSeparator);
		int length = array.GetLength(0);
		if (length != 3 && length != 4)
		{
			return FormulaErrorStrings[wrong_number_arguments];
		}
		string valueFromArg = GetValueFromArg(array[2]);
		double result = 0.0;
		if (!double.TryParse(valueFromArg, out result))
		{
			return FormulaErrorStrings[invalid_arguments];
		}
		double result2 = result;
		if (length == 4)
		{
			valueFromArg = GetValueFromArg(array[3]);
			double.TryParse(valueFromArg, out result2);
		}
		double[] doubleArray = GetDoubleArray(array[1]);
		double[] doubleArray2 = GetDoubleArray(array[0]);
		int length2 = doubleArray2.GetLength(0);
		if (length2 != doubleArray.GetLength(0))
		{
			return FormulaErrorStrings[wrong_number_arguments];
		}
		double num = 0.0;
		for (int i = 0; i < length2; i++)
		{
			double num2 = doubleArray2[i];
			if (num2 >= result && num2 <= result2)
			{
				num += doubleArray[i];
			}
		}
		return num.ToString();
	}

	public string ComputeQuartile(string range)
	{
		string[] array = range.Split(ParseArgumentSeparator);
		int length = array.GetLength(0);
		if (length != 2)
		{
			return FormulaErrorStrings[wrong_number_arguments];
		}
		string valueFromArg = GetValueFromArg(array[1]);
		if (double.TryParse(valueFromArg, NumberStyles.Integer, null, out var result) && result >= 0.0 && result <= 4.0)
		{
			return ComputePercentile(array[0] + ParseArgumentSeparator + (result * 0.25).ToString());
		}
		return FormulaErrorStrings[invalid_arguments];
	}

	public string ComputeRank(string range)
	{
		string[] array = range.Split(ParseArgumentSeparator);
		int length = array.GetLength(0);
		if (length != 2 && length != 3)
		{
			return FormulaErrorStrings[wrong_number_arguments];
		}
		int num = 0;
		string valueFromArg = GetValueFromArg(array[0]);
		if (double.TryParse(valueFromArg, out var result))
		{
			double result2 = 0.0;
			if (length == 3)
			{
				valueFromArg = GetValueFromArg(array[2]);
				double.TryParse(valueFromArg, NumberStyles.Integer, null, out result2);
			}
			string text = array[1];
			double result3 = 0.0;
			bool flag = false;
			if (text.IndexOf(':') > -1)
			{
				string[] cellsFromArgs = GetCellsFromArgs(text);
				foreach (string arg in cellsFromArgs)
				{
					try
					{
						valueFromArg = GetValueFromArg(arg);
					}
					catch (Exception ex)
					{
						return ex.Message;
					}
					if (!double.TryParse(valueFromArg, out result3))
					{
						continue;
					}
					if (result2 == 1.0)
					{
						if (result3 < result)
						{
							num++;
						}
						else if (result3 == result)
						{
							flag = true;
						}
					}
					else if (result3 > result)
					{
						num++;
					}
					else if (result3 == result)
					{
						flag = true;
					}
				}
				if (flag)
				{
					num++;
				}
			}
		}
		return num.ToString();
	}

	public string ComputeRsq(string range)
	{
		string s = ComputePearson(range);
		double result = 0.0;
		if (double.TryParse(s, out result))
		{
			result *= result;
		}
		return result.ToString();
	}

	public string ComputeSkew(string range)
	{
		double[] doubleArray = GetDoubleArray(range);
		int length = doubleArray.GetLength(0);
		if (length < 3)
		{
			return FormulaErrorStrings[invalid_arguments];
		}
		double xbar = 0.0;
		double num = sd(doubleArray, out xbar);
		double num2 = 0.0;
		for (int i = 0; i < length; i++)
		{
			num2 += Math.Pow((doubleArray[i] - xbar) / num, 3.0);
		}
		return ((double)length * num2 / (double)(length - 1) / (double)(length - 2)).ToString();
	}

	private double sd(double[] x, out double xbar)
	{
		int length = x.GetLength(0);
		xbar = 0.0;
		for (int i = 0; i < length; i++)
		{
			xbar += x[i];
		}
		xbar /= length;
		double num = 0.0;
		double num2 = 0.0;
		for (int j = 0; j < length; j++)
		{
			num2 = x[j] - xbar;
			num += num2 * num2;
		}
		return Math.Sqrt(num / (double)(length - 1));
	}

	public string ComputeSlope(string range)
	{
		string[] array = range.Split(ParseArgumentSeparator);
		int length = array.GetLength(0);
		if (length != 2)
		{
			return FormulaErrorStrings[wrong_number_arguments];
		}
		double[] doubleArray = GetDoubleArray(array[0]);
		double[] doubleArray2 = GetDoubleArray(array[1]);
		int length2 = doubleArray2.GetLength(0);
		if (length2 <= 2 || length2 != doubleArray.GetLength(0))
		{
			return FormulaErrorStrings[wrong_number_arguments];
		}
		double num = 0.0;
		double num2 = 0.0;
		for (int i = 0; i < length2; i++)
		{
			num += doubleArray2[i];
			num2 += doubleArray[i];
		}
		num /= (double)length2;
		num2 /= (double)length2;
		double num3 = 0.0;
		double num4 = 0.0;
		for (int j = 0; j < length2; j++)
		{
			double num5 = doubleArray2[j] - num;
			num3 += num5 * (doubleArray[j] - num2);
			num4 += num5 * num5;
		}
		return (num3 / num4).ToString();
	}

	public string ComputeSmall(string range)
	{
		string[] array = range.Split(ParseArgumentSeparator);
		int length = array.GetLength(0);
		if (length != 2)
		{
			return FormulaErrorStrings[wrong_number_arguments];
		}
		string valueFromArg = GetValueFromArg(array[1]);
		if (!double.TryParse(valueFromArg, NumberStyles.Integer, null, out var result))
		{
			return FormulaErrorStrings[invalid_arguments];
		}
		int num = (int)result;
		double[] doubleArray = GetDoubleArray(array[0]);
		if (num < 1 || num > doubleArray.GetLength(0))
		{
			return FormulaErrorStrings[invalid_arguments];
		}
		Array.Sort(doubleArray);
		return doubleArray[num - 1].ToString();
	}

	public string ComputeStandardize(string argList)
	{
		string[] array = argList.Split(ParseArgumentSeparator);
		int length = array.GetLength(0);
		if (length != 3)
		{
			return FormulaErrorStrings[wrong_number_arguments];
		}
		double result = 0.0;
		double num = 0.0;
		for (int i = 0; i < length; i++)
		{
			array[i] = GetValueFromArg(array[i]);
		}
		if (double.TryParse(array[0], out var result2) && double.TryParse(array[1], out var result3) && double.TryParse(array[2], out result))
		{
			num = (result2 - result3) / result;
		}
		return num.ToString();
	}

	public string ComputeStdev(string range)
	{
		double[] doubleArray = GetDoubleArray(range);
		int length = doubleArray.GetLength(0);
		if (length < 2)
		{
			return FormulaErrorStrings[invalid_arguments];
		}
		double xbar = 0.0;
		return sd(doubleArray, out xbar).ToString();
	}

	public string ComputeStdeva(string range)
	{
		double[] doubleArrayA = GetDoubleArrayA(range);
		int length = doubleArrayA.GetLength(0);
		if (length < 2)
		{
			return FormulaErrorStrings[invalid_arguments];
		}
		double xbar = 0.0;
		return sd(doubleArrayA, out xbar).ToString();
	}

	public string ComputeStdevp(string range)
	{
		double[] doubleArray = GetDoubleArray(range);
		int length = doubleArray.GetLength(0);
		if (length < 2)
		{
			return FormulaErrorStrings[invalid_arguments];
		}
		double xbar = 0.0;
		double num = sd(doubleArray, out xbar);
		return (num * Math.Sqrt(length - 1) / Math.Sqrt(length)).ToString();
	}

	public string ComputeStdevpa(string range)
	{
		double[] doubleArrayA = GetDoubleArrayA(range);
		int length = doubleArrayA.GetLength(0);
		if (length < 2)
		{
			return FormulaErrorStrings[invalid_arguments];
		}
		double xbar = 0.0;
		double num = sd(doubleArrayA, out xbar);
		return (num * Math.Sqrt(length - 1) / Math.Sqrt(length)).ToString();
	}

	public string ComputeSteyx(string range)
	{
		string[] array = range.Split(ParseArgumentSeparator);
		int length = array.GetLength(0);
		if (length != 2)
		{
			return FormulaErrorStrings[wrong_number_arguments];
		}
		double[] doubleArray = GetDoubleArray(array[0]);
		double[] doubleArray2 = GetDoubleArray(array[1]);
		int length2 = doubleArray2.GetLength(0);
		if (length2 <= 2 || length2 != doubleArray.GetLength(0))
		{
			return FormulaErrorStrings[wrong_number_arguments];
		}
		double num = 0.0;
		double num2 = 0.0;
		for (int i = 0; i < length2; i++)
		{
			num += doubleArray2[i];
			num2 += doubleArray[i];
		}
		num /= (double)length2;
		num2 /= (double)length2;
		double num3 = 0.0;
		double num4 = 0.0;
		double num5 = 0.0;
		double num6 = 0.0;
		double num7 = 0.0;
		for (int j = 0; j < length2; j++)
		{
			num7 = doubleArray2[j] - num;
			num6 = doubleArray[j] - num2;
			num3 += num7 * num6;
			num4 += num7 * num7;
			num5 += num6 * num6;
		}
		return Math.Sqrt((num5 - num3 * num3 / num4) / (double)(length2 - 2)).ToString();
	}

	public string ComputeTrimmean(string range)
	{
		string[] array = range.Split(ParseArgumentSeparator);
		int length = array.GetLength(0);
		if (length != 2)
		{
			return FormulaErrorStrings[wrong_number_arguments];
		}
		string valueFromArg = GetValueFromArg(array[1]);
		if (!double.TryParse(valueFromArg, out var result))
		{
			return FormulaErrorStrings[invalid_arguments];
		}
		double[] doubleArray = GetDoubleArray(array[0]);
		int length2 = doubleArray.GetLength(0);
		int num = (int)(result * (double)length2);
		num /= 2;
		if (num < 1 || 2 * num >= length2)
		{
			return FormulaErrorStrings[invalid_arguments];
		}
		Array.Sort(doubleArray);
		double num2 = 0.0;
		length2 -= num;
		for (int i = num; i < length2; i++)
		{
			num2 += doubleArray[i];
		}
		return (num2 / (double)(length2 - num)).ToString();
	}

	public string ComputeVar(string range)
	{
		double[] doubleArray = GetDoubleArray(range);
		return var(doubleArray).ToString();
	}

	private double[] GetDoubleArray(string range)
	{
		string text = string.Empty;
		ArrayList arrayList = new ArrayList();
		string[] array = range.Split(ParseArgumentSeparator);
		foreach (string text2 in array)
		{
			double result;
			if (text2.IndexOf(':') > -1)
			{
				string[] cellsFromArgs = GetCellsFromArgs(text2);
				foreach (string arg in cellsFromArgs)
				{
					try
					{
						text = GetValueFromArg(arg);
					}
					catch
					{
					}
					if (text.Length > 0 && double.TryParse(text, NumberStyles.Number | NumberStyles.AllowExponent, null, out result))
					{
						arrayList.Add(result);
					}
				}
			}
			else
			{
				try
				{
					text = GetValueFromArg(text2);
				}
				catch
				{
				}
				if (text.Length > 0 && double.TryParse(text, NumberStyles.Number | NumberStyles.AllowExponent, null, out result))
				{
					arrayList.Add(result);
				}
			}
		}
		return (double[])arrayList.ToArray(typeof(double));
	}

	private double[] GetDoubleArrayA(string range)
	{
		string text = string.Empty;
		ArrayList arrayList = new ArrayList();
		string[] array = range.Split(ParseArgumentSeparator);
		foreach (string text2 in array)
		{
			if (text2.IndexOf(':') > -1)
			{
				string[] cellsFromArgs = GetCellsFromArgs(text2);
				foreach (string arg in cellsFromArgs)
				{
					try
					{
						text = GetValueFromArg(arg);
					}
					catch
					{
					}
					if (text.Length > 0)
					{
						double result = 0.0;
						if (text.ToUpper() == TRUEVALUESTR)
						{
							result = 1.0;
						}
						else
						{
							double.TryParse(text, NumberStyles.Number | NumberStyles.AllowExponent, null, out result);
						}
						arrayList.Add(result);
					}
				}
				continue;
			}
			try
			{
				text = GetValueFromArg(text2);
			}
			catch
			{
			}
			if (text.Length > 0)
			{
				double result = 0.0;
				if (text.ToUpper() == TRUEVALUESTR)
				{
					result = 1.0;
				}
				else
				{
					double.TryParse(text, NumberStyles.Number | NumberStyles.AllowExponent, null, out result);
				}
				arrayList.Add(result);
			}
		}
		return (double[])arrayList.ToArray(typeof(double));
	}

	public string ComputeVara(string range)
	{
		double[] doubleArrayA = GetDoubleArrayA(range);
		return var(doubleArrayA).ToString();
	}

	public string ComputeVarp(string range)
	{
		double[] doubleArray = GetDoubleArray(range);
		int length = doubleArray.GetLength(0);
		return ((double)(length - 1) * var(doubleArray) / (double)length).ToString();
	}

	public string ComputeVarpa(string range)
	{
		double[] doubleArrayA = GetDoubleArrayA(range);
		int length = doubleArrayA.GetLength(0);
		return ((double)(length - 1) * var(doubleArrayA) / (double)length).ToString();
	}

	public string ComputeWeibull(string argList)
	{
		string[] array = argList.Split(ParseArgumentSeparator);
		int length = array.GetLength(0);
		if (length != 4 && length != 3)
		{
			return FormulaErrorStrings[wrong_number_arguments];
		}
		double num = 0.0;
		double num2 = 0.0;
		for (int i = 0; i < length; i++)
		{
			array[i] = GetValueFromArg(array[i]);
		}
		if (double.TryParse(array[0], out var result) && double.TryParse(array[1], out var result2) && double.TryParse(array[2], out var result3))
		{
			if (length != 3)
			{
				num = ((array[3] == TRUEVALUESTR || array[3] == "1") ? 1 : 0);
			}
			num2 = ((num != 0.0) ? (1.0 - Math.Exp(0.0 - Math.Pow(result / result3, result2))) : (result2 / Math.Pow(result3, result2) * Math.Pow(result, result2 - 1.0) * Math.Exp(0.0 - Math.Pow(result / result3, result2))));
		}
		return num2.ToString();
	}

	public string ComputeZtest(string range)
	{
		string[] array = range.Split(ParseArgumentSeparator);
		int length = array.GetLength(0);
		if (length != 2 && length != 3)
		{
			return FormulaErrorStrings[wrong_number_arguments];
		}
		string valueFromArg = GetValueFromArg(array[1]);
		if (!double.TryParse(valueFromArg, out var result))
		{
			return FormulaErrorStrings[invalid_arguments];
		}
		double[] doubleArray = GetDoubleArray(array[0]);
		double xbar;
		double result2 = sd(doubleArray, out xbar);
		if (length == 3)
		{
			double.TryParse(valueFromArg, out result2);
		}
		return (1.0 - normaldist((xbar - result) / (result2 / Math.Sqrt(doubleArray.GetLength(0))), 0.0, 1.0)).ToString();
	}

	public string ComputeHLookUp(string range)
	{
		string[] array = range.Split(ParseArgumentSeparator);
		string valueFromArg = GetValueFromArg(array[0]);
		valueFromArg = valueFromArg.Replace(TIC, string.Empty).ToUpper();
		string text = array[1];
		string s = GetValueFromArg(array[2]).ToString().ToUpper();
		double result = 0.0;
		if (!double.TryParse(s, out result))
		{
			return "#N/A";
		}
		int num = (int)result;
		bool flag = true;
		if (array.GetLength(0) == 4)
		{
			string valueFromArg2 = GetValueFromArg(array[3]);
			flag = valueFromArg2 == TRUEVALUESTR || valueFromArg2 == "1";
		}
		bool flag2 = flag && double.TryParse(valueFromArg, out result);
		int num2 = text.IndexOf(":");
		if (num2 == -1)
		{
			text = text + ":" + text;
			num2 = text.IndexOf(":");
		}
		int num3 = text.Substring(0, num2).LastIndexOf('!');
		GridModel gridModel = grid;
		GridSheetFamilyItem sheetFamilyItem = GetSheetFamilyItem(grid);
		if (num3 > -1)
		{
			grid = (GridModel)sheetFamilyItem.TokenToGridModel[text.Substring(0, num3 + 1)];
		}
		int num4 = RowIndex(text.Substring(0, num2));
		int num5 = ColIndex(text.Substring(0, num2));
		RowIndex(text.Substring(num2 + 1));
		int num6 = ColIndex(text.Substring(num2 + 1));
		string empty = string.Empty;
		int colIndex = num5;
		string text2 = string.Empty;
		double result2 = 0.0;
		for (int i = num5; i <= num6; colIndex = i, i++)
		{
			text2 = grid[num4, i].FormattedText.ToUpper().Replace("\"", string.Empty);
			if (!(text2 == valueFromArg))
			{
				if (!flag)
				{
					continue;
				}
				bool num7;
				if (!flag2)
				{
					num7 = text2.CompareTo(valueFromArg) > 0;
				}
				else
				{
					if (!double.TryParse(text2, out result2))
					{
						continue;
					}
					num7 = result2.CompareTo(result) > 0;
				}
				if (!num7)
				{
					continue;
				}
			}
			if (text2 == valueFromArg)
			{
				colIndex = i;
			}
			break;
		}
		if (flag || text2 == valueFromArg)
		{
			empty = grid[num + num4 - 1, colIndex].FormattedText;
			if (empty.Length > 0 && empty[0] == formulaChar)
			{
				empty = Parse(empty);
			}
			result = 0.0;
			if (empty.Length > 0 && empty[0] != TIC[0] && !double.TryParse(empty, out result))
			{
				empty = TIC + empty + TIC;
			}
		}
		else
		{
			empty = "#N/A";
		}
		grid = gridModel;
		return empty;
	}

	public string ComputeVLookUp(string range)
	{
		string[] array = range.Split(ParseArgumentSeparator);
		string valueFromArg = GetValueFromArg(array[0]);
		valueFromArg = valueFromArg.Replace(TIC, string.Empty).ToUpper();
		string text = array[1];
		string text2 = GetValueFromArg(array[2]).ToString().Replace("\"", string.Empty);
		double result = 0.0;
		if (!double.TryParse(text2, out result) || text2 == "NaN")
		{
			return "#N/A";
		}
		int num = (int)result;
		bool flag = true;
		if (array.GetLength(0) == 4)
		{
			string valueFromArg2 = GetValueFromArg(array[3]);
			flag = valueFromArg2 == TRUEVALUESTR || valueFromArg2 == "1";
		}
		bool flag2 = flag && double.TryParse(valueFromArg, out result);
		int num2 = text.IndexOf(":");
		if (num2 == -1)
		{
			text = text + ":" + text;
			num2 = text.IndexOf(":");
		}
		int num3 = text.Substring(0, num2).LastIndexOf('!');
		GridModel gridModel = grid;
		GridSheetFamilyItem sheetFamilyItem = GetSheetFamilyItem(grid);
		if (num3 > -1)
		{
			grid = (GridModel)sheetFamilyItem.TokenToGridModel[text.Substring(0, num3 + 1)];
		}
		int num4 = RowIndex(text.Substring(0, num2));
		int num5 = ColIndex(text.Substring(0, num2));
		int num6 = RowIndex(text.Substring(num2 + 1));
		ColIndex(text.Substring(num2 + 1));
		string empty = string.Empty;
		int num7 = num4;
		string text3 = string.Empty;
		double result2 = 0.0;
		for (int i = num4; i <= num6; num7 = i, i++)
		{
			text3 = grid[i, num5].FormattedText.ToUpper().Replace("\"", string.Empty);
			if (!(text3 == valueFromArg))
			{
				if (!flag)
				{
					continue;
				}
				bool num8;
				if (!flag2)
				{
					num8 = text3.CompareTo(valueFromArg) > 0;
				}
				else
				{
					if (!double.TryParse(text3, out result2))
					{
						continue;
					}
					num8 = result2.CompareTo(result) > 0;
				}
				if (!num8)
				{
					continue;
				}
			}
			if (text3.ToUpper() == valueFromArg)
			{
				num7 = i;
			}
			break;
		}
		if ((flag && num7 != num4) || text3 == valueFromArg)
		{
			empty = grid[num7, num + num5 - 1].FormattedText;
			if (empty.Length > 0 && empty[0] == formulaChar)
			{
				empty = Parse(empty);
			}
			result = 0.0;
			if (empty.Length > 0 && empty[0] != TIC[0] && !double.TryParse(empty, out result))
			{
				empty = TIC + empty + TIC;
			}
		}
		else
		{
			empty = "#N/A";
		}
		grid = gridModel;
		return empty;
	}

	public string ComputeLeft(string range)
	{
		string[] array = range.Split(ParseArgumentSeparator);
		int length = array.GetLength(0);
		if (length != 1 && length != 2)
		{
			return FormulaErrorStrings[wrong_number_arguments];
		}
		string arg = array[0];
		arg = GetValueFromArg(arg);
		bool flag = arg.StartsWith(TIC) && arg.EndsWith(TIC);
		string s = ((length == 2) ? array[1] : "1");
		int num = int.Parse(s) + (flag ? 1 : 0);
		num = ((arg.Length >= num) ? num : arg.Length);
		arg = arg.Substring(0, num);
		if (flag && !arg.EndsWith(TIC))
		{
			arg += TIC;
		}
		return arg;
	}

	public string ComputeLen(string range)
	{
		string[] array = range.Split(ParseArgumentSeparator);
		int length = array.GetLength(0);
		if (length != 1)
		{
			return FormulaErrorStrings[wrong_number_arguments];
		}
		string arg = array[0];
		arg = GetValueFromArg(arg);
		return ((arg.StartsWith(TIC) && arg.EndsWith(TIC)) ? (arg.Length - 2) : arg.Length).ToString();
	}

	public string ComputeMid(string range)
	{
		string[] array = range.Split(ParseArgumentSeparator);
		int length = array.GetLength(0);
		if (length != 3)
		{
			return FormulaErrorStrings[wrong_number_arguments];
		}
		string arg = array[0];
		arg = GetValueFromArg(arg);
		bool flag = arg.StartsWith(TIC) && arg.EndsWith(TIC);
		string s = array[2];
		int num = int.Parse(s);
		s = array[1];
		int num2 = int.Parse(s) + (flag ? 1 : 0);
		if (num2 + num > arg.Length)
		{
			return FormulaErrorStrings[invalid_arguments];
		}
		arg = arg.Substring(num2, num);
		if (flag && !arg.StartsWith(TIC))
		{
			arg = TIC + arg;
		}
		if (flag && !arg.EndsWith(TIC))
		{
			arg += TIC;
		}
		return arg;
	}

	public string ComputeRight(string range)
	{
		string[] array = range.Split(ParseArgumentSeparator);
		int length = array.GetLength(0);
		if (length != 1 && length != 2)
		{
			return FormulaErrorStrings[wrong_number_arguments];
		}
		string arg = array[0];
		arg = GetValueFromArg(arg);
		bool flag = arg.StartsWith(TIC) && arg.EndsWith(TIC);
		string s = ((length == 2) ? array[1] : "1");
		int num = int.Parse(s) + (flag ? 1 : 0);
		int startIndex = ((arg.Length >= num) ? (arg.Length - num) : 0);
		arg = arg.Substring(startIndex);
		if (flag && !arg.StartsWith(TIC))
		{
			arg = TIC + arg;
		}
		return arg;
	}

	public bool IsSeparatorInTIC(string s)
	{
		int i = s.IndexOf(TIC) + 1;
		bool flag = true;
		for (; i > 0 && i < s.Length; i++)
		{
			if (s[i] == ParseArgumentSeparator && flag)
			{
				return true;
			}
			if (s[i] == TIC[0])
			{
				flag = !flag;
			}
		}
		return false;
	}

	public string[] GetStringArray(string s)
	{
		List<string> list = new List<string>();
		int num = 0;
		bool flag = false;
		for (int i = 0; i < s.Length; i++)
		{
			char c = s[i];
			if (c == TIC[0])
			{
				flag = !flag;
			}
			else if (!flag && c == ParseArgumentSeparator)
			{
				list.Add(s.Substring(num, i - num));
				num = i + 1;
			}
		}
		list.Add(s.Substring(num));
		string[] array = new string[list.Count];
		list.CopyTo(array);
		return array;
	}

	public string ComputeConcatenate(string range)
	{
		string text = string.Empty;
		string[] array = (IsSeparatorInTIC(range) ? GetStringArray(range) : range.Split(ParseArgumentSeparator));
		string[] array2 = array;
		foreach (string text2 in array2)
		{
			if (text2.Length > 0 && text2[0] == TIC[0])
			{
				string empty = string.Empty;
				empty = text2.Replace(TIC, string.Empty);
				text += empty;
			}
			else
			{
				text += GetValueFromArg(text2);
			}
		}
		if (text.IndexOf("#N/A") > -1)
		{
			return "#N/A";
		}
		return TIC + text + TIC;
	}

	public string ComputeIndex(string arg)
	{
		string empty = string.Empty;
		string arg2 = string.Empty;
		string empty2 = string.Empty;
		bool flag = false;
		int num = -1;
		int nCol = -1;
		int num2 = -1;
		int num3 = -1;
		int num4 = -1;
		int num5 = -1;
		if (arg[arg.Length - 1] == 'b')
		{
			arg = GetValueFromArg(arg);
		}
		string[] array = arg.Split(ParseArgumentSeparator);
		int length = array.GetLength(0);
		empty2 = grid.Model[RowIndex(cell), ColIndex(cell)].Text;
		empty2 = empty2.ToUpper();
		if (empty2.Contains(ActiveFunctionName))
		{
			if (empty2.IndexOf(ActiveFunctionName) - 2 != -1)
			{
				string text = string.Empty;
				for (int num6 = empty2.IndexOf(ActiveFunctionName) - 2; num6 >= 0; num6--)
				{
					text = empty2[num6] + text;
					if (text.Equals("SUM"))
					{
						flag = true;
						break;
					}
				}
			}
			else
			{
				empty2 = empty2.Replace("=" + ActiveFunctionName, string.Empty);
				SwapInnerParens(ref empty2);
			}
		}
		if (empty2.Contains("{") && empty2.Contains("}"))
		{
			string text2 = string.Empty;
			for (int i = empty2.IndexOf('{') + 1; i < empty2.IndexOf('}'); i++)
			{
				text2 += empty2[i];
			}
			string[] array2 = text2.Split(ParseArgumentSeparator);
			int length2 = array2.GetLength(0);
			int num7 = 0;
			if (length < 2 || length > length2 + 3 || length == length2)
			{
				return FormulaErrorStrings[wrong_number_arguments];
			}
			if (length2 >= 1)
			{
				num7 = length - length2;
				if (num7 == 2)
				{
					string text3 = array2[0].ToUpper().Replace(TIC, string.Empty);
					string[] array3 = text3.Split(new char[1] { ':' }, StringSplitOptions.RemoveEmptyEntries);
					if (array3.Length == 2 && ColIndex(array3[1]) != ColIndex(array3[0]))
					{
						return FormulaErrorStrings[wrong_number_arguments];
					}
					empty = array2[0];
				}
				else
				{
					if (int.Parse(array[length - 1]) > length2)
					{
						return "#REF!";
					}
					if (int.Parse(array[length - 1]) <= 0)
					{
						return "#VALUE!";
					}
					empty = array2[int.Parse(array[length - 1]) - 1];
				}
				empty = empty.Replace(TIC, "");
				int num8 = empty.IndexOf(":");
				if (num8 == -1)
				{
					return FormulaErrorStrings[invalid_arguments];
				}
				if (arg.IndexOf("#N/A") > -1 || arg.IndexOf("#N~A") > -1)
				{
					return "#N/A";
				}
				arg2 = SheetToken(array[length2 - 1].Replace(TIC, string.Empty));
				num = ((num7 == 1) ? 1 : (double.TryParse(GetValueFromArg(array[length2]), NumberStyles.Integer, null, out var result) ? ((int)result) : (-1)));
				nCol = ((num7 <= 2) ? 1 : (double.TryParse(GetValueFromArg(array[length2 + 1]), NumberStyles.Integer, null, out result) ? ((int)result) : (-1)));
				if (num <= 0 || nCol <= 0)
				{
					return "#VALUE!";
				}
				num2 = RowIndex(empty.Substring(0, num8));
				num3 = RowIndex(empty.Substring(num8 + 1));
				num4 = ColIndex(empty.Substring(0, num8));
				num5 = ColIndex(empty.Substring(num8 + 1));
				if (num > num3 - num2 + 1 || nCol > num5 - num4 + 1)
				{
					return "#REF!";
				}
				num = RowIndex(empty.Substring(0, num8)) + num - 1;
				nCol = ColIndex(empty.Substring(0, num8)) + nCol - 1;
			}
		}
		else
		{
			switch (length)
			{
			default:
				return FormulaErrorStrings[wrong_number_arguments];
			case 2:
			{
				string text5 = array[0].ToUpper().Replace(TIC, string.Empty);
				string[] array5 = text5.Split(new char[1] { ':' }, StringSplitOptions.RemoveEmptyEntries);
				if (array5.Length == 2 && ColIndex(array5[1]) != ColIndex(array5[0]) && RowIndex(array5[1]) != RowIndex(array5[0]))
				{
					return FormulaErrorStrings[invalid_expression];
				}
				if (!int.TryParse(array[1], out var _))
				{
					return FormulaErrorStrings[invalid_expression];
				}
				break;
			}
			case 4:
			{
				if (!int.TryParse(array[length - 1], out var result2))
				{
					break;
				}
				if (result2 <= 0)
				{
					return "#VALUE!";
				}
				if (result2 > 1)
				{
					return "#REF!";
				}
				if (!flag)
				{
					break;
				}
				flag = false;
				string text4 = array[0].ToUpper().Replace(TIC, string.Empty);
				string[] array4 = text4.Split(new char[1] { ':' }, StringSplitOptions.RemoveEmptyEntries);
				if (array4.Length == 2)
				{
					int num9 = RowIndex(array4[0]);
					int result3 = -1;
					string empty3 = string.Empty;
					string empty4 = string.Empty;
					if (int.TryParse(array[length - 2], out result3))
					{
						empty4 = GridRangeInfo.GetAlphaLabel(result3);
						return empty4 + num9 + ":" + array4[1];
					}
				}
				flag = false;
				break;
			}
			case 3:
				break;
			}
			empty = array[0];
			empty = empty.Replace(TIC, "");
			int num10 = empty.IndexOf(":");
			if (num10 == -1)
			{
				return FormulaErrorStrings[invalid_arguments];
			}
			if (arg.IndexOf("#N/A") > -1 || arg.IndexOf("#N~A") > -1)
			{
				return "#N/A";
			}
			arg2 = SheetToken(array[0].Replace(TIC, string.Empty));
			num = ((length == 1) ? 1 : (double.TryParse(GetValueFromArg(array[1]), NumberStyles.Integer, null, out var result5) ? ((int)result5) : (-1)));
			nCol = ((length <= 2) ? 1 : (double.TryParse(GetValueFromArg(array[2]), NumberStyles.Integer, null, out result5) ? ((int)result5) : (-1)));
			if (num == -1 || nCol == -1)
			{
				return "#REF!";
			}
			num2 = RowIndex(empty.Substring(0, num10));
			num3 = RowIndex(empty.Substring(num10 + 1));
			num4 = ColIndex(empty.Substring(0, num10));
			num5 = ColIndex(empty.Substring(num10 + 1));
			if (num > num3 - num2 + 1 || nCol > num5 - num4 + 1)
			{
				return "#REF!";
			}
			num = RowIndex(empty.Substring(0, num10)) + num - 1;
			nCol = ColIndex(empty.Substring(0, num10)) + nCol - 1;
		}
		return GetValueFromArg(string.Format("{2}{0}{1}", GridRangeInfo.GetAlphaLabel(nCol), num, arg2));
	}

	public string ComputeIndirect(string args)
	{
		if (args[args.Length - 1] == 'b')
		{
			args = GetValueFromArg(args);
		}
		string[] array = args.Split(ParseArgumentSeparator);
		if (array.Length == 0 || array.Length > 2)
		{
			throw new ArgumentException("No. of argument cant be less than 1 or more than 2.");
		}
		array[0] = array[0].ToUpper();
		PutTokensForSheets(ref array[0]);
		string text = SheetToken(array[0].Replace(TIC, string.Empty));
		if (!string.IsNullOrEmpty(text))
		{
			array[0] = array[0].Replace(text, string.Empty);
		}
		if (array.Length == 2 && array[1] == FALSEVALUESTR)
		{
			bool flag = array[0].StartsWith(TIC) && array[0].EndsWith(TIC);
			string text2 = array[0].ToUpper().Replace(TIC, string.Empty);
			string[] array2 = text2.Split(new char[1] { ':' }, StringSplitOptions.RemoveEmptyEntries);
			string[] array3 = array2[0].Split(new char[2] { 'R', 'C' }, StringSplitOptions.RemoveEmptyEntries);
			if (array2.Length > 2)
			{
				return "#REF!";
			}
			array[0] = GridRangeInfo.GetAlphaLabel(Convert.ToInt32(array3[1])) + array3[0];
			if (array2.Length == 2)
			{
				string text3 = SheetToken(array2[1]);
				if (!string.IsNullOrEmpty(text3))
				{
					array2[1] = array2[1].Replace(text3, string.Empty);
				}
				array3 = array2[1].Split(new char[2] { 'R', 'C' }, StringSplitOptions.RemoveEmptyEntries);
				string[] array4;
				(array4 = array)[0] = array4[0] + ":" + GridRangeInfo.GetAlphaLabel(Convert.ToInt32(array3[1])) + array3[0];
			}
			if (flag)
			{
				array[0] = TIC + array[0] + TIC;
			}
		}
		string text4 = string.Empty;
		if (array[0].StartsWith(TIC))
		{
			text4 = text + array[0].Replace(TIC, string.Empty);
		}
		else if (IsCellReference(array[0]))
		{
			text4 = GetValueFromArg(text + array[0]);
		}
		if (!IsCellReference(text4))
		{
			if (!NamedRanges.Contains(text4.ToUpper()))
			{
				return "#REF!";
			}
			text4 = Convert.ToString(NamedRanges[text4.ToUpper()]);
		}
		if (text4.Contains(":"))
		{
			return text4;
		}
		return GetValueFromArg(text4);
	}

	public string ComputeSubstitute(string range)
	{
		string[] array = range.Split(ParseArgumentSeparator);
		if (array.Length != 3 && array.Length != 4)
		{
			return FormulaErrorStrings[wrong_number_arguments];
		}
		string text = StripTics0(GetValueFromArg(array[0]));
		string text2 = StripTics0(GetValueFromArg(array[1]));
		string text3 = StripTics0(GetValueFromArg(array[2]));
		if (array.Length == 3)
		{
			text = text.Replace(text2, text3);
		}
		else
		{
			string valueFromArg = GetValueFromArg(array[3]);
			double result = 0.0;
			if (double.TryParse(valueFromArg, NumberStyles.Integer, null, out result))
			{
				int num = (int)result;
				int num2 = -1;
				while (num > 0 && (num2 = text.IndexOf(text2, num2 + 1)) > -1)
				{
					num--;
				}
				if (num == 0)
				{
					text = text.Substring(0, num2) + text3 + text.Substring(num2 + text2.Length);
				}
			}
		}
		return TIC + text + TIC;
	}

	private string StripTics0(string s)
	{
		if (s.Length > 1 && s[0] == TIC[0] && s[s.Length - 1] == TIC[0])
		{
			s = s.Substring(1, s.Length - 2);
		}
		return s;
	}

	public string ComputeProduct(string range)
	{
		double num = 1.0;
		bool flag = true;
		string[] array = range.Split(ParseArgumentSeparator);
		foreach (string text in array)
		{
			double result;
			if (text.IndexOf(':') > -1)
			{
				string[] cellsFromArgs = GetCellsFromArgs(text);
				foreach (string arg in cellsFromArgs)
				{
					string valueFromArg;
					try
					{
						valueFromArg = GetValueFromArg(arg, returnString: true);
					}
					catch (Exception ex)
					{
						return ex.Message;
					}
					if (valueFromArg.Length > 0 && double.TryParse(valueFromArg, out result))
					{
						num *= result;
						flag = false;
					}
				}
			}
			else if (double.TryParse(GetValueFromArg(text), out result))
			{
				num *= result;
				flag = false;
			}
		}
		if (!flag)
		{
			return num.ToString();
		}
		return "0";
	}

	public string ComputeText(string range)
	{
		string arg = range.Split(ParseArgumentSeparator)[0];
		string text = range.Split(ParseArgumentSeparator)[1].Replace(TIC, string.Empty);
		arg = GetValueFromArg(arg);
		if (double.TryParse(arg, out var result))
		{
			arg = result.ToString(text);
			if (arg == text)
			{
				text = text.Replace('m', 'M').Replace('Y', 'y').Replace('D', 'd');
				arg = DateTime.FromOADate(result).ToString(text);
			}
		}
		return TIC + arg + TIC;
	}

	public string ComputeValue(string range)
	{
		return ComputedValue(range);
	}

	public string ComputeMod(string range)
	{
		string arg = range.Split(ParseArgumentSeparator)[0];
		string arg2 = range.Split(ParseArgumentSeparator)[1];
		arg = GetValueFromArg(arg);
		arg2 = GetValueFromArg(arg2);
		int num = int.Parse(arg2);
		return (Math.Sign(num) * Math.Abs(int.Parse(arg) % num)).ToString();
	}

	public string ComputeInt(string range)
	{
		range = GetValueFromArg(range);
		if (double.TryParse(range, out var result))
		{
			double num = ((!(result < 0.0)) ? 1 : (-1));
			double num2 = ((result < 0.0) ? 1 : 0);
			return (num * Math.Floor(num2 + Math.Abs(result))).ToString("F0");
		}
		return "0";
	}

	public string ComputeTrunc(string range)
	{
		string[] array = range.Split(ParseArgumentSeparator);
		int length = array.GetLength(0);
		double result = 0.0;
		if (length == 2)
		{
			double.TryParse(GetValueFromArg(array[1]), NumberStyles.Integer, null, out result);
		}
		range = GetValueFromArg(array[0]);
		if (double.TryParse(range, out var result2))
		{
			string text = ((result == 0.0) ? "F0" : ("0." + new string('0', (int)result)));
			double num = Math.Pow(10.0, result);
			double num2 = ((!(result2 < 0.0)) ? 1 : (-1));
			return (num2 * Math.Floor(num * Math.Abs(result2)) / num).ToString(text);
		}
		return "0";
	}

	public string ComputeSumProduct(string range)
	{
		double num = 0.0;
		int num2 = 0;
		double[] array = null;
		string[] array2 = range.Split(ParseArgumentSeparator);
		foreach (string text in array2)
		{
			if (text.IndexOf(':') <= -1)
			{
				break;
			}
			int num3 = text.IndexOf(":");
			int num4 = RowIndex(text.Substring(0, num3));
			int num5 = ColIndex(text.Substring(0, num3));
			int num6 = RowIndex(text.Substring(num3 + 1));
			int num7 = ColIndex(text.Substring(num3 + 1));
			if (array == null)
			{
				num2 = (num6 - num4 + 1) * (num7 - num5 + 1);
				array = new double[num2];
				for (num3 = 0; num3 < num2; num3++)
				{
					array[num3] = 1.0;
				}
			}
			int num8 = 0;
			string[] cellsFromArgs = GetCellsFromArgs(text);
			foreach (string arg in cellsFromArgs)
			{
				string valueFromArg;
				try
				{
					valueFromArg = GetValueFromArg(arg);
				}
				catch (Exception ex)
				{
					return ex.Message;
				}
				if (valueFromArg.Length > 0)
				{
					if (double.TryParse(valueFromArg, NumberStyles.Number | NumberStyles.AllowExponent, null, out var result))
					{
						array[num8] *= result;
					}
				}
				else if (valueFromArg.Equals(string.Empty))
				{
					array[num8] = 0.0;
				}
				num8++;
			}
		}
		for (int k = 0; k < num2; k++)
		{
			num += array[k];
		}
		return num.ToString();
	}

	public string ComputeIsError(string range)
	{
		if (range.StartsWith(TIC.ToString()))
		{
			return FALSEVALUESTR;
		}
		try
		{
			range = GetValueFromArg(range).ToUpper().Replace(TIC, string.Empty);
		}
		catch
		{
			range = range.ToUpper();
		}
		if (range.StartsWith("NAN") || range.StartsWith("-NAN") || range.StartsWith("INFINITY") || range.StartsWith("-INFINITY") || range.StartsWith("#") || range.StartsWith("n#"))
		{
			return TRUEVALUESTR;
		}
		return FALSEVALUESTR;
	}

	public string ComputeIsNumber(string range)
	{
		try
		{
			range = GetValueFromArg(range);
		}
		catch
		{
		}
		if (double.TryParse(range, out var _))
		{
			return TRUEVALUESTR;
		}
		return FALSEVALUESTR;
	}

	public string ComputeFalse(string empty)
	{
		return FALSEVALUESTR;
	}

	public string ComputeTrue(string empty)
	{
		return TRUEVALUESTR;
	}

	public string ComputeDollar(string args)
	{
		string[] array = args.Split(ParseArgumentSeparator);
		string arg = array[0];
		string arg2 = "2";
		if (array.GetLength(0) == 2)
		{
			arg2 = array[1];
		}
		arg = GetValueFromArg(arg);
		arg2 = GetValueFromArg(arg2);
		double.TryParse(arg, out var result);
		if (!double.TryParse(arg2, out var result2))
		{
			result2 = 2.0;
		}
		NumberFormatInfo numberFormatInfo = (NumberFormatInfo)CultureInfo.CurrentCulture.NumberFormat.Clone();
		numberFormatInfo.CurrencyDecimalDigits = (int)result2;
		return string.Format(numberFormatInfo, "{0:C}", new object[1] { result });
	}

	public string ComputeFixed(string args)
	{
		string[] array = args.Split(ParseArgumentSeparator);
		string arg = array[0];
		string arg2 = "2";
		string arg3 = "FALSE";
		int length = array.GetLength(0);
		if (length > 1)
		{
			arg2 = array[1];
		}
		if (length > 2)
		{
			arg3 = array[2];
		}
		arg = GetValueFromArg(arg);
		arg2 = GetValueFromArg(arg2);
		arg3 = GetValueFromArg(arg3);
		double.TryParse(arg, out var result);
		if (!double.TryParse(arg2, out var result2))
		{
			result2 = 2.0;
		}
		bool flag;
		if (double.TryParse(arg3, out var result3))
		{
			flag = result3 != 0.0;
		}
		else if (arg3.ToUpper() == FALSEVALUESTR)
		{
			flag = false;
		}
		else
		{
			if (!(arg3.ToUpper() == TRUEVALUESTR))
			{
				return "#NAME?";
			}
			flag = true;
		}
		NumberFormatInfo numberFormatInfo = (NumberFormatInfo)CultureInfo.CurrentCulture.NumberFormat.Clone();
		numberFormatInfo.NumberDecimalDigits = (int)result2;
		if (flag)
		{
			numberFormatInfo.NumberGroupSeparator = string.Empty;
		}
		return string.Format(numberFormatInfo, "{0}{1:N}", new object[2] { UNIQUESTRINGMARKER, result });
	}

	public string ComputeLower(string args)
	{
		return GetValueFromArg(args).ToLower();
	}

	public string ComputeUpper(string args)
	{
		return GetValueFromArg(args).ToUpper();
	}

	public string ComputeTrim(string args)
	{
		string text = GetValueFromArg(args).Trim('"', ' ');
		int num = 0;
		while (text.Length != num)
		{
			num = text.Length;
			text = text.Replace("  ", " ");
		}
		return text;
	}

	public string ComputeIsLogical(string args)
	{
		string text = args.ToUpper();
		try
		{
			text = GetValueFromArg(args).ToUpper();
		}
		catch
		{
			return FALSEVALUESTR;
		}
		if (text == FALSEVALUESTR || text == TRUEVALUESTR || args.ToUpper() == FALSEVALUESTR || args.ToUpper() == TRUEVALUESTR)
		{
			return TRUEVALUESTR;
		}
		return FALSEVALUESTR;
	}

	public string ComputeIsNA(string args)
	{
		if (args.StartsWith(TIC.ToString()))
		{
			return FALSEVALUESTR;
		}
		try
		{
			args = GetValueFromArg(args).ToUpper();
		}
		catch
		{
			args = args.ToUpper();
		}
		if (args.StartsWith("#N/A"))
		{
			return TRUEVALUESTR;
		}
		return FALSEVALUESTR;
	}

	public string ComputeIsErr(string range)
	{
		if (range.StartsWith(TIC.ToString()))
		{
			return FALSEVALUESTR;
		}
		try
		{
			range = GetValueFromArg(range).ToUpper().Replace(TIC, string.Empty);
		}
		catch
		{
			range = range.ToUpper();
		}
		if ((range.StartsWith("NAN") || range.StartsWith("-NAN") || range.StartsWith("INFINITY") || range.StartsWith("-INFINITY") || range.StartsWith("#") || range.StartsWith("n#")) && !range.StartsWith("#N/A"))
		{
			return TRUEVALUESTR;
		}
		return FALSEVALUESTR;
	}

	public string ComputeIsBlank(string args)
	{
		if (args.Length == 0)
		{
			throw new ArgumentException("Argument cant be empty.");
		}
		try
		{
			if (GetValueFromArg(args).Equals(string.Empty))
			{
				return TRUEVALUESTR;
			}
		}
		catch
		{
			return FALSEVALUESTR;
		}
		return FALSEVALUESTR;
	}

	public string ComputeIsText(string args)
	{
		string valueFromArg;
		try
		{
			valueFromArg = GetValueFromArg(args);
		}
		catch
		{
			return FALSEVALUESTR;
		}
		if (valueFromArg.Length > 0 && !double.TryParse(valueFromArg, out var _) && valueFromArg.ToUpper() != FALSEVALUESTR && valueFromArg.ToUpper() != TRUEVALUESTR && !valueFromArg.StartsWith("NAN") && !valueFromArg.StartsWith("-NAN") && !valueFromArg.StartsWith("INFINITY") && !valueFromArg.StartsWith("-INFINITY") && !valueFromArg.StartsWith("#") && !valueFromArg.StartsWith("n#"))
		{
			return TRUEVALUESTR;
		}
		return FALSEVALUESTR;
	}

	public string ComputeIsNonText(string args)
	{
		if (ComputeIsText(args) == TRUEVALUESTR)
		{
			return FALSEVALUESTR;
		}
		return TRUEVALUESTR;
	}

	private bool IsCellReference(string args)
	{
		PutTokensForSheets(ref args);
		string text = SheetToken(args);
		if (!string.IsNullOrEmpty(text))
		{
			args = args.Replace(text, string.Empty);
		}
		bool flag = false;
		bool flag2 = false;
		if (args.IndexOf(':') != args.LastIndexOf(':'))
		{
			return false;
		}
		char[] array = args.ToCharArray();
		foreach (char c in array)
		{
			if (char.IsLetter(c))
			{
				if (flag2)
				{
					return false;
				}
				flag = true;
			}
			if (char.IsDigit(c))
			{
				if (!flag)
				{
					return false;
				}
				flag2 = true;
			}
			if (object.Equals(c, ':'))
			{
				flag = false;
				flag2 = false;
			}
		}
		if (flag && flag2)
		{
			return true;
		}
		return false;
	}

	private bool IsFormulaResultString(string formula, string cell)
	{
		int rowIndex = RowIndex(cell);
		int num = ColIndex(cell);
		GridStyleInfo gridStyleInfo = grid[rowIndex, num];
		if (gridStyleInfo.CellValueType == typeof(string))
		{
			return true;
		}
		if (gridStyleInfo.CellType == GridCellTypeName.FormulaCell)
		{
			string text = (cell.Equals(this.cell) ? ("=ISTEXT(" + formula + ")") : grid[rowIndex, num].Text);
			if (text.IndexOf(formulaChar) >= 0 && !text.Equals(formula) && IsCellReference(formula) && IsFormulaValid(formula, out var parsedFormula, out var _, out var computedValue))
			{
				if (computedValue.EndsWith("\""))
				{
					return true;
				}
				if (formula.Equals(parsedFormula) && !formula.Equals(computedValue))
				{
					rowIndex = RowIndex(parsedFormula);
					num = ColIndex(parsedFormula);
					text = grid[rowIndex, num].Text;
					if (text != string.Empty && !text.Equals(computedValue))
					{
						if (!RecurciveFormulaCheck(text, cell))
						{
							return false;
						}
						return true;
					}
				}
				cell = GridRangeInfo.GetAlphaLabel(num) + rowIndex;
				gridStyleInfo = grid[rowIndex, num];
			}
		}
		if (((gridStyleInfo.CellType == GridCellTypeName.TextBox || gridStyleInfo.CellType == GridCellTypeName.RichText || gridStyleInfo.CellType == GridCellTypeName.OriginalTextBox) && gridStyleInfo.CellValueType == null) || gridStyleInfo.CellValueType == typeof(string))
		{
			return true;
		}
		if (gridStyleInfo.CellValueType == null && gridStyleInfo.CellType == GridCellTypeName.FormulaCell)
		{
			string text2 = formula;
			if (cell.Equals(this.cell))
			{
				if (!formula.EndsWith("\""))
				{
					return false;
				}
			}
			else
			{
				text2 = GetValueFromArg(cell);
			}
			if (text2 == string.Empty)
			{
				return false;
			}
			if (text2.EndsWith("\""))
			{
				return true;
			}
			if (!double.TryParse(text2, out var _) && !text2.StartsWith("NAN") && !text2.StartsWith("-NAN") && !text2.StartsWith("INFINITY") && !text2.StartsWith("-INFINITY") && !text2.StartsWith("#") && !text2.StartsWith("n#"))
			{
				return true;
			}
		}
		return false;
	}

	private bool RecurciveFormulaCheck(string formula, string cell)
	{
		int rowIndex = RowIndex(cell);
		int colIndex = ColIndex(cell);
		GridStyleInfo gridStyleInfo = grid[rowIndex, colIndex];
		if (formula.Length == 0)
		{
			if (gridStyleInfo.CellValueType == null || gridStyleInfo.CellValueType == typeof(string))
			{
				return true;
			}
			return false;
		}
		int num = formula.IndexOf(')');
		if (num == formula.Length - 1)
		{
			int num2 = formula.IndexOf('(');
			if (formula.StartsWith("="))
			{
				formula = formula.Remove(0, 1);
			}
			string text = formula.Substring(0, num2 - 1).ToUpper().Trim();
			StringEnumerator enumerator = textFunctions.GetEnumerator();
			try
			{
				while (enumerator.MoveNext())
				{
					string current = enumerator.Current;
					if (text.Equals(current))
					{
						return true;
					}
				}
			}
			finally
			{
				if (enumerator is IDisposable disposable)
				{
					disposable.Dispose();
				}
			}
			return false;
		}
		if (formula.IndexOf('(') > 0)
		{
			return false;
		}
		Hashtable hashtable = (Hashtable)DependentFormulaCells[cell];
		if (hashtable == null)
		{
			if (IsFormulaResultString(formula, cell))
			{
				return true;
			}
			return false;
		}
		if (hashtable.Count > 0)
		{
			foreach (DictionaryEntry item in hashtable)
			{
				cell = (string)item.Value;
			}
			formula = grid[RowIndex(cell), ColIndex(cell)].Text;
			if (formula.IndexOf(formulaChar) == 0)
			{
				formula = formula.Remove(0, 1);
			}
			if (IsFormulaResultString(formula, cell))
			{
				return true;
			}
		}
		return false;
	}

	public virtual void InitLibraryFunctions()
	{
		libraryFunctions = new Hashtable();
		bool useCommonLibrary = UseCommonLibrary;
		UseCommonLibrary = false;
		AddFunction("Sum", ComputeSum);
		AddFunction("Avg", ComputeAvg);
		AddFunction("Max", ComputeMax);
		AddFunction("Min", ComputeMin);
		AddFunction("Pi", ComputePI);
		AddFunction("Sign", ComputeSign);
		AddFunction("Pow", ComputePow);
		AddFunction("Power", ComputePow);
		AddFunction("And", ComputeAnd);
		AddFunction("Or", ComputeOr);
		AddFunction("If", ComputeIf);
		AddFunction("Not", ComputeNot);
		AddFunction("False", ComputeFalse);
		AddFunction("True", ComputeTrue);
		AddFunction("Acos", ComputeAcos);
		AddFunction("Asin", ComputeAsin);
		AddFunction("Atan", ComputeAtan);
		AddFunction("Cos", ComputeCos);
		AddFunction("Sin", ComputeSin);
		AddFunction("Cosh", ComputeCosh);
		AddFunction("Sinh", ComputeSinh);
		AddFunction("Tanh", ComputeTanh);
		AddFunction("Round", ComputeRound);
		AddFunction("Ceiling", ComputeCeiling);
		AddFunction("Floor", ComputeFloor);
		AddFunction("Log", ComputeLog);
		AddFunction("Log10", ComputeLog10);
		AddFunction("Exp", ComputeExp);
		AddFunction("Sqrt", ComputeSqrt);
		AddFunction("Abs", ComputeAbs);
		AddFunction("Tan", ComputeTan);
		AddFunction("Rand", ComputeRand);
		AddFunction("SumIf", ComputeSumIf);
		AddFunction("HLookUp", ComputeHLookUp);
		AddFunction("VLookUp", ComputeVLookUp);
		AddFunction("Left", ComputeLeft);
		AddFunction("Len", ComputeLen);
		AddFunction("Mid", ComputeMid);
		AddFunction("Right", ComputeRight);
		AddFunction("Product", ComputeProduct);
		AddFunction("Value", ComputeValue);
		AddFunction("Mod", ComputeMod);
		AddFunction("Trunc", ComputeTrunc);
		AddFunction("SumProduct", ComputeSumProduct);
		AddFunction("Average", ComputeAvg);
		AddFunction("Int", ComputeInt);
		AddFunction("IsError", ComputeIsError);
		AddFunction("IsNumber", ComputeIsNumber);
		AddFunction("IsLogical", ComputeIsLogical);
		AddFunction("IsNA", ComputeIsNA);
		AddFunction("IsErr", ComputeIsErr);
		AddFunction("IsBlank", ComputeIsBlank);
		AddFunction("IsText", ComputeIsText);
		AddFunction("IsNonText", ComputeIsNonText);
		AddFunction("Dollar", ComputeDollar);
		AddFunction("Fixed", ComputeFixed);
		AddFunction("Lower", ComputeLower);
		AddFunction("Upper", ComputeUpper);
		AddFunction("Trim", ComputeTrim);
		AddFunction("Text", ComputeText);
		AddFunction("Concatenate", ComputeConcatenate);
		AddFunction("Substitute", ComputeSubstitute);
		textFunctions = new StringCollection();
		textFunctions.AddRange(new string[8] { "DOLLAR", "FIXED", "LOWER", "UPPER", "TRIM", "TEXT", "CONCATENATE", "SUBSTITUTE" });
		AddFunction("Index", ComputeIndex);
		AddFunction("Indirect", ComputeIndirect);
		AddFunction("Db", ComputeDb);
		AddFunction("Ddb", ComputeDdb);
		AddFunction("Fv", ComputeFv);
		AddFunction("Ipmt", ComputeIpmt);
		AddFunction("Irr", ComputeIrr);
		AddFunction("Xirr", ComputeXirr);
		AddFunction("Ispmt", ComputeIspmt);
		AddFunction("Mirr", ComputeMirr);
		AddFunction("Nper", ComputeNper);
		AddFunction("Npv", ComputeNpv);
		AddFunction("Pmt", ComputePmt);
		AddFunction("Ppmt", ComputePpmt);
		AddFunction("Pv", ComputePv);
		AddFunction("Rate", ComputeRate);
		AddFunction("Sln", ComputeSln);
		AddFunction("Syd", ComputeSyd);
		AddFunction("Vdb", ComputeVdb);
		AddFunction("Rand", ComputeRand);
		AddFunction("Acosh", ComputeAcosh);
		AddFunction("Asinh", ComputeAsinh);
		AddFunction("Atanh", ComputeAtanh);
		AddFunction("Atan2", ComputeAtan2);
		AddFunction("Combin", ComputeCombin);
		AddFunction("Degrees", ComputeDegrees);
		AddFunction("Even", ComputeEven);
		AddFunction("Fact", ComputeFact);
		AddFunction("Ln", ComputeLn);
		AddFunction("Odd", ComputeOdd);
		AddFunction("Radians", ComputeRadians);
		AddFunction("Round", ComputeRound);
		AddFunction("Rounddown", ComputeRounddown);
		AddFunction("Roundup", ComputeRoundup);
		AddFunction("Sumsq", ComputeSumsq);
		AddFunction("Sumx2my2", ComputeSumx2my2);
		AddFunction("Sumx2py2", ComputeSumx2py2);
		AddFunction("Sumxmy2", ComputeSumxmy2);
		AddFunction("Date", ComputeDate);
		AddFunction("Datevalue", ComputeDatevalue);
		AddFunction("Day", ComputeDay);
		AddFunction("Days360", ComputeDays360);
		AddFunction("Hour", ComputeHour);
		AddFunction("Minute", ComputeMinute);
		AddFunction("Second", ComputeSecond);
		AddFunction("Month", ComputeMonth);
		AddFunction("Now", ComputeNow);
		AddFunction("Time", ComputeTime);
		AddFunction("Timevalue", ComputeTimevalue);
		AddFunction("Today", ComputeToday);
		AddFunction("Weekday", ComputeWeekday);
		AddFunction("Year", ComputeYear);
		AddFunction("Avedev", ComputeAvedev);
		AddFunction("Averagea", ComputeAveragea);
		AddFunction("Gammaln", ComputeGammaln);
		AddFunction("Gammadist", ComputeGammadist);
		AddFunction("Gammainv", ComputeGammainv);
		AddFunction("Geomean", ComputeGeomean);
		AddFunction("Harmean", ComputeHarmean);
		AddFunction("Hypgeomdist", ComputeHypgeomdist);
		AddFunction("Intercept", ComputeIntercept);
		AddFunction("Binomdist", ComputeBinomdist);
		AddFunction("Chidist", ComputeChidist);
		AddFunction("Chiinv", ComputeChiinv);
		AddFunction("Chitest", ComputeChitest);
		AddFunction("Normdist", ComputeNormdist);
		AddFunction("Norminv", ComputeNorminv);
		AddFunction("NormsInv", ComputeNormsInv);
		AddFunction("NormsDist", ComputeNormsDist);
		AddFunction("Confidence", ComputeConfidence);
		AddFunction("Correl", ComputeCorrel);
		AddFunction("Count", ComputeCount);
		AddFunction("Counta", ComputeCounta);
		AddFunction("Countblank", ComputeCountblank);
		AddFunction("Countif", ComputeCountif);
		AddFunction("Covar", ComputeCovar);
		AddFunction("CritBinom", ComputeCritbinom);
		AddFunction("Devsq", ComputeDevsq);
		AddFunction("Expondist", ComputeExpondist);
		AddFunction("Fdist", ComputeFdist);
		AddFunction("Finv", ComputeFinv);
		AddFunction("Fisher", ComputeFisher);
		AddFunction("Fisherinv", ComputeFisherinv);
		AddFunction("Forecast", ComputeForecast);
		AddFunction("Kurt", ComputeKurt);
		AddFunction("Large", ComputeLarge);
		AddFunction("Lognormdist", ComputeLognormdist);
		AddFunction("Loginv", ComputeLoginv);
		AddFunction("Maxa", ComputeMaxa);
		AddFunction("Median", ComputeMedian);
		AddFunction("Mina", ComputeMina);
		AddFunction("Mode", ComputeMode);
		AddFunction("Negbinomdist", ComputeNegbinomdist);
		AddFunction("Pearson", ComputePearson);
		AddFunction("Percentile", ComputePercentile);
		AddFunction("Percentrank", ComputePercentrank);
		AddFunction("Permut", ComputePermut);
		AddFunction("Poisson", ComputePoisson);
		AddFunction("Prob", ComputeProb);
		AddFunction("Quartile", ComputeQuartile);
		AddFunction("Rank", ComputeRank);
		AddFunction("Rsq", ComputeRsq);
		AddFunction("Skew", ComputeSkew);
		AddFunction("Slope", ComputeSlope);
		AddFunction("Small", ComputeSmall);
		AddFunction("Standardize", ComputeStandardize);
		AddFunction("Stdev", ComputeStdev);
		AddFunction("Stdeva", ComputeStdeva);
		AddFunction("Stdevp", ComputeStdevp);
		AddFunction("Stdevpa", ComputeStdevpa);
		AddFunction("Steyx", ComputeSteyx);
		AddFunction("Trimmean", ComputeTrimmean);
		AddFunction("Var", ComputeVar);
		AddFunction("Vara", ComputeVara);
		AddFunction("Varp", ComputeVarp);
		AddFunction("Varpa", ComputeVarpa);
		AddFunction("Weibull", ComputeWeibull);
		AddFunction("Ztest", ComputeZtest);
		UseCommonLibrary = useCommonLibrary;
	}

	private string ZapQuotedColons(string s)
	{
		int num = s.IndexOf(TIC);
		while (num > -1)
		{
			int num2 = s.Substring(num + 1).IndexOf(TIC);
			if (num2 > -1)
			{
				int num3 = s.Substring(num + 1).IndexOf(':');
				while (num3 > -1 && num3 < num2)
				{
					s = s.Substring(num3 + num) + " " + s.Substring(num3 + num + 1);
					num3 = s.Substring(num + 1).IndexOf(':');
				}
			}
			num = num2;
		}
		return s;
	}

	private void MarkColonsInQuotes(ref string args)
	{
		bool flag = false;
		for (int i = 0; i < args.Length; i++)
		{
			if (args[i] == TIC[0])
			{
				flag = !flag;
			}
			else if (args[i] == ':' && flag)
			{
				args = args.Replace(':', MarkerChar);
			}
		}
	}

	public string[] GetCellsFromArgs(string args)
	{
		RemoveQuotesOnSingleRange(ref args);
		MarkColonsInQuotes(ref args);
		int num = args.IndexOf(':');
		int num2;
		int num3;
		if (num == -1)
		{
			args = args.Replace(MarkerChar, ':');
			num = args.IndexOf(ParseArgumentSeparator);
			if (num == -1)
			{
				num2 = RowIndex(args);
				num3 = ColIndex(args);
				return new string[1] { args };
			}
			return args.Split(ParseArgumentSeparator);
		}
		string text = string.Empty;
		int num4 = args.IndexOf('!');
		if (num4 > -1)
		{
			int num5 = args.IndexOf('!', num4 + 1);
			if (num5 > -1)
			{
				text = args.Substring(num4, num5 + 1);
				args = args.Replace(text, string.Empty);
				num = args.IndexOf(':');
			}
		}
		num2 = RowIndex(args.Substring(0, num));
		num3 = ColIndex(args.Substring(0, num));
		int num6 = RowIndex(args.Substring(num + 1, args.Length - num - 1));
		int num7 = ColIndex(args.Substring(num + 1, args.Length - num - 1));
		if (num2 > num6)
		{
			num = num6;
			num6 = num2;
			num2 = num;
		}
		if (num3 > num7)
		{
			num = num7;
			num7 = num3;
			num3 = num;
		}
		int num8 = (num6 - num2 + 1) * (num7 - num3 + 1);
		string[] array = new string[num8];
		int num9 = 0;
		for (num = num2; num <= num6; num++)
		{
			for (num4 = num3; num4 <= num7; num4++)
			{
				try
				{
					array[num9++] = text + GridRangeInfo.GetAlphaLabel(num4) + num;
				}
				catch (Exception ex)
				{
					TraceUtil.TraceExceptionCatched(ex);
					if (!ExceptionManager.RaiseExceptionCatched(this, ex))
					{
						throw ex;
					}
				}
			}
		}
		return array;
	}

	private void RemoveQuotesOnSingleRange(ref string args)
	{
		if (args.Length > 2 && args[0] == TIC[0] && args[args.Length - 1] == TIC[0] && args.IndexOf(":") > 0 && args.IndexOf(ParseArgumentSeparator) == -1)
		{
			args = args.Substring(1, args.Length - 2);
		}
	}

	public string GetValueFromGrid(int row, int col)
	{
		GridStyleInfo style = grid[row, col];
		return GetValueFromGrid(style, row, col);
	}

	public string GetValueFromGrid(string cell1)
	{
		if (cell1 == TRUEVALUESTR || cell1 == FALSEVALUESTR)
		{
			return cell1;
		}
		int num = cell1.LastIndexOf('!');
		GridModel gridModel = grid;
		int num2;
		int num3;
		if (num > -1)
		{
			GridSheetFamilyItem sheetFamilyItem = GetSheetFamilyItem(grid);
			grid = (GridModel)sheetFamilyItem.TokenToGridModel[cell1.Substring(0, num + 1)];
			num2 = RowIndex(cell1);
			num3 = ColIndex(cell1);
		}
		else
		{
			num2 = RowIndex(cell1);
			num3 = ColIndex(cell1);
		}
		string text = cell;
		cell = cell1;
		GridStyleInfo style = grid[num2, num3];
		string valueFromGrid = GetValueFromGrid(style, num2, num3);
		grid = gridModel;
		cell = text;
		return valueFromGrid;
	}

	private string GetValueFromGrid(GridStyleInfo style, int row, int col)
	{
		string s = style.Text;
		GetFormulaText(ref s);
		if (style.CellModel is GridFormulaCellModel && s.Length > 0 && (formulaChar == '\0' || (formulaChar != 0 && formulaChar == s[0])))
		{
			if (style.FormulaTag == null)
			{
				style.FormulaTag = new GridFormulaTag(Parse(s), null, row, col);
			}
			GridFormulaTag formulaTag = style.FormulaTag;
			if (formulaTag != null)
			{
				if ((formulaTag.Text == null || formulaTag.Text.Length == 0) && formulaTag.Formula.Length > 0)
				{
					string text = cell;
					cell = GridRangeInfo.GetAlphaLabel(col) + row;
					formulaTag.Text = ComputedValue(formulaTag.Formula);
					if (forceSaveCellInfo)
					{
						grid.RaiseSaveCellInfo(new GridSaveCellInfoEventArgs(row, col, style, StyleModifyType.Override));
					}
					cell = text;
				}
				return formulaTag.Text;
			}
			return string.Empty;
		}
		if (s == TRUEVALUESTR || s == FALSEVALUESTR)
		{
			return s;
		}
		if (s.Length > 0 && (stringOK || double.TryParse(s, NumberStyles.Number | NumberStyles.AllowExponent, null, out var _)))
		{
			return s;
		}
		return string.Empty;
	}

	public string GetValueFromArg(string arg)
	{
		return GetValueFromArg(arg, returnString: false);
	}

	public string GetValueFromArg(string arg, bool returnString)
	{
		if (GridUtil.IsEmpty(arg))
		{
			return string.Empty;
		}
		if (arg[0] == TIC[0])
		{
			return arg;
		}
		if (arg[0] == 'b')
		{
			arg = arg.Replace('{', '(');
			arg = arg.Replace('}', ')');
			return ComputedValue(arg);
		}
		if (arg == TRUEVALUESTR || arg == 'n' + TRUEVALUESTR)
		{
			return "1";
		}
		if (arg == FALSEVALUESTR || arg == 'n' + FALSEVALUESTR)
		{
			return "0";
		}
		if (arg[0] == TIC[0])
		{
			return arg;
		}
		arg = arg.Replace('u', '-');
		double result;
		if (!char.IsUpper(arg[0]) && (char.IsDigit(arg[0]) || arg[0] == ParseDecimalSeparator || arg[0] == '-' || arg[0] == 'n'))
		{
			if (arg[0] == 'n')
			{
				arg = arg.Substring(1);
			}
			if (double.TryParse(arg, NumberStyles.Number | NumberStyles.AllowExponent, null, out result))
			{
				return result.ToString();
			}
		}
		if ((arg.IndexOfAny(new char[7] { '+', '-', '/', '*', ')', ')', '{' }) == -1 && char.IsUpper(arg[0])) || arg[0] == '!')
		{
			if (arg == cell)
			{
				Hashtable hashtable = (Hashtable)DependentCells[arg];
				if (hashtable != null && hashtable.ContainsKey(arg))
				{
					hashtable.Remove(arg);
				}
				ClearFormulaDependentCells(cell);
				throw new ArgumentException(FormulaErrorStrings[circular_reference_] + arg);
			}
			stringOK = true;
			string text = GetValueFromGrid(arg);
			stringOK = false;
			if (text.Length > 0 && double.TryParse(text.Replace(TIC, string.Empty), out result))
			{
				text = result.ToString();
			}
			UpdateDependencies(arg);
			return text;
		}
		arg = arg.Replace('{', '(');
		arg = arg.Replace('}', ')');
		arg = Parse(arg);
		if (arg.EndsWith("%") && double.TryParse(arg.Substring(0, arg.Length - 1), out result))
		{
			arg = (result / 100.0).ToString();
		}
		return ComputedValue(arg);
	}

	internal string SheetToken(string s)
	{
		int i = 0;
		string result = string.Empty;
		if (i < s.Length && s[i] == '!')
		{
			for (i++; i < s.Length && s[i] != '!'; i++)
			{
			}
			result = s.Substring(0, i + 1);
		}
		if (i < s.Length)
		{
			return result;
		}
		throw new ArgumentException(FormulaErrorStrings[bad_index]);
	}

	public int RowIndex(string s)
	{
		if (CurrentRowNotationEnabled && s.Length == 0)
		{
			return 0;
		}
		int i = 0;
		if (i < s.Length && s[i] == '!')
		{
			for (i++; i < s.Length && s[i] != '!'; i++)
			{
			}
			i++;
		}
		for (; i < s.Length && char.IsLetter(s[i]); i++)
		{
		}
		if (i < s.Length)
		{
			i = int.Parse(s.Substring(i));
			if (i == 0 && CurrentRowNotationEnabled && cell.Length > 1)
			{
				i = RowIndex(cell);
			}
			return i;
		}
		throw new ArgumentException(FormulaErrorStrings[bad_index]);
	}

	public int ColIndex(string s)
	{
		int i = 0;
		int num = 0;
		s = s.ToUpper(CultureInfo.InvariantCulture);
		if (i < s.Length && s[i] == '!')
		{
			for (i++; i < s.Length && s[i] != '!'; i++)
			{
			}
			i++;
		}
		for (; i < s.Length && char.IsLetter(s[i]); i++)
		{
			num = num * 26 + s[i] - 65 + 1;
		}
		if (num == 0)
		{
			throw new ArgumentException(FormulaErrorStrings[bad_index]);
		}
		return num;
	}

	private int FindLastqNotInBrackets(string s)
	{
		int result = -1;
		bool flag = false;
		for (int num = s.Length - 1; num > -1; num--)
		{
			if (s[num] == 'q' && flag)
			{
				result = num;
				break;
			}
			if (s[num] == LEFTBRACKET)
			{
				flag = true;
			}
			else if (s[num] == RIGHTBRACKET)
			{
				flag = false;
			}
		}
		return result;
	}

	internal string ComputeInteriorFunctions(string formula, ArrayList circCheckList)
	{
		try
		{
			if (GridUtil.IsEmpty(formula))
			{
				return formula;
			}
			computeFunctionLevel++;
			for (int num = FindLastqNotInBrackets(formula); num > 0; num = FindLastqNotInBrackets(formula))
			{
				int num2 = formula.Substring(num).IndexOf(RIGHTBRACKET);
				if (num2 == -1)
				{
					return FormulaErrorStrings[bad_formula];
				}
				string formula2 = formula.Substring(num, num2 + 1);
				formula2 = ComputedValue(formula2, circCheckList);
				if (!GridUtil.IsEmpty(formula2) && formula2[0] == '-')
				{
					formula2 = "nu" + formula2.Substring(1);
				}
				else if ((formula2.Length <= 0 || (formula2[0] != TIC[0] && formula2[0] != 'b' && formula2[0] != '#')) && !formula2.StartsWith(TRUEVALUESTR) && !formula2.StartsWith(FALSEVALUESTR))
				{
					double result = 0.0;
					if (double.TryParse(formula2, out result))
					{
						formula2 = result.ToString();
						formula2 = 'n' + formula2;
					}
					else
					{
						formula2 = TIC + formula2 + TIC;
					}
				}
				formula = formula.Substring(0, num) + formula2 + formula.Substring(num + num2 + 1);
			}
			return formula;
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(this, ex))
			{
				throw ex;
			}
			return ex.Message;
		}
		finally
		{
			computeFunctionLevel--;
		}
	}

	public string ComputedValue(string formula)
	{
		return ComputedValue(formula, null);
	}

	internal void GetCellsInArgs(ArrayList circCheckList, string args)
	{
		string[] array = args.Split(ParseArgumentSeparator);
		foreach (string text in array)
		{
			if (text.IndexOf(':') > -1)
			{
				string[] cellsFromArgs = GetCellsFromArgs(text);
				foreach (string value in cellsFromArgs)
				{
					circCheckList.Add(value);
				}
			}
			else if (text.Length > 2 && text[0] == 'b' && text[text.Length - 1] == 'b')
			{
				ComputedValue(text, circCheckList);
			}
			else if (text.Length > 2 && char.IsUpper(text[0]) && char.IsDigit(text[text.Length - 1]))
			{
				circCheckList.Add(text);
			}
		}
	}

	internal string ComputedValue(string formula, ArrayList circCheckList)
	{
		if (GridUtil.IsEmpty(formula))
		{
			return formula;
		}
		try
		{
			computedValueLevel++;
			if (computedValueLevel > maximumRecursiveCalls)
			{
				computedValueLevel = 0;
				if (circCheckList != null)
				{
					circCheckList.Add(cell);
					return "0";
				}
				throw new ArgumentException(FormulaErrorStrings[too_complex]);
			}
			Stack stack = new Stack(maxStackDepth);
			int num = 0;
			stack.Clear();
			string text = string.Empty;
			if (AllowShortCircuitIFs)
			{
				while (num < formula.Length && (num = formula.IndexOf(IFMarker, num)) > -1)
				{
					int num2 = MatchingRightBracket(formula.Substring(num));
					if (num2 > -1)
					{
						formula = formula.Substring(0, num) + HandleEmbeddedIf(formula.Substring(num)) + formula.Substring(num + num2 + 1);
					}
					num++;
				}
			}
			num = 0;
			while (num < formula.Length)
			{
				if (formula[num] == 'b')
				{
					num++;
					continue;
				}
				bool flag = formula[num] == 'u';
				if (flag)
				{
					num++;
					if (num >= formula.Length)
					{
						continue;
					}
				}
				if (formula[num] == '%' && stack.Count > 0)
				{
					object obj = stack.Peek();
					if (double.TryParse(obj.ToString(), out var result))
					{
						stack.Pop();
						stack.Push(result / 100.0);
					}
					num++;
					continue;
				}
				if (formula[num] == '!')
				{
					text = formula[num].ToString();
					for (num++; num < formula.Length && formula[num] != '!'; num++)
					{
						text += formula[num];
					}
					if (num >= formula.Length)
					{
						continue;
					}
					text += formula[num];
					num++;
				}
				if (formula.Substring(num).StartsWith(TRUEVALUESTR))
				{
					stack.Push(TRUEVALUESTR);
					num += TRUEVALUESTR.Length;
					continue;
				}
				if (formula.Substring(num).StartsWith(FALSEVALUESTR))
				{
					stack.Push(FALSEVALUESTR);
					num += FALSEVALUESTR.Length;
					continue;
				}
				if (formula[num] == TIC[0])
				{
					string text2 = formula[num].ToString();
					for (num++; num < formula.Length && formula[num] != TIC[0]; num++)
					{
						text2 += formula[num];
					}
					stack.Push(text2 + TIC);
					num++;
					continue;
				}
				if (char.IsUpper(formula[num]))
				{
					string text3 = string.Empty;
					for (; num < formula.Length && char.IsUpper(formula[num]); num++)
					{
						text3 += formula[num];
					}
					for (; num < formula.Length && char.IsDigit(formula[num]); num++)
					{
						text3 += formula[num];
					}
					text3 = text + text3;
					text = string.Empty;
					if (text3 == cell)
					{
						computedValueLevel = 0;
						Hashtable hashtable = (Hashtable)DependentCells[text3];
						if (hashtable != null && hashtable.ContainsKey(text3))
						{
							hashtable.Remove(text3);
						}
						ClearFormulaDependentCells(cell);
						if (circCheckList != null)
						{
							circCheckList.Add(cell);
							return "0";
						}
						throw new ArgumentException(FormulaErrorStrings[circular_reference_] + text3);
					}
					circCheckList?.Add(text3);
					UpdateDependencies(text3);
					stringOK = true;
					string text4 = GetValueFromGrid(text3);
					stringOK = false;
					if (text4 != null && text4.EndsWith("%") && double.TryParse(text4.Substring(0, text4.Length - 1), out var result2))
					{
						text4 = (result2 / 100.0).ToString();
					}
					if (flag && text4 != null && double.TryParse(text4, out result2))
					{
						text4 = (0.0 - result2).ToString();
					}
					flag = false;
					stack.Push(text4);
					continue;
				}
				if (formula[num] == 'q')
				{
					formula = ComputeInteriorFunctions(formula, circCheckList);
					int num3 = formula.Substring(num + 1).IndexOf(LEFTBRACKET);
					if (num3 > 0)
					{
						int num4 = 0;
						bool flag2 = false;
						int num5 = num3 + num + 2;
						int i;
						for (i = num5; i < formula.Length && (formula[i] != RIGHTBRACKET || num4 > 0); i++)
						{
							if (formula[i] == LEFTBRACKET)
							{
								num4++;
								flag2 = true;
							}
							else if (formula[i] == LEFTBRACKET)
							{
								num4--;
							}
						}
						if (flag2)
						{
							string text5 = formula.Substring(num5, i - num5 - 2);
							string text6 = string.Empty;
							string[] array = text5.Split(ParseArgumentSeparator);
							foreach (string text7 in array)
							{
								if (text6.Length > 0)
								{
									text6 += ",";
								}
								int num6 = FindLastqNotInBrackets(text7);
								text6 = ((num6 <= 0) ? (text6 + ComputedValue(text7, circCheckList)) : (text6 + text7.Substring(0, num6) + ComputedValue(text7.Substring(num6), circCheckList)));
							}
							formula = formula.Substring(0, num5) + text6 + formula.Substring(i - 2);
						}
						string key = formula.Substring(num + 1, num3);
						if (LibraryFunctions[key] != null)
						{
							int num7 = formula.Substring(num + num3 + 1).IndexOf(RIGHTBRACKET);
							string args = formula.Substring(num + num3 + 2, num7 - 1);
							if (circCheckList != null)
							{
								GetCellsInArgs(circCheckList, args);
								stack.Push("0");
							}
							else
							{
								try
								{
									functionEngineContext = this;
									LibraryFunction libraryFunction = (LibraryFunction)LibraryFunctions[key];
									activeFunctionName = key;
									string text8 = libraryFunction(args);
									if (UseNoAmpersandQuotes && text8.Length > 1 && text8.StartsWith(TIC) && text8.EndsWith(TIC))
									{
										text8 = text8.Substring(1, text8.Length - 2);
									}
									double result3 = 0.0;
									if (flag && text8 != null && double.TryParse(text8, out result3))
									{
										text8 = (0.0 - result3).ToString();
									}
									flag = false;
									stack.Push(text8);
									activeFunctionName = string.Empty;
									functionEngineContext = null;
								}
								catch (Exception ex)
								{
									TraceUtil.TraceExceptionCatched(ex);
									if (circCheckList != null)
									{
										circCheckList.Add(cell);
										return "0";
									}
									if (!ExceptionManager.RaiseExceptionCatched(this, ex))
									{
										throw ex;
									}
									return ex.Message;
								}
							}
							num += num7 + num3 + 2;
							continue;
						}
						if (circCheckList != null)
						{
							circCheckList.Add(cell);
							return "0";
						}
						return FormulaErrorStrings[missing_formula];
					}
					if (formula[0] == 'b')
					{
						num = 0;
						continue;
					}
					if (circCheckList != null)
					{
						circCheckList.Add(cell);
						return "0";
					}
					return FormulaErrorStrings[improper_formula];
				}
				if (char.IsDigit(formula[num]) || formula[num] == 'u')
				{
					string text9 = string.Empty;
					if (formula[num] == 'u')
					{
						text9 = "-";
						num++;
					}
					else if (flag)
					{
						text9 = "-";
					}
					flag = false;
					for (; num < formula.Length && (char.IsDigit(formula[num]) || formula[num] == ParseDecimalSeparator); num++)
					{
						text9 += formula[num];
					}
					stack.Push(text9);
					continue;
				}
				switch (formula[num])
				{
				case '#':
					num += 4;
					stack.Push("#N/A");
					break;
				case 'n':
				{
					num++;
					string text20 = string.Empty;
					if (formula.Substring(num).StartsWith("Infinity"))
					{
						text20 = "Infinity";
						num += text20.Length;
					}
					else if (formula.Substring(num).StartsWith(TRUEVALUESTR))
					{
						text20 = TRUEVALUESTR;
						num += text20.Length;
					}
					else if (formula.Substring(num).StartsWith(FALSEVALUESTR))
					{
						text20 = FALSEVALUESTR;
						num += text20.Length;
					}
					else if (num < formula.Length - 3 && formula.Substring(num, 3) == "NaN")
					{
						num += 3;
						text20 = "0";
					}
					else
					{
						if (formula[num] == 'u' || flag)
						{
							text20 = "-";
							if (!flag)
							{
								num++;
							}
							else
							{
								flag = false;
							}
						}
						for (; num < formula.Length && (char.IsDigit(formula[num]) || formula[num] == ParseDecimalSeparator); num++)
						{
							text20 += formula[num];
						}
						if (num < formula.Length - 3 && formula[num] == 'E' && (formula[num + 1] == '+' || formula[num + 1] == '-'))
						{
							text20 += formula[num];
							num++;
							text20 += formula[num];
							num++;
							text20 += formula[num];
							for (num++; num < formula.Length && (char.IsDigit(formula[num]) || formula[num] == ParseDecimalSeparator); num++)
							{
								text20 += formula[num];
							}
						}
						if (num < formula.Length && formula[num] == '%')
						{
							num++;
							if (text20.Length == 0)
							{
								if (stack.Count > 0)
								{
									object obj6 = stack.Peek();
									if (double.TryParse(obj6.ToString(), out var result4))
									{
										stack.Pop();
										text20 = (result4 / 100.0).ToString();
									}
								}
							}
							else
							{
								text20 = (double.Parse(text20) / 100.0).ToString();
							}
						}
					}
					stack.Push(text20);
					break;
				}
				case 'a':
				{
					double num8 = Pop(stack);
					double num9 = Pop(stack);
					stack.Push((num9 + num8).ToString());
					num++;
					break;
				}
				case 's':
				{
					double num11 = Pop(stack);
					double num12 = Pop(stack);
					stack.Push((num12 - num11).ToString());
					num++;
					break;
				}
				case 'm':
				{
					double num17 = Pop(stack);
					double num18 = Pop(stack);
					stack.Push((num18 * num17).ToString());
					num++;
					break;
				}
				case 'd':
				{
					double num13 = Pop(stack);
					double num14 = Pop(stack);
					stack.Push((num14 / num13).ToString());
					num++;
					break;
				}
				case 't':
				{
					double y2 = Pop(stack);
					double num10 = Pop(stack);
					stack.Push((num10 * Math.Pow(10.0, y2)).ToString());
					num++;
					break;
				}
				case 'v':
				{
					double num15 = Pop(stack);
					double num16 = Pop(stack);
					stack.Push((num16 * Math.Pow(10.0, 0.0 - num15)).ToString());
					num++;
					break;
				}
				case 'l':
				{
					string text16 = PopString(stack);
					string text17 = PopString(stack);
					double d5;
					double d6;
					string obj4 = ((!ParsePossibleEmptyStrings(text16, text17, out d5, out d6)) ? ((text16.ToUpper().Replace(TIC, string.Empty).CompareTo(text17.ToUpper().Replace(TIC, string.Empty)) < 0) ? TRUEVALUESTR : FALSEVALUESTR) : ((d6 < d5) ? TRUEVALUESTR : FALSEVALUESTR));
					stack.Push(obj4);
					num++;
					break;
				}
				case 'g':
				{
					string text14 = PopString(stack);
					string text15 = PopString(stack);
					double d3;
					double d4;
					string obj3 = ((!ParsePossibleEmptyStrings(text14, text15, out d3, out d4)) ? ((text14.ToUpper().Replace(TIC, string.Empty).CompareTo(text15.ToUpper().Replace(TIC, string.Empty)) > 0) ? TRUEVALUESTR : FALSEVALUESTR) : ((d4 > d3) ? TRUEVALUESTR : FALSEVALUESTR));
					stack.Push(obj3);
					num++;
					break;
				}
				case 'e':
				{
					string text18 = PopString(stack);
					string text19 = PopString(stack);
					double d7;
					double d8;
					string obj5 = (ParsePossibleEmptyStrings(text18, text19, out d7, out d8) ? ((d8 == d7) ? TRUEVALUESTR : FALSEVALUESTR) : (((text18.Length <= 0 || text18[0] != '#') && (text19.Length <= 0 || text19[0] != '#')) ? ((text18.ToUpper().Replace(TIC, string.Empty) == text19.ToUpper().Replace(TIC, string.Empty)) ? TRUEVALUESTR : FALSEVALUESTR) : "#N/A"));
					stack.Push(obj5);
					num++;
					break;
				}
				case 'k':
				{
					string text21 = PopString(stack);
					string text22 = PopString(stack);
					double d9;
					double d10;
					string obj7 = ((!ParsePossibleEmptyStrings(text21, text22, out d9, out d10)) ? ((text21.ToUpper().Replace(TIC, string.Empty).CompareTo(text22.ToUpper().Replace(TIC, string.Empty)) <= 0) ? TRUEVALUESTR : FALSEVALUESTR) : ((d10 <= d9) ? TRUEVALUESTR : FALSEVALUESTR));
					stack.Push(obj7);
					num++;
					break;
				}
				case 'j':
				{
					string text23 = PopString(stack);
					string text24 = PopString(stack);
					double d11;
					double d12;
					string obj8 = ((!ParsePossibleEmptyStrings(text23, text24, out d11, out d12)) ? ((text23.ToUpper().Replace(TIC, string.Empty).CompareTo(text24.ToUpper().Replace(TIC, string.Empty)) >= 0) ? TRUEVALUESTR : FALSEVALUESTR) : ((d12 >= d11) ? TRUEVALUESTR : FALSEVALUESTR));
					stack.Push(obj8);
					num++;
					break;
				}
				case 'o':
				{
					string text10 = PopString(stack);
					string text11 = PopString(stack);
					double d;
					double d2;
					string obj2 = ((!ParsePossibleEmptyStrings(text10, text11, out d, out d2)) ? ((text10.ToUpper().Replace(TIC, string.Empty) != text11.ToUpper().Replace(TIC, string.Empty)) ? TRUEVALUESTR : FALSEVALUESTR) : ((d2 != d) ? TRUEVALUESTR : FALSEVALUESTR));
					stack.Push(obj2);
					num++;
					break;
				}
				case 'c':
				{
					string text12 = PopString(stack);
					if (text12.Length > 0 && text12[0] == TIC[0] && text12.Length > 1 && text12[text12.Length - 1] == TIC[0])
					{
						text12 = text12.Substring(1, text12.Length - 2);
					}
					string text13 = PopString(stack);
					if (text13.Length > 0 && text13[0] == TIC[0] && text13.Length > 1 && text13[text13.Length - 1] == TIC[0])
					{
						text13 = text13.Substring(1, text13.Length - 2);
					}
					if (useNoAmpersandQuotes)
					{
						stack.Push(text13 + text12);
					}
					else
					{
						stack.Push(TIC + text13 + text12 + TIC);
					}
					num++;
					break;
				}
				case '~':
				{
					double y = Pop(stack);
					double x = Pop(stack);
					stack.Push(Math.Pow(x, y).ToString());
					num++;
					break;
				}
				default:
					computedValueLevel = 0;
					if (circCheckList != null)
					{
						circCheckList.Add(cell);
						return "0";
					}
					throw new ArgumentException(FormulaErrorStrings[invalid_expression]);
				}
			}
			if (stack.Count == 0)
			{
				return string.Empty;
			}
			string text25 = stack.Pop().ToString();
			if (GridUtil.IsEmpty(text25) && !UseNoAmpersandQuotes)
			{
				text25 = "0";
			}
			return text25;
		}
		catch (Exception ex2)
		{
			computedValueLevel = 0;
			if (circCheckList != null)
			{
				circCheckList.Add(cell);
				return "0";
			}
			if (ex2.Message.IndexOf(FormulaErrorStrings[circular_reference_]) > -1)
			{
				throw ex2;
			}
			if (!ExceptionManager.RaiseExceptionCatched(this, ex2))
			{
				throw ex2;
			}
			if (ex2.Message.IndexOf(FormulaErrorStrings[cell_empty]) > -1)
			{
				return string.Empty;
			}
			return ex2.Message;
		}
		finally
		{
			computedValueLevel--;
		}
	}

	private int MatchingRightBracket(string formula)
	{
		int num = -1;
		int num2 = 1;
		int num3 = 0;
		while (num == -1 && num2 < formula.Length)
		{
			if (formula[num2] == RIGHTBRACKET)
			{
				if (num3 == 0)
				{
					num = num2;
				}
				else
				{
					num3--;
				}
			}
			else if (formula[num2] == 'q')
			{
				num3++;
			}
			num2++;
		}
		return num;
	}

	private string HandleEmbeddedIf(string formula)
	{
		int location = IFMarker.Length;
		if (FindNextSeparator(formula, ref location))
		{
			int location2 = location + 1;
			if (!FindNextSeparator(formula, ref location2))
			{
				location2 = formula.IndexOf(RIGHTBRACKET, location);
				if (location2 > -1)
				{
					formula = formula.Substring(0, location2) + ParseArgumentSeparator + FALSEVALUESTR + formula.Substring(location2);
				}
			}
			string text = ComputedValue(formula.Substring(IFMarker.Length, location - IFMarker.Length));
			double result = 0.0;
			if (text == TRUEVALUESTR || (double.TryParse(text, out result) && result != 0.0))
			{
				formula = formula.Substring(location + 1, location2 - location - 1);
			}
			else
			{
				int location3 = location2 + 1;
				if (FindRightBracket(formula, ref location3))
				{
					formula = formula.Substring(location2 + 1, location3 - location2 - 1);
				}
			}
		}
		return formula;
	}

	private bool FindNextSeparator(string formula, ref int location)
	{
		int num = 0;
		bool flag = false;
		while (!flag && location < formula.Length)
		{
			if (formula[location] == 'q')
			{
				num++;
			}
			else if (formula[location] == RIGHTBRACKET)
			{
				num--;
			}
			else if (num == 0 && formula[location] == ParseArgumentSeparator)
			{
				flag = true;
				location--;
			}
			location++;
		}
		return flag;
	}

	private bool FindRightBracket(string formula, ref int location)
	{
		int num = 0;
		bool flag = false;
		while (!flag && location < formula.Length)
		{
			if (formula[location] == 'q')
			{
				num++;
			}
			else if (num == 0 && formula[location] == RIGHTBRACKET)
			{
				flag = true;
				location--;
			}
			else if (formula[location] == RIGHTBRACKET)
			{
				num--;
			}
			location++;
		}
		return flag;
	}

	private bool ParsePossibleEmptyStrings(string s1, string s2, out double d1, out double d2)
	{
		bool result = false;
		d1 = 0.0;
		d2 = 0.0;
		if ((s1.Length == 0 || double.TryParse(s1, out d1)) && (s2.Length == 0 || double.TryParse(s2, out d2)))
		{
			result = true;
		}
		return result;
	}

	private double Pop(Stack _stack)
	{
		object obj = _stack.Pop();
		string text = "0";
		if (obj != null)
		{
			text = obj.ToString().Replace(TIC, string.Empty);
			if (text.Length > 0 && text[0] == UNIQUESTRINGMARKER)
			{
				text = text.Substring(1);
			}
			if (text == TRUEVALUESTR)
			{
				return 1.0;
			}
			if (text == FALSEVALUESTR)
			{
				return 0.0;
			}
		}
		if (double.TryParse(text, out var result))
		{
			return result;
		}
		if (!returnNAN || text.Length <= 0)
		{
			return 0.0;
		}
		return double.NaN;
	}

	private string PopString(Stack _stack)
	{
		object obj = _stack.Pop();
		if (obj == null)
		{
			obj = string.Empty;
		}
		return obj.ToString();
	}

	private bool IsEqual(double d1, double d2)
	{
		return Math.Abs(d1 - d2) < ABSOLUTEZERO;
	}

	public bool IsDirty(GridFormulaTag tag)
	{
		if (tag != null)
		{
			return tag.Text == null;
		}
		return true;
	}

	public void SetDirty(GridFormulaTag tag)
	{
		if (tag != null)
		{
			tag.Text = null;
		}
	}

	internal void GetFormulaText(ref string s)
	{
		if (this.FormulaParsing != null)
		{
			GridFormulaParsingEventArgs e = new GridFormulaParsingEventArgs(s);
			this.FormulaParsing(this, e);
			s = e.Text;
		}
	}

	public bool IsCircularReference(string cell, string formula)
	{
		string parsedFormula = Parse(formula);
		bool flag = lockDependencies;
		lockDependencies = true;
		try
		{
			if (CircularCheckFailed(cell, parsedFormula))
			{
				return true;
			}
		}
		finally
		{
			lockDependencies = flag;
		}
		return false;
	}

	internal bool CircularCheckFailed(string hostCell, string parsedFormula)
	{
		GridSheetFamilyItem sheetFamilyItem = GetSheetFamilyItem(grid);
		ArrayList cellsList = GetCellsList(parsedFormula);
		if (cellsList.IndexOf(hostCell) > -1)
		{
			return true;
		}
		foreach (string item in cellsList)
		{
			string text = SheetToken(item);
			GridModel gridModel = ((text.Length == 0) ? grid : (sheetFamilyItem.TokenToGridModel[text] as GridModel));
			int rowIndex = RowIndex(item);
			int colIndex = ColIndex(item);
			string s2 = gridModel[rowIndex, colIndex].Text;
			GetFormulaText(ref s2);
			bool flag = formulaChar != 0 && s2.Length > 0 && s2[0] == formulaChar;
			if ((formulaChar == '\0' || flag) && gridModel[rowIndex, colIndex].FormulaTag != null && gridModel[rowIndex, colIndex].FormulaTag.Formula.Length > 0 && CircularCheckFailed(hostCell, gridModel[rowIndex, colIndex].FormulaTag.Formula))
			{
				return true;
			}
		}
		return false;
	}

	internal ArrayList GetCellsList(string parsedFormula)
	{
		ArrayList arrayList = new ArrayList();
		ComputedValue(parsedFormula, arrayList);
		string text = SheetToken(cell);
		if (text.Length > 0)
		{
			for (int i = 0; i < arrayList.Count; i++)
			{
				string text2 = arrayList[i].ToString();
				if (SheetToken(text2).Length == 0)
				{
					arrayList[i] = text + text2;
				}
			}
		}
		return arrayList;
	}
}
