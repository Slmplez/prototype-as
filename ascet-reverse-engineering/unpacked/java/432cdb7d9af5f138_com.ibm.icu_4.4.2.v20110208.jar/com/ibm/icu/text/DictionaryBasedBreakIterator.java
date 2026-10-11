/*
 * Decompiled with CFR 0.152.
 */
package com.ibm.icu.text;

import com.ibm.icu.impl.Assert;
import com.ibm.icu.text.BreakDictionary;
import com.ibm.icu.text.RBBIDataWrapper;
import com.ibm.icu.text.RuleBasedBreakIterator;
import java.io.IOException;
import java.io.InputStream;
import java.text.CharacterIterator;
import java.util.Stack;
import java.util.Vector;

public class DictionaryBasedBreakIterator
extends RuleBasedBreakIterator {
    private boolean usingCTDictionary = false;
    private BreakDictionary dictionary;
    int[] cachedBreakPositions;
    int positionInCache;

    protected DictionaryBasedBreakIterator(InputStream compiledRules) throws IOException {
        this.fRData = RBBIDataWrapper.get(compiledRules);
        this.dictionary = null;
        this.usingCTDictionary = true;
    }

    public DictionaryBasedBreakIterator(String rules, InputStream dictionaryStream) throws IOException {
        super(rules);
        this.dictionary = new BreakDictionary(dictionaryStream);
    }

    public DictionaryBasedBreakIterator(InputStream compiledRules, InputStream dictionaryStream) throws IOException {
        this.fRData = RBBIDataWrapper.get(compiledRules);
        this.dictionary = new BreakDictionary(dictionaryStream);
    }

    public void setText(CharacterIterator newText) {
        super.setText(newText);
        this.cachedBreakPositions = null;
        this.fDictionaryCharCount = 0;
        this.positionInCache = 0;
    }

    public int first() {
        this.cachedBreakPositions = null;
        this.fDictionaryCharCount = 0;
        this.positionInCache = 0;
        return super.first();
    }

    public int last() {
        this.cachedBreakPositions = null;
        this.fDictionaryCharCount = 0;
        this.positionInCache = 0;
        return super.last();
    }

    /*
     * Unable to fully structure code
     */
    public int previous() {
        text = this.getText();
        if (this.cachedBreakPositions != null && this.positionInCache > 0) {
            --this.positionInCache;
            text.setIndex(this.cachedBreakPositions[this.positionInCache]);
            return this.cachedBreakPositions[this.positionInCache];
        }
        this.cachedBreakPositions = null;
        offset = this.current();
        result = super.previous();
        if (this.cachedBreakPositions == null) ** GOTO lbl15
        this.positionInCache = this.cachedBreakPositions.length - 2;
        return result;
        while ((nextResult = this.next()) < offset) {
            result = nextResult;
lbl15:
            // 2 sources

            if (result < offset) continue;
        }
        if (this.cachedBreakPositions != null) {
            this.positionInCache = this.cachedBreakPositions.length - 2;
        }
        if (result != -1) {
            text.setIndex(result);
        }
        return result;
    }

    public int preceding(int offset) {
        CharacterIterator text = this.getText();
        DictionaryBasedBreakIterator.checkOffset(offset, text);
        if (this.cachedBreakPositions == null || offset <= this.cachedBreakPositions[0] || offset > this.cachedBreakPositions[this.cachedBreakPositions.length - 1]) {
            this.cachedBreakPositions = null;
            return super.preceding(offset);
        }
        this.positionInCache = 0;
        while (this.positionInCache < this.cachedBreakPositions.length && offset > this.cachedBreakPositions[this.positionInCache]) {
            ++this.positionInCache;
        }
        --this.positionInCache;
        text.setIndex(this.cachedBreakPositions[this.positionInCache]);
        return text.getIndex();
    }

    public int following(int offset) {
        CharacterIterator text = this.getText();
        DictionaryBasedBreakIterator.checkOffset(offset, text);
        if (this.cachedBreakPositions == null || offset < this.cachedBreakPositions[0] || offset >= this.cachedBreakPositions[this.cachedBreakPositions.length - 1]) {
            this.cachedBreakPositions = null;
            return super.following(offset);
        }
        this.positionInCache = 0;
        while (this.positionInCache < this.cachedBreakPositions.length && offset >= this.cachedBreakPositions[this.positionInCache]) {
            ++this.positionInCache;
        }
        text.setIndex(this.cachedBreakPositions[this.positionInCache]);
        return text.getIndex();
    }

    public int getRuleStatus() {
        return 0;
    }

    public int getRuleStatusVec(int[] fillInArray) {
        if (fillInArray != null && fillInArray.length >= 1) {
            fillInArray[0] = 0;
        }
        return 1;
    }

    protected int handleNext() {
        CharacterIterator text = this.getText();
        if (this.cachedBreakPositions == null || this.positionInCache == this.cachedBreakPositions.length - 1) {
            int startPos = text.getIndex();
            this.fDictionaryCharCount = 0;
            int result = super.handleNext();
            if (!this.usingCTDictionary && this.fDictionaryCharCount > 1 && result - startPos > 1) {
                this.divideUpDictionaryRange(startPos, result);
            } else {
                this.cachedBreakPositions = null;
                return result;
            }
        }
        if (this.cachedBreakPositions != null) {
            ++this.positionInCache;
            text.setIndex(this.cachedBreakPositions[this.positionInCache]);
            return this.cachedBreakPositions[this.positionInCache];
        }
        Assert.assrt(false);
        return -9999;
    }

    private void divideUpDictionaryRange(int startPos, int endPos) {
        CharacterIterator text = this.getText();
        text.setIndex(startPos);
        int c = DictionaryBasedBreakIterator.CICurrent32(text);
        while (!this.isDictionaryChar(c)) {
            c = DictionaryBasedBreakIterator.CINext32(text);
        }
        Stack currentBreakPositions = new Stack();
        Stack<Integer> possibleBreakPositions = new Stack<Integer>();
        Vector<Integer> wrongBreakPositions = new Vector<Integer>();
        int state = 0;
        int farthestEndPoint = text.getIndex();
        Stack bestBreakPositions = null;
        c = DictionaryBasedBreakIterator.CICurrent32(text);
        while (true) {
            if (this.dictionary.at(state, 0) == -1) {
                possibleBreakPositions.push(text.getIndex());
            }
            if ((state = this.dictionary.at(state, (char)c) & 0xFFFF) == 65535) {
                currentBreakPositions.push(text.getIndex());
                break;
            }
            if (state == 0 || text.getIndex() >= endPos) {
                if (text.getIndex() > farthestEndPoint) {
                    farthestEndPoint = text.getIndex();
                    bestBreakPositions = (Stack)currentBreakPositions.clone();
                }
                while (!possibleBreakPositions.isEmpty() && wrongBreakPositions.contains(possibleBreakPositions.peek())) {
                    possibleBreakPositions.pop();
                }
                if (possibleBreakPositions.isEmpty()) {
                    if (bestBreakPositions != null) {
                        currentBreakPositions = bestBreakPositions;
                        if (farthestEndPoint >= endPos) break;
                        text.setIndex(farthestEndPoint + 1);
                    } else {
                        if ((currentBreakPositions.size() == 0 || ((Integer)currentBreakPositions.peek()).intValue() != text.getIndex()) && text.getIndex() != startPos) {
                            currentBreakPositions.push(text.getIndex());
                        }
                        DictionaryBasedBreakIterator.CINext32(text);
                        currentBreakPositions.push(text.getIndex());
                    }
                } else {
                    Integer temp = (Integer)possibleBreakPositions.pop();
                    Integer temp2 = null;
                    while (!currentBreakPositions.isEmpty() && temp < (Integer)currentBreakPositions.peek()) {
                        temp2 = (Integer)currentBreakPositions.pop();
                        wrongBreakPositions.addElement(temp2);
                    }
                    currentBreakPositions.push(temp);
                    text.setIndex((Integer)currentBreakPositions.peek());
                }
                c = DictionaryBasedBreakIterator.CICurrent32(text);
                state = 0;
                if (text.getIndex() < endPos) continue;
                break;
            }
            c = DictionaryBasedBreakIterator.CINext32(text);
        }
        if (!currentBreakPositions.isEmpty()) {
            currentBreakPositions.pop();
        }
        currentBreakPositions.push(endPos);
        this.cachedBreakPositions = new int[currentBreakPositions.size() + 1];
        this.cachedBreakPositions[0] = startPos;
        int i = 0;
        while (i < currentBreakPositions.size()) {
            this.cachedBreakPositions[i + 1] = (Integer)currentBreakPositions.elementAt(i);
            ++i;
        }
        this.positionInCache = 0;
    }
}

