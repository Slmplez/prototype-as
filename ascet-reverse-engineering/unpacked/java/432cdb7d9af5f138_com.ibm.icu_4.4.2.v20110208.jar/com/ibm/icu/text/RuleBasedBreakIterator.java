/*
 * Decompiled with CFR 0.152.
 */
package com.ibm.icu.text;

import com.ibm.icu.impl.Assert;
import com.ibm.icu.impl.ICUDebug;
import com.ibm.icu.text.BreakIterator;
import com.ibm.icu.text.RBBIDataWrapper;
import com.ibm.icu.text.RBBIRuleBuilder;
import com.ibm.icu.text.UTF16;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.CharacterIterator;
import java.text.StringCharacterIterator;

public class RuleBasedBreakIterator
extends BreakIterator {
    public static final int WORD_NONE = 0;
    public static final int WORD_NONE_LIMIT = 100;
    public static final int WORD_NUMBER = 100;
    public static final int WORD_NUMBER_LIMIT = 200;
    public static final int WORD_LETTER = 200;
    public static final int WORD_LETTER_LIMIT = 300;
    public static final int WORD_KANA = 300;
    public static final int WORD_KANA_LIMIT = 400;
    public static final int WORD_IDEO = 400;
    public static final int WORD_IDEO_LIMIT = 500;
    private static final int START_STATE = 1;
    private static final int STOP_STATE = 0;
    private static final int RBBI_START = 0;
    private static final int RBBI_RUN = 1;
    private static final int RBBI_END = 2;
    private CharacterIterator fText = new StringCharacterIterator("");
    protected RBBIDataWrapper fRData;
    private int fLastRuleStatusIndex;
    private boolean fLastStatusIndexValid;
    protected int fDictionaryCharCount;
    public static boolean fTrace;
    private static final String RBBI_DEBUG_ARG = "rbbi";
    private static boolean debugInitDone;
    protected static String fDebugEnv;
    private static int CI_DONE32;

    static {
        debugInitDone = false;
        fDebugEnv = ICUDebug.enabled(RBBI_DEBUG_ARG) ? ICUDebug.value(RBBI_DEBUG_ARG) : null;
        CI_DONE32 = Integer.MAX_VALUE;
    }

    public RuleBasedBreakIterator() {
    }

    public static RuleBasedBreakIterator getInstanceFromCompiledRules(InputStream is) throws IOException {
        RuleBasedBreakIterator This = new RuleBasedBreakIterator();
        This.fRData = RBBIDataWrapper.get(is);
        return This;
    }

    public RuleBasedBreakIterator(String rules) {
        this.init();
        try {
            ByteArrayOutputStream ruleOS = new ByteArrayOutputStream();
            RuleBasedBreakIterator.compileRules(rules, ruleOS);
            byte[] ruleBA = ruleOS.toByteArray();
            ByteArrayInputStream ruleIS = new ByteArrayInputStream(ruleBA);
            this.fRData = RBBIDataWrapper.get(ruleIS);
        }
        catch (IOException e) {
            RuntimeException rte = new RuntimeException("RuleBasedBreakIterator rule compilation internal error: " + e.getMessage());
            throw rte;
        }
    }

    public Object clone() {
        RuleBasedBreakIterator result = (RuleBasedBreakIterator)super.clone();
        if (this.fText != null) {
            result.fText = (CharacterIterator)this.fText.clone();
        }
        return result;
    }

    public boolean equals(Object that) {
        RuleBasedBreakIterator other;
        block9: {
            block8: {
                block7: {
                    block6: {
                        try {
                            other = (RuleBasedBreakIterator)that;
                            if (this.fRData == other.fRData || this.fRData != null && other.fRData != null) break block6;
                            System.out.println("GOT HERE");
                            return false;
                        }
                        catch (ClassCastException classCastException) {
                            return false;
                        }
                    }
                    if (this.fRData == null || other.fRData == null || this.fRData.fRuleSource.equals(other.fRData.fRuleSource)) break block7;
                    return false;
                }
                if (this.fText != null || other.fText != null) break block8;
                return true;
            }
            if (this.fText != null && other.fText != null) break block9;
            return false;
        }
        return this.fText.equals(other.fText);
    }

    public String toString() {
        String retStr = null;
        if (this.fRData != null) {
            retStr = this.fRData.fRuleSource;
        }
        return retStr;
    }

    public int hashCode() {
        return this.fRData.fRuleSource.hashCode();
    }

    public void dump() {
        this.fRData.dump();
    }

    private void init() {
        this.fLastStatusIndexValid = true;
        this.fDictionaryCharCount = 0;
        if (!debugInitDone) {
            fTrace = ICUDebug.enabled(RBBI_DEBUG_ARG) && ICUDebug.value(RBBI_DEBUG_ARG).indexOf("trace") >= 0;
            debugInitDone = true;
        }
    }

    private static void compileRules(String rules, OutputStream ruleBinary) throws IOException {
        RBBIRuleBuilder.compileRules(rules, ruleBinary);
    }

    public int first() {
        this.fLastRuleStatusIndex = 0;
        this.fLastStatusIndexValid = true;
        if (this.fText == null) {
            return -1;
        }
        this.fText.first();
        return this.fText.getIndex();
    }

    public int last() {
        if (this.fText == null) {
            this.fLastRuleStatusIndex = 0;
            this.fLastStatusIndexValid = true;
            return -1;
        }
        this.fLastStatusIndexValid = false;
        int pos = this.fText.getEndIndex();
        this.fText.setIndex(pos);
        return pos;
    }

    public int next(int n) {
        int result = this.current();
        while (n > 0) {
            result = this.handleNext();
            --n;
        }
        while (n < 0) {
            result = this.previous();
            ++n;
        }
        return result;
    }

    public int next() {
        return this.handleNext();
    }

    public int previous() {
        if (this.fText == null || this.current() == this.fText.getBeginIndex()) {
            this.fLastRuleStatusIndex = 0;
            this.fLastStatusIndexValid = true;
            return -1;
        }
        if (this.fRData.fSRTable != null || this.fRData.fSFTable != null) {
            return this.handlePrevious(this.fRData.fRTable);
        }
        int start = this.current();
        RuleBasedBreakIterator.CIPrevious32(this.fText);
        int lastResult = this.handlePrevious(this.fRData.fRTable);
        if (lastResult == -1) {
            lastResult = this.fText.getBeginIndex();
            this.fText.setIndex(lastResult);
        }
        int result = lastResult;
        int lastTag = 0;
        boolean breakTagValid = false;
        while ((result = this.handleNext()) != -1 && result < start) {
            lastResult = result;
            lastTag = this.fLastRuleStatusIndex;
            breakTagValid = true;
        }
        this.fText.setIndex(lastResult);
        this.fLastRuleStatusIndex = lastTag;
        this.fLastStatusIndexValid = breakTagValid;
        return lastResult;
    }

    public int following(int offset) {
        this.fLastRuleStatusIndex = 0;
        this.fLastStatusIndexValid = true;
        if (this.fText == null || offset >= this.fText.getEndIndex()) {
            this.last();
            return this.next();
        }
        if (offset < this.fText.getBeginIndex()) {
            return this.first();
        }
        int result = 0;
        if (this.fRData.fSRTable != null) {
            this.fText.setIndex(offset);
            RuleBasedBreakIterator.CINext32(this.fText);
            this.handlePrevious(this.fRData.fSRTable);
            result = this.next();
            while (result <= offset) {
                result = this.next();
            }
            return result;
        }
        if (this.fRData.fSFTable != null) {
            this.fText.setIndex(offset);
            RuleBasedBreakIterator.CIPrevious32(this.fText);
            this.handleNext(this.fRData.fSFTable);
            int oldresult = this.previous();
            while (oldresult > offset) {
                result = this.previous();
                if (result <= offset) {
                    return oldresult;
                }
                oldresult = result;
            }
            result = this.next();
            if (result <= offset) {
                return this.next();
            }
            return result;
        }
        this.fText.setIndex(offset);
        if (offset == this.fText.getBeginIndex()) {
            return this.handleNext();
        }
        result = this.previous();
        while (result != -1 && result <= offset) {
            result = this.next();
        }
        return result;
    }

    public int preceding(int offset) {
        if (this.fText == null || offset > this.fText.getEndIndex()) {
            return this.last();
        }
        if (offset < this.fText.getBeginIndex()) {
            return this.first();
        }
        if (this.fRData.fSFTable != null) {
            this.fText.setIndex(offset);
            RuleBasedBreakIterator.CIPrevious32(this.fText);
            this.handleNext(this.fRData.fSFTable);
            int result = this.previous();
            while (result >= offset) {
                result = this.previous();
            }
            return result;
        }
        if (this.fRData.fSRTable != null) {
            int result;
            this.fText.setIndex(offset);
            RuleBasedBreakIterator.CINext32(this.fText);
            this.handlePrevious(this.fRData.fSRTable);
            int oldresult = this.next();
            while (oldresult < offset) {
                result = this.next();
                if (result >= offset) {
                    return oldresult;
                }
                oldresult = result;
            }
            result = this.previous();
            if (result >= offset) {
                return this.previous();
            }
            return result;
        }
        this.fText.setIndex(offset);
        return this.previous();
    }

    protected static final void checkOffset(int offset, CharacterIterator text) {
        if (offset < text.getBeginIndex() || offset > text.getEndIndex()) {
            throw new IllegalArgumentException("offset out of bounds");
        }
    }

    public boolean isBoundary(int offset) {
        RuleBasedBreakIterator.checkOffset(offset, this.fText);
        if (offset == this.fText.getBeginIndex()) {
            this.first();
            return true;
        }
        if (offset == this.fText.getEndIndex()) {
            this.last();
            return true;
        }
        this.fText.setIndex(offset);
        RuleBasedBreakIterator.CIPrevious32(this.fText);
        int pos = this.fText.getIndex();
        boolean result = this.following(pos) == offset;
        return result;
    }

    public int current() {
        return this.fText != null ? this.fText.getIndex() : -1;
    }

    private void makeRuleStatusValid() {
        if (!this.fLastStatusIndexValid) {
            if (this.fText == null || this.current() == this.fText.getBeginIndex()) {
                this.fLastRuleStatusIndex = 0;
                this.fLastStatusIndexValid = true;
            } else {
                int pa = this.current();
                this.previous();
                int pb = this.next();
                Assert.assrt(pa == pb);
            }
            Assert.assrt(this.fLastStatusIndexValid);
            Assert.assrt(this.fLastRuleStatusIndex >= 0 && this.fLastRuleStatusIndex < this.fRData.fStatusTable.length);
        }
    }

    public int getRuleStatus() {
        this.makeRuleStatusValid();
        int idx = this.fLastRuleStatusIndex + this.fRData.fStatusTable[this.fLastRuleStatusIndex];
        int tagVal = this.fRData.fStatusTable[idx];
        return tagVal;
    }

    public int getRuleStatusVec(int[] fillInArray) {
        this.makeRuleStatusValid();
        int numStatusVals = this.fRData.fStatusTable[this.fLastRuleStatusIndex];
        if (fillInArray != null) {
            int numToCopy = Math.min(numStatusVals, fillInArray.length);
            int i = 0;
            while (i < numToCopy) {
                fillInArray[i] = this.fRData.fStatusTable[this.fLastRuleStatusIndex + i + 1];
                ++i;
            }
        }
        return numStatusVals;
    }

    public CharacterIterator getText() {
        return this.fText;
    }

    public void setText(CharacterIterator newText) {
        this.fText = newText;
        this.first();
    }

    static int CINext32(CharacterIterator ci) {
        int c = ci.current();
        if (c >= 55296 && c <= 56319 && ((c = ci.next()) < 56320 || c > 57343)) {
            c = ci.previous();
        }
        if ((c = ci.next()) >= 55296) {
            c = RuleBasedBreakIterator.CINextTrail32(ci, c);
        }
        if (c >= 65536 && c != CI_DONE32) {
            ci.previous();
        }
        return c;
    }

    private static int CINextTrail32(CharacterIterator ci, int lead) {
        int retVal = lead;
        if (lead <= 56319) {
            char cTrail = ci.next();
            if (UTF16.isTrailSurrogate(cTrail)) {
                retVal = (lead - 55296 << 10) + (cTrail - 56320) + 65536;
            } else {
                ci.previous();
            }
        } else if (lead == 65535 && ci.getIndex() >= ci.getEndIndex()) {
            retVal = CI_DONE32;
        }
        return retVal;
    }

    private static int CIPrevious32(CharacterIterator ci) {
        int trail;
        if (ci.getIndex() <= ci.getBeginIndex()) {
            return CI_DONE32;
        }
        int retVal = trail = ci.previous();
        if (UTF16.isTrailSurrogate((char)trail) && ci.getIndex() > ci.getBeginIndex()) {
            char lead = ci.previous();
            if (UTF16.isLeadSurrogate(lead)) {
                retVal = (lead - 55296 << 10) + (trail - 56320) + 65536;
            } else {
                ci.next();
            }
        }
        return retVal;
    }

    static int CICurrent32(CharacterIterator ci) {
        int lead = ci.current();
        int retVal = lead;
        if (retVal < 55296) {
            return retVal;
        }
        if (UTF16.isLeadSurrogate((char)lead)) {
            char trail = ci.next();
            ci.previous();
            if (UTF16.isTrailSurrogate(trail)) {
                retVal = (lead - 55296 << 10) + (trail - 56320) + 65536;
            }
        } else if (lead == 65535 && ci.getIndex() >= ci.getEndIndex()) {
            retVal = CI_DONE32;
        }
        return retVal;
    }

    int handleNext() {
        return this.handleNext(this.fRData.fFTable);
    }

    private int handleNext(short[] stateTable) {
        boolean lookAheadHardBreak;
        int category = 0;
        short lookaheadStatus = 0;
        int lookaheadTagIdx = 0;
        int result = 0;
        int initialPosition = 0;
        int lookaheadResult = 0;
        boolean bl = lookAheadHardBreak = (stateTable[5] & 1) != 0;
        if (fTrace) {
            System.out.println("Handle Next   pos      char  state category");
        }
        this.fLastStatusIndexValid = true;
        this.fLastRuleStatusIndex = 0;
        if (this.fText == null) {
            this.fLastRuleStatusIndex = 0;
            return -1;
        }
        result = initialPosition = this.fText.getIndex();
        int c = this.fText.current();
        if (c >= 55296 && (c = RuleBasedBreakIterator.CINextTrail32(this.fText, c)) == CI_DONE32) {
            this.fLastRuleStatusIndex = 0;
            return -1;
        }
        int state = 1;
        int row = this.fRData.getRowIndex(state);
        category = 3;
        int mode = 1;
        if ((stateTable[5] & 2) != 0) {
            category = 2;
            mode = 0;
        }
        while (state != 0) {
            if (c == CI_DONE32) {
                if (mode == 2) {
                    if (lookaheadResult > result) {
                        result = lookaheadResult;
                        this.fLastRuleStatusIndex = lookaheadTagIdx;
                        lookaheadStatus = 0;
                        break;
                    }
                    if (result != initialPosition) break;
                    this.fText.setIndex(initialPosition);
                    RuleBasedBreakIterator.CINext32(this.fText);
                    break;
                }
                mode = 2;
                category = 1;
            }
            if (mode == 1 && ((category = (int)((short)this.fRData.fTrie.getCodePointValue(c))) & 0x4000) != 0) {
                ++this.fDictionaryCharCount;
                category = (short)(category & 0xFFFFBFFF);
            }
            if (fTrace) {
                System.out.print("            " + RBBIDataWrapper.intToString(this.fText.getIndex(), 5));
                System.out.print(RBBIDataWrapper.intToHexString(c, 10));
                System.out.println(String.valueOf(RBBIDataWrapper.intToString(state, 7)) + RBBIDataWrapper.intToString(category, 6));
            }
            state = stateTable[row + 4 + category];
            row = this.fRData.getRowIndex(state);
            if (mode == 1) {
                c = this.fText.next();
                if (c >= 55296) {
                    c = RuleBasedBreakIterator.CINextTrail32(this.fText, c);
                }
            } else if (mode == 0) {
                mode = 1;
            }
            if (stateTable[row + 0] == -1) {
                result = this.fText.getIndex();
                if (c >= 65536 && c != CI_DONE32) {
                    --result;
                }
                this.fLastRuleStatusIndex = stateTable[row + 2];
            }
            if (stateTable[row + 1] != 0) {
                if (lookaheadStatus != 0 && stateTable[row + 0] == lookaheadStatus) {
                    result = lookaheadResult;
                    this.fLastRuleStatusIndex = lookaheadTagIdx;
                    lookaheadStatus = 0;
                    if (!lookAheadHardBreak) continue;
                    return result;
                }
                lookaheadResult = this.fText.getIndex();
                if (c >= 65536 && c != CI_DONE32) {
                    --lookaheadResult;
                }
                lookaheadStatus = stateTable[row + 1];
                lookaheadTagIdx = stateTable[row + 2];
                continue;
            }
            if (stateTable[row + 0] == 0) continue;
            lookaheadStatus = 0;
        }
        if (result == initialPosition) {
            result = this.fText.setIndex(initialPosition);
            RuleBasedBreakIterator.CINext32(this.fText);
            result = this.fText.getIndex();
        }
        this.fText.setIndex(result);
        if (fTrace) {
            System.out.println("result = " + result);
        }
        return result;
    }

    private int handlePrevious(short[] stateTable) {
        boolean lookAheadHardBreak;
        int category = 0;
        short lookaheadStatus = 0;
        int result = 0;
        int initialPosition = 0;
        int lookaheadResult = 0;
        boolean bl = lookAheadHardBreak = (stateTable[5] & 1) != 0;
        if (this.fText == null || stateTable == null) {
            return 0;
        }
        this.fLastStatusIndexValid = false;
        this.fLastRuleStatusIndex = 0;
        result = initialPosition = this.fText.getIndex();
        int c = RuleBasedBreakIterator.CIPrevious32(this.fText);
        int state = 1;
        int row = this.fRData.getRowIndex(state);
        category = 3;
        int mode = 1;
        if ((stateTable[5] & 2) != 0) {
            category = 2;
            mode = 0;
        }
        if (fTrace) {
            System.out.println("Handle Prev   pos   char  state category ");
        }
        while (true) {
            if (c == CI_DONE32) {
                if (mode == 2 || this.fRData.fHeader.fVersion == 1) {
                    if (lookaheadResult < result) {
                        result = lookaheadResult;
                        lookaheadStatus = 0;
                        break;
                    }
                    if (result != initialPosition) break;
                    this.fText.setIndex(initialPosition);
                    RuleBasedBreakIterator.CIPrevious32(this.fText);
                    break;
                }
                mode = 2;
                category = 1;
            }
            if (mode == 1 && ((category = (int)((short)this.fRData.fTrie.getCodePointValue(c))) & 0x4000) != 0) {
                ++this.fDictionaryCharCount;
                category &= 0xFFFFBFFF;
            }
            if (fTrace) {
                System.out.print("             " + this.fText.getIndex() + "   ");
                if (32 <= c && c < 127) {
                    System.out.print("  " + c + "  ");
                } else {
                    System.out.print(" " + Integer.toHexString(c) + " ");
                }
                System.out.println(" " + state + "  " + category + " ");
            }
            if (stateTable[(row = this.fRData.getRowIndex(state = stateTable[row + 4 + category])) + 0] == -1) {
                result = this.fText.getIndex();
            }
            if (stateTable[row + 1] != 0) {
                if (lookaheadStatus != 0 && stateTable[row + 0] == lookaheadStatus) {
                    result = lookaheadResult;
                    lookaheadStatus = 0;
                    if (lookAheadHardBreak) {
                        break;
                    }
                } else {
                    lookaheadResult = this.fText.getIndex();
                    lookaheadStatus = stateTable[row + 1];
                }
            } else if (stateTable[row + 0] != 0 && !lookAheadHardBreak) {
                lookaheadStatus = 0;
            }
            if (state == 0) break;
            if (mode == 1) {
                c = RuleBasedBreakIterator.CIPrevious32(this.fText);
                continue;
            }
            if (mode != 0) continue;
            mode = 1;
        }
        if (result == initialPosition) {
            result = this.fText.setIndex(initialPosition);
            RuleBasedBreakIterator.CIPrevious32(this.fText);
            result = this.fText.getIndex();
        }
        this.fText.setIndex(result);
        if (fTrace) {
            System.out.println("Result = " + result);
        }
        return result;
    }

    boolean isDictionaryChar(int c) {
        short category = (short)this.fRData.fTrie.getCodePointValue(c);
        return (category & 0x4000) != 0;
    }
}

