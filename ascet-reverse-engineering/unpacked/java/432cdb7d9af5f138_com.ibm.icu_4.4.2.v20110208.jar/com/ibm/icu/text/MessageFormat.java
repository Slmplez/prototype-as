/*
 * Decompiled with CFR 0.152.
 */
package com.ibm.icu.text;

import com.ibm.icu.impl.Utility;
import com.ibm.icu.lang.UCharacter;
import com.ibm.icu.text.DateFormat;
import com.ibm.icu.text.DecimalFormat;
import com.ibm.icu.text.DecimalFormatSymbols;
import com.ibm.icu.text.NumberFormat;
import com.ibm.icu.text.PluralFormat;
import com.ibm.icu.text.RuleBasedNumberFormat;
import com.ibm.icu.text.SelectFormat;
import com.ibm.icu.text.SimpleDateFormat;
import com.ibm.icu.text.UFormat;
import com.ibm.icu.util.ULocale;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.text.AttributedCharacterIterator;
import java.text.AttributedString;
import java.text.CharacterIterator;
import java.text.ChoiceFormat;
import java.text.FieldPosition;
import java.text.Format;
import java.text.ParseException;
import java.text.ParsePosition;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class MessageFormat
extends UFormat {
    static final long serialVersionUID = 7136212545847378651L;
    private Locale locale;
    private ULocale ulocale;
    private String pattern = "";
    private static final int INITIAL_FORMATS = 10;
    private Format[] formats = new Format[10];
    private int[] offsets = new int[10];
    private int[] argumentNumbers = new int[10];
    private String[] argumentNames = new String[10];
    private boolean argumentNamesAreNumeric = true;
    private int maxOffset = -1;
    private static final String[] typeList = new String[]{"", "number", "date", "time", "choice", "spellout", "ordinal", "duration", "plural", "select"};
    private static final int TYPE_EMPTY = 0;
    private static final int TYPE_NUMBER = 1;
    private static final int TYPE_DATE = 2;
    private static final int TYPE_TIME = 3;
    private static final int TYPE_CHOICE = 4;
    private static final int TYPE_SPELLOUT = 5;
    private static final int TYPE_ORDINAL = 6;
    private static final int TYPE_DURATION = 7;
    private static final int TYPE_PLURAL = 8;
    private static final int TYPE_SELECT = 9;
    private static final String[] modifierList = new String[]{"", "currency", "percent", "integer"};
    private static final int MODIFIER_EMPTY = 0;
    private static final int MODIFIER_CURRENCY = 1;
    private static final int MODIFIER_PERCENT = 2;
    private static final int MODIFIER_INTEGER = 3;
    private static final String[] dateModifierList = new String[]{"", "short", "medium", "long", "full"};
    private static final int DATE_MODIFIER_EMPTY = 0;
    private static final int DATE_MODIFIER_SHORT = 1;
    private static final int DATE_MODIFIER_MEDIUM = 2;
    private static final int DATE_MODIFIER_LONG = 3;
    private static final int DATE_MODIFIER_FULL = 4;
    private static final char SINGLE_QUOTE = '\'';
    private static final char CURLY_BRACE_LEFT = '{';
    private static final char CURLY_BRACE_RIGHT = '}';
    private static final int STATE_INITIAL = 0;
    private static final int STATE_SINGLE_QUOTE = 1;
    private static final int STATE_IN_QUOTE = 2;
    private static final int STATE_MSG_ELEMENT = 3;

    public MessageFormat(String pattern) {
        this.ulocale = ULocale.getDefault();
        this.applyPattern(pattern);
    }

    public MessageFormat(String pattern, Locale locale) {
        this(pattern, ULocale.forLocale(locale));
    }

    public MessageFormat(String pattern, ULocale locale) {
        this.ulocale = locale;
        this.applyPattern(pattern);
    }

    public void setLocale(Locale locale) {
        this.setLocale(ULocale.forLocale(locale));
    }

    public void setLocale(ULocale locale) {
        String existingPattern = this.toPattern();
        this.ulocale = locale;
        this.applyPattern(existingPattern);
    }

    public Locale getLocale() {
        return this.ulocale.toLocale();
    }

    public ULocale getULocale() {
        return this.ulocale;
    }

    public void applyPattern(String pttrn) {
        StringBuilder[] segments = new StringBuilder[4];
        int i = 0;
        while (i < segments.length) {
            segments[i] = new StringBuilder();
            ++i;
        }
        int part = 0;
        int formatNumber = 0;
        boolean inQuote = false;
        int braceStack = 0;
        this.maxOffset = -1;
        int i2 = 0;
        while (i2 < pttrn.length()) {
            char ch = pttrn.charAt(i2);
            if (part == 0) {
                if (ch == '\'') {
                    if (i2 + 1 < pttrn.length() && pttrn.charAt(i2 + 1) == '\'') {
                        segments[part].append(ch);
                        ++i2;
                    } else {
                        inQuote = !inQuote;
                    }
                } else if (ch == '{' && !inQuote) {
                    part = 1;
                } else {
                    segments[part].append(ch);
                }
            } else if (inQuote) {
                segments[part].append(ch);
                if (ch == '\'') {
                    inQuote = false;
                }
            } else {
                switch (ch) {
                    case ',': {
                        if (part < 3) {
                            ++part;
                            break;
                        }
                        segments[part].append(ch);
                        break;
                    }
                    case '{': {
                        ++braceStack;
                        segments[part].append(ch);
                        break;
                    }
                    case '}': {
                        if (braceStack == 0) {
                            part = 0;
                            this.makeFormat(i2, formatNumber, segments);
                            ++formatNumber;
                            break;
                        }
                        --braceStack;
                        segments[part].append(ch);
                        break;
                    }
                    case '\'': {
                        inQuote = true;
                    }
                    default: {
                        segments[part].append(ch);
                    }
                }
            }
            ++i2;
        }
        if (braceStack == 0 && part != 0) {
            this.maxOffset = -1;
            throw new IllegalArgumentException("Unmatched braces in the pattern.");
        }
        this.pattern = segments[0].toString();
    }

    public String toPattern() {
        int lastOffset = 0;
        StringBuilder result = new StringBuilder();
        int i = 0;
        while (i <= this.maxOffset) {
            MessageFormat.copyAndFixQuotes(this.pattern, lastOffset, this.offsets[i], result);
            lastOffset = this.offsets[i];
            result.append('{');
            result.append(this.argumentNames[i]);
            if (this.formats[i] != null) {
                String pat;
                if (this.formats[i] instanceof DecimalFormat) {
                    if (this.formats[i].equals(NumberFormat.getInstance(this.ulocale))) {
                        result.append(",number");
                    } else if (this.formats[i].equals(NumberFormat.getCurrencyInstance(this.ulocale))) {
                        result.append(",number,currency");
                    } else if (this.formats[i].equals(NumberFormat.getPercentInstance(this.ulocale))) {
                        result.append(",number,percent");
                    } else if (this.formats[i].equals(NumberFormat.getIntegerInstance(this.ulocale))) {
                        result.append(",number,integer");
                    } else {
                        result.append(",number," + ((DecimalFormat)this.formats[i]).toPattern());
                    }
                } else if (this.formats[i] instanceof SimpleDateFormat) {
                    if (this.formats[i].equals(DateFormat.getDateInstance(2, this.ulocale))) {
                        result.append(",date");
                    } else if (this.formats[i].equals(DateFormat.getDateInstance(3, this.ulocale))) {
                        result.append(",date,short");
                    } else if (this.formats[i].equals(DateFormat.getDateInstance(1, this.ulocale))) {
                        result.append(",date,long");
                    } else if (this.formats[i].equals(DateFormat.getDateInstance(0, this.ulocale))) {
                        result.append(",date,full");
                    } else if (this.formats[i].equals(DateFormat.getTimeInstance(2, this.ulocale))) {
                        result.append(",time");
                    } else if (this.formats[i].equals(DateFormat.getTimeInstance(3, this.ulocale))) {
                        result.append(",time,short");
                    } else if (this.formats[i].equals(DateFormat.getTimeInstance(1, this.ulocale))) {
                        result.append(",time,long");
                    } else if (this.formats[i].equals(DateFormat.getTimeInstance(0, this.ulocale))) {
                        result.append(",time,full");
                    } else {
                        result.append(",date," + ((SimpleDateFormat)this.formats[i]).toPattern());
                    }
                } else if (this.formats[i] instanceof ChoiceFormat) {
                    result.append(",choice," + ((ChoiceFormat)this.formats[i]).toPattern());
                } else if (this.formats[i] instanceof PluralFormat) {
                    pat = ((PluralFormat)this.formats[i]).toPattern();
                    pat = this.duplicateSingleQuotes(pat);
                    result.append(",plural," + pat);
                } else if (this.formats[i] instanceof SelectFormat) {
                    pat = ((SelectFormat)this.formats[i]).toPattern();
                    pat = this.duplicateSingleQuotes(pat);
                    result.append(",select," + pat);
                }
            }
            result.append('}');
            ++i;
        }
        MessageFormat.copyAndFixQuotes(this.pattern, lastOffset, this.pattern.length(), result);
        return result.toString();
    }

    private String duplicateSingleQuotes(String pat) {
        String result = pat;
        if (pat.indexOf(39) != 0) {
            StringBuilder buf = new StringBuilder();
            int j = 0;
            while (j < pat.length()) {
                char ch = pat.charAt(j);
                if (ch == '\'') {
                    buf.append(ch);
                }
                buf.append(ch);
                ++j;
            }
            result = buf.toString();
        }
        return result;
    }

    public void setFormatsByArgumentIndex(Format[] newFormats) {
        if (!this.argumentNamesAreNumeric) {
            throw new IllegalArgumentException("This method is not available in MessageFormat objects that use alphanumeric argument names.");
        }
        int i = 0;
        while (i <= this.maxOffset) {
            int j = Integer.parseInt(this.argumentNames[i]);
            if (j < newFormats.length) {
                this.formats[i] = newFormats[j];
            }
            ++i;
        }
    }

    public void setFormatsByArgumentName(Map<String, Format> newFormats) {
        int i = 0;
        while (i <= this.maxOffset) {
            if (newFormats.containsKey(this.argumentNames[i])) {
                Format f;
                this.formats[i] = f = newFormats.get(this.argumentNames[i]);
            }
            ++i;
        }
    }

    public void setFormats(Format[] newFormats) {
        int runsToCopy = newFormats.length;
        if (runsToCopy > this.maxOffset + 1) {
            runsToCopy = this.maxOffset + 1;
        }
        int i = 0;
        while (i < runsToCopy) {
            this.formats[i] = newFormats[i];
            ++i;
        }
    }

    public void setFormatByArgumentIndex(int argumentIndex, Format newFormat) {
        if (!this.argumentNamesAreNumeric) {
            throw new IllegalArgumentException("This method is not available in MessageFormat objects that use alphanumeric argument names.");
        }
        int j = 0;
        while (j <= this.maxOffset) {
            if (Integer.parseInt(this.argumentNames[j]) == argumentIndex) {
                this.formats[j] = newFormat;
            }
            ++j;
        }
    }

    public void setFormatByArgumentName(String argumentName, Format newFormat) {
        int i = 0;
        while (i <= this.maxOffset) {
            if (argumentName.equals(this.argumentNames[i])) {
                this.formats[i] = newFormat;
            }
            ++i;
        }
    }

    public void setFormat(int formatElementIndex, Format newFormat) {
        this.formats[formatElementIndex] = newFormat;
    }

    public Format[] getFormatsByArgumentIndex() {
        if (!this.argumentNamesAreNumeric) {
            throw new IllegalArgumentException("This method is not available in MessageFormat objects that use alphanumeric argument names.");
        }
        int maximumArgumentNumber = -1;
        int i = 0;
        while (i <= this.maxOffset) {
            int argumentNumber = Integer.parseInt(this.argumentNames[i]);
            if (argumentNumber > maximumArgumentNumber) {
                maximumArgumentNumber = argumentNumber;
            }
            ++i;
        }
        Format[] resultArray = new Format[maximumArgumentNumber + 1];
        int i2 = 0;
        while (i2 <= this.maxOffset) {
            resultArray[Integer.parseInt((String)this.argumentNames[i2])] = this.formats[i2];
            ++i2;
        }
        return resultArray;
    }

    public Format[] getFormats() {
        Format[] resultArray = new Format[this.maxOffset + 1];
        System.arraycopy(this.formats, 0, resultArray, 0, this.maxOffset + 1);
        return resultArray;
    }

    public Set<String> getFormatArgumentNames() {
        HashSet<String> result = new HashSet<String>();
        int i = 0;
        while (i <= this.maxOffset) {
            result.add(this.argumentNames[i]);
            ++i;
        }
        return result;
    }

    public Format getFormatByArgumentName(String argumentName) {
        int i = 0;
        while (i <= this.maxOffset) {
            if (argumentName.equals(this.argumentNames[i])) {
                return this.formats[i];
            }
            ++i;
        }
        return null;
    }

    public final StringBuffer format(Object[] arguments, StringBuffer result, FieldPosition pos) {
        if (!this.argumentNamesAreNumeric) {
            throw new IllegalArgumentException("This method is not available in MessageFormat objects that use alphanumeric argument names.");
        }
        return this.subformat(arguments, result, pos, null);
    }

    public final StringBuffer format(Map<String, Object> arguments, StringBuffer result, FieldPosition pos) {
        return this.subformat(arguments, result, pos, null);
    }

    public static String format(String pattern, Object ... arguments) {
        MessageFormat temp = new MessageFormat(pattern);
        return temp.format(arguments);
    }

    public static String format(String pattern, Map<String, Object> arguments) {
        MessageFormat temp = new MessageFormat(pattern);
        return temp.format(arguments);
    }

    public boolean usesNamedArguments() {
        return !this.argumentNamesAreNumeric;
    }

    @Override
    public final StringBuffer format(Object arguments, StringBuffer result, FieldPosition pos) {
        if (arguments == null || arguments instanceof Map) {
            return this.subformat((Map)arguments, result, pos, null);
        }
        if (!this.argumentNamesAreNumeric) {
            throw new IllegalArgumentException("This method is not available in MessageFormat objects that use alphanumeric argument names.");
        }
        return this.subformat((Object[])arguments, result, pos, null);
    }

    @Override
    public AttributedCharacterIterator formatToCharacterIterator(Object arguments) {
        StringBuffer result = new StringBuffer();
        ArrayList<AttributedCharacterIterator> iterators = new ArrayList<AttributedCharacterIterator>();
        if (arguments == null) {
            throw new NullPointerException("formatToCharacterIterator must be passed non-null object");
        }
        if (arguments instanceof Map) {
            this.subformat((Map)arguments, result, null, iterators);
        } else {
            this.subformat((Object[])arguments, result, null, iterators);
        }
        if (iterators.size() == 0) {
            return MessageFormat._createAttributedCharacterIterator("");
        }
        return MessageFormat._createAttributedCharacterIterator(iterators.toArray(new AttributedCharacterIterator[iterators.size()]));
    }

    public Object[] parse(String source, ParsePosition pos) {
        if (!this.argumentNamesAreNumeric) {
            throw new IllegalArgumentException("This method is not available in MessageFormat objects that use named argument.");
        }
        Map<String, Object> objectMap = this.parseToMap(source, pos);
        int maximumArgumentNumber = -1;
        int i = 0;
        while (i <= this.maxOffset) {
            int argumentNumber = Integer.parseInt(this.argumentNames[i]);
            if (argumentNumber > maximumArgumentNumber) {
                maximumArgumentNumber = argumentNumber;
            }
            ++i;
        }
        if (objectMap == null) {
            return null;
        }
        Object[] resultArray = new Object[maximumArgumentNumber + 1];
        for (String key : objectMap.keySet()) {
            resultArray[Integer.parseInt((String)key)] = objectMap.get(key);
        }
        return resultArray;
    }

    public Map<String, Object> parseToMap(String source, ParsePosition pos) {
        if (source == null) {
            HashMap<String, Object> empty = new HashMap<String, Object>();
            return empty;
        }
        HashMap<String, Object> resultMap = new HashMap<String, Object>();
        int patternOffset = 0;
        int sourceOffset = pos.getIndex();
        ParsePosition tempStatus = new ParsePosition(0);
        int i = 0;
        while (i <= this.maxOffset) {
            int len = this.offsets[i] - patternOffset;
            if (len == 0 || this.pattern.regionMatches(patternOffset, source, sourceOffset, len)) {
                sourceOffset += len;
                patternOffset += len;
            } else {
                pos.setErrorIndex(sourceOffset);
                return null;
            }
            if (this.formats[i] == null) {
                int tempLength = i != this.maxOffset ? this.offsets[i + 1] : this.pattern.length();
                int next = patternOffset >= tempLength ? source.length() : source.indexOf(this.pattern.substring(patternOffset, tempLength), sourceOffset);
                if (next < 0) {
                    pos.setErrorIndex(sourceOffset);
                    return null;
                }
                String strValue = source.substring(sourceOffset, next);
                if (!strValue.equals("{" + this.argumentNames[i] + "}")) {
                    resultMap.put(this.argumentNames[i], source.substring(sourceOffset, next));
                }
                sourceOffset = next;
            } else {
                tempStatus.setIndex(sourceOffset);
                resultMap.put(this.argumentNames[i], this.formats[i].parseObject(source, tempStatus));
                if (tempStatus.getIndex() == sourceOffset) {
                    pos.setErrorIndex(sourceOffset);
                    return null;
                }
                sourceOffset = tempStatus.getIndex();
            }
            ++i;
        }
        int len = this.pattern.length() - patternOffset;
        if (len != 0 && !this.pattern.regionMatches(patternOffset, source, sourceOffset, len)) {
            pos.setErrorIndex(sourceOffset);
            return null;
        }
        pos.setIndex(sourceOffset + len);
        return resultMap;
    }

    public Object[] parse(String source) throws ParseException {
        ParsePosition pos = new ParsePosition(0);
        Object[] result = this.parse(source, pos);
        if (pos.getIndex() == 0) {
            throw new ParseException("MessageFormat parse error!", pos.getErrorIndex());
        }
        return result;
    }

    public Map<String, Object> parseToMap(String source) throws ParseException {
        ParsePosition pos = new ParsePosition(0);
        Map<String, Object> result = this.parseToMap(source, pos);
        if (pos.getIndex() == 0) {
            throw new ParseException("MessageFormat parse error!", pos.getErrorIndex());
        }
        return result;
    }

    @Override
    public Object parseObject(String source, ParsePosition pos) {
        if (this.argumentNamesAreNumeric) {
            return this.parse(source, pos);
        }
        return this.parseToMap(source, pos);
    }

    @Override
    public Object clone() {
        MessageFormat other = (MessageFormat)super.clone();
        other.formats = (Format[])this.formats.clone();
        int i = 0;
        while (i < this.formats.length) {
            if (this.formats[i] != null) {
                other.formats[i] = (Format)this.formats[i].clone();
            }
            ++i;
        }
        other.offsets = (int[])this.offsets.clone();
        other.argumentNames = (String[])this.argumentNames.clone();
        other.argumentNamesAreNumeric = this.argumentNamesAreNumeric;
        return other;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || this.getClass() != obj.getClass()) {
            return false;
        }
        MessageFormat other = (MessageFormat)obj;
        return this.maxOffset == other.maxOffset && this.pattern.equals(other.pattern) && Utility.objectEquals(this.ulocale, other.ulocale) && Utility.arrayEquals(this.offsets, (Object)other.offsets) && Utility.arrayEquals(this.argumentNames, (Object)other.argumentNames) && Utility.arrayEquals(this.formats, (Object)other.formats) && this.argumentNamesAreNumeric == other.argumentNamesAreNumeric;
    }

    public int hashCode() {
        return this.pattern.hashCode();
    }

    private StringBuffer subformat(Object[] arguments, StringBuffer result, FieldPosition fp, List<AttributedCharacterIterator> characterIterators) {
        return this.subformat(this.arrayToMap(arguments), result, fp, characterIterators);
    }

    private StringBuffer subformat(Map<String, Object> arguments, StringBuffer result, FieldPosition fp, List<AttributedCharacterIterator> characterIterators) {
        int lastOffset = 0;
        int last = result.length();
        int i = 0;
        while (i <= this.maxOffset) {
            result.append(this.pattern.substring(lastOffset, this.offsets[i]));
            lastOffset = this.offsets[i];
            String argumentName = this.argumentNames[i];
            if (arguments == null || !arguments.containsKey(argumentName)) {
                result.append("{" + argumentName + "}");
            } else {
                Map<String, Object> obj = arguments.get(argumentName);
                String arg = null;
                Format subFormatter = null;
                if (obj == null) {
                    arg = "null";
                } else if (this.formats[i] != null) {
                    subFormatter = this.formats[i];
                    if ((subFormatter instanceof ChoiceFormat || subFormatter instanceof PluralFormat || subFormatter instanceof SelectFormat) && (arg = this.formats[i].format(obj)).indexOf(123) >= 0) {
                        subFormatter = new MessageFormat(arg, this.ulocale);
                        obj = arguments;
                        arg = null;
                    }
                } else if (obj instanceof Number) {
                    subFormatter = NumberFormat.getInstance(this.ulocale);
                } else if (obj instanceof Date) {
                    subFormatter = DateFormat.getDateTimeInstance(3, 3, this.ulocale);
                } else if (obj instanceof String) {
                    arg = (String)((Object)obj);
                } else {
                    arg = obj.toString();
                    if (arg == null) {
                        arg = "null";
                    }
                }
                if (characterIterators != null) {
                    if (last != result.length()) {
                        characterIterators.add(MessageFormat._createAttributedCharacterIterator(result.substring(last)));
                        last = result.length();
                    }
                    if (subFormatter != null) {
                        AttributedCharacterIterator subIterator = subFormatter.formatToCharacterIterator(obj);
                        this.append(result, subIterator);
                        if (last != result.length()) {
                            characterIterators.add(MessageFormat._createAttributedCharacterIterator(subIterator, (AttributedCharacterIterator.Attribute)Field.ARGUMENT, this.argumentNamesAreNumeric ? new Integer(argumentName) : argumentName));
                            last = result.length();
                        }
                        arg = null;
                    }
                    if (arg != null && arg.length() > 0) {
                        result.append(arg);
                        characterIterators.add(MessageFormat._createAttributedCharacterIterator(arg, (AttributedCharacterIterator.Attribute)Field.ARGUMENT, this.argumentNamesAreNumeric ? new Integer(argumentName) : argumentName));
                        last = result.length();
                    }
                } else {
                    if (subFormatter != null) {
                        arg = subFormatter.format(obj);
                    }
                    last = result.length();
                    result.append(arg);
                    if (i == 0 && fp != null && Field.ARGUMENT.equals(fp.getFieldAttribute())) {
                        fp.setBeginIndex(last);
                        fp.setEndIndex(result.length());
                    }
                    last = result.length();
                }
            }
            ++i;
        }
        result.append(this.pattern.substring(lastOffset, this.pattern.length()));
        if (characterIterators != null && last != result.length()) {
            characterIterators.add(MessageFormat._createAttributedCharacterIterator(result.substring(last)));
        }
        return result;
    }

    private void append(StringBuffer result, CharacterIterator iterator) {
        if (iterator.first() != '\uffff') {
            char aChar;
            result.append(iterator.first());
            while ((aChar = iterator.next()) != '\uffff') {
                result.append(aChar);
            }
        }
    }

    private void makeFormat(int position, int offsetNumber, StringBuilder[] segments) {
        int argumentNumber;
        if (offsetNumber >= this.formats.length) {
            int newLength = this.formats.length * 2;
            Format[] newFormats = new Format[newLength];
            int[] newOffsets = new int[newLength];
            String[] newArgumentNames = new String[newLength];
            System.arraycopy(this.formats, 0, newFormats, 0, this.maxOffset + 1);
            System.arraycopy(this.offsets, 0, newOffsets, 0, this.maxOffset + 1);
            System.arraycopy(this.argumentNames, 0, newArgumentNames, 0, this.maxOffset + 1);
            this.formats = newFormats;
            this.offsets = newOffsets;
            this.argumentNames = newArgumentNames;
        }
        int oldMaxOffset = this.maxOffset;
        this.maxOffset = offsetNumber;
        this.offsets[offsetNumber] = segments[0].length();
        this.argumentNames[offsetNumber] = segments[1].toString();
        try {
            argumentNumber = Integer.parseInt(segments[1].toString());
        }
        catch (NumberFormatException numberFormatException) {
            argumentNumber = -1;
        }
        if (offsetNumber == 0) {
            boolean bl = this.argumentNamesAreNumeric = argumentNumber >= 0;
        }
        if (this.argumentNamesAreNumeric && argumentNumber < 0 || !this.argumentNamesAreNumeric && !this.isAlphaIdentifier(this.argumentNames[offsetNumber])) {
            throw new IllegalArgumentException("All argument identifiers have to be either non-negative numbers or strings following the pattern ([:ID_Start:] [:ID_Continue:]*).\nFor more details on these unicode sets, visit http://demo.icu-project.org/icu-bin/ubrowse");
        }
        Format newFormat = null;
        int subformatType = MessageFormat.findKeyword(segments[2].toString(), typeList);
        block5 : switch (subformatType) {
            case 0: {
                break;
            }
            case 1: {
                switch (MessageFormat.findKeyword(segments[3].toString(), modifierList)) {
                    case 0: {
                        newFormat = NumberFormat.getInstance(this.ulocale);
                        break block5;
                    }
                    case 1: {
                        newFormat = NumberFormat.getCurrencyInstance(this.ulocale);
                        break block5;
                    }
                    case 2: {
                        newFormat = NumberFormat.getPercentInstance(this.ulocale);
                        break block5;
                    }
                    case 3: {
                        newFormat = NumberFormat.getIntegerInstance(this.ulocale);
                        break block5;
                    }
                }
                newFormat = new DecimalFormat(segments[3].toString(), new DecimalFormatSymbols(this.ulocale));
                break;
            }
            case 2: {
                switch (MessageFormat.findKeyword(segments[3].toString(), dateModifierList)) {
                    case 0: {
                        newFormat = DateFormat.getDateInstance(2, this.ulocale);
                        break block5;
                    }
                    case 1: {
                        newFormat = DateFormat.getDateInstance(3, this.ulocale);
                        break block5;
                    }
                    case 2: {
                        newFormat = DateFormat.getDateInstance(2, this.ulocale);
                        break block5;
                    }
                    case 3: {
                        newFormat = DateFormat.getDateInstance(1, this.ulocale);
                        break block5;
                    }
                    case 4: {
                        newFormat = DateFormat.getDateInstance(0, this.ulocale);
                        break block5;
                    }
                }
                newFormat = new SimpleDateFormat(segments[3].toString(), this.ulocale);
                break;
            }
            case 3: {
                switch (MessageFormat.findKeyword(segments[3].toString(), dateModifierList)) {
                    case 0: {
                        newFormat = DateFormat.getTimeInstance(2, this.ulocale);
                        break block5;
                    }
                    case 1: {
                        newFormat = DateFormat.getTimeInstance(3, this.ulocale);
                        break block5;
                    }
                    case 2: {
                        newFormat = DateFormat.getTimeInstance(2, this.ulocale);
                        break block5;
                    }
                    case 3: {
                        newFormat = DateFormat.getTimeInstance(1, this.ulocale);
                        break block5;
                    }
                    case 4: {
                        newFormat = DateFormat.getTimeInstance(0, this.ulocale);
                        break block5;
                    }
                }
                newFormat = new SimpleDateFormat(segments[3].toString(), this.ulocale);
                break;
            }
            case 4: {
                try {
                    newFormat = new ChoiceFormat(segments[3].toString());
                    break;
                }
                catch (Exception exception) {
                    this.maxOffset = oldMaxOffset;
                    throw new IllegalArgumentException("Choice Pattern incorrect");
                }
            }
            case 5: {
                RuleBasedNumberFormat rbnf = new RuleBasedNumberFormat(this.ulocale, 1);
                String ruleset = segments[3].toString().trim();
                if (ruleset.length() != 0) {
                    try {
                        rbnf.setDefaultRuleSet(ruleset);
                    }
                    catch (Exception exception) {}
                }
                newFormat = rbnf;
                break;
            }
            case 6: {
                RuleBasedNumberFormat rbnf = new RuleBasedNumberFormat(this.ulocale, 2);
                String ruleset = segments[3].toString().trim();
                if (ruleset.length() != 0) {
                    try {
                        rbnf.setDefaultRuleSet(ruleset);
                    }
                    catch (Exception exception) {}
                }
                newFormat = rbnf;
                break;
            }
            case 7: {
                RuleBasedNumberFormat rbnf = new RuleBasedNumberFormat(this.ulocale, 3);
                String ruleset = segments[3].toString().trim();
                if (ruleset.length() != 0) {
                    try {
                        rbnf.setDefaultRuleSet(ruleset);
                    }
                    catch (Exception exception) {}
                }
                newFormat = rbnf;
                break;
            }
            case 8: 
            case 9: {
                StringBuilder unquotedPattern = new StringBuilder();
                String quotedPattern = segments[3].toString();
                boolean inQuote = false;
                int i = 0;
                while (i < quotedPattern.length()) {
                    char ch = quotedPattern.charAt(i);
                    if (ch == '\'') {
                        if (i + 1 < quotedPattern.length() && quotedPattern.charAt(i + 1) == '\'') {
                            unquotedPattern.append(ch);
                            ++i;
                        } else {
                            inQuote = !inQuote;
                        }
                    } else {
                        unquotedPattern.append(ch);
                    }
                    ++i;
                }
                if (subformatType == 8) {
                    PluralFormat pls = new PluralFormat(this.ulocale, unquotedPattern.toString());
                    newFormat = pls;
                    break;
                }
                newFormat = new SelectFormat(unquotedPattern.toString());
                break;
            }
            default: {
                this.maxOffset = oldMaxOffset;
                throw new IllegalArgumentException("unknown format type at ");
            }
        }
        this.formats[offsetNumber] = newFormat;
        segments[1].setLength(0);
        segments[2].setLength(0);
        segments[3].setLength(0);
    }

    private static final int findKeyword(String s, String[] list) {
        s = s.trim().toLowerCase();
        int i = 0;
        while (i < list.length) {
            if (s.equals(list[i])) {
                return i;
            }
            ++i;
        }
        return -1;
    }

    private static final void copyAndFixQuotes(String source, int start, int end, StringBuilder target) {
        boolean gotLB = false;
        int i = start;
        while (i < end) {
            char ch = source.charAt(i);
            if (ch == '{') {
                target.append("'{'");
                gotLB = true;
            } else if (ch == '}') {
                if (gotLB) {
                    target.append(ch);
                    gotLB = false;
                } else {
                    target.append("'}'");
                }
            } else if (ch == '\'') {
                target.append("''");
            } else {
                target.append(ch);
            }
            ++i;
        }
    }

    private void readObject(ObjectInputStream in) throws IOException, ClassNotFoundException {
        boolean isValid;
        in.defaultReadObject();
        if (this.argumentNames == null) {
            this.argumentNamesAreNumeric = true;
            this.argumentNames = new String[this.argumentNumbers.length];
            int i = 0;
            while (i < this.argumentNumbers.length) {
                this.argumentNames[i] = String.valueOf(this.argumentNumbers[i]);
                ++i;
            }
        }
        boolean bl = isValid = this.maxOffset >= -1 && this.formats.length > this.maxOffset && this.offsets.length > this.maxOffset && this.argumentNames.length > this.maxOffset;
        if (isValid) {
            int lastOffset = this.pattern.length() + 1;
            int i = this.maxOffset;
            while (i >= 0) {
                if (this.offsets[i] < 0 || this.offsets[i] > lastOffset) {
                    isValid = false;
                    break;
                }
                lastOffset = this.offsets[i];
                --i;
            }
        }
        if (!isValid) {
            throw new InvalidObjectException("Could not reconstruct MessageFormat from corrupt stream.");
        }
        if (this.ulocale == null) {
            this.ulocale = ULocale.forLocale(this.locale);
        }
    }

    private Map<String, Object> arrayToMap(Object[] array) {
        HashMap<String, Object> map = new HashMap<String, Object>();
        if (array != null) {
            int i = 0;
            while (i < array.length) {
                map.put(Integer.toString(i), array[i]);
                ++i;
            }
        }
        return map;
    }

    private boolean isAlphaIdentifier(String argument) {
        if (argument.length() == 0) {
            return false;
        }
        int i = 0;
        while (i < argument.length()) {
            if (i == 0 && !UCharacter.isUnicodeIdentifierStart(argument.charAt(i)) || i > 0 && !UCharacter.isUnicodeIdentifierPart(argument.charAt(i))) {
                return false;
            }
            ++i;
        }
        return true;
    }

    public static String autoQuoteApostrophe(String pattern) {
        StringBuilder buf = new StringBuilder(pattern.length() * 2);
        int state = 0;
        int braceCount = 0;
        int i = 0;
        int j = pattern.length();
        while (i < j) {
            char c = pattern.charAt(i);
            block0 : switch (state) {
                case 0: {
                    switch (c) {
                        case '\'': {
                            state = 1;
                            break;
                        }
                        case '{': {
                            state = 3;
                            ++braceCount;
                        }
                    }
                    break;
                }
                case 1: {
                    switch (c) {
                        case '\'': {
                            state = 0;
                            break block0;
                        }
                        case '{': 
                        case '}': {
                            state = 2;
                            break block0;
                        }
                    }
                    buf.append('\'');
                    state = 0;
                    break;
                }
                case 2: {
                    switch (c) {
                        case '\'': {
                            state = 0;
                        }
                    }
                    break;
                }
                case 3: {
                    switch (c) {
                        case '{': {
                            ++braceCount;
                            break;
                        }
                        case '}': {
                            if (--braceCount != 0) break;
                            state = 0;
                        }
                    }
                    break;
                }
            }
            buf.append(c);
            ++i;
        }
        if (state == 1 || state == 2) {
            buf.append('\'');
        }
        return new String(buf);
    }

    private static AttributedCharacterIterator _createAttributedCharacterIterator(String text) {
        AttributedString as = new AttributedString(text);
        return as.getIterator();
    }

    private static AttributedCharacterIterator _createAttributedCharacterIterator(AttributedCharacterIterator[] iterators) {
        if (iterators == null || iterators.length == 0) {
            return MessageFormat._createAttributedCharacterIterator("");
        }
        StringBuilder sb = new StringBuilder();
        int i = 0;
        while (i < iterators.length) {
            int index = iterators[i].getBeginIndex();
            int end = iterators[i].getEndIndex();
            while (index < end) {
                sb.append(iterators[i].setIndex(index++));
            }
            ++i;
        }
        AttributedString as = new AttributedString(sb.toString());
        int offset = 0;
        int i2 = 0;
        while (i2 < iterators.length) {
            iterators[i2].first();
            int start = iterators[i2].getBeginIndex();
            do {
                Map<AttributedCharacterIterator.Attribute, Object> map = iterators[i2].getAttributes();
                int len = iterators[i2].getRunLimit() - start;
                if (map.size() > 0) {
                    for (Map.Entry<AttributedCharacterIterator.Attribute, Object> entry : map.entrySet()) {
                        as.addAttribute(entry.getKey(), entry.getValue(), offset, offset + len);
                    }
                }
                offset += len;
                iterators[i2].setIndex(start += len);
            } while (iterators[i2].current() != '\uffff');
            ++i2;
        }
        return as.getIterator();
    }

    private static AttributedCharacterIterator _createAttributedCharacterIterator(AttributedCharacterIterator iterator, AttributedCharacterIterator.Attribute key, Object value) {
        AttributedString as = new AttributedString(iterator);
        as.addAttribute(key, value);
        return as.getIterator();
    }

    private static AttributedCharacterIterator _createAttributedCharacterIterator(String text, AttributedCharacterIterator.Attribute key, Object value) {
        AttributedString as = new AttributedString(text);
        as.addAttribute(key, value);
        return as.getIterator();
    }

    public static class Field
    extends Format.Field {
        private static final long serialVersionUID = 7510380454602616157L;
        public static final Field ARGUMENT = new Field("message argument field");

        protected Field(String name) {
            super(name);
        }

        protected Object readResolve() throws InvalidObjectException {
            if (this.getClass() != Field.class) {
                throw new InvalidObjectException("A subclass of MessageFormat.Field must implement readResolve.");
            }
            if (this.getName().equals(ARGUMENT.getName())) {
                return ARGUMENT;
            }
            throw new InvalidObjectException("Unknown attribute name.");
        }
    }
}

