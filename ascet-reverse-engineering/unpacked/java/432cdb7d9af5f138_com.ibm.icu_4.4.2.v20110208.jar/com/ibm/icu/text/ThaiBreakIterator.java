/*
 * Decompiled with CFR 0.152.
 */
package com.ibm.icu.text;

import com.ibm.icu.impl.Assert;
import com.ibm.icu.text.BreakCTDictionary;
import com.ibm.icu.text.DictionaryBasedBreakIterator;
import com.ibm.icu.text.UnicodeSet;
import java.io.IOException;
import java.io.InputStream;
import java.text.CharacterIterator;
import java.util.Stack;

class ThaiBreakIterator
extends DictionaryBasedBreakIterator {
    private static UnicodeSet fThaiWordSet = new UnicodeSet();
    private static UnicodeSet fEndWordSet;
    private static UnicodeSet fBeginWordSet;
    private static UnicodeSet fSuffixSet;
    private static UnicodeSet fMarkSet;
    private BreakCTDictionary fDictionary;
    private static final byte THAI_LOOKAHEAD = 3;
    private static final byte THAI_ROOT_COMBINE_THRESHOLD = 3;
    private static final byte THAI_PREFIX_COMBINE_THRESHOLD = 3;
    private static final char THAI_PAIYANNOI = '\u0e2f';
    private static final char THAI_MAIYAMOK = '\u0e46';
    private static final byte THAI_MIN_WORD = 2;

    static {
        fMarkSet = new UnicodeSet();
        fEndWordSet = new UnicodeSet();
        fBeginWordSet = new UnicodeSet();
        fSuffixSet = new UnicodeSet();
        fThaiWordSet.applyPattern("[[:Thai:]&[:LineBreak=SA:]]");
        fThaiWordSet.compact();
        fMarkSet.applyPattern("[[:Thai:]&[:LineBreak=SA:]&[:M:]]");
        fMarkSet.add(32);
        fEndWordSet = fThaiWordSet;
        fEndWordSet.remove(3633);
        fEndWordSet.remove(3648, 3652);
        fBeginWordSet.add(3585, 3630);
        fBeginWordSet.add(3648, 3652);
        fSuffixSet.add(3631);
        fSuffixSet.add(3654);
        fMarkSet.compact();
        fEndWordSet.compact();
        fBeginWordSet.compact();
        fSuffixSet.compact();
        fThaiWordSet.freeze();
        fMarkSet.freeze();
        fEndWordSet.freeze();
        fBeginWordSet.freeze();
        fSuffixSet.freeze();
    }

    public ThaiBreakIterator(InputStream ruleStream, InputStream dictionaryStream) throws IOException {
        super(ruleStream);
        this.fDictionary = new BreakCTDictionary(dictionaryStream);
    }

    protected int handleNext() {
        CharacterIterator text = this.getText();
        if (this.cachedBreakPositions == null || this.positionInCache == this.cachedBreakPositions.length - 1) {
            int startPos = text.getIndex();
            this.fDictionaryCharCount = 0;
            int result = super.handleNext();
            if (this.fDictionaryCharCount > 1 && result - startPos > 1) {
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

    private int divideUpDictionaryRange(int rangeStart, int rangeEnd) {
        int current;
        if (rangeEnd - rangeStart < 2) {
            return 0;
        }
        CharacterIterator fIter = this.getText();
        int wordsFound = 0;
        Stack<Integer> foundBreaks = new Stack<Integer>();
        PossibleWord[] words = new PossibleWord[3];
        int i = 0;
        while (i < 3) {
            words[i] = new PossibleWord();
            ++i;
        }
        fIter.setIndex(rangeStart);
        while ((current = fIter.getIndex()) < rangeEnd) {
            int currPos;
            char uc;
            int wordLength = 0;
            int candidates = words[wordsFound % 3].candidates(fIter, this.fDictionary, rangeEnd);
            if (candidates == 1) {
                wordLength = words[wordsFound % 3].acceptMarked(fIter);
                ++wordsFound;
            } else if (candidates > 1) {
                boolean foundBest = false;
                if (fIter.getIndex() < rangeEnd) {
                    block2: do {
                        int wordsMatched = 1;
                        if (words[(wordsFound + 1) % 3].candidates(fIter, this.fDictionary, rangeEnd) <= 0) continue;
                        if (wordsMatched < 2) {
                            words[wordsFound % 3].markCurrent();
                            wordsMatched = 2;
                        }
                        if (fIter.getIndex() >= rangeEnd) break;
                        do {
                            if (words[(wordsFound + 2) % 3].candidates(fIter, this.fDictionary, rangeEnd) <= 0) continue;
                            words[wordsFound % 3].markCurrent();
                            foundBest = true;
                            continue block2;
                        } while (words[(wordsFound + 1) % 3].backUp(fIter));
                    } while (words[wordsFound % 3].backUp(fIter) && !foundBest);
                }
                wordLength = words[wordsFound % 3].acceptMarked(fIter);
                ++wordsFound;
            }
            if (fIter.getIndex() < rangeEnd && wordLength < 3) {
                if (words[wordsFound % 3].candidates(fIter, this.fDictionary, rangeEnd) <= 0 && (wordLength == 0 || words[wordsFound % 3].longestPrefix() < 3)) {
                    int remaining = rangeEnd - (current + wordLength);
                    char pc = fIter.current();
                    int chars = 0;
                    while (true) {
                        fIter.next();
                        uc = fIter.current();
                        ++chars;
                        if (--remaining <= 0) break;
                        if (fEndWordSet.contains(pc) && fBeginWordSet.contains(uc)) {
                            int candidate = words[(wordsFound + 1) % 3].candidates(fIter, this.fDictionary, rangeEnd);
                            fIter.setIndex(current + wordLength + chars);
                            if (candidate > 0) break;
                        }
                        pc = uc;
                    }
                    if (wordLength <= 0) {
                        ++wordsFound;
                    }
                    wordLength += chars;
                } else {
                    fIter.setIndex(current + wordLength);
                }
            }
            while ((currPos = fIter.getIndex()) < rangeEnd && fMarkSet.contains(fIter.current())) {
                fIter.next();
                wordLength += fIter.getIndex() - currPos;
            }
            if (fIter.getIndex() < rangeEnd && wordLength > 0) {
                if (words[wordsFound % 3].candidates(fIter, this.fDictionary, rangeEnd) <= 0 && fSuffixSet.contains(uc = fIter.current())) {
                    if (uc == '\u0e2f') {
                        if (!fSuffixSet.contains(fIter.previous())) {
                            fIter.next();
                            fIter.next();
                            ++wordLength;
                            uc = fIter.current();
                        } else {
                            fIter.next();
                        }
                    }
                    if (uc == '\u0e46') {
                        if (fIter.previous() != '\u0e46') {
                            fIter.next();
                            fIter.next();
                            ++wordLength;
                        } else {
                            fIter.next();
                        }
                    }
                } else {
                    fIter.setIndex(current + wordLength);
                }
            }
            if (wordLength <= 0) continue;
            foundBreaks.push(current + wordLength);
        }
        if ((Integer)foundBreaks.peek() >= rangeEnd) {
            foundBreaks.pop();
            --wordsFound;
        }
        this.cachedBreakPositions = new int[foundBreaks.size() + 2];
        this.cachedBreakPositions[0] = rangeStart;
        int i2 = 0;
        while (i2 < foundBreaks.size()) {
            this.cachedBreakPositions[i2 + 1] = (Integer)foundBreaks.elementAt(i2);
            ++i2;
        }
        this.cachedBreakPositions[i2 + 1] = rangeEnd;
        this.positionInCache = 0;
        return wordsFound;
    }

    static class PossibleWord {
        private final int POSSIBLE_WORD_LIST_MAX = 20;
        private int[] lengths = new int[20];
        private int[] count = new int[1];
        private int prefix;
        private int offset = -1;
        private int mark;
        private int current;

        public int candidates(CharacterIterator fIter, BreakCTDictionary dict, int rangeEnd) {
            int start = fIter.getIndex();
            if (start != this.offset) {
                this.offset = start;
                this.prefix = dict.matches(fIter, rangeEnd - start, this.lengths, this.count, this.lengths.length);
                if (this.count[0] <= 0) {
                    fIter.setIndex(start);
                }
            }
            if (this.count[0] > 0) {
                fIter.setIndex(start + this.lengths[this.count[0] - 1]);
            }
            this.mark = this.current = this.count[0] - 1;
            return this.count[0];
        }

        public int acceptMarked(CharacterIterator fIter) {
            fIter.setIndex(this.offset + this.lengths[this.mark]);
            return this.lengths[this.mark];
        }

        public boolean backUp(CharacterIterator fIter) {
            if (this.current > 0) {
                fIter.setIndex(this.offset + this.lengths[--this.current]);
                return true;
            }
            return false;
        }

        public int longestPrefix() {
            return this.prefix;
        }

        public void markCurrent() {
            this.mark = this.current;
        }
    }
}

