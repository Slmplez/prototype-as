/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.equinox.internal.p2.metadata;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import org.eclipse.equinox.internal.p2.metadata.EnumDefinition;
import org.eclipse.equinox.internal.p2.metadata.Messages;
import org.eclipse.equinox.internal.p2.metadata.VersionFormat;
import org.eclipse.equinox.internal.p2.metadata.VersionParser;
import org.eclipse.equinox.internal.p2.metadata.VersionVector;
import org.eclipse.equinox.p2.metadata.VersionFormatException;
import org.eclipse.osgi.util.NLS;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
class VersionFormatParser {
    static final Qualifier EXACT_ONE_QUALIFIER = new Qualifier(1, 1);
    static final Qualifier ONE_OR_MANY_QUALIFIER = new Qualifier(1, Integer.MAX_VALUE);
    static final Qualifier ZERO_OR_MANY_QUALIFIER = new Qualifier(0, Integer.MAX_VALUE);
    static final Qualifier ZERO_OR_ONE_QUALIFIER = new Qualifier(0, 1);
    private int current;
    private List<Fragment> currentList;
    private int eos;
    private String format;
    private int start;

    VersionFormatParser() {
    }

    static void appendCharacterRange(StringBuffer sb, char[] range, boolean inverted) {
        sb.append('=');
        sb.append('[');
        if (inverted) {
            sb.append('^');
        }
        int top = range.length;
        int idx = 0;
        while (idx < top) {
            char b = range[idx];
            if (b == '\\' || b == ']' || b == '-' && idx + 1 < top) {
                sb.append('\\');
            }
            sb.append(b);
            int ndx = idx + 1;
            if (ndx + 2 < top) {
                char c = b;
                while (ndx < top) {
                    char n = range[ndx];
                    if (c + '\u0001' != n) break;
                    c = n;
                    ++ndx;
                }
                if (ndx > idx + 3) {
                    sb.append('-');
                    if (c == '\\' || c == ']' || c == '-' && idx + 1 < top) {
                        sb.append('\\');
                    }
                    sb.append(c);
                    idx = ndx - 1;
                }
            }
            ++idx;
        }
        sb.append(']');
        sb.append(';');
    }

    static Fragment createAutoFragment(Instructions instr, Qualifier qualifier) {
        return new AutoFragment(instr, qualifier);
    }

    static Fragment createDelimiterFragment(Instructions instr, Qualifier qualifier) {
        return new DelimiterFragment(instr, qualifier);
    }

    static Fragment createGroupFragment(Instructions instr, Qualifier qualifier, Fragment[] fragments, boolean array) {
        return new GroupFragment(instr, qualifier, fragments, array);
    }

    static Fragment createLiteralFragment(Qualifier qualifier, String literal) {
        return new LiteralFragment(qualifier, literal);
    }

    static Fragment createNumberFragment(Instructions instr, Qualifier qualifier, boolean signed) {
        return new NumberFragment(instr, qualifier, signed);
    }

    static Fragment createPadFragment(Qualifier qualifier) {
        return new PadFragment(qualifier);
    }

    static Fragment createQuotedFragment(Instructions instr, Qualifier qualifier) {
        return new QuotedFragment(instr, qualifier);
    }

    static Fragment createRawFragment(Instructions instr, Qualifier qualifier) {
        return new RawFragment(instr, qualifier);
    }

    static Fragment createStringFragment(Instructions instr, Qualifier qualifier, boolean unbound) {
        return new StringFragment(instr, qualifier, unbound);
    }

    static boolean equalsAllowNull(Object a, Object b) {
        return a == null ? b == null : b != null && a.equals(b);
    }

    Fragment compile(String fmt, int pos, int maxPos) throws VersionFormatException {
        Fragment topFrag;
        this.format = fmt;
        if (this.start >= maxPos) {
            throw new VersionFormatException(Messages.format_is_empty);
        }
        this.start = pos;
        this.current = pos;
        this.eos = maxPos;
        this.currentList = new ArrayList<Fragment>();
        while (this.current < this.eos) {
            this.parseFragment();
        }
        switch (this.currentList.size()) {
            case 0: {
                throw new VersionFormatException(Messages.format_is_empty);
            }
            case 1: {
                Fragment frag = this.currentList.get(0);
                if (frag.isGroup()) {
                    topFrag = frag;
                    break;
                }
            }
            default: {
                topFrag = VersionFormatParser.createGroupFragment(null, EXACT_ONE_QUALIFIER, this.currentList.toArray(new Fragment[this.currentList.size()]), false);
            }
        }
        this.currentList = null;
        return topFrag;
    }

    private void assertChar(char expected) throws VersionFormatException {
        if (this.current >= this.eos) {
            throw this.formatException(NLS.bind((String)Messages.premature_end_of_format_expected_0, (Object)new String(new char[]{expected})));
        }
        char c = this.format.charAt(this.current);
        if (c != expected) {
            throw this.formatException(c, new String(new char[]{expected}));
        }
        ++this.current;
    }

    private VersionFormatException formatException(char found, String expected) {
        return this.formatException(new String(new char[]{found}), expected);
    }

    private VersionFormatException formatException(String message) {
        return new VersionFormatException(NLS.bind((String)Messages.syntax_error_in_version_format_0_1_2, (Object[])new Object[]{this.format.substring(this.start, this.eos), new Integer(this.current), message}));
    }

    private VersionFormatException formatException(String found, String expected) {
        return new VersionFormatException(NLS.bind((String)Messages.syntax_error_in_version_format_0_1_found_2_expected_3, (Object[])new Object[]{this.format.substring(this.start, this.eos), new Integer(this.current), found, expected}));
    }

    private VersionFormatException illegalControlCharacter(char c) {
        return this.formatException(NLS.bind((String)Messages.illegal_character_encountered_ascii_0, (Object)VersionParser.valueOf(c)));
    }

    private String parseAndConsiderEscapeUntil(char endChar) throws VersionFormatException {
        StringBuffer sb = new StringBuffer();
        while (this.current < this.eos) {
            char c;
            if ((c = this.format.charAt(this.current++)) == endChar) break;
            if (c < ' ') {
                throw this.illegalControlCharacter(c);
            }
            if (c == '\\') {
                if (this.current == this.eos) {
                    throw this.formatException(Messages.EOS_after_escape);
                }
                if ((c = this.format.charAt(this.current++)) < ' ') {
                    throw this.illegalControlCharacter(c);
                }
            }
            sb.append(c);
        }
        return sb.toString();
    }

