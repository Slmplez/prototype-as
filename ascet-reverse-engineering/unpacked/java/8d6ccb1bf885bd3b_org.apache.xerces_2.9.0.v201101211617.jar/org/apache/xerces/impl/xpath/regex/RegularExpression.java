/*
 * Decompiled with CFR 0.152.
 */
package org.apache.xerces.impl.xpath.regex;

import java.io.Serializable;
import java.text.CharacterIterator;
import org.apache.xerces.impl.xpath.regex.BMPattern;
import org.apache.xerces.impl.xpath.regex.Match;
import org.apache.xerces.impl.xpath.regex.Op;
import org.apache.xerces.impl.xpath.regex.ParseException;
import org.apache.xerces.impl.xpath.regex.ParserForXMLSchema;
import org.apache.xerces.impl.xpath.regex.REUtil;
import org.apache.xerces.impl.xpath.regex.RangeToken;
import org.apache.xerces.impl.xpath.regex.RegexParser;
import org.apache.xerces.impl.xpath.regex.Token;

public class RegularExpression
implements Serializable {
    private static final long serialVersionUID = 6242499334195006401L;
    static final boolean DEBUG = false;
    String regex;
    int options;
    int nofparen;
    Token tokentree;
    boolean hasBackReferences = false;
    transient int minlength;
    transient Op operations = null;
    transient int numberOfClosures;
    transient Context context = null;
    transient RangeToken firstChar = null;
    transient String fixedString = null;
    transient int fixedStringOptions;
    transient BMPattern fixedStringTable = null;
    transient boolean fixedStringOnly = false;
    static final int IGNORE_CASE = 2;
    static final int SINGLE_LINE = 4;
    static final int MULTIPLE_LINES = 8;
    static final int EXTENDED_COMMENT = 16;
    static final int USE_UNICODE_CATEGORY = 32;
    static final int UNICODE_WORD_BOUNDARY = 64;
    static final int PROHIBIT_HEAD_CHARACTER_OPTIMIZATION = 128;
    static final int PROHIBIT_FIXED_STRING_OPTIMIZATION = 256;
    static final int XMLSCHEMA_MODE = 512;
    static final int SPECIAL_COMMA = 1024;
    private static final int WT_IGNORE = 0;
    private static final int WT_LETTER = 1;
    private static final int WT_OTHER = 2;
    static final int LINE_FEED = 10;
    static final int CARRIAGE_RETURN = 13;
    static final int LINE_SEPARATOR = 8232;
    static final int PARAGRAPH_SEPARATOR = 8233;

    private synchronized void compile(Token token) {
        if (this.operations != null) {
            return;
        }
        this.numberOfClosures = 0;
        this.operations = this.compile(token, null, false);
    }

    private Op compile(Token token, Op op, boolean bl) {
        Op op2;
        switch (token.type) {
            case 11: {
                op2 = Op.createDot();
                op2.next = op;
                break;
            }
            case 0: {
                op2 = Op.createChar(token.getChar());
                op2.next = op;
                break;
            }
            case 8: {
                op2 = Op.createAnchor(token.getChar());
                op2.next = op;
                break;
            }
            case 4: 
            case 5: {
                op2 = Op.createRange(token);
                op2.next = op;
                break;
            }
            case 1: {
                op2 = op;
                if (!bl) {
                    int n = token.size() - 1;
                    while (n >= 0) {
                        op2 = this.compile(token.getChild(n), op2, false);
                        --n;
                    }
                } else {
                    int n = 0;
                    while (n < token.size()) {
                        op2 = this.compile(token.getChild(n), op2, true);
                        ++n;
                    }
                }
                break;
            }
            case 2: {
                Op.UnionOp unionOp = Op.createUnion(token.size());
                int n = 0;
                while (n < token.size()) {
                    unionOp.addElement(this.compile(token.getChild(n), op, bl));
                    ++n;
                }
                op2 = unionOp;
                break;
            }
            case 3: 
            case 9: {
                Token token2 = token.getChild(0);
                int n = token.getMin();
                int n2 = token.getMax();
                if (n >= 0 && n == n2) {
                    op2 = op;
                    int n3 = 0;
                    while (n3 < n) {
                        op2 = this.compile(token2, op2, bl);
                        ++n3;
                    }
                } else {
                    if (n > 0 && n2 > 0) {
                        n2 -= n;
                    }
                    if (n2 > 0) {
                        op2 = op;
                        int n4 = 0;
                        while (n4 < n2) {
                            Op.ChildOp childOp = Op.createQuestion(token.type == 9);
                            childOp.next = op;
                            childOp.setChild(this.compile(token2, op2, bl));
                            op2 = childOp;
                            ++n4;
                        }
                    } else {
                        Op.ChildOp childOp = token.type == 9 ? Op.createNonGreedyClosure() : (token2.getMinLength() == 0 ? Op.createClosure(this.numberOfClosures++) : Op.createClosure(-1));
                        childOp.next = op;
                        childOp.setChild(this.compile(token2, childOp, bl));
                        op2 = childOp;
                    }
                    if (n <= 0) break;
                    int n5 = 0;
                    while (n5 < n) {
                        op2 = this.compile(token2, op2, bl);
                        ++n5;
                    }
                }
                break;
            }
            case 7: {
                op2 = op;
                break;
            }
            case 10: {
                op2 = Op.createString(token.getString());
                op2.next = op;
                break;
            }
            case 12: {
                op2 = Op.createBackReference(token.getReferenceNumber());
                op2.next = op;
                break;
            }
            case 6: {
                if (token.getParenNumber() == 0) {
                    op2 = this.compile(token.getChild(0), op, bl);
                    break;
                }
                if (bl) {
                    op = Op.createCapture(token.getParenNumber(), op);
                    op = this.compile(token.getChild(0), op, bl);
                    op2 = Op.createCapture(-token.getParenNumber(), op);
                    break;
                }
                op = Op.createCapture(-token.getParenNumber(), op);
                op = this.compile(token.getChild(0), op, bl);
                op2 = Op.createCapture(token.getParenNumber(), op);
                break;
            }
            case 20: {
                op2 = Op.createLook(20, op, this.compile(token.getChild(0), null, false));
                break;
            }
            case 21: {
                op2 = Op.createLook(21, op, this.compile(token.getChild(0), null, false));
                break;
            }
            case 22: {
                op2 = Op.createLook(22, op, this.compile(token.getChild(0), null, true));
                break;
            }
            case 23: {
                op2 = Op.createLook(23, op, this.compile(token.getChild(0), null, true));
                break;
            }
            case 24: {
                op2 = Op.createIndependent(op, this.compile(token.getChild(0), null, bl));
                break;
            }
            case 25: {
                op2 = Op.createModifier(op, this.compile(token.getChild(0), null, bl), ((Token.ModifierToken)token).getOptions(), ((Token.ModifierToken)token).getOptionsMask());
                break;
            }
            case 26: {
                Token.ConditionToken conditionToken = (Token.ConditionToken)token;
                int n = conditionToken.refNumber;
                Op op3 = conditionToken.condition == null ? null : this.compile(conditionToken.condition, null, bl);
                Op op4 = this.compile(conditionToken.yes, op, bl);
                Op op5 = conditionToken.no == null ? null : this.compile(conditionToken.no, op, bl);
                op2 = Op.createCondition(op, n, op3, op4, op5);
                break;
            }
            default: {
                throw new RuntimeException("Unknown token type: " + token.type);
            }
        }
        return op2;
    }

    public boolean matches(char[] cArray) {
        return this.matches(cArray, 0, cArray.length, (Match)null);
    }

    public boolean matches(char[] cArray, int n, int n2) {
        return this.matches(cArray, n, n2, (Match)null);
    }

    public boolean matches(char[] cArray, Match match) {
        return this.matches(cArray, 0, cArray.length, match);
    }

    public boolean matches(char[] cArray, int n, int n2, Match match) {
        int n3;
        int n4;
        RegularExpression regularExpression = this;
        synchronized (regularExpression) {
            if (this.operations == null) {
                this.prepare();
            }
            if (this.context == null) {
                this.context = new Context();
            }
        }
        Context context = null;
        Context context2 = this.context;
        synchronized (context2) {
            context = this.context.inuse ? new Context() : this.context;
            context.reset(cArray, n, n2, this.numberOfClosures);
        }
        if (match != null) {
            match.setNumberOfGroups(this.nofparen);
            match.setSource(cArray);
        } else if (this.hasBackReferences) {
            match = new Match();
            match.setNumberOfGroups(this.nofparen);
        }
        context.match = match;
        if (RegularExpression.isSet(this.options, 512)) {
            int n5 = this.matchCharArray(context, this.operations, context.start, 1, this.options);
            if (n5 == context.limit) {
                if (context.match != null) {
                    context.match.setBeginning(0, context.start);
                    context.match.setEnd(0, n5);
                }
                context.inuse = false;
                return true;
            }
            return false;
        }
        if (this.fixedStringOnly) {
            int n6 = this.fixedStringTable.matches(cArray, context.start, context.limit);
            if (n6 >= 0) {
                if (context.match != null) {
                    context.match.setBeginning(0, n6);
                    context.match.setEnd(0, n6 + this.fixedString.length());
                }
                context.inuse = false;
                return true;
            }
            context.inuse = false;
            return false;
        }
        if (this.fixedString != null && (n4 = this.fixedStringTable.matches(cArray, context.start, context.limit)) < 0) {
            context.inuse = false;
            return false;
        }
        n4 = context.limit - this.minlength;
        int n7 = -1;
        if (this.operations != null && this.operations.type == 7 && this.operations.getChild().type == 0) {
            if (RegularExpression.isSet(this.options, 4)) {
                n3 = context.start;
                n7 = this.matchCharArray(context, this.operations, context.start, 1, this.options);
            } else {
                boolean bl = true;
                n3 = context.start;
                while (n3 <= n4) {
                    char c = cArray[n3];
                    if (RegularExpression.isEOLChar(c)) {
                        bl = true;
                    } else {
                        if (bl && 0 <= (n7 = this.matchCharArray(context, this.operations, n3, 1, this.options))) break;
                        bl = false;
                    }
                    ++n3;
                }
            }
        } else if (this.firstChar != null) {
            RangeToken rangeToken = this.firstChar;
            if (RegularExpression.isSet(this.options, 2)) {
                rangeToken = this.firstChar.getCaseInsensitiveToken();
                n3 = context.start;
                while (n3 <= n4) {
                    char c;
                    int n8 = cArray[n3];
                    if (!(!REUtil.isHighSurrogate(n8) || n3 + 1 >= context.limit ? !rangeToken.match(n8) && !rangeToken.match(c = Character.toUpperCase((char)n8)) && !rangeToken.match(Character.toLowerCase(c)) : !rangeToken.match(n8 = REUtil.composeFromSurrogates(n8, cArray[n3 + 1])))) {
                        n7 = this.matchCharArray(context, this.operations, n3, 1, this.options);
                        if (0 <= n7) break;
                    }
                    ++n3;
                }
            } else {
                n3 = context.start;
                while (n3 <= n4) {
                    int n9 = cArray[n3];
                    if (REUtil.isHighSurrogate(n9) && n3 + 1 < context.limit) {
                        n9 = REUtil.composeFromSurrogates(n9, cArray[n3 + 1]);
                    }
                    if (!rangeToken.match(n9) || 0 > (n7 = this.matchCharArray(context, this.operations, n3, 1, this.options))) {
                        ++n3;
                        continue;
                    }
                    break;
                }
            }
        } else {
            n3 = context.start;
            while (n3 <= n4) {
                n7 = this.matchCharArray(context, this.operations, n3, 1, this.options);
                if (0 > n7) {
                    ++n3;
                    continue;
                }
                break;
            }
        }
        if (n7 >= 0) {
            if (context.match != null) {
                context.match.setBeginning(0, n3);
                context.match.setEnd(0, n7);
            }
            context.inuse = false;
            return true;
        }
        context.inuse = false;
        return false;
    }

    /*
     * Could not resolve type clashes
     */
    private int matchCharArray(Context context, Op op, int n, int n2, int n3) {
        char[] cArray = context.charTarget;
        block32: while (true) {
            if (op == null) {
                return RegularExpression.isSet(n3, 512) && n != context.limit ? -1 : n;
            }
            if (n > context.limit || n < context.start) {
                return -1;
            }
            switch (op.type) {
                case 1: {
                    int n4;
                    if (RegularExpression.isSet(n3, 2)) {
                        n4 = op.getData();
                        if (n2 > 0) {
                            if (n >= context.limit || !RegularExpression.matchIgnoreCase(n4, cArray[n])) {
                                return -1;
                            }
                            ++n;
                        } else {
                            int n5 = n - 1;
                            if (n5 >= context.limit || n5 < 0 || !RegularExpression.matchIgnoreCase(n4, cArray[n5])) {
                                return -1;
                            }
                            n = n5;
                        }
                    } else {
                        n4 = op.getData();
                        if (n2 > 0) {
                            if (n >= context.limit || n4 != cArray[n]) {
                                return -1;
                            }
                            ++n;
                        } else {
                            int n6 = n - 1;
                            if (n6 >= context.limit || n6 < 0 || n4 != cArray[n6]) {
                                return -1;
                            }
                            n = n6;
                        }
                    }
                    op = op.next;
                    continue block32;
                }
                case 0: {
                    int n4;
                    if (n2 > 0) {
                        if (n >= context.limit) {
                            return -1;
                        }
                        n4 = cArray[n];
                        if (RegularExpression.isSet(n3, 4)) {
                            if (REUtil.isHighSurrogate(n4) && n + 1 < context.limit) {
                                ++n;
                            }
                        } else {
                            if (REUtil.isHighSurrogate(n4) && n + 1 < context.limit) {
                                n4 = REUtil.composeFromSurrogates(n4, cArray[++n]);
                            }
                            if (RegularExpression.isEOLChar(n4)) {
                                return -1;
                            }
                        }
                        ++n;
                    } else {
                        n4 = n - 1;
                        if (n4 >= context.limit || n4 < 0) {
                            return -1;
                        }
                        int n7 = cArray[n4];
                        if (RegularExpression.isSet(n3, 4)) {
                            if (REUtil.isLowSurrogate(n7) && n4 - 1 >= 0) {
                                // empty if block
                            }
                        } else {
                            if (REUtil.isLowSurrogate(n7) && n4 - 1 >= 0) {
                                n7 = REUtil.composeFromSurrogates(cArray[--n4], n7);
                            }
                            if (!RegularExpression.isEOLChar(n7)) {
                                return -1;
                            }
                        }
                        n = --n4;
                    }
                    op = op.next;
                    continue block32;
                }
                case 3: 
                case 4: {
                    char c;
                    int n4;
                    if (n2 > 0) {
                        if (n >= context.limit) {
                            return -1;
                        }
                        n4 = cArray[n];
                        if (REUtil.isHighSurrogate(n4) && n + 1 < context.limit) {
                            n4 = REUtil.composeFromSurrogates(n4, cArray[++n]);
                        }
                        RangeToken rangeToken = op.getToken();
                        if (RegularExpression.isSet(n3, 2)) {
                            if (!(rangeToken = rangeToken.getCaseInsensitiveToken()).match(n4)) {
                                if (n4 >= 65536) {
                                    return -1;
                                }
                                char c2 = Character.toUpperCase((char)n4);
                                c = c2;
                                if (!rangeToken.match(c2) && !rangeToken.match(Character.toLowerCase(c))) {
                                    return -1;
                                }
                            }
                        } else if (!rangeToken.match(n4)) {
                            return -1;
                        }
                        ++n;
                    } else {
                        n4 = n - 1;
                        if (n4 >= context.limit || n4 < 0) {
                            return -1;
                        }
                        int n8 = cArray[n4];
                        if (REUtil.isLowSurrogate(n8) && n4 - 1 >= 0) {
                            n8 = REUtil.composeFromSurrogates(cArray[--n4], n8);
                        }
                        RangeToken rangeToken = op.getToken();
                        if (RegularExpression.isSet(n3, 2)) {
                            if (!(rangeToken = rangeToken.getCaseInsensitiveToken()).match(n8)) {
                                if (n8 >= 65536) {
                                    return -1;
                                }
                                char c3 = Character.toUpperCase((char)n8);
                                if (!rangeToken.match(c3) && !rangeToken.match(Character.toLowerCase(c3))) {
                                    return -1;
                                }
                            }
                        } else if (!rangeToken.match(n8)) {
                            return -1;
                        }
                        n = n4;
                    }
                    op = op.next;
                    continue block32;
                }
                case 5: {
                    char c;
                    int n4 = 0;
                    switch (op.getData()) {
                        case 94: {
                            if (!(RegularExpression.isSet(n3, 8) ? n != context.start && (n <= context.start || !RegularExpression.isEOLChar(cArray[n - 1])) : n != context.start)) break;
                            return -1;
                        }
                        case 64: {
                            if (n == context.start || n > context.start && RegularExpression.isEOLChar(cArray[n - 1])) break;
                            return -1;
                        }
                        case 36: {
                            if (!(RegularExpression.isSet(n3, 8) ? n != context.limit && (n >= context.limit || !RegularExpression.isEOLChar(cArray[n])) : !(n == context.limit || n + 1 == context.limit && RegularExpression.isEOLChar(cArray[n]) || n + 2 == context.limit && cArray[n] == '\r' && cArray[n + 1] == '\n'))) break;
                            return -1;
                        }
                        case 65: {
                            if (n == context.start) break;
                            return -1;
                        }
                        case 90: {
                            if (n == context.limit || n + 1 == context.limit && RegularExpression.isEOLChar(cArray[n]) || n + 2 == context.limit && cArray[n] == '\r' && cArray[n + 1] == '\n') break;
                            return -1;
                        }
                        case 122: {
                            if (n == context.limit) break;
                            return -1;
                        }
                        case 98: {
                            if (context.length == 0) {
                                return -1;
                            }
                            int n9 = RegularExpression.getWordType(cArray, context.start, context.limit, n, n3);
                            if (n9 == 0) {
                                return -1;
                            }
                            c = RegularExpression.getPreviousWordType(cArray, context.start, context.limit, n, n3);
                            if (n9 != c) break;
                            return -1;
                        }
                        case 66: {
                            if (context.length == 0) {
                                n4 = 1;
                            } else {
                                int n10 = RegularExpression.getWordType(cArray, context.start, context.limit, n, n3);
                                int n11 = n4 = n10 == 0 || n10 == RegularExpression.getPreviousWordType(cArray, context.start, context.limit, n, n3) ? 1 : 0;
                            }
                            if (n4 != 0) break;
                            return -1;
                        }
                        case 60: {
                            if (context.length == 0 || n == context.limit) {
                                return -1;
                            }
                            if (RegularExpression.getWordType(cArray, context.start, context.limit, n, n3) == 1 && RegularExpression.getPreviousWordType(cArray, context.start, context.limit, n, n3) == 2) break;
                            return -1;
                        }
                        case 62: {
                            if (context.length == 0 || n == context.start) {
                                return -1;
                            }
                            if (RegularExpression.getWordType(cArray, context.start, context.limit, n, n3) == 2 && RegularExpression.getPreviousWordType(cArray, context.start, context.limit, n, n3) == 1) break;
                            return -1;
                        }
                    }
                    op = op.next;
                    continue block32;
                }
                case 16: {
                    int n12 = op.getData();
                    if (n12 <= 0 || n12 >= this.nofparen) {
                        throw new RuntimeException("Internal Error: Reference number must be more than zero: " + n12);
                    }
                    if (context.match.getBeginning(n12) < 0 || context.match.getEnd(n12) < 0) {
                        return -1;
                    }
                    char c = context.match.getBeginning(n12);
                    int n13 = context.match.getEnd(n12) - c;
                    if (!RegularExpression.isSet(n3, 2)) {
                        if (n2 > 0) {
                            if (!RegularExpression.regionMatches(cArray, n, context.limit, (int)c, n13)) {
                                return -1;
                            }
                            n += n13;
                        } else {
                            if (!RegularExpression.regionMatches(cArray, n - n13, context.limit, (int)c, n13)) {
                                return -1;
                            }
                            n -= n13;
                        }
                    } else if (n2 > 0) {
                        if (!RegularExpression.regionMatchesIgnoreCase(cArray, n, context.limit, (int)c, n13)) {
                            return -1;
                        }
                        n += n13;
                    } else {
                        if (!RegularExpression.regionMatchesIgnoreCase(cArray, n - n13, context.limit, (int)c, n13)) {
                            return -1;
                        }
                        n -= n13;
                    }
                    op = op.next;
                    continue block32;
                }
                case 6: {
                    String string = op.getString();
                    char c = string.length();
                    if (!RegularExpression.isSet(n3, 2)) {
                        if (n2 > 0) {
                            if (!RegularExpression.regionMatches(cArray, n, context.limit, string, (int)c)) {
                                return -1;
                            }
                            n += c;
                        } else {
                            if (!RegularExpression.regionMatches(cArray, n - c, context.limit, string, (int)c)) {
                                return -1;
                            }
                            n -= c;
                        }
                    } else if (n2 > 0) {
                        if (!RegularExpression.regionMatchesIgnoreCase(cArray, n, context.limit, string, (int)c)) {
                            return -1;
                        }
                        n += c;
                    } else {
                        if (!RegularExpression.regionMatchesIgnoreCase(cArray, n - c, context.limit, string, (int)c)) {
                            return -1;
                        }
                        n -= c;
                    }
                    op = op.next;
                    continue block32;
                }
                case 7: {
                    char c;
                    int n14 = op.getData();
                    if (n14 >= 0) {
                        c = context.offsets[n14];
                        if (c < '\u0000' || c != n) {
                            context.offsets[n14] = n;
                        } else {
                            context.offsets[n14] = -1;
                            op = op.next;
                            continue block32;
                        }
                    }
                    c = this.matchCharArray(context, op.getChild(), n, n2, n3);
                    if (n14 >= 0) {
                        context.offsets[n14] = -1;
                    }
                    if (c >= '\u0000') {
                        return c;
                    }
                    op = op.next;
                    continue block32;
                }
                case 9: {
                    int n15 = this.matchCharArray(context, op.getChild(), n, n2, n3);
                    if (n15 >= 0) {
                        return n15;
                    }
                    op = op.next;
                    continue block32;
                }
                case 8: 
                case 10: {
                    int n16 = this.matchCharArray(context, op.next, n, n2, n3);
                    if (n16 >= 0) {
                        return n16;
                    }
                    op = op.getChild();
                    continue block32;
                }
                case 11: {
                    char c;
                    int n17 = 0;
                    while (n17 < op.size()) {
                        c = this.matchCharArray(context, op.elementAt(n17), n, n2, n3);
                        if (c >= '\u0000') {
                            return c;
                        }
                        ++n17;
                    }
                    return -1;
                }
                case 15: {
                    int n18;
                    char c = op.getData();
                    if (context.match != null && c > '\u0000') {
                        int n19 = context.match.getBeginning(c);
                        context.match.setBeginning(c, n);
                        n18 = this.matchCharArray(context, op.next, n, n2, n3);
                        if (n18 < 0) {
                            context.match.setBeginning(c, n19);
                        }
                        return n18;
                    }
                    if (context.match != null && c < '\u0000') {
                        char c4 = -c;
                        n18 = context.match.getEnd(c4);
                        context.match.setEnd(c4, n);
                        int n20 = this.matchCharArray(context, op.next, n, n2, n3);
                        if (n20 < 0) {
                            context.match.setEnd(c4, n18);
                        }
                        return n20;
                    }
                    op = op.next;
                    continue block32;
                }
                case 20: {
                    if (0 > this.matchCharArray(context, op.getChild(), n, 1, n3)) {
                        return -1;
                    }
                    op = op.next;
                    continue block32;
                }
                case 21: {
                    if (0 <= this.matchCharArray(context, op.getChild(), n, 1, n3)) {
                        return -1;
                    }
                    op = op.next;
                    continue block32;
                }
                case 22: {
                    if (0 > this.matchCharArray(context, op.getChild(), n, -1, n3)) {
                        return -1;
                    }
                    op = op.next;
                    continue block32;
                }
                case 23: {
                    if (0 <= this.matchCharArray(context, op.getChild(), n, -1, n3)) {
                        return -1;
                    }
                    op = op.next;
                    continue block32;
                }
                case 24: {
                    int n21 = this.matchCharArray(context, op.getChild(), n, n2, n3);
                    if (n21 < 0) {
                        return n21;
                    }
                    n = n21;
                    op = op.next;
                    continue block32;
                }
                case 25: {
                    int n22 = n3;
                    n22 |= op.getData();
                    int n18 = this.matchCharArray(context, op.getChild(), n, n2, n22 &= ~op.getData2());
                    if (n18 < 0) {
                        return n18;
                    }
                    n = n18;
                    op = op.next;
                    continue block32;
                }
                case 26: {
                    Op.ConditionOp conditionOp = (Op.ConditionOp)op;
                    int n18 = 0;
                    if (conditionOp.refNumber > 0) {
                        if (conditionOp.refNumber >= this.nofparen) {
                            throw new RuntimeException("Internal Error: Reference number must be more than zero: " + conditionOp.refNumber);
                        }
                        n18 = context.match.getBeginning(conditionOp.refNumber) >= 0 && context.match.getEnd(conditionOp.refNumber) >= 0 ? 1 : 0;
                    } else {
                        int n23 = n18 = 0 <= this.matchCharArray(context, conditionOp.condition, n, n2, n3) ? 1 : 0;
                    }
                    if (n18 != 0) {
                        op = conditionOp.yes;
                        continue block32;
                    }
                    if (conditionOp.no != null) {
                        op = conditionOp.no;
                        continue block32;
                    }
                    op = conditionOp.next;
                    continue block32;
                }
            }
            break;
        }
        throw new RuntimeException("Unknown operation type: " + op.type);
    }

    private static final int getPreviousWordType(char[] cArray, int n, int n2, int n3, int n4) {
        int n5 = RegularExpression.getWordType(cArray, n, n2, --n3, n4);
        while (n5 == 0) {
            n5 = RegularExpression.getWordType(cArray, n, n2, --n3, n4);
        }
        return n5;
    }

    private static final int getWordType(char[] cArray, int n, int n2, int n3, int n4) {
        if (n3 < n || n3 >= n2) {
            return 2;
        }
        return RegularExpression.getWordType0(cArray[n3], n4);
    }

    private static final boolean regionMatches(char[] cArray, int n, int n2, String string, int n3) {
        if (n < 0) {
            return false;
        }
        if (n2 - n < n3) {
            return false;
        }
        int n4 = 0;
        while (n3-- > 0) {
            if (cArray[n++] == string.charAt(n4++)) continue;
            return false;
        }
        return true;
    }

    private static final boolean regionMatches(char[] cArray, int n, int n2, int n3, int n4) {
        if (n < 0) {
            return false;
        }
        if (n2 - n < n4) {
            return false;
        }
        int n5 = n3;
        while (n4-- > 0) {
            if (cArray[n++] == cArray[n5++]) continue;
            return false;
        }
        return true;
    }

    private static final boolean regionMatchesIgnoreCase(char[] cArray, int n, int n2, String string, int n3) {
        if (n < 0) {
            return false;
        }
        if (n2 - n < n3) {
            return false;
        }
        int n4 = 0;
        while (n3-- > 0) {
            char c;
            char c2;
            char c3;
            char c4;
            if ((c4 = cArray[n++]) == (c3 = string.charAt(n4++)) || (c2 = Character.toUpperCase(c4)) == (c = Character.toUpperCase(c3)) || Character.toLowerCase(c2) == Character.toLowerCase(c)) continue;
            return false;
        }
        return true;
    }

    private static final boolean regionMatchesIgnoreCase(char[] cArray, int n, int n2, int n3, int n4) {
        if (n < 0) {
            return false;
        }
        if (n2 - n < n4) {
            return false;
        }
        int n5 = n3;
        while (n4-- > 0) {
            char c;
            char c2;
            char c3;
            char c4;
            if ((c4 = cArray[n++]) == (c3 = cArray[n5++]) || (c2 = Character.toUpperCase(c4)) == (c = Character.toUpperCase(c3)) || Character.toLowerCase(c2) == Character.toLowerCase(c)) continue;
            return false;
        }
        return true;
    }

    public boolean matches(String string) {
        return this.matches(string, 0, string.length(), (Match)null);
    }

    public boolean matches(String string, int n, int n2) {
        return this.matches(string, n, n2, (Match)null);
    }

    public boolean matches(String string, Match match) {
        return this.matches(string, 0, string.length(), match);
    }

    public boolean matches(String string, int n, int n2, Match match) {
        int n3;
        int n4;
        RegularExpression regularExpression = this;
        synchronized (regularExpression) {
            if (this.operations == null) {
                this.prepare();
            }
            if (this.context == null) {
                this.context = new Context();
            }
        }
        Context context = null;
        Context context2 = this.context;
        synchronized (context2) {
            context = this.context.inuse ? new Context() : this.context;
            context.reset(string, n, n2, this.numberOfClosures);
        }
        if (match != null) {
            match.setNumberOfGroups(this.nofparen);
            match.setSource(string);
        } else if (this.hasBackReferences) {
            match = new Match();
            match.setNumberOfGroups(this.nofparen);
        }
        context.match = match;
        if (RegularExpression.isSet(this.options, 512)) {
            int n5 = this.matchString(context, this.operations, context.start, 1, this.options);
            if (n5 == context.limit) {
                if (context.match != null) {
                    context.match.setBeginning(0, context.start);
                    context.match.setEnd(0, n5);
                }
                context.inuse = false;
                return true;
            }
            return false;
        }
        if (this.fixedStringOnly) {
            int n6 = this.fixedStringTable.matches(string, context.start, context.limit);
            if (n6 >= 0) {
                if (context.match != null) {
                    context.match.setBeginning(0, n6);
                    context.match.setEnd(0, n6 + this.fixedString.length());
                }
                context.inuse = false;
                return true;
            }
            context.inuse = false;
            return false;
        }
        if (this.fixedString != null && (n4 = this.fixedStringTable.matches(string, context.start, context.limit)) < 0) {
            context.inuse = false;
            return false;
        }
        n4 = context.limit - this.minlength;
        int n7 = -1;
        if (this.operations != null && this.operations.type == 7 && this.operations.getChild().type == 0) {
            if (RegularExpression.isSet(this.options, 4)) {
                n3 = context.start;
                n7 = this.matchString(context, this.operations, context.start, 1, this.options);
            } else {
                boolean bl = true;
                n3 = context.start;
                while (n3 <= n4) {
                    char c = string.charAt(n3);
                    if (RegularExpression.isEOLChar(c)) {
                        bl = true;
                    } else {
                        if (bl && 0 <= (n7 = this.matchString(context, this.operations, n3, 1, this.options))) break;
                        bl = false;
                    }
                    ++n3;
                }
            }
        } else if (this.firstChar != null) {
            RangeToken rangeToken = this.firstChar;
            if (RegularExpression.isSet(this.options, 2)) {
                rangeToken = this.firstChar.getCaseInsensitiveToken();
                n3 = context.start;
                while (n3 <= n4) {
                    char c;
                    int n8 = string.charAt(n3);
                    if (!(!REUtil.isHighSurrogate(n8) || n3 + 1 >= context.limit ? !rangeToken.match(n8) && !rangeToken.match(c = Character.toUpperCase((char)n8)) && !rangeToken.match(Character.toLowerCase(c)) : !rangeToken.match(n8 = REUtil.composeFromSurrogates(n8, string.charAt(n3 + 1))))) {
                        n7 = this.matchString(context, this.operations, n3, 1, this.options);
                        if (0 <= n7) break;
                    }
                    ++n3;
                }
            } else {
                n3 = context.start;
                while (n3 <= n4) {
                    int n9 = string.charAt(n3);
                    if (REUtil.isHighSurrogate(n9) && n3 + 1 < context.limit) {
                        n9 = REUtil.composeFromSurrogates(n9, string.charAt(n3 + 1));
                    }
                    if (!rangeToken.match(n9) || 0 > (n7 = this.matchString(context, this.operations, n3, 1, this.options))) {
                        ++n3;
                        continue;
                    }
                    break;
                }
            }
        } else {
            n3 = context.start;
            while (n3 <= n4) {
                n7 = this.matchString(context, this.operations, n3, 1, this.options);
                if (0 > n7) {
                    ++n3;
                    continue;
                }
                break;
            }
        }
        if (n7 >= 0) {
            if (context.match != null) {
                context.match.setBeginning(0, n3);
                context.match.setEnd(0, n7);
            }
            context.inuse = false;
            return true;
        }
        context.inuse = false;
        return false;
    }

    /*
     * Could not resolve type clashes
     */
    private int matchString(Context context, Op op, int n, int n2, int n3) {
        String string = context.strTarget;
        block32: while (true) {
            if (op == null) {
                return RegularExpression.isSet(n3, 512) && n != context.limit ? -1 : n;
            }
            if (n > context.limit || n < context.start) {
                return -1;
            }
            switch (op.type) {
                case 1: {
                    int n4;
                    if (RegularExpression.isSet(n3, 2)) {
                        n4 = op.getData();
                        if (n2 > 0) {
                            if (n >= context.limit || !RegularExpression.matchIgnoreCase(n4, string.charAt(n))) {
                                return -1;
                            }
                            ++n;
                        } else {
                            int n5 = n - 1;
                            if (n5 >= context.limit || n5 < 0 || !RegularExpression.matchIgnoreCase(n4, string.charAt(n5))) {
                                return -1;
                            }
                            n = n5;
                        }
                    } else {
                        n4 = op.getData();
                        if (n2 > 0) {
                            if (n >= context.limit || n4 != string.charAt(n)) {
                                return -1;
                            }
                            ++n;
                        } else {
                            int n6 = n - 1;
                            if (n6 >= context.limit || n6 < 0 || n4 != string.charAt(n6)) {
                                return -1;
                            }
                            n = n6;
                        }
                    }
                    op = op.next;
                    continue block32;
                }
                case 0: {
                    int n4;
                    if (n2 > 0) {
                        if (n >= context.limit) {
                            return -1;
                        }
                        n4 = string.charAt(n);
                        if (RegularExpression.isSet(n3, 4)) {
                            if (REUtil.isHighSurrogate(n4) && n + 1 < context.limit) {
                                ++n;
                            }
                        } else {
                            if (REUtil.isHighSurrogate(n4) && n + 1 < context.limit) {
                                n4 = REUtil.composeFromSurrogates(n4, string.charAt(++n));
                            }
                            if (RegularExpression.isEOLChar(n4)) {
                                return -1;
                            }
                        }
                        ++n;
                    } else {
                        n4 = n - 1;
                        if (n4 >= context.limit || n4 < 0) {
                            return -1;
                        }
                        int n7 = string.charAt(n4);
                        if (RegularExpression.isSet(n3, 4)) {
                            if (REUtil.isLowSurrogate(n7) && n4 - 1 >= 0) {
                                // empty if block
                            }
                        } else {
                            if (REUtil.isLowSurrogate(n7) && n4 - 1 >= 0) {
                                n7 = REUtil.composeFromSurrogates(string.charAt(--n4), n7);
                            }
                            if (!RegularExpression.isEOLChar(n7)) {
                                return -1;
                            }
                        }
                        n = --n4;
                    }
                    op = op.next;
                    continue block32;
                }
                case 3: 
                case 4: {
                    char c;
                    int n4;
                    if (n2 > 0) {
                        if (n >= context.limit) {
                            return -1;
                        }
                        n4 = string.charAt(n);
                        if (REUtil.isHighSurrogate(n4) && n + 1 < context.limit) {
                            n4 = REUtil.composeFromSurrogates(n4, string.charAt(++n));
                        }
                        RangeToken rangeToken = op.getToken();
                        if (RegularExpression.isSet(n3, 2)) {
                            if (!(rangeToken = rangeToken.getCaseInsensitiveToken()).match(n4)) {
                                if (n4 >= 65536) {
                                    return -1;
                                }
                                char c2 = Character.toUpperCase((char)n4);
                                c = c2;
                                if (!rangeToken.match(c2) && !rangeToken.match(Character.toLowerCase(c))) {
                                    return -1;
                                }
                            }
                        } else if (!rangeToken.match(n4)) {
                            return -1;
                        }
                        ++n;
                    } else {
                        n4 = n - 1;
                        if (n4 >= context.limit || n4 < 0) {
                            return -1;
                        }
                        int n8 = string.charAt(n4);
                        if (REUtil.isLowSurrogate(n8) && n4 - 1 >= 0) {
                            n8 = REUtil.composeFromSurrogates(string.charAt(--n4), n8);
                        }
                        RangeToken rangeToken = op.getToken();
                        if (RegularExpression.isSet(n3, 2)) {
                            if (!(rangeToken = rangeToken.getCaseInsensitiveToken()).match(n8)) {
                                if (n8 >= 65536) {
                                    return -1;
                                }
                                char c3 = Character.toUpperCase((char)n8);
                                if (!rangeToken.match(c3) && !rangeToken.match(Character.toLowerCase(c3))) {
                                    return -1;
                                }
                            }
                        } else if (!rangeToken.match(n8)) {
                            return -1;
                        }
                        n = n4;
                    }
                    op = op.next;
                    continue block32;
                }
                case 5: {
                    char c;
                    int n4 = 0;
                    switch (op.getData()) {
                        case 94: {
                            if (!(RegularExpression.isSet(n3, 8) ? n != context.start && (n <= context.start || !RegularExpression.isEOLChar(string.charAt(n - 1))) : n != context.start)) break;
                            return -1;
                        }
                        case 64: {
                            if (n == context.start || n > context.start && RegularExpression.isEOLChar(string.charAt(n - 1))) break;
                            return -1;
                        }
                        case 36: {
                            if (!(RegularExpression.isSet(n3, 8) ? n != context.limit && (n >= context.limit || !RegularExpression.isEOLChar(string.charAt(n))) : !(n == context.limit || n + 1 == context.limit && RegularExpression.isEOLChar(string.charAt(n)) || n + 2 == context.limit && string.charAt(n) == '\r' && string.charAt(n + 1) == '\n'))) break;
                            return -1;
                        }
                        case 65: {
                            if (n == context.start) break;
                            return -1;
                        }
                        case 90: {
                            if (n == context.limit || n + 1 == context.limit && RegularExpression.isEOLChar(string.charAt(n)) || n + 2 == context.limit && string.charAt(n) == '\r' && string.charAt(n + 1) == '\n') break;
                            return -1;
                        }
                        case 122: {
                            if (n == context.limit) break;
                            return -1;
                        }
                        case 98: {
                            if (context.length == 0) {
                                return -1;
                            }
                            int n9 = RegularExpression.getWordType(string, context.start, context.limit, n, n3);
                            if (n9 == 0) {
                                return -1;
                            }
                            c = RegularExpression.getPreviousWordType(string, context.start, context.limit, n, n3);
                            if (n9 != c) break;
                            return -1;
                        }
                        case 66: {
                            if (context.length == 0) {
                                n4 = 1;
                            } else {
                                int n10 = RegularExpression.getWordType(string, context.start, context.limit, n, n3);
                                int n11 = n4 = n10 == 0 || n10 == RegularExpression.getPreviousWordType(string, context.start, context.limit, n, n3) ? 1 : 0;
                            }
                            if (n4 != 0) break;
                            return -1;
                        }
                        case 60: {
                            if (context.length == 0 || n == context.limit) {
                                return -1;
                            }
                            if (RegularExpression.getWordType(string, context.start, context.limit, n, n3) == 1 && RegularExpression.getPreviousWordType(string, context.start, context.limit, n, n3) == 2) break;
                            return -1;
                        }
                        case 62: {
                            if (context.length == 0 || n == context.start) {
                                return -1;
                            }
                            if (RegularExpression.getWordType(string, context.start, context.limit, n, n3) == 2 && RegularExpression.getPreviousWordType(string, context.start, context.limit, n, n3) == 1) break;
                            return -1;
                        }
                    }
                    op = op.next;
                    continue block32;
                }
                case 16: {
                    int n12 = op.getData();
                    if (n12 <= 0 || n12 >= this.nofparen) {
                        throw new RuntimeException("Internal Error: Reference number must be more than zero: " + n12);
                    }
                    if (context.match.getBeginning(n12) < 0 || context.match.getEnd(n12) < 0) {
                        return -1;
                    }
                    char c = context.match.getBeginning(n12);
                    int n13 = context.match.getEnd(n12) - c;
                    if (!RegularExpression.isSet(n3, 2)) {
                        if (n2 > 0) {
                            if (!RegularExpression.regionMatches(string, n, context.limit, (int)c, n13)) {
                                return -1;
                            }
                            n += n13;
                        } else {
                            if (!RegularExpression.regionMatches(string, n - n13, context.limit, (int)c, n13)) {
                                return -1;
                            }
                            n -= n13;
                        }
                    } else if (n2 > 0) {
                        if (!RegularExpression.regionMatchesIgnoreCase(string, n, context.limit, (int)c, n13)) {
                            return -1;
                        }
                        n += n13;
                    } else {
                        if (!RegularExpression.regionMatchesIgnoreCase(string, n - n13, context.limit, (int)c, n13)) {
                            return -1;
                        }
                        n -= n13;
                    }
                    op = op.next;
                    continue block32;
                }
                case 6: {
                    String string2 = op.getString();
                    char c = string2.length();
                    if (!RegularExpression.isSet(n3, 2)) {
                        if (n2 > 0) {
                            if (!RegularExpression.regionMatches(string, n, context.limit, string2, (int)c)) {
                                return -1;
                            }
                            n += c;
                        } else {
                            if (!RegularExpression.regionMatches(string, n - c, context.limit, string2, (int)c)) {
                                return -1;
                            }
                            n -= c;
                        }
                    } else if (n2 > 0) {
                        if (!RegularExpression.regionMatchesIgnoreCase(string, n, context.limit, string2, (int)c)) {
                            return -1;
                        }
                        n += c;
                    } else {
                        if (!RegularExpression.regionMatchesIgnoreCase(string, n - c, context.limit, string2, (int)c)) {
                            return -1;
                        }
                        n -= c;
                    }
                    op = op.next;
                    continue block32;
                }
                case 7: {
                    char c;
                    int n14 = op.getData();
                    if (n14 >= 0) {
                        c = context.offsets[n14];
                        if (c < '\u0000' || c != n) {
                            context.offsets[n14] = n;
                        } else {
                            context.offsets[n14] = -1;
                            op = op.next;
                            continue block32;
                        }
                    }
                    c = this.matchString(context, op.getChild(), n, n2, n3);
                    if (n14 >= 0) {
                        context.offsets[n14] = -1;
                    }
                    if (c >= '\u0000') {
                        return c;
                    }
                    op = op.next;
                    continue block32;
                }
                case 9: {
                    int n15 = this.matchString(context, op.getChild(), n, n2, n3);
                    if (n15 >= 0) {
                        return n15;
                    }
                    op = op.next;
                    continue block32;
                }
                case 8: 
                case 10: {
                    int n16 = this.matchString(context, op.next, n, n2, n3);
                    if (n16 >= 0) {
                        return n16;
                    }
                    op = op.getChild();
                    continue block32;
                }
                case 11: {
                    char c;
                    int n17 = 0;
                    while (n17 < op.size()) {
                        c = this.matchString(context, op.elementAt(n17), n, n2, n3);
                        if (c >= '\u0000') {
                            return c;
                        }
                        ++n17;
                    }
                    return -1;
                }
                case 15: {
                    int n18;
                    char c = op.getData();
                    if (context.match != null && c > '\u0000') {
                        int n19 = context.match.getBeginning(c);
                        context.match.setBeginning(c, n);
                        n18 = this.matchString(context, op.next, n, n2, n3);
                        if (n18 < 0) {
                            context.match.setBeginning(c, n19);
                        }
                        return n18;
                    }
                    if (context.match != null && c < '\u0000') {
                        char c4 = -c;
                        n18 = context.match.getEnd(c4);
                        context.match.setEnd(c4, n);
                        int n20 = this.matchString(context, op.next, n, n2, n3);
                        if (n20 < 0) {
                            context.match.setEnd(c4, n18);
                        }
                        return n20;
                    }
                    op = op.next;
                    continue block32;
                }
                case 20: {
                    if (0 > this.matchString(context, op.getChild(), n, 1, n3)) {
                        return -1;
                    }
                    op = op.next;
                    continue block32;
                }
                case 21: {
                    if (0 <= this.matchString(context, op.getChild(), n, 1, n3)) {
                        return -1;
                    }
                    op = op.next;
                    continue block32;
                }
                case 22: {
                    if (0 > this.matchString(context, op.getChild(), n, -1, n3)) {
                        return -1;
                    }
                    op = op.next;
                    continue block32;
                }
                case 23: {
                    if (0 <= this.matchString(context, op.getChild(), n, -1, n3)) {
                        return -1;
                    }
                    op = op.next;
                    continue block32;
                }
                case 24: {
                    int n21 = this.matchString(context, op.getChild(), n, n2, n3);
                    if (n21 < 0) {
                        return n21;
                    }
                    n = n21;
                    op = op.next;
                    continue block32;
                }
                case 25: {
                    int n22 = n3;
                    n22 |= op.getData();
                    int n18 = this.matchString(context, op.getChild(), n, n2, n22 &= ~op.getData2());
                    if (n18 < 0) {
                        return n18;
                    }
                    n = n18;
                    op = op.next;
                    continue block32;
                }
                case 26: {
                    Op.ConditionOp conditionOp = (Op.ConditionOp)op;
                    int n18 = 0;
                    if (conditionOp.refNumber > 0) {
                        if (conditionOp.refNumber >= this.nofparen) {
                            throw new RuntimeException("Internal Error: Reference number must be more than zero: " + conditionOp.refNumber);
                        }
                        n18 = context.match.getBeginning(conditionOp.refNumber) >= 0 && context.match.getEnd(conditionOp.refNumber) >= 0 ? 1 : 0;
                    } else {
                        int n23 = n18 = 0 <= this.matchString(context, conditionOp.condition, n, n2, n3) ? 1 : 0;
                    }
                    if (n18 != 0) {
                        op = conditionOp.yes;
                        continue block32;
                    }
                    if (conditionOp.no != null) {
                        op = conditionOp.no;
                        continue block32;
                    }
                    op = conditionOp.next;
                    continue block32;
                }
            }
            break;
        }
        throw new RuntimeException("Unknown operation type: " + op.type);
    }

    private static final int getPreviousWordType(String string, int n, int n2, int n3, int n4) {
        int n5 = RegularExpression.getWordType(string, n, n2, --n3, n4);
        while (n5 == 0) {
            n5 = RegularExpression.getWordType(string, n, n2, --n3, n4);
        }
        return n5;
    }

    private static final int getWordType(String string, int n, int n2, int n3, int n4) {
        if (n3 < n || n3 >= n2) {
            return 2;
        }
        return RegularExpression.getWordType0(string.charAt(n3), n4);
    }

    private static final boolean regionMatches(String string, int n, int n2, String string2, int n3) {
        if (n2 - n < n3) {
            return false;
        }
        return string.regionMatches(n, string2, 0, n3);
    }

    private static final boolean regionMatches(String string, int n, int n2, int n3, int n4) {
        if (n2 - n < n4) {
            return false;
        }
        return string.regionMatches(n, string, n3, n4);
    }

    private static final boolean regionMatchesIgnoreCase(String string, int n, int n2, String string2, int n3) {
        return string.regionMatches(true, n, string2, 0, n3);
    }

    private static final boolean regionMatchesIgnoreCase(String string, int n, int n2, int n3, int n4) {
        if (n2 - n < n4) {
            return false;
        }
        return string.regionMatches(true, n, string, n3, n4);
    }

    public boolean matches(CharacterIterator characterIterator) {
        return this.matches(characterIterator, (Match)null);
    }

    public boolean matches(CharacterIterator characterIterator, Match match) {
        int n;
        int n2;
        int n3 = characterIterator.getBeginIndex();
        int n4 = characterIterator.getEndIndex();
        RegularExpression regularExpression = this;
        synchronized (regularExpression) {
            if (this.operations == null) {
                this.prepare();
            }
            if (this.context == null) {
                this.context = new Context();
            }
        }
        Context context = null;
        Context context2 = this.context;
        synchronized (context2) {
            context = this.context.inuse ? new Context() : this.context;
            context.reset(characterIterator, n3, n4, this.numberOfClosures);
        }
        if (match != null) {
            match.setNumberOfGroups(this.nofparen);
            match.setSource(characterIterator);
        } else if (this.hasBackReferences) {
            match = new Match();
            match.setNumberOfGroups(this.nofparen);
        }
        context.match = match;
        if (RegularExpression.isSet(this.options, 512)) {
            int n5 = this.matchCharacterIterator(context, this.operations, context.start, 1, this.options);
            if (n5 == context.limit) {
                if (context.match != null) {
                    context.match.setBeginning(0, context.start);
                    context.match.setEnd(0, n5);
                }
                context.inuse = false;
                return true;
            }
            return false;
        }
        if (this.fixedStringOnly) {
            int n6 = this.fixedStringTable.matches(characterIterator, context.start, context.limit);
            if (n6 >= 0) {
                if (context.match != null) {
                    context.match.setBeginning(0, n6);
                    context.match.setEnd(0, n6 + this.fixedString.length());
                }
                context.inuse = false;
                return true;
            }
            context.inuse = false;
            return false;
        }
        if (this.fixedString != null && (n2 = this.fixedStringTable.matches(characterIterator, context.start, context.limit)) < 0) {
            context.inuse = false;
            return false;
        }
        n2 = context.limit - this.minlength;
        int n7 = -1;
        if (this.operations != null && this.operations.type == 7 && this.operations.getChild().type == 0) {
            if (RegularExpression.isSet(this.options, 4)) {
                n = context.start;
                n7 = this.matchCharacterIterator(context, this.operations, context.start, 1, this.options);
            } else {
                boolean bl = true;
                n = context.start;
                while (n <= n2) {
                    char c = characterIterator.setIndex(n);
                    if (RegularExpression.isEOLChar(c)) {
                        bl = true;
                    } else {
                        if (bl && 0 <= (n7 = this.matchCharacterIterator(context, this.operations, n, 1, this.options))) break;
                        bl = false;
                    }
                    ++n;
                }
            }
        } else if (this.firstChar != null) {
            RangeToken rangeToken = this.firstChar;
            if (RegularExpression.isSet(this.options, 2)) {
                rangeToken = this.firstChar.getCaseInsensitiveToken();
                n = context.start;
                while (n <= n2) {
                    char c;
                    int n8 = characterIterator.setIndex(n);
                    if (!(!REUtil.isHighSurrogate(n8) || n + 1 >= context.limit ? !rangeToken.match(n8) && !rangeToken.match(c = Character.toUpperCase((char)n8)) && !rangeToken.match(Character.toLowerCase(c)) : !rangeToken.match(n8 = REUtil.composeFromSurrogates(n8, characterIterator.setIndex(n + 1))))) {
                        n7 = this.matchCharacterIterator(context, this.operations, n, 1, this.options);
                        if (0 <= n7) break;
                    }
                    ++n;
                }
            } else {
                n = context.start;
                while (n <= n2) {
                    int n9 = characterIterator.setIndex(n);
                    if (REUtil.isHighSurrogate(n9) && n + 1 < context.limit) {
                        n9 = REUtil.composeFromSurrogates(n9, characterIterator.setIndex(n + 1));
                    }
                    if (!rangeToken.match(n9) || 0 > (n7 = this.matchCharacterIterator(context, this.operations, n, 1, this.options))) {
                        ++n;
                        continue;
                    }
                    break;
                }
            }
        } else {
            n = context.start;
            while (n <= n2) {
                n7 = this.matchCharacterIterator(context, this.operations, n, 1, this.options);
                if (0 > n7) {
                    ++n;
                    continue;
                }
                break;
            }
        }
        if (n7 >= 0) {
            if (context.match != null) {
                context.match.setBeginning(0, n);
                context.match.setEnd(0, n7);
            }
            context.inuse = false;
            return true;
        }
        context.inuse = false;
        return false;
    }

    /*
     * Could not resolve type clashes
     */
    private int matchCharacterIterator(Context context, Op op, int n, int n2, int n3) {
        CharacterIterator characterIterator = context.ciTarget;
        block32: while (true) {
            if (op == null) {
                return RegularExpression.isSet(n3, 512) && n != context.limit ? -1 : n;
            }
            if (n > context.limit || n < context.start) {
                return -1;
            }
            switch (op.type) {
                case 1: {
                    int n4;
                    if (RegularExpression.isSet(n3, 2)) {
                        n4 = op.getData();
                        if (n2 > 0) {
                            if (n >= context.limit || !RegularExpression.matchIgnoreCase(n4, characterIterator.setIndex(n))) {
                                return -1;
                            }
                            ++n;
                        } else {
                            int n5 = n - 1;
                            if (n5 >= context.limit || n5 < 0 || !RegularExpression.matchIgnoreCase(n4, characterIterator.setIndex(n5))) {
                                return -1;
                            }
                            n = n5;
                        }
                    } else {
                        n4 = op.getData();
                        if (n2 > 0) {
                            if (n >= context.limit || n4 != characterIterator.setIndex(n)) {
                                return -1;
                            }
                            ++n;
                        } else {
                            int n6 = n - 1;
                            if (n6 >= context.limit || n6 < 0 || n4 != characterIterator.setIndex(n6)) {
                                return -1;
                            }
                            n = n6;
                        }
                    }
                    op = op.next;
                    continue block32;
                }
                case 0: {
                    int n4;
                    if (n2 > 0) {
                        if (n >= context.limit) {
                            return -1;
                        }
                        n4 = characterIterator.setIndex(n);
                        if (RegularExpression.isSet(n3, 4)) {
                            if (REUtil.isHighSurrogate(n4) && n + 1 < context.limit) {
                                ++n;
                            }
                        } else {
                            if (REUtil.isHighSurrogate(n4) && n + 1 < context.limit) {
                                n4 = REUtil.composeFromSurrogates(n4, characterIterator.setIndex(++n));
                            }
                            if (RegularExpression.isEOLChar(n4)) {
                                return -1;
                            }
                        }
                        ++n;
                    } else {
                        n4 = n - 1;
                        if (n4 >= context.limit || n4 < 0) {
                            return -1;
                        }
                        int n7 = characterIterator.setIndex(n4);
                        if (RegularExpression.isSet(n3, 4)) {
                            if (REUtil.isLowSurrogate(n7) && n4 - 1 >= 0) {
                                // empty if block
                            }
                        } else {
                            if (REUtil.isLowSurrogate(n7) && n4 - 1 >= 0) {
                                n7 = REUtil.composeFromSurrogates(characterIterator.setIndex(--n4), n7);
                            }
                            if (!RegularExpression.isEOLChar(n7)) {
                                return -1;
                            }
                        }
                        n = --n4;
                    }
                    op = op.next;
                    continue block32;
                }
                case 3: 
                case 4: {
                    char c;
                    int n4;
                    if (n2 > 0) {
                        if (n >= context.limit) {
                            return -1;
                        }
                        n4 = characterIterator.setIndex(n);
                        if (REUtil.isHighSurrogate(n4) && n + 1 < context.limit) {
                            n4 = REUtil.composeFromSurrogates(n4, characterIterator.setIndex(++n));
                        }
                        RangeToken rangeToken = op.getToken();
                        if (RegularExpression.isSet(n3, 2)) {
                            if (!(rangeToken = rangeToken.getCaseInsensitiveToken()).match(n4)) {
                                if (n4 >= 65536) {
                                    return -1;
                                }
                                char c2 = Character.toUpperCase((char)n4);
                                c = c2;
                                if (!rangeToken.match(c2) && !rangeToken.match(Character.toLowerCase(c))) {
                                    return -1;
                                }
                            }
                        } else if (!rangeToken.match(n4)) {
                            return -1;
                        }
                        ++n;
                    } else {
                        n4 = n - 1;
                        if (n4 >= context.limit || n4 < 0) {
                            return -1;
                        }
                        int n8 = characterIterator.setIndex(n4);
                        if (REUtil.isLowSurrogate(n8) && n4 - 1 >= 0) {
                            n8 = REUtil.composeFromSurrogates(characterIterator.setIndex(--n4), n8);
                        }
                        RangeToken rangeToken = op.getToken();
                        if (RegularExpression.isSet(n3, 2)) {
                            if (!(rangeToken = rangeToken.getCaseInsensitiveToken()).match(n8)) {
                                if (n8 >= 65536) {
                                    return -1;
                                }
                                char c3 = Character.toUpperCase((char)n8);
                                if (!rangeToken.match(c3) && !rangeToken.match(Character.toLowerCase(c3))) {
                                    return -1;
                                }
                            }
                        } else if (!rangeToken.match(n8)) {
                            return -1;
                        }
                        n = n4;
                    }
                    op = op.next;
                    continue block32;
                }
                case 5: {
                    char c;
                    int n4 = 0;
                    switch (op.getData()) {
                        case 94: {
                            if (!(RegularExpression.isSet(n3, 8) ? n != context.start && (n <= context.start || !RegularExpression.isEOLChar(characterIterator.setIndex(n - 1))) : n != context.start)) break;
                            return -1;
                        }
                        case 64: {
                            if (n == context.start || n > context.start && RegularExpression.isEOLChar(characterIterator.setIndex(n - 1))) break;
                            return -1;
                        }
                        case 36: {
                            if (!(RegularExpression.isSet(n3, 8) ? n != context.limit && (n >= context.limit || !RegularExpression.isEOLChar(characterIterator.setIndex(n))) : !(n == context.limit || n + 1 == context.limit && RegularExpression.isEOLChar(characterIterator.setIndex(n)) || n + 2 == context.limit && characterIterator.setIndex(n) == '\r' && characterIterator.setIndex(n + 1) == '\n'))) break;
                            return -1;
                        }
                        case 65: {
                            if (n == context.start) break;
                            return -1;
                        }
                        case 90: {
                            if (n == context.limit || n + 1 == context.limit && RegularExpression.isEOLChar(characterIterator.setIndex(n)) || n + 2 == context.limit && characterIterator.setIndex(n) == '\r' && characterIterator.setIndex(n + 1) == '\n') break;
                            return -1;
                        }
                        case 122: {
                            if (n == context.limit) break;
                            return -1;
                        }
                        case 98: {
                            if (context.length == 0) {
                                return -1;
                            }
                            int n9 = RegularExpression.getWordType(characterIterator, context.start, context.limit, n, n3);
                            if (n9 == 0) {
                                return -1;
                            }
                            c = RegularExpression.getPreviousWordType(characterIterator, context.start, context.limit, n, n3);
                            if (n9 != c) break;
                            return -1;
                        }
                        case 66: {
                            if (context.length == 0) {
                                n4 = 1;
                            } else {
                                int n10 = RegularExpression.getWordType(characterIterator, context.start, context.limit, n, n3);
                                int n11 = n4 = n10 == 0 || n10 == RegularExpression.getPreviousWordType(characterIterator, context.start, context.limit, n, n3) ? 1 : 0;
                            }
                            if (n4 != 0) break;
                            return -1;
                        }
                        case 60: {
                            if (context.length == 0 || n == context.limit) {
                                return -1;
                            }
                            if (RegularExpression.getWordType(characterIterator, context.start, context.limit, n, n3) == 1 && RegularExpression.getPreviousWordType(characterIterator, context.start, context.limit, n, n3) == 2) break;
                            return -1;
                        }
                        case 62: {
                            if (context.length == 0 || n == context.start) {
                                return -1;
                            }
                            if (RegularExpression.getWordType(characterIterator, context.start, context.limit, n, n3) == 2 && RegularExpression.getPreviousWordType(characterIterator, context.start, context.limit, n, n3) == 1) break;
                            return -1;
                        }
                    }
                    op = op.next;
                    continue block32;
                }
                case 16: {
                    int n12 = op.getData();
                    if (n12 <= 0 || n12 >= this.nofparen) {
                        throw new RuntimeException("Internal Error: Reference number must be more than zero: " + n12);
                    }
                    if (context.match.getBeginning(n12) < 0 || context.match.getEnd(n12) < 0) {
                        return -1;
                    }
                    char c = context.match.getBeginning(n12);
                    int n13 = context.match.getEnd(n12) - c;
                    if (!RegularExpression.isSet(n3, 2)) {
                        if (n2 > 0) {
                            if (!RegularExpression.regionMatches(characterIterator, n, context.limit, (int)c, n13)) {
                                return -1;
                            }
                            n += n13;
                        } else {
                            if (!RegularExpression.regionMatches(characterIterator, n - n13, context.limit, (int)c, n13)) {
                                return -1;
                            }
                            n -= n13;
                        }
                    } else if (n2 > 0) {
                        if (!RegularExpression.regionMatchesIgnoreCase(characterIterator, n, context.limit, (int)c, n13)) {
                            return -1;
                        }
                        n += n13;
                    } else {
                        if (!RegularExpression.regionMatchesIgnoreCase(characterIterator, n - n13, context.limit, (int)c, n13)) {
                            return -1;
                        }
                        n -= n13;
                    }
                    op = op.next;
                    continue block32;
                }
                case 6: {
                    String string = op.getString();
                    char c = string.length();
                    if (!RegularExpression.isSet(n3, 2)) {
                        if (n2 > 0) {
                            if (!RegularExpression.regionMatches(characterIterator, n, context.limit, string, (int)c)) {
                                return -1;
                            }
                            n += c;
                        } else {
                            if (!RegularExpression.regionMatches(characterIterator, n - c, context.limit, string, (int)c)) {
                                return -1;
                            }
                            n -= c;
                        }
                    } else if (n2 > 0) {
                        if (!RegularExpression.regionMatchesIgnoreCase(characterIterator, n, context.limit, string, (int)c)) {
                            return -1;
                        }
                        n += c;
                    } else {
                        if (!RegularExpression.regionMatchesIgnoreCase(characterIterator, n - c, context.limit, string, (int)c)) {
                            return -1;
                        }
                        n -= c;
                    }
                    op = op.next;
                    continue block32;
                }
                case 7: {
                    char c;
                    int n14 = op.getData();
                    if (n14 >= 0) {
                        c = context.offsets[n14];
                        if (c < '\u0000' || c != n) {
                            context.offsets[n14] = n;
                        } else {
                            context.offsets[n14] = -1;
                            op = op.next;
                            continue block32;
                        }
                    }
                    c = this.matchCharacterIterator(context, op.getChild(), n, n2, n3);
                    if (n14 >= 0) {
                        context.offsets[n14] = -1;
                    }
                    if (c >= '\u0000') {
                        return c;
                    }
                    op = op.next;
                    continue block32;
                }
                case 9: {
                    int n15 = this.matchCharacterIterator(context, op.getChild(), n, n2, n3);
                    if (n15 >= 0) {
                        return n15;
                    }
                    op = op.next;
                    continue block32;
                }
                case 8: 
                case 10: {
                    int n16 = this.matchCharacterIterator(context, op.next, n, n2, n3);
                    if (n16 >= 0) {
                        return n16;
                    }
                    op = op.getChild();
                    continue block32;
                }
                case 11: {
                    char c;
                    int n17 = 0;
                    while (n17 < op.size()) {
                        c = this.matchCharacterIterator(context, op.elementAt(n17), n, n2, n3);
                        if (c >= '\u0000') {
                            return c;
                        }
                        ++n17;
                    }
                    return -1;
                }
                case 15: {
                    int n18;
                    char c = op.getData();
                    if (context.match != null && c > '\u0000') {
                        int n19 = context.match.getBeginning(c);
                        context.match.setBeginning(c, n);
                        n18 = this.matchCharacterIterator(context, op.next, n, n2, n3);
                        if (n18 < 0) {
                            context.match.setBeginning(c, n19);
                        }
                        return n18;
                    }
                    if (context.match != null && c < '\u0000') {
                        char c4 = -c;
                        n18 = context.match.getEnd(c4);
                        context.match.setEnd(c4, n);
                        int n20 = this.matchCharacterIterator(context, op.next, n, n2, n3);
                        if (n20 < 0) {
                            context.match.setEnd(c4, n18);
                        }
                        return n20;
                    }
                    op = op.next;
                    continue block32;
                }
                case 20: {
                    if (0 > this.matchCharacterIterator(context, op.getChild(), n, 1, n3)) {
                        return -1;
                    }
                    op = op.next;
                    continue block32;
                }
                case 21: {
                    if (0 <= this.matchCharacterIterator(context, op.getChild(), n, 1, n3)) {
                        return -1;
                    }
                    op = op.next;
                    continue block32;
                }
                case 22: {
                    if (0 > this.matchCharacterIterator(context, op.getChild(), n, -1, n3)) {
                        return -1;
                    }
                    op = op.next;
                    continue block32;
                }
                case 23: {
                    if (0 <= this.matchCharacterIterator(context, op.getChild(), n, -1, n3)) {
                        return -1;
                    }
                    op = op.next;
                    continue block32;
                }
                case 24: {
                    int n21 = this.matchCharacterIterator(context, op.getChild(), n, n2, n3);
                    if (n21 < 0) {
                        return n21;
                    }
                    n = n21;
                    op = op.next;
                    continue block32;
                }
                case 25: {
                    int n22 = n3;
                    n22 |= op.getData();
                    int n18 = this.matchCharacterIterator(context, op.getChild(), n, n2, n22 &= ~op.getData2());
                    if (n18 < 0) {
                        return n18;
                    }
                    n = n18;
                    op = op.next;
                    continue block32;
                }
                case 26: {
                    Op.ConditionOp conditionOp = (Op.ConditionOp)op;
                    int n18 = 0;
                    if (conditionOp.refNumber > 0) {
                        if (conditionOp.refNumber >= this.nofparen) {
                            throw new RuntimeException("Internal Error: Reference number must be more than zero: " + conditionOp.refNumber);
                        }
                        n18 = context.match.getBeginning(conditionOp.refNumber) >= 0 && context.match.getEnd(conditionOp.refNumber) >= 0 ? 1 : 0;
                    } else {
                        int n23 = n18 = 0 <= this.matchCharacterIterator(context, conditionOp.condition, n, n2, n3) ? 1 : 0;
                    }
                    if (n18 != 0) {
                        op = conditionOp.yes;
                        continue block32;
                    }
                    if (conditionOp.no != null) {
                        op = conditionOp.no;
                        continue block32;
                    }
                    op = conditionOp.next;
                    continue block32;
                }
            }
            break;
        }
        throw new RuntimeException("Unknown operation type: " + op.type);
    }

    private static final int getPreviousWordType(CharacterIterator characterIterator, int n, int n2, int n3, int n4) {
        int n5 = RegularExpression.getWordType(characterIterator, n, n2, --n3, n4);
        while (n5 == 0) {
            n5 = RegularExpression.getWordType(characterIterator, n, n2, --n3, n4);
        }
        return n5;
    }

    private static final int getWordType(CharacterIterator characterIterator, int n, int n2, int n3, int n4) {
        if (n3 < n || n3 >= n2) {
            return 2;
        }
        return RegularExpression.getWordType0(characterIterator.setIndex(n3), n4);
    }

    private static final boolean regionMatches(CharacterIterator characterIterator, int n, int n2, String string, int n3) {
        if (n < 0) {
            return false;
        }
        if (n2 - n < n3) {
            return false;
        }
        int n4 = 0;
        while (n3-- > 0) {
            if (characterIterator.setIndex(n++) == string.charAt(n4++)) continue;
            return false;
        }
        return true;
    }

    private static final boolean regionMatches(CharacterIterator characterIterator, int n, int n2, int n3, int n4) {
        if (n < 0) {
            return false;
        }
        if (n2 - n < n4) {
            return false;
        }
        int n5 = n3;
        while (n4-- > 0) {
            if (characterIterator.setIndex(n++) == characterIterator.setIndex(n5++)) continue;
            return false;
        }
        return true;
    }

    private static final boolean regionMatchesIgnoreCase(CharacterIterator characterIterator, int n, int n2, String string, int n3) {
        if (n < 0) {
            return false;
        }
        if (n2 - n < n3) {
            return false;
        }
        int n4 = 0;
        while (n3-- > 0) {
            char c;
            char c2;
            char c3;
            char c4;
            if ((c4 = characterIterator.setIndex(n++)) == (c3 = string.charAt(n4++)) || (c2 = Character.toUpperCase(c4)) == (c = Character.toUpperCase(c3)) || Character.toLowerCase(c2) == Character.toLowerCase(c)) continue;
            return false;
        }
        return true;
    }

    private static final boolean regionMatchesIgnoreCase(CharacterIterator characterIterator, int n, int n2, int n3, int n4) {
        if (n < 0) {
            return false;
        }
        if (n2 - n < n4) {
            return false;
        }
        int n5 = n3;
        while (n4-- > 0) {
            char c;
            char c2;
            char c3;
            char c4;
            if ((c4 = characterIterator.setIndex(n++)) == (c3 = characterIterator.setIndex(n5++)) || (c2 = Character.toUpperCase(c4)) == (c = Character.toUpperCase(c3)) || Character.toLowerCase(c2) == Character.toLowerCase(c)) continue;
            return false;
        }
        return true;
    }

    void prepare() {
        Object object;
        int n;
        this.compile(this.tokentree);
        this.minlength = this.tokentree.getMinLength();
        this.firstChar = null;
        if (!RegularExpression.isSet(this.options, 128) && !RegularExpression.isSet(this.options, 512) && (n = this.tokentree.analyzeFirstCharacter((RangeToken)(object = Token.createRange()), this.options)) == 1) {
            ((RangeToken)object).compactRanges();
            this.firstChar = object;
        }
        if (this.operations != null && (this.operations.type == 6 || this.operations.type == 1) && this.operations.next == null) {
            this.fixedStringOnly = true;
            if (this.operations.type == 6) {
                this.fixedString = this.operations.getString();
            } else if (this.operations.getData() >= 65536) {
                this.fixedString = REUtil.decomposeToSurrogates(this.operations.getData());
            } else {
                object = new char[1];
                object[0] = (char)this.operations.getData();
                this.fixedString = new String((char[])object);
            }
            this.fixedStringOptions = this.options;
            this.fixedStringTable = new BMPattern(this.fixedString, 256, RegularExpression.isSet(this.fixedStringOptions, 2));
        } else if (!RegularExpression.isSet(this.options, 256) && !RegularExpression.isSet(this.options, 512)) {
            object = new Token.FixedStringContainer();
            this.tokentree.findFixedString((Token.FixedStringContainer)object, this.options);
            this.fixedString = ((Token.FixedStringContainer)object).token == null ? null : ((Token.FixedStringContainer)object).token.getString();
            this.fixedStringOptions = ((Token.FixedStringContainer)object).options;
            if (this.fixedString != null && this.fixedString.length() < 2) {
                this.fixedString = null;
            }
            if (this.fixedString != null) {
                this.fixedStringTable = new BMPattern(this.fixedString, 256, RegularExpression.isSet(this.fixedStringOptions, 2));
            }
        }
    }

    private static final boolean isSet(int n, int n2) {
        return (n & n2) == n2;
    }

    public RegularExpression(String string) throws ParseException {
        this.setPattern(string, null);
    }

    public RegularExpression(String string, String string2) throws ParseException {
        this.setPattern(string, string2);
    }

    RegularExpression(String string, Token token, int n, boolean bl, int n2) {
        this.regex = string;
        this.tokentree = token;
        this.nofparen = n;
        this.options = n2;
        this.hasBackReferences = bl;
    }

    public void setPattern(String string) throws ParseException {
        this.setPattern(string, this.options);
    }

    private void setPattern(String string, int n) throws ParseException {
        this.regex = string;
        this.options = n;
        RegexParser regexParser = RegularExpression.isSet(this.options, 512) ? new ParserForXMLSchema() : new RegexParser();
        this.tokentree = regexParser.parse(this.regex, this.options);
        this.nofparen = regexParser.parennumber;
        this.hasBackReferences = regexParser.hasBackReferences;
        this.operations = null;
        this.context = null;
    }

    public void setPattern(String string, String string2) throws ParseException {
        this.setPattern(string, REUtil.parseOptions(string2));
    }

    public String getPattern() {
        return this.regex;
    }

    public String toString() {
        return this.tokentree.toString(this.options);
    }

    public String getOptions() {
        return REUtil.createOptionString(this.options);
    }

    public boolean equals(Object object) {
        if (object == null) {
            return false;
        }
        if (!(object instanceof RegularExpression)) {
            return false;
        }
        RegularExpression regularExpression = (RegularExpression)object;
        return this.regex.equals(regularExpression.regex) && this.options == regularExpression.options;
    }

    boolean equals(String string, int n) {
        return this.regex.equals(string) && this.options == n;
    }

    public int hashCode() {
        return (this.regex + "/" + this.getOptions()).hashCode();
    }

    public int getNumberOfGroups() {
        return this.nofparen;
    }

    private static final int getWordType0(char c, int n) {
        if (!RegularExpression.isSet(n, 64)) {
            if (RegularExpression.isSet(n, 32)) {
                return Token.getRange("IsWord", true).match(c) ? 1 : 2;
            }
            return RegularExpression.isWordChar(c) ? 1 : 2;
        }
        switch (Character.getType(c)) {
            case 1: 
            case 2: 
            case 3: 
            case 4: 
            case 5: 
            case 8: 
            case 9: 
            case 10: 
            case 11: {
                return 1;
            }
            case 6: 
            case 7: 
            case 16: {
                return 0;
            }
            case 15: {
                switch (c) {
                    case '\t': 
                    case '\n': 
                    case '\u000b': 
                    case '\f': 
                    case '\r': {
                        return 2;
                    }
                }
                return 0;
            }
        }
        return 2;
    }

    private static final boolean isEOLChar(int n) {
        return n == 10 || n == 13 || n == 8232 || n == 8233;
    }

    private static final boolean isWordChar(int n) {
        if (n == 95) {
            return true;
        }
        if (n < 48) {
            return false;
        }
        if (n > 122) {
            return false;
        }
        if (n <= 57) {
            return true;
        }
        if (n < 65) {
            return false;
        }
        if (n <= 90) {
            return true;
        }
        return n >= 97;
    }

    private static final boolean matchIgnoreCase(int n, int n2) {
        char c;
        if (n == n2) {
            return true;
        }
        if (n > 65535 || n2 > 65535) {
            return false;
        }
        char c2 = Character.toUpperCase((char)n);
        if (c2 == (c = Character.toUpperCase((char)n2))) {
            return true;
        }
        return Character.toLowerCase(c2) == Character.toLowerCase(c);
    }

    static final class Context {
        CharacterIterator ciTarget;
        String strTarget;
        char[] charTarget;
        int start;
        int limit;
        int length;
        Match match;
        boolean inuse = false;
        int[] offsets;

        Context() {
        }

        private void resetCommon(int n) {
            this.length = this.limit - this.start;
            this.inuse = true;
            this.match = null;
            if (this.offsets == null || this.offsets.length != n) {
                this.offsets = new int[n];
            }
            int n2 = 0;
            while (n2 < n) {
                this.offsets[n2] = -1;
                ++n2;
            }
        }

        void reset(CharacterIterator characterIterator, int n, int n2, int n3) {
            this.ciTarget = characterIterator;
            this.start = n;
            this.limit = n2;
            this.resetCommon(n3);
        }

        void reset(String string, int n, int n2, int n3) {
            this.strTarget = string;
            this.start = n;
            this.limit = n2;
            this.resetCommon(n3);
        }

        void reset(char[] cArray, int n, int n2, int n3) {
            this.charTarget = cArray;
            this.start = n;
            this.limit = n2;
            this.resetCommon(n3);
        }
    }
}