    private void parseAuto() throws VersionFormatException {
        Instructions ep = this.parseProcessing();
        if (ep != null && ep.padValue != null) {
            throw this.formatException(Messages.auto_can_not_have_pad_value);
        }
        this.currentList.add(VersionFormatParser.createAutoFragment(ep, this.parseQualifier()));
    }

    private void parseBracketGroup() throws VersionFormatException {
        List<Fragment> saveList = this.currentList;
        this.currentList = new ArrayList<Fragment>();
        while (this.current < this.eos && this.format.charAt(this.current) != ']') {
            this.parseFragment();
        }
        if (this.current == this.eos) {
            throw this.formatException(NLS.bind((String)Messages.premature_end_of_format_expected_0, (Object)"]"));
        }
        ++this.current;
        Instructions ep = this.parseProcessing();
        saveList.add(VersionFormatParser.createGroupFragment(ep, ZERO_OR_ONE_QUALIFIER, this.currentList.toArray(new Fragment[this.currentList.size()]), false));
        this.currentList = saveList;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void parseCharacterGroup(Instructions ep) throws VersionFormatException {
        this.assertChar('[');
        StringBuffer sb = new StringBuffer();
        block6: while (this.current < this.eos) {
            char c = this.format.charAt(this.current);
            switch (c) {
                case '\\': {
                    if (this.current + 1 >= this.eos) {
                        throw this.formatException(Messages.premature_end_of_format);
                    }
                    sb.append(this.format.charAt(++this.current));
                    break;
                }
                case '^': {
                    if (sb.length() == 0) {
                        ep.inverted = true;
                        break;
                    }
                    sb.append(c);
                    break;
                }
                case ']': {
                    break block6;
                }
                case '-': {
                    if (sb.length() > 0 && this.current + 1 < this.eos) {
                        char rangeEnd;
                        if ((rangeEnd = this.format.charAt(++this.current)) == ']') {
                            sb.append(c);
                            break block6;
                        }
                        char rangeStart = sb.charAt(sb.length() - 1);
                        if (rangeEnd < rangeStart) {
                            throw this.formatException(Messages.negative_character_range);
                        }
                        while ((rangeStart = (char)(rangeStart + '\u0001')) <= rangeEnd) {
                            sb.append(rangeStart);
                        }
                        break;
                    }
                }
                default: {
                    if (c < ' ') {
                        throw this.illegalControlCharacter(c);
                    }
                    sb.append(c);
                }
            }
            ++this.current;
        }
        this.assertChar(']');
        int top = sb.length();
        char[] chars = new char[top];
        sb.getChars(0, top, chars, 0);
        ep.characters = chars;
    }

    private void parseDelimiter() throws VersionFormatException {
        Instructions ep = this.parseProcessing();
        if (ep != null) {
            if (ep.rangeMin != 0 || ep.rangeMax != Integer.MAX_VALUE) {
                throw this.formatException(Messages.delimiter_can_not_have_range);
            }
            if (ep.ignore) {
                throw this.formatException(Messages.delimiter_can_not_be_ignored);
            }
            if (ep.defaultValue != null) {
                throw this.formatException(Messages.delimiter_can_not_have_default_value);
            }
            if (ep.padValue != null) {
                throw this.formatException(Messages.delimiter_can_not_have_pad_value);
            }
        }
        this.currentList.add(VersionFormatParser.createDelimiterFragment(ep, this.parseQualifier()));
    }

    private void parseEnum(Instructions processing) throws VersionFormatException {
        ++this.current;
        ArrayList<List<String>> identifiers = new ArrayList<List<String>>();
        ArrayList<String> idents = new ArrayList<String>();
        StringBuffer sb = new StringBuffer();
        while (true) {
            if (this.current >= this.eos) {
                throw this.formatException(Messages.bad_enum_definition);
            }
            char c = this.format.charAt(this.current++);
            while (c != '}' && c != ',' && c != '=') {
                if (this.current >= this.eos || c <= ' ') {
                    throw this.formatException(Messages.bad_enum_definition);
                }
                if (c == '\\') {
                    c = this.format.charAt(this.current++);
                    if (this.current >= this.eos) {
                        throw this.formatException(Messages.bad_enum_definition);
                    }
                }
                sb.append(c);
                c = this.format.charAt(this.current++);
            }
            idents.add(sb.toString());
            sb.setLength(0);
            if (c == '=') continue;
            identifiers.add(idents);
            if (c == '}') break;
            idents = new ArrayList();
        }
        boolean enumCaseSensitive = true;
        boolean enumOptional = false;
        boolean enumBegins = false;
        while (this.current < this.eos) {
            char c = this.format.charAt(this.current);
            if (c == 'i') {
                enumCaseSensitive = false;
                ++this.current;
                continue;
            }
            if (c == 'b') {
                enumBegins = true;
                ++this.current;
                continue;
            }
            if (c != '?') break;
            enumOptional = true;
            ++this.current;
        }
        HashSet<String> unique = new HashSet<String>();
        int ordinal = identifiers.size();
        while (--ordinal >= 0) {
            List<String> ids = identifiers.get(ordinal);
            int idx = ids.size();
            while (--idx >= 0) {
                String id = ids.get(idx);
                if (!enumCaseSensitive) {
                    id = id.toLowerCase();
                }
                if (!unique.add(id)) {
                    throw this.formatException(Messages.bad_enum_definition);
                }
                ids.set(idx, id);
            }
        }
        EnumDefinition enumDefinition = EnumDefinition.getEnumDefinition(identifiers);
        processing.enumInstruction = new EnumInstruction(enumDefinition, enumCaseSensitive, enumOptional, enumBegins);
    }

    private void parseFragment() throws VersionFormatException {
        if (this.current == this.eos) {
            throw this.formatException(Messages.premature_end_of_format);
        }
        char c = this.format.charAt(this.current++);
        switch (c) {
            case '(': {
                this.parseGroup(false);
                break;
            }
            case '<': {
                this.parseGroup(true);
                break;
            }
            case '[': {
                this.parseBracketGroup();
                break;
            }
            case 'a': {
                this.parseAuto();
                break;
            }
            case 'r': {
                this.parseRaw();
                break;
            }
            case 'n': {
                this.parseNumber(false);
                break;
            }
            case 'N': {
                this.parseNumber(true);
                break;
            }
            case 's': {
                this.parseString(false);
                break;
            }
            case 'S': {
                this.parseString(true);
                break;
            }
            case 'd': {
                this.parseDelimiter();
                break;
            }
            case 'q': {
                this.parseQuotedString();
                break;
            }
            case 'p': {
                this.parsePad();
                break;
            }
            default: {
                this.parseLiteral(c);
            }
        }
    }

    private void parseGroup(boolean array) throws VersionFormatException {
        List<Fragment> saveList = this.currentList;
        this.currentList = new ArrayList<Fragment>();
        char expectedEnd = array ? (char)'>' : ')';
        while (this.current < this.eos && this.format.charAt(this.current) != expectedEnd) {
            this.parseFragment();
        }
        this.assertChar(expectedEnd);
        Instructions ep = this.parseProcessing();
        if (ep != null) {
            if (ep.characters != null) {
                throw this.formatException(Messages.array_can_not_have_character_group);
            }
            if (ep.rangeMax != Integer.MAX_VALUE && ep.padValue != null) {
                throw this.formatException(Messages.cannot_combine_range_upper_bound_with_pad_value);
            }
            if (ep.enumInstruction != null) {
                throw this.formatException(Messages.array_can_not_have_enum);
            }
        }
        if (this.currentList.isEmpty()) {
            throw this.formatException(array ? Messages.array_can_not_be_empty : Messages.group_can_not_be_empty);
        }
        saveList.add(VersionFormatParser.createGroupFragment(ep, this.parseQualifier(), this.currentList.toArray(new Fragment[this.currentList.size()]), array));
        this.currentList = saveList;
    }

    private int parseIntegerLiteral() throws VersionFormatException {
        if (this.current == this.eos) {
            throw this.formatException(NLS.bind((String)Messages.premature_end_of_format_expected_0, (Object)"<integer>"));
        }
        char c = this.format.charAt(this.current);
        if (!VersionParser.isDigit(c)) {
            throw this.formatException(c, "<integer>");
        }
        int value = c - 48;
        while (++this.current < this.eos) {
            c = this.format.charAt(this.current);
            if (!VersionParser.isDigit(c)) break;
            value *= 10;
            value += c - 48;
        }
        return value;
    }

    private void parseLiteral(char c) throws VersionFormatException {
        String value;
        switch (c) {
            case '\'': {
                value = this.parseAndConsiderEscapeUntil(c);
                break;
            }
            case ')': 
            case '*': 
            case '?': 
            case ']': 
            case '{': 
            case '}': {
                throw this.formatException(c, "<literal>");
            }
            default: {
                if (VersionParser.isLetterOrDigit(c)) {
                    throw this.formatException(c, "<literal>");
                }
                if (c < ' ') {
                    throw this.illegalControlCharacter(c);
                }
                if (c == '\\') {
                    if (this.current == this.eos) {
                        throw this.formatException(Messages.EOS_after_escape);
                    }
                    if ((c = this.format.charAt(this.current++)) < ' ') {
                        throw this.illegalControlCharacter(c);
                    }
                }
                value = new String(new char[]{c});
            }
        }
        this.currentList.add(VersionFormatParser.createLiteralFragment(this.parseQualifier(), value));
    }

    private int[] parseMinMax() throws VersionFormatException {
        int max = Integer.MAX_VALUE;
        ++this.current;
        int min = this.parseIntegerLiteral();
        char c = this.format.charAt(this.current);
        if (c == '}') {
            max = min;
            if (max == 0) {
                throw this.formatException(Messages.range_max_cannot_be_zero);
            }
            ++this.current;
        } else if (c == ',' && this.current + 1 < this.eos) {
            if (this.format.charAt(++this.current) != '}') {
                max = this.parseIntegerLiteral();
                if (max == 0) {
                    throw this.formatException(Messages.range_max_cannot_be_zero);
                }
                if (max < min) {
                    throw this.formatException(Messages.range_max_cannot_be_less_then_range_min);
                }
            }
            this.assertChar('}');
        } else {
            throw this.formatException(c, "},");
        }
        return new int[]{min, max};
    }

    private void parseNumber(boolean signed) throws VersionFormatException {
        Instructions ep = this.parseProcessing();
        if (ep != null && ep.padValue != null) {
            throw this.formatException(Messages.number_can_not_have_pad_value);
        }
        this.currentList.add(VersionFormatParser.createNumberFragment(ep, this.parseQualifier(), signed));
    }

    private void parsePad() throws VersionFormatException {
        this.currentList.add(VersionFormatParser.createPadFragment(this.parseQualifier()));
    }

    private Instructions parseProcessing() throws VersionFormatException {
        if (this.current >= this.eos) {
            return null;
        }
        char c = this.format.charAt(this.current);
        if (c != '=') {
            return null;
        }
        Instructions ep = new Instructions();
        do {
            ++this.current;
            this.parseProcessingInstruction(ep);
        } while (this.current < this.eos && this.format.charAt(this.current) == '=');
        return ep;
    }

    private void parseProcessingInstruction(Instructions processing) throws VersionFormatException {
        if (this.current == this.eos) {
            throw this.formatException(Messages.premature_end_of_format);
        }
        char c = this.format.charAt(this.current);
        if (c == 'p') {
            if (processing.padValue != null) {
                throw this.formatException(Messages.pad_defined_more_then_once);
            }
            if (processing.ignore) {
                throw this.formatException(Messages.cannot_combine_ignore_with_other_instruction);
            }
            ++this.current;
            processing.padValue = this.parseRawElement();
        } else if (c == '!') {
            if (processing.ignore) {
                throw this.formatException(Messages.ignore_defined_more_then_once);
            }
            if (processing.padValue != null || processing.characters != null || processing.rangeMin != 0 || processing.rangeMax != Integer.MAX_VALUE || processing.defaultValue != null) {
                throw this.formatException(Messages.cannot_combine_ignore_with_other_instruction);
            }
            ++this.current;
            processing.ignore = true;
        } else if (c == '[') {
            if (processing.characters != null) {
                throw this.formatException(Messages.character_group_defined_more_then_once);
            }
            if (processing.ignore) {
                throw this.formatException(Messages.cannot_combine_ignore_with_other_instruction);
            }
            this.parseCharacterGroup(processing);
        } else if (c == '{') {
            if (this.current + 1 == this.eos) {
                throw this.formatException(Messages.premature_end_of_format);
            }
            if (VersionParser.isDigit(this.format.charAt(this.current + 1))) {
                if (processing.rangeMin != 0 || processing.rangeMax != Integer.MAX_VALUE) {
                    throw this.formatException(Messages.range_defined_more_then_once);
                }
                if (processing.ignore) {
                    throw this.formatException(Messages.cannot_combine_ignore_with_other_instruction);
                }
                int[] minMax = this.parseMinMax();
                processing.rangeMin = minMax[0];
                processing.rangeMax = minMax[1];
            } else {
                if (processing.enumInstruction != null) {
                    throw this.formatException(Messages.enum_defined_more_then_once);
                }
                this.parseEnum(processing);
            }
        } else {
            if (processing.defaultValue != null) {
                throw this.formatException(Messages.default_defined_more_then_once);
            }
            if (processing.ignore) {
                throw this.formatException(Messages.cannot_combine_ignore_with_other_instruction);
            }
            Comparable<?> dflt = this.parseRawElement();
            processing.defaultValue = dflt;
            if (this.current < this.eos && this.format.charAt(this.current) == '{') {
                if (++this.current == this.eos) {
                    throw this.formatException(Messages.premature_end_of_format);
                }
                processing.oppositeTranslationChar = this.format.charAt(this.current++);
                if (this.current == this.eos) {
                    throw this.formatException(Messages.premature_end_of_format);
                }
                if (dflt == "") {
                    processing.oppositeTranslationRepeat = 3;
                    if (this.format.charAt(this.current) == ',') {
                        ++this.current;
                        processing.oppositeTranslationRepeat = this.parseIntegerLiteral();
                    }
                } else if (dflt != VersionVector.MAXS_VALUE) {
                    this.current -= 2;
                    throw this.formatException(Messages.only_max_and_empty_string_defaults_can_have_translations);
                }
                this.assertChar('}');
            }
        }
        this.assertChar(';');
    }

    private Qualifier parseQualifier() throws VersionFormatException {
        if (this.current >= this.eos) {
            return EXACT_ONE_QUALIFIER;
        }
        char c = this.format.charAt(this.current);
        if (c == '?') {
            ++this.current;
            return ZERO_OR_ONE_QUALIFIER;
        }
        if (c == '*') {
            ++this.current;
            return ZERO_OR_MANY_QUALIFIER;
        }
        if (c == '+') {
            ++this.current;
            return ONE_OR_MANY_QUALIFIER;
        }
        if (c != '{') {
            return EXACT_ONE_QUALIFIER;
        }
        int[] minMax = this.parseMinMax();
        int min = minMax[0];
        int max = minMax[1];
        if (min == 0) {
            if (max == 1) {
                return ZERO_OR_ONE_QUALIFIER;
            }
            if (max == Integer.MAX_VALUE) {
                return ZERO_OR_MANY_QUALIFIER;
            }
        } else if (min == 1) {
            if (max == 1) {
                return EXACT_ONE_QUALIFIER;
            }
            if (max == Integer.MAX_VALUE) {
                return ONE_OR_MANY_QUALIFIER;
            }
        }
        return new Qualifier(min, max);
    }

    private void parseQuotedString() throws VersionFormatException {
        Instructions ep = this.parseProcessing();
        if (ep != null && ep.padValue != null) {
            throw this.formatException(Messages.string_can_not_have_pad_value);
        }
        this.currentList.add(VersionFormatParser.createQuotedFragment(ep, this.parseQualifier()));
    }

    private void parseRaw() throws VersionFormatException {
        Instructions ep = this.parseProcessing();
        if (ep != null && ep.padValue != null) {
            throw this.formatException(Messages.raw_element_can_not_have_pad_value);
        }
        this.currentList.add(VersionFormatParser.createRawFragment(ep, this.parseQualifier()));
    }

    private Comparable<?> parseRawElement() throws VersionFormatException {
        int[] position = new int[]{this.current};
        Comparable<?> v = VersionParser.parseRawElement(this.format, position, this.eos);
        if (v == null) {
            throw new VersionFormatException(NLS.bind((String)Messages.raw_element_expected_0, (Object)this.format));
        }
        this.current = position[0];
        return v;
    }

    private void parseString(boolean unlimited) throws VersionFormatException {
        Instructions ep = this.parseProcessing();
        if (ep != null && ep.padValue != null) {
            throw this.formatException(Messages.string_can_not_have_pad_value);
        }
        this.currentList.add(VersionFormatParser.createStringFragment(ep, this.parseQualifier(), unlimited));
    }

    static void toStringEscaped(StringBuffer sb, String value, String escapes) {
        int idx = 0;
        while (idx < value.length()) {
            char c = value.charAt(idx);
            if (c == '\\' || escapes.indexOf(c) >= 0) {
                sb.append('\\');
            }
            sb.append(c);
            ++idx;
        }
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static class AutoFragment
    extends RangeFragment {
        private static final long serialVersionUID = -1016534328164247755L;

        AutoFragment(Instructions instr, Qualifier qualifier) {
            super(instr, qualifier);
        }

        @Override
        boolean parseOne(List<Comparable<?>> segments, String version, int maxPos, VersionFormat.TreeInfo info) {
            int len;
            int pos = info.getPosition();
            maxPos = this.checkRange(pos, maxPos);
            if (maxPos < 0) {
                return false;
            }
            char c = version.charAt(pos);
            if (VersionParser.isDigit(c) && this.isAllowed(c) && (this.enumInstruction == null || this.enumInstruction.isOptional())) {
                int len2;
                int start = pos;
                int value = c - 48;
                while (++pos < maxPos) {
                    c = version.charAt(pos);
                    if (!VersionParser.isDigit(c) || !this.isAllowed(c)) break;
                    value *= 10;
                    value += c - 48;
                }
                if (this.rangeMin > (len2 = pos - start) || len2 > this.rangeMax) {
                    return false;
                }
                if (!this.isIgnored()) {
                    segments.add(VersionParser.valueOf(value));
                }
                info.setPosition(pos);
                return true;
            }
            int start = pos;
            if (this.enumInstruction != null) {
                int[] posHolder = new int[]{pos};
                EnumDefinition.EnumSegment es = this.enumInstruction.getEnumSegment(this, version, posHolder, maxPos);
                if (es != null) {
                    pos = posHolder[0];
                    int len3 = pos - start;
                    if (this.rangeMin > len3 || len3 > this.rangeMax) {
                        return false;
                    }
                    if (!this.isIgnored()) {
                        segments.add(es);
                    }
                    info.setPosition(pos);
                    return true;
                }
                if (!this.enumInstruction.isOptional()) {
                    return false;
                }
            }
            if (!VersionParser.isLetter(c) || !this.isAllowed(c)) {
                return false;
            }
            ++pos;
            while (pos < maxPos) {
                c = version.charAt(pos);
                if (!VersionParser.isLetter(c) || !this.isAllowed(c)) break;
                ++pos;
            }
            if (this.rangeMin > (len = pos - start) || len > this.rangeMax) {
                return false;
            }
            if (!this.isIgnored()) {
                segments.add((Comparable<?>)((Object)version.substring(start, pos)));
            }
            info.setPosition(pos);
            return true;
        }

        @Override
        void toString(StringBuffer sb) {
            sb.append('a');
            super.toString(sb);
        }
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static class DelimiterFragment
    extends Fragment {
        private static final long serialVersionUID = 8173654376143370605L;
        private final char[] delimChars;
        private final boolean inverted;

        DelimiterFragment(Instructions ep, Qualifier qualifier) {
            super(qualifier);
            if (ep == null) {
                this.delimChars = null;
                this.inverted = false;
            } else {
                this.inverted = ep.inverted;
                this.delimChars = ep.characters;
            }
        }

        boolean isMatch(String version, int pos) {
            char c = version.charAt(pos);
            if (this.delimChars != null) {
                int idx = 0;
                while (idx < this.delimChars.length) {
                    if (c == this.delimChars[idx]) {
                        return !this.inverted;
                    }
                    ++idx;
                }
                return this.inverted;
            }
            return !VersionParser.isLetterOrDigit(c);
        }

        @Override
        boolean parseOne(List<Comparable<?>> segments, String version, int maxPos, VersionFormat.TreeInfo info) {
            int pos = info.getPosition();
            if (pos < maxPos && this.isMatch(version, pos)) {
                info.setPosition(pos + 1);
                return true;
            }
            return false;
        }

        @Override
        void toString(StringBuffer sb) {
            sb.append('d');
            if (this.delimChars != null) {
                VersionFormatParser.appendCharacterRange(sb, this.delimChars, this.inverted);
            }
            super.toString(sb);
        }
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static abstract class ElementFragment
    extends Fragment {
        private static final long serialVersionUID = -6834591415456539713L;
        private final Comparable<?> defaultValue;
        private final boolean ignored;
        private final Comparable<?> padValue;

        ElementFragment(Instructions instr, Qualifier qualifier) {
            super(qualifier);
            if (instr != null) {
                this.ignored = instr.ignore;
                this.defaultValue = instr.defaultValue;
                this.padValue = instr.padValue;
            } else {
                this.ignored = false;
                this.defaultValue = null;
                this.padValue = null;
            }
        }

        @Override
        Comparable<?> getDefaultValue() {
            return this.defaultValue;
        }

        @Override
        Comparable<?> getPadValue() {
            return this.padValue;
        }

        boolean isIgnored() {
            return this.ignored;
        }

        @Override
        void setDefaults(List<Comparable<?>> segments) {
            Comparable<?> defaultVal = this.getDefaultValue();
            if (defaultVal != null) {
                segments.add(defaultVal);
            }
        }

        @Override
        void toString(StringBuffer sb) {
            if (this.ignored) {
                sb.append('=');
                sb.append('!');
                sb.append(';');
            }
            if (this.defaultValue != null) {
                sb.append('=');
                VersionFormat.rawToString(sb, false, this.defaultValue);
                sb.append(';');
            }
            if (this.padValue != null) {
                sb.append('=');
                sb.append('p');
                VersionFormat.rawToString(sb, false, this.padValue);
                sb.append(';');
            }
            super.toString(sb);
        }
    }

    private static class EnumInstruction {
        private final EnumDefinition definition;
        private final boolean caseSensitive;
        private final boolean optional;
        private final boolean begins;

        EnumInstruction(EnumDefinition definition, boolean caseSensitive, boolean optional, boolean begins) {
            this.definition = definition;
            this.caseSensitive = caseSensitive;
            this.optional = optional;
            this.begins = begins;
        }

        EnumDefinition.EnumSegment getEnumSegment(RangeFragment fragment, String version, int[] posHolder, int maxPos) {
            int pos = posHolder[0];
            int len = maxPos - pos;
            int minLen = this.definition.getShortestLength();
            if (minLen > len) {
                return null;
            }
            int maxLen = this.definition.getLongestLength();
            if (maxLen < len) {
                len = maxLen;
            }
            ++len;
            while (--len >= minLen) {
                int ordinal;
                char c;
                int last = pos + len;
                if (!this.begins && last < maxPos && VersionParser.isLetter(c = version.charAt(last)) && fragment.isAllowed(c)) continue;
                String identifier = version.substring(pos, last);
                if (!this.caseSensitive) {
                    identifier = identifier.toLowerCase();
                }
                if ((ordinal = this.definition.getOrdinal(identifier)) < 0) continue;
                posHolder[0] = pos + len;
                return this.definition.getSegment(ordinal);
            }
            return null;
        }

        void toString(StringBuffer bld) {
            bld.append('=');
            this.definition.toString(bld);
            if (this.begins) {
                bld.append('b');
            }
            if (!this.caseSensitive) {
                bld.append('i');
            }
            if (this.optional) {
                bld.append('?');
            }
            bld.append(';');
        }

        public boolean isOptional() {
            return this.optional;
        }
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    static abstract class Fragment
    implements Serializable {
        private static final long serialVersionUID = 4109185333058622681L;
        private final Qualifier qualifier;

        Fragment(Qualifier qualifier) {
            this.qualifier = qualifier;
        }

        public final boolean equals(Object f) {
            return f == this || this.getClass().equals(f.getClass()) && this.qualifier.equals(((Fragment)f).qualifier);
        }

        public final int hashCode() {
            return 11 * this.qualifier.hashCode();
        }

        public boolean isGroup() {
            return false;
        }

        public String toString() {
            StringBuffer sb = new StringBuffer();
            this.toString(sb);
            return sb.toString();
        }

        Comparable<?> getDefaultValue() {
            return null;
        }

        Fragment getFirstLeaf() {
            return this;
        }

        Comparable<?> getPadValue() {
            return null;
        }

        Qualifier getQualifier() {
            return this.qualifier;
        }

        boolean parse(List<Comparable<?>> segments, String version, int maxPos, VersionFormat.TreeInfo info) {
            return this.qualifier.parse(new Fragment[]{this}, 0, segments, version, maxPos, info);
        }

        abstract boolean parseOne(List<Comparable<?>> var1, String var2, int var3, VersionFormat.TreeInfo var4);

        void setDefaults(List<Comparable<?>> segments) {
        }

        void toString(StringBuffer sb) {
            if (!(this.qualifier == EXACT_ONE_QUALIFIER || this.qualifier == ZERO_OR_ONE_QUALIFIER && this.isGroup())) {
                this.qualifier.toString(sb);
            }
        }
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static class GroupFragment
    extends ElementFragment {
        private static final long serialVersionUID = 9219978678087669699L;
        private final boolean array;
        private final Fragment[] fragments;

        GroupFragment(Instructions instr, Qualifier qualifier, Fragment[] fragments, boolean array) {
            super(instr, qualifier);
            this.fragments = fragments;
            this.array = array;
        }

        @Override
        public boolean isGroup() {
            return !this.array;
        }

        @Override
        Fragment getFirstLeaf() {
            return this.fragments[0].getFirstLeaf();
        }

        @Override
        boolean parseOne(List<Comparable<?>> segments, String version, int maxPos, VersionFormat.TreeInfo info) {
            if (this.array) {
                ArrayList subSegs = new ArrayList();
                boolean success = this.fragments[0].getQualifier().parse(this.fragments, 0, subSegs, version, maxPos, info);
                if (!success || subSegs.isEmpty()) {
                    return false;
                }
                Comparable<?> padValue = info.getPadValue();
                if (padValue != null) {
                    info.setPadValue(null);
                } else {
                    padValue = this.getPadValue();
                }
                padValue = VersionParser.removeRedundantTrail(segments, padValue);
                segments.add(new VersionVector(subSegs.toArray(new Comparable[subSegs.size()]), padValue));
                return true;
            }
            if (this.fragments[0].getQualifier().parse(this.fragments, 0, segments, version, maxPos, info)) {
                Comparable<?> padValue = this.getPadValue();
                if (padValue != null) {
                    info.setPadValue(padValue);
                }
                return true;
            }
            return false;
        }

        @Override
        void setDefaults(List<Comparable<?>> segments) {
            Comparable<?> dflt = this.getDefaultValue();
            if (dflt != null) {
                super.setDefaults(segments);
            } else {
                int idx = 0;
                while (idx < this.fragments.length) {
                    this.fragments[idx].setDefaults(segments);
                    ++idx;
                }
            }
        }

        @Override
        void toString(StringBuffer sb) {
            if (this.array) {
                sb.append('<');
                int idx = 0;
                while (idx < this.fragments.length) {
                    this.fragments[idx].toString(sb);
                    ++idx;
                }
                sb.append('>');
            } else if (this.getQualifier() == ZERO_OR_ONE_QUALIFIER) {
                sb.append('[');
                int idx = 0;
                while (idx < this.fragments.length) {
                    this.fragments[idx].toString(sb);
                    ++idx;
                }
                sb.append(']');
            } else {
                sb.append('(');
                int idx = 0;
                while (idx < this.fragments.length) {
                    this.fragments[idx].toString(sb);
                    ++idx;
                }
                sb.append(')');
            }
            super.toString(sb);
        }
    }

    static class Instructions {
        char[] characters = null;
        Comparable<?> defaultValue = null;
        char oppositeTranslationChar = '\u0000';
        int oppositeTranslationRepeat = 0;
        boolean ignore = false;
        boolean inverted = false;
        Comparable<?> padValue = null;
        int rangeMax = Integer.MAX_VALUE;
        int rangeMin = 0;
        EnumInstruction enumInstruction = null;

        Instructions() {
        }
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static class LiteralFragment
    extends Fragment {
        private static final long serialVersionUID = 6210696245839471802L;
        private final String string;

        LiteralFragment(Qualifier qualifier, String string) {
            super(qualifier);
            this.string = string;
        }

        @Override
        boolean parseOne(List<Comparable<?>> segments, String version, int maxPos, VersionFormat.TreeInfo info) {
            int litLen;
            int pos = info.getPosition();
            if (pos + (litLen = this.string.length()) > maxPos) {
                return false;
            }
            int idx = 0;
            while (idx < litLen) {
                if (this.string.charAt(idx) != version.charAt(pos)) {
                    return false;
                }
                ++idx;
                ++pos;
            }
            info.setPosition(pos);
            return true;
        }

        @Override
        void toString(StringBuffer sb) {
            String str = this.string;
            if (str.length() != 1) {
                sb.append('\'');
                VersionFormatParser.toStringEscaped(sb, str, "'");
                sb.append('\'');
            } else {
                char c = str.charAt(0);
                switch (c) {
                    case '\'': 
                    case '(': 
                    case '*': 
                    case '+': 
                    case '<': 
                    case '=': 
                    case '?': 
                    case '[': 
                    case '\\': 
                    case '{': {
                        sb.append('\\');
                        sb.append(c);
                        break;
                    }
                    default: {
                        if (VersionParser.isLetterOrDigit(c)) {
                            sb.append('\\');
                            sb.append(c);
                            break;
                        }
                        sb.append(c);
                    }
                }
            }
            super.toString(sb);
        }
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static class NumberFragment
    extends RangeFragment {
        private static final long serialVersionUID = -8552754381106711507L;
        private final boolean signed;

        NumberFragment(Instructions instr, Qualifier qualifier, boolean signed) {
            super(instr, qualifier);
            this.signed = signed;
        }

        @Override
        boolean parseOne(List<Comparable<?>> segments, String version, int maxPos, VersionFormat.TreeInfo info) {
            int len;
            int value;
            int pos = info.getPosition();
            maxPos = this.checkRange(pos, maxPos);
            if (maxPos < 0) {
                return false;
            }
            int start = pos;
            char c = version.charAt(pos);
            if (this.signed || this.characters != null) {
                boolean negate = false;
                if (this.signed && c == '-' && pos + 1 < maxPos) {
                    negate = true;
                    c = version.charAt(++pos);
                }
                if (c < '0' || c > '9' || !this.isAllowed(c)) {
                    return false;
                }
                value = c - 48;
                while (++pos < maxPos) {
                    c = version.charAt(pos);
                    if (c < '0' || c > '9' || !this.isAllowed(c)) break;
                    value *= 10;
                    value += c - 48;
                }
                if (negate) {
                    value = -value;
                }
            } else {
                if (c < '0' || c > '9') {
                    return false;
                }
                value = c - 48;
                while (++pos < maxPos) {
                    c = version.charAt(pos);
                    if (c < '0' || c > '9') break;
                    value *= 10;
                    value += c - 48;
                }
            }
            if (this.rangeMin > (len = pos - start) || len > this.rangeMax) {
                return false;
            }
            if (!this.isIgnored()) {
                segments.add(VersionParser.valueOf(value));
            }
            info.setPosition(pos);
            return true;
        }

        @Override
        void toString(StringBuffer sb) {
            sb.append(this.signed ? (char)'N' : 'n');
            super.toString(sb);
        }
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static class PadFragment
    extends ElementFragment {
        private static final long serialVersionUID = 5052010199974380170L;

        PadFragment(Qualifier qualifier) {
            super(null, qualifier);
        }

        @Override
        boolean parseOne(List<Comparable<?>> segments, String version, int maxPos, VersionFormat.TreeInfo info) {
            int[] position;
            Comparable<?> v;
            int pos = info.getPosition();
            if (pos >= maxPos || version.charAt(pos) != 'p') {
                return false;
            }
            if ((v = VersionParser.parseRawElement(version, position = new int[]{++pos}, maxPos)) == null) {
                return false;
            }
            if (!this.isIgnored()) {
                info.setPadValue(v);
            }
            info.setPosition(position[0]);
            return true;
        }

        @Override
        void toString(StringBuffer sb) {
            sb.append('p');
            super.toString(sb);
        }
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    static class Qualifier
    implements Serializable {
        private static final long serialVersionUID = 7494021832824671685L;
        private final int max;
        private final int min;

        Qualifier(int min, int max) {
            this.min = min;
            this.max = max;
        }

        public boolean equals(Object o) {
            if (o == this) {
                return true;
            }
            if (!(o instanceof Qualifier)) {
                return false;
            }
            Qualifier oq = (Qualifier)o;
            return this.min == oq.min && this.max == oq.max;
        }

        public int hashCode() {
            return 31 * this.min + 67 * this.max;
        }

        public String toString() {
            StringBuffer sb = new StringBuffer();
            this.toString(sb);
            return sb.toString();
        }

        int getMax() {
            return this.max;
        }

        int getMin() {
            return this.min;
        }

        boolean parse(Fragment[] fragments, int fragIdx, List<Comparable<?>> segments, String version, int maxPos, VersionFormat.TreeInfo info) {
            Fragment fragment = fragments[fragIdx++];
            int idx = 0;
            while (idx < this.min) {
                if (!fragment.parseOne(segments, version, maxPos, info)) {
                    return false;
                }
                ++idx;
            }
            while (idx < this.max) {
                info.pushState(segments.size(), fragment);
                if (!fragment.parseOne(segments, version, maxPos, info)) {
                    info.popState(segments, fragment);
                    break;
                }
                ++idx;
            }
            int maxParsed = idx;
            while (true) {
                StringFragment stringFrag;
                Comparable<?> opposite;
                if (idx < this.max) {
                    if (this.max != Integer.MAX_VALUE) {
                        while (idx < this.max) {
                            fragment.setDefaults(segments);
                            ++idx;
                        }
                    }
                } else if (fragment instanceof StringFragment && (opposite = (stringFrag = (StringFragment)fragment).getOppositeDefaultValue()) != null && stringFrag.isOppositeTranslation(segments.get(idx = segments.size() - 1))) {
                    segments.set(idx, opposite);
                }
                if (fragIdx == fragments.length) {
                    return true;
                }
                if (fragments[fragIdx].getQualifier().parse(fragments, fragIdx, segments, version, maxPos, info)) {
                    return true;
                }
                if (maxParsed <= this.min) {
                    return false;
                }
                info.popState(segments, fragment);
                idx = --maxParsed;
            }
        }

        void toString(StringBuffer sb) {
            if (this.min == 0) {
                if (this.max == 1) {
                    sb.append('?');
                } else if (this.max == Integer.MAX_VALUE) {
                    sb.append('*');
                } else {
                    sb.append('{');
                    sb.append(this.min);
                    sb.append(',');
                    sb.append(this.max);
                    sb.append('}');
                }
            } else if (this.max == Integer.MAX_VALUE) {
                if (this.min == 1) {
                    sb.append('+');
                } else {
                    sb.append('{');
                    sb.append(this.min);
                    sb.append(",}");
                }
            } else {
                sb.append('{');
                sb.append(this.min);
                if (this.min != this.max) {
                    sb.append(',');
                    sb.append(this.max);
                }
                sb.append('}');
            }
        }

        private Object readResolve() {
            Qualifier q = this;
            if (this.min == 0) {
                if (this.max == 1) {
                    q = ZERO_OR_ONE_QUALIFIER;
                } else if (this.max == Integer.MAX_VALUE) {
                    q = ZERO_OR_MANY_QUALIFIER;
                }
            } else if (this.min == 1) {
                if (this.max == 1) {
                    q = EXACT_ONE_QUALIFIER;
                } else if (this.max == Integer.MAX_VALUE) {
                    q = ONE_OR_MANY_QUALIFIER;
                }
            }
            return q;
        }
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static class QuotedFragment
    extends RangeFragment {
        private static final long serialVersionUID = 6057751133533608969L;

        QuotedFragment(Instructions instr, Qualifier qualifier) {
            super(instr, qualifier);
        }

        @Override
        boolean parseOne(List<Comparable<?>> segments, String version, int maxPos, VersionFormat.TreeInfo info) {
            char endQuote;
            int pos = info.getPosition();
            if (pos >= maxPos) {
                return false;
            }
            char quote = version.charAt(pos);
            switch (quote) {
                case '<': {
                    endQuote = '>';
                    break;
                }
                case '{': {
                    endQuote = '}';
                    break;
                }
                case '(': {
                    endQuote = ')';
                    break;
                }
                case '[': {
                    endQuote = ']';
                    break;
                }
                case '>': {
                    endQuote = '<';
                    break;
                }
                case '}': {
                    endQuote = '{';
                    break;
                }
                case ')': {
                    endQuote = '(';
                    break;
                }
                case ']': {
                    endQuote = '[';
                    break;
                }
                default: {
                    if (VersionParser.isLetterOrDigit(quote)) {
                        return false;
                    }
                    endQuote = quote;
                }
            }
            int start = ++pos;
            char c = version.charAt(pos);
            while (c != endQuote && this.isAllowed(c) && ++pos < maxPos) {
                c = version.charAt(pos);
            }
            if (c != endQuote || this.rangeMin > pos - start) {
                return false;
            }
            int len = pos - start;
            if (this.rangeMin > len || len > this.rangeMax) {
                return false;
            }
            if (!this.isIgnored()) {
                segments.add((Comparable<?>)((Object)version.substring(start, pos)));
            }
            info.setPosition(++pos);
            return true;
        }

        @Override
        void toString(StringBuffer sb) {
            sb.append('q');
            super.toString(sb);
        }
    }

    private static abstract class RangeFragment
    extends ElementFragment {
        private static final long serialVersionUID = -6680402803630334708L;
        final char[] characters;
        final boolean inverted;
        final int rangeMax;
        final int rangeMin;
        final EnumInstruction enumInstruction;

        RangeFragment(Instructions instr, Qualifier qualifier) {
            super(instr, qualifier);
            if (instr == null) {
                this.characters = null;
                this.inverted = false;
                this.rangeMin = 0;
                this.rangeMax = Integer.MAX_VALUE;
                this.enumInstruction = null;
            } else {
                this.characters = instr.characters;
                this.inverted = instr.inverted;
                this.rangeMin = instr.rangeMin;
                this.rangeMax = instr.rangeMax;
                this.enumInstruction = instr.enumInstruction;
            }
        }

        int checkRange(int pos, int maxPos) {
            int check = pos;
            check = this.rangeMin == 0 ? ++check : (check += this.rangeMin);
            if (check > maxPos) {
                maxPos = -1;
            } else if (this.rangeMax != Integer.MAX_VALUE && (check = pos + this.rangeMax) < maxPos) {
                maxPos = check;
            }
            return maxPos;
        }

        boolean isAllowed(char c) {
            char[] crs = this.characters;
            if (crs != null) {
                int idx = crs.length;
                while (--idx >= 0) {
                    if (c != crs[idx]) continue;
                    return !this.inverted;
                }
                return this.inverted;
            }
            return true;
        }

        void toString(StringBuffer sb) {
            if (this.characters != null) {
                VersionFormatParser.appendCharacterRange(sb, this.characters, this.inverted);
            }
            if (this.rangeMin != 0 || this.rangeMax != Integer.MAX_VALUE) {
                sb.append('=');
                sb.append('{');
                sb.append(this.rangeMin);
                if (this.rangeMin != this.rangeMax) {
                    sb.append(',');
                    if (this.rangeMax != Integer.MAX_VALUE) {
                        sb.append(this.rangeMax);
                    }
                }
                sb.append('}');
                sb.append(';');
            }
            if (this.enumInstruction != null) {
                this.enumInstruction.toString(sb);
            }
            super.toString(sb);
        }
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static class RawFragment
    extends ElementFragment {
        private static final long serialVersionUID = 4107448125256042602L;

        RawFragment(Instructions processing, Qualifier qualifier) {
            super(processing, qualifier);
        }

        @Override
        boolean parseOne(List<Comparable<?>> segments, String version, int maxPos, VersionFormat.TreeInfo info) {
            int[] position = new int[]{info.getPosition()};
            Comparable<?> v = VersionParser.parseRawElement(version, position, maxPos);
            if (v == null) {
                return false;
            }
            if (!this.isIgnored()) {
                segments.add(v);
            }
            info.setPosition(position[0]);
            return true;
        }

        @Override
        void toString(StringBuffer sb) {
            sb.append('r');
            super.toString(sb);
        }
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static class StringFragment
    extends RangeFragment {
        private static final long serialVersionUID = -2265924553606430164L;
        final boolean anyChar;
        private final char oppositeTranslationChar;
        private final int oppositeTranslationRepeat;

        StringFragment(Instructions instr, Qualifier qualifier, boolean noLimit) {
            super(instr, qualifier);
            this.anyChar = noLimit;
            int otc = 0;
            int otr = 0;
            if (instr != null) {
                otc = instr.oppositeTranslationChar;
                otr = instr.oppositeTranslationRepeat;
                if (instr.defaultValue == "") {
                    if (otc == 0) {
                        otc = 122;
                    }
                    if (otr == 0) {
                        otr = 3;
                    }
                } else if (instr.defaultValue == VersionVector.MAXS_VALUE) {
                    if (otc == 0) {
                        otc = 45;
                    }
                    otr = 1;
                }
            }
            this.oppositeTranslationChar = otc;
            this.oppositeTranslationRepeat = otr;
        }

        Comparable<?> getOppositeDefaultValue() {
            Comparable<?> dflt = this.getDefaultValue();
            return dflt == VersionVector.MAXS_VALUE ? "" : (dflt == "" ? VersionVector.MAXS_VALUE : null);
        }

        public boolean isOppositeTranslation(Object val) {
            if (val instanceof String) {
                String str = (String)val;
                int idx = this.oppositeTranslationRepeat;
                if (str.length() == idx) {
                    while (--idx >= 0) {
                        if (str.charAt(idx) != this.oppositeTranslationChar) break;
                    }
                    return idx < 0;
                }
            }
            return false;
        }

        /*
         * Unable to fully structure code
         */
        @Override
        boolean parseOne(List<Comparable<?>> segments, String version, int maxPos, VersionFormat.TreeInfo info) {
            block12: {
                block13: {
                    pos = info.getPosition();
                    maxPos = this.checkRange(pos, maxPos);
                    if (maxPos < 0) {
                        return false;
                    }
                    start = pos;
                    if (this.enumInstruction != null) {
                        posHolder = new int[]{pos};
                        es = this.enumInstruction.getEnumSegment(this, version, posHolder, maxPos);
                        if (es != null) {
                            pos = posHolder[0];
                            len = pos - start;
                            if (this.rangeMin > len || len > this.rangeMax) {
                                return false;
                            }
                            if (!this.isIgnored()) {
                                segments.add(es);
                            }
                            info.setPosition(pos);
                            return true;
                        }
                        if (!this.enumInstruction.isOptional()) {
                            return false;
                        }
                    }
                    if (this.characters == null) break block13;
                    if (!this.anyChar) ** GOTO lbl31
                    while (pos < maxPos) {
                        if (this.isAllowed(version.charAt(pos))) {
                            ++pos;
                            continue;
                        }
                        break block12;
                    }
                    break block12;
                    while (VersionParser.isLetter(c = version.charAt(pos)) && this.isAllowed(c)) {
                        ++pos;
lbl31:
                        // 2 sources

                        if (pos < maxPos) continue;
                        break block12;
                    }
                    break block12;
                }
                if (!this.anyChar) ** GOTO lbl40
                pos = maxPos;
                break block12;
                while (VersionParser.isLetter(version.charAt(pos))) {
                    ++pos;
lbl40:
                    // 2 sources

                    if (pos < maxPos) continue;
                }
            }
            len = pos - start;
            if (len == 0 || this.rangeMin > len || len > this.rangeMax) {
                return false;
            }
            if (!this.isIgnored()) {
                segments.add((Comparable<?>)version.substring(start, pos));
            }
            info.setPosition(pos);
            return true;
        }

        @Override
        void toString(StringBuffer sb) {
            sb.append(this.anyChar ? (char)'S' : 's');
            super.toString(sb);
        }
    }
}

