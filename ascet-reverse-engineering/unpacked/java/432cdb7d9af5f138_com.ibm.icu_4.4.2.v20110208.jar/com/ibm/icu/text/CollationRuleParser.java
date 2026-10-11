/*
 * Decompiled with CFR 0.152.
 */
package com.ibm.icu.text;

import com.ibm.icu.impl.UCharacterProperty;
import com.ibm.icu.lang.UCharacter;
import com.ibm.icu.text.CanonicalIterator;
import com.ibm.icu.text.CollationElementIterator;
import com.ibm.icu.text.CollationParsedRuleBuilder;
import com.ibm.icu.text.Normalizer;
import com.ibm.icu.text.RuleBasedCollator;
import com.ibm.icu.text.UnicodeSet;
import java.text.ParseException;
import java.util.Arrays;
import java.util.Hashtable;

final class CollationRuleParser {
    static final int TOKEN_RESET_ = -559038737;
    int m_resultLength_;
    TokenListHeader[] m_listHeader_;
    Token m_variableTop_;
    OptionSet m_options_;
    StringBuilder m_source_;
    Hashtable<Token, Token> m_hashTable_;
    private ParsedToken m_parsedToken_;
    private String m_rules_;
    private int m_current_;
    private int m_optionEnd_;
    private int m_extraCurrent_;
    UnicodeSet m_copySet_;
    UnicodeSet m_removeSet_;
    private int m_prevStrength_;
    private static final int TOKEN_UNSET_ = -1;
    private static final int TOKEN_POLARITY_POSITIVE_ = 1;
    private static final int TOKEN_TOP_MASK_ = 4;
    private static final int TOKEN_VARIABLE_TOP_MASK_ = 8;
    private static final int TOKEN_BEFORE_ = 3;
    private static final int TOKEN_SUCCESS_MASK_ = 16;
    private static final IndirectBoundaries[] INDIRECT_BOUNDARIES_ = new IndirectBoundaries[15];
    private static final TokenOption[] RULES_OPTIONS_;
    private Token m_utilToken_ = new Token();
    private CollationElementIterator m_UCAColEIter_ = RuleBasedCollator.UCA_.getCollationElementIterator("");
    private int[] m_utilCEBuffer_ = new int[2];
    private int m_optionarg_ = 0;

    static {
        CollationRuleParser.INDIRECT_BOUNDARIES_[0] = new IndirectBoundaries(RuleBasedCollator.UCA_CONSTANTS_.LAST_NON_VARIABLE_, RuleBasedCollator.UCA_CONSTANTS_.FIRST_IMPLICIT_);
        CollationRuleParser.INDIRECT_BOUNDARIES_[1] = new IndirectBoundaries(RuleBasedCollator.UCA_CONSTANTS_.FIRST_PRIMARY_IGNORABLE_, null);
        CollationRuleParser.INDIRECT_BOUNDARIES_[2] = new IndirectBoundaries(RuleBasedCollator.UCA_CONSTANTS_.LAST_PRIMARY_IGNORABLE_, null);
        CollationRuleParser.INDIRECT_BOUNDARIES_[3] = new IndirectBoundaries(RuleBasedCollator.UCA_CONSTANTS_.FIRST_SECONDARY_IGNORABLE_, null);
        CollationRuleParser.INDIRECT_BOUNDARIES_[4] = new IndirectBoundaries(RuleBasedCollator.UCA_CONSTANTS_.LAST_SECONDARY_IGNORABLE_, null);
        CollationRuleParser.INDIRECT_BOUNDARIES_[5] = new IndirectBoundaries(RuleBasedCollator.UCA_CONSTANTS_.FIRST_TERTIARY_IGNORABLE_, null);
        CollationRuleParser.INDIRECT_BOUNDARIES_[6] = new IndirectBoundaries(RuleBasedCollator.UCA_CONSTANTS_.LAST_TERTIARY_IGNORABLE_, null);
        CollationRuleParser.INDIRECT_BOUNDARIES_[7] = new IndirectBoundaries(RuleBasedCollator.UCA_CONSTANTS_.FIRST_VARIABLE_, null);
        CollationRuleParser.INDIRECT_BOUNDARIES_[8] = new IndirectBoundaries(RuleBasedCollator.UCA_CONSTANTS_.LAST_VARIABLE_, null);
        CollationRuleParser.INDIRECT_BOUNDARIES_[9] = new IndirectBoundaries(RuleBasedCollator.UCA_CONSTANTS_.FIRST_NON_VARIABLE_, null);
        CollationRuleParser.INDIRECT_BOUNDARIES_[10] = new IndirectBoundaries(RuleBasedCollator.UCA_CONSTANTS_.LAST_NON_VARIABLE_, RuleBasedCollator.UCA_CONSTANTS_.FIRST_IMPLICIT_);
        CollationRuleParser.INDIRECT_BOUNDARIES_[11] = new IndirectBoundaries(RuleBasedCollator.UCA_CONSTANTS_.FIRST_IMPLICIT_, null);
        CollationRuleParser.INDIRECT_BOUNDARIES_[12] = new IndirectBoundaries(RuleBasedCollator.UCA_CONSTANTS_.LAST_IMPLICIT_, RuleBasedCollator.UCA_CONSTANTS_.FIRST_TRAILING_);
        CollationRuleParser.INDIRECT_BOUNDARIES_[13] = new IndirectBoundaries(RuleBasedCollator.UCA_CONSTANTS_.FIRST_TRAILING_, null);
        CollationRuleParser.INDIRECT_BOUNDARIES_[14] = new IndirectBoundaries(RuleBasedCollator.UCA_CONSTANTS_.LAST_TRAILING_, null);
        CollationRuleParser.INDIRECT_BOUNDARIES_[14].m_limitCE_ = RuleBasedCollator.UCA_CONSTANTS_.PRIMARY_SPECIAL_MIN_ << 24;
        RULES_OPTIONS_ = new TokenOption[19];
        String[] option = new String[]{"non-ignorable", "shifted"};
        int[] value = new int[]{21, 20};
        CollationRuleParser.RULES_OPTIONS_[0] = new TokenOption("alternate", 1, option, value);
        option = new String[]{"2"};
        value = new int[]{17};
        CollationRuleParser.RULES_OPTIONS_[1] = new TokenOption("backwards", 0, option, value);
        String[] offonoption = new String[]{"off", "on"};
        int[] offonvalue = new int[]{16, 17};
        CollationRuleParser.RULES_OPTIONS_[2] = new TokenOption("caseLevel", 3, offonoption, offonvalue);
        option = new String[]{"lower", "upper", "off"};
        value = new int[]{24, 25, 16};
        CollationRuleParser.RULES_OPTIONS_[3] = new TokenOption("caseFirst", 2, option, value);
        CollationRuleParser.RULES_OPTIONS_[4] = new TokenOption("normalization", 4, offonoption, offonvalue);
        CollationRuleParser.RULES_OPTIONS_[5] = new TokenOption("hiraganaQ", 6, offonoption, offonvalue);
        option = new String[]{"1", "2", "3", "4", "I"};
        value = new int[]{0, 1, 2, 3, 15};
        CollationRuleParser.RULES_OPTIONS_[6] = new TokenOption("strength", 5, option, value);
        CollationRuleParser.RULES_OPTIONS_[7] = new TokenOption("variable top", 7, null, null);
        CollationRuleParser.RULES_OPTIONS_[8] = new TokenOption("rearrange", 7, null, null);
        option = new String[]{"1", "2", "3"};
        value = new int[]{0, 1, 2};
        CollationRuleParser.RULES_OPTIONS_[9] = new TokenOption("before", 7, option, value);
        CollationRuleParser.RULES_OPTIONS_[10] = new TokenOption("top", 7, null, null);
        String[] firstlastoption = new String[]{"primary", "secondary", "tertiary", "variable", "regular", "implicit", "trailing"};
        int[] firstlastvalue = new int[7];
        Arrays.fill(firstlastvalue, 0);
        CollationRuleParser.RULES_OPTIONS_[11] = new TokenOption("first", 7, firstlastoption, firstlastvalue);
        CollationRuleParser.RULES_OPTIONS_[12] = new TokenOption("last", 7, firstlastoption, firstlastvalue);
        CollationRuleParser.RULES_OPTIONS_[13] = new TokenOption("optimize", 7, null, null);
        CollationRuleParser.RULES_OPTIONS_[14] = new TokenOption("suppressContractions", 7, null, null);
        CollationRuleParser.RULES_OPTIONS_[15] = new TokenOption("undefined", 7, null, null);
        CollationRuleParser.RULES_OPTIONS_[16] = new TokenOption("scriptOrder", 7, null, null);
        CollationRuleParser.RULES_OPTIONS_[17] = new TokenOption("charsetname", 7, null, null);
        CollationRuleParser.RULES_OPTIONS_[18] = new TokenOption("charset", 7, null, null);
    }

    CollationRuleParser(String rules) throws ParseException {
        this.extractSetsFromRules(rules);
        this.m_source_ = new StringBuilder(Normalizer.decompose(rules, false).trim());
        this.m_rules_ = this.m_source_.toString();
        this.m_current_ = 0;
        this.m_extraCurrent_ = this.m_source_.length();
        this.m_variableTop_ = null;
        this.m_parsedToken_ = new ParsedToken();
        this.m_hashTable_ = new Hashtable();
        this.m_options_ = new OptionSet(RuleBasedCollator.UCA_);
        this.m_listHeader_ = new TokenListHeader[512];
        this.m_resultLength_ = 0;
        this.m_prevStrength_ = -1;
    }

    void setDefaultOptionsInCollator(RuleBasedCollator collator) {
        collator.m_defaultStrength_ = this.m_options_.m_strength_;
        collator.m_defaultDecomposition_ = this.m_options_.m_decomposition_;
        collator.m_defaultIsFrenchCollation_ = this.m_options_.m_isFrenchCollation_;
        collator.m_defaultIsAlternateHandlingShifted_ = this.m_options_.m_isAlternateHandlingShifted_;
        collator.m_defaultIsCaseLevel_ = this.m_options_.m_isCaseLevel_;
        collator.m_defaultCaseFirst_ = this.m_options_.m_caseFirst_;
        collator.m_defaultIsHiragana4_ = this.m_options_.m_isHiragana4_;
        collator.m_defaultVariableTopValue_ = this.m_options_.m_variableTopValue_;
    }

    /*
     * Unable to fully structure code
     */
    int assembleTokenList() throws ParseException {
        lastToken = null;
        this.m_parsedToken_.m_strength_ = -1;
        sourcelimit = this.m_source_.length();
        expandNext = 0;
        while (this.m_current_ < sourcelimit) {
            block57: {
                block53: {
                    block55: {
                        block56: {
                            block54: {
                                this.m_parsedToken_.m_prefixOffset_ = 0;
                                if (this.parseNextToken(lastToken == null) < 0) continue;
                                specs = this.m_parsedToken_.m_flags_;
                                variableTop = (specs & 8) != 0;
                                top = (specs & 4) != 0;
                                lastStrength = -1;
                                if (lastToken != null) {
                                    lastStrength = lastToken.m_strength_;
                                }
                                this.m_utilToken_.m_source_ = this.m_parsedToken_.m_charsLen_ << 24 | this.m_parsedToken_.m_charsOffset_;
                                this.m_utilToken_.m_rules_ = this.m_source_;
                                sourceToken = this.m_hashTable_.get(this.m_utilToken_);
                                if (this.m_parsedToken_.m_strength_ == -559038737) break block53;
                                if (lastToken == null) {
                                    CollationRuleParser.throwParseException(this.m_source_.toString(), 0);
                                }
                                if (sourceToken == null) {
                                    sourceToken = new Token();
                                    sourceToken.m_rules_ = this.m_source_;
                                    sourceToken.m_source_ = this.m_parsedToken_.m_charsLen_ << 24 | this.m_parsedToken_.m_charsOffset_;
                                    sourceToken.m_prefix_ = this.m_parsedToken_.m_prefixLen_ << 24 | this.m_parsedToken_.m_prefixOffset_;
                                    sourceToken.m_polarity_ = 1;
                                    sourceToken.m_next_ = null;
                                    sourceToken.m_previous_ = null;
                                    sourceToken.m_CELength_ = 0;
                                    sourceToken.m_expCELength_ = 0;
                                    this.m_hashTable_.put(sourceToken, sourceToken);
                                } else if (sourceToken.m_strength_ != -559038737 && lastToken != sourceToken) {
                                    if (sourceToken.m_next_ != null) {
                                        if (sourceToken.m_next_.m_strength_ > sourceToken.m_strength_) {
                                            sourceToken.m_next_.m_strength_ = sourceToken.m_strength_;
                                        }
                                        sourceToken.m_next_.m_previous_ = sourceToken.m_previous_;
                                    } else {
                                        sourceToken.m_listHeader_.m_last_ = sourceToken.m_previous_;
                                    }
                                    if (sourceToken.m_previous_ != null) {
                                        sourceToken.m_previous_.m_next_ = sourceToken.m_next_;
                                    } else {
                                        sourceToken.m_listHeader_.m_first_ = sourceToken.m_next_;
                                    }
                                    sourceToken.m_next_ = null;
                                    sourceToken.m_previous_ = null;
                                }
                                sourceToken.m_strength_ = this.m_parsedToken_.m_strength_;
                                sourceToken.m_listHeader_ = lastToken.m_listHeader_;
                                if (lastStrength != -559038737 && sourceToken.m_listHeader_.m_first_ != null) break block54;
                                if (sourceToken.m_listHeader_.m_first_ == null) {
                                    sourceToken.m_listHeader_.m_first_ = sourceToken;
                                    sourceToken.m_listHeader_.m_last_ = sourceToken;
                                } else if (sourceToken.m_listHeader_.m_first_.m_strength_ <= sourceToken.m_strength_) {
                                    sourceToken.m_next_ = sourceToken.m_listHeader_.m_first_;
                                    sourceToken.m_next_.m_previous_ = sourceToken;
                                    sourceToken.m_listHeader_.m_first_ = sourceToken;
                                    sourceToken.m_previous_ = null;
                                } else {
                                    lastToken = sourceToken.m_listHeader_.m_first_;
                                    while (lastToken.m_next_ != null && lastToken.m_next_.m_strength_ > sourceToken.m_strength_) {
                                        lastToken = lastToken.m_next_;
                                    }
                                    if (lastToken.m_next_ != null) {
                                        lastToken.m_next_.m_previous_ = sourceToken;
                                    } else {
                                        sourceToken.m_listHeader_.m_last_ = sourceToken;
                                    }
                                    sourceToken.m_previous_ = lastToken;
                                    sourceToken.m_next_ = lastToken.m_next_;
                                    lastToken.m_next_ = sourceToken;
                                }
                                break block55;
                            }
                            if (sourceToken == lastToken) break block56;
                            if (lastToken.m_polarity_ != sourceToken.m_polarity_) ** GOTO lbl86
                            while (lastToken.m_next_ != null && lastToken.m_next_.m_strength_ > sourceToken.m_strength_) {
                                lastToken = lastToken.m_next_;
                            }
                            sourceToken.m_previous_ = lastToken;
                            if (lastToken.m_next_ != null) {
                                lastToken.m_next_.m_previous_ = sourceToken;
                            } else {
                                sourceToken.m_listHeader_.m_last_ = sourceToken;
                            }
                            sourceToken.m_next_ = lastToken.m_next_;
                            lastToken.m_next_ = sourceToken;
                            break block55;
lbl-1000:
                            // 1 sources

                            {
                                lastToken = lastToken.m_previous_;
lbl86:
                                // 2 sources

                                ** while (lastToken.m_previous_ != null && lastToken.m_previous_.m_strength_ > sourceToken.m_strength_)
                            }
lbl87:
                            // 1 sources

                            sourceToken.m_next_ = lastToken;
                            if (lastToken.m_previous_ != null) {
                                lastToken.m_previous_.m_next_ = sourceToken;
                            } else {
                                sourceToken.m_listHeader_.m_first_ = sourceToken;
                            }
                            sourceToken.m_previous_ = lastToken.m_previous_;
                            lastToken.m_previous_ = sourceToken;
                            break block55;
                        }
                        if (lastStrength < sourceToken.m_strength_) {
                            sourceToken.m_strength_ = lastStrength;
                        }
                    }
                    if (variableTop && this.m_variableTop_ == null) {
                        variableTop = false;
                        this.m_variableTop_ = sourceToken;
                    }
                    sourceToken.m_expansion_ = this.m_parsedToken_.m_extensionLen_ << 24 | this.m_parsedToken_.m_extensionOffset_;
                    if (expandNext != 0) {
                        if (sourceToken.m_strength_ == 0) {
                            expandNext = 0;
                        } else if (sourceToken.m_expansion_ == 0) {
                            sourceToken.m_expansion_ = expandNext;
                        } else {
                            start = expandNext & 0xFFFFFF;
                            size = expandNext >>> 24;
                            if (size > 0) {
                                this.m_source_.append(this.m_source_.substring(start, start + size));
                            }
                            start = this.m_parsedToken_.m_extensionOffset_;
                            this.m_source_.append(this.m_source_.substring(start, start + this.m_parsedToken_.m_extensionLen_));
                            sourceToken.m_expansion_ = size + this.m_parsedToken_.m_extensionLen_ << 24 | this.m_extraCurrent_;
                            this.m_extraCurrent_ += size + this.m_parsedToken_.m_extensionLen_;
                        }
                    }
                    if ((lastToken.m_flags_ & 3) != 0 && (beforeStrength = (lastToken.m_flags_ & 3) - 1) != sourceToken.m_strength_) {
                        CollationRuleParser.throwParseException(this.m_source_.toString(), this.m_current_);
                    }
                    break block57;
                }
                if (lastToken != null && lastStrength == -559038737 && this.m_resultLength_ > 0 && this.m_listHeader_[this.m_resultLength_ - 1].m_first_ == null) {
                    --this.m_resultLength_;
                }
                if (sourceToken == null) {
                    searchCharsLen = this.m_parsedToken_.m_charsLen_;
                    while (searchCharsLen > 1 && sourceToken == null) {
                        this.m_utilToken_.m_source_ = --searchCharsLen << 24 | this.m_parsedToken_.m_charsOffset_;
                        this.m_utilToken_.m_rules_ = this.m_source_;
                        sourceToken = this.m_hashTable_.get(this.m_utilToken_);
                    }
                    if (sourceToken != null) {
                        expandNext = this.m_parsedToken_.m_charsLen_ - searchCharsLen << 24 | this.m_parsedToken_.m_charsOffset_ + searchCharsLen;
                    }
                }
                if ((specs & 3) != 0) {
                    if (!top) {
                        strength = (specs & 3) - 1;
                        if (sourceToken != null && sourceToken.m_strength_ != -559038737) {
                            while (sourceToken.m_strength_ > strength && sourceToken.m_previous_ != null) {
                                sourceToken = sourceToken.m_previous_;
                            }
                            if (sourceToken.m_strength_ == strength) {
                                sourceToken = sourceToken.m_previous_ != null ? sourceToken.m_previous_ : sourceToken.m_listHeader_.m_reset_;
                            } else {
                                sourceToken = sourceToken.m_listHeader_.m_reset_;
                                sourceToken = this.getVirginBefore(sourceToken, strength);
                            }
                        } else {
                            sourceToken = this.getVirginBefore(sourceToken, strength);
                        }
                    } else {
                        top = false;
                        this.m_listHeader_[this.m_resultLength_] = new TokenListHeader();
                        this.m_listHeader_[this.m_resultLength_].m_previousCE_ = 0;
                        this.m_listHeader_[this.m_resultLength_].m_previousContCE_ = 0;
                        this.m_listHeader_[this.m_resultLength_].m_indirect_ = true;
                        strength = (specs & 3) - 1;
                        baseCE = CollationRuleParser.INDIRECT_BOUNDARIES_[this.m_parsedToken_.m_indirectIndex_].m_startCE_;
                        baseContCE = CollationRuleParser.INDIRECT_BOUNDARIES_[this.m_parsedToken_.m_indirectIndex_].m_startContCE_;
                        ce = new int[2];
                        if (baseCE >>> 24 >= RuleBasedCollator.UCA_CONSTANTS_.PRIMARY_IMPLICIT_MIN_ && baseCE >>> 24 <= RuleBasedCollator.UCA_CONSTANTS_.PRIMARY_IMPLICIT_MAX_) {
                            primary = baseCE & -65536 | (baseContCE & -65536) >> 16;
                            raw = RuleBasedCollator.impCEGen_.getRawFromImplicit(primary);
                            primaryCE = RuleBasedCollator.impCEGen_.getImplicitFromRaw(raw - 1);
                            ce[0] = primaryCE & -65536 | 1285;
                            ce[1] = primaryCE << 16 & -65536 | 192;
                        } else {
                            invuca = CollationParsedRuleBuilder.INVERSE_UCA_;
                            invuca.getInversePrevCE(baseCE, baseContCE, strength, ce);
                        }
                        this.m_listHeader_[this.m_resultLength_].m_baseCE_ = ce[0];
                        this.m_listHeader_[this.m_resultLength_].m_baseContCE_ = ce[1];
                        this.m_listHeader_[this.m_resultLength_].m_nextCE_ = 0;
                        this.m_listHeader_[this.m_resultLength_].m_nextContCE_ = 0;
                        sourceToken = new Token();
                        expandNext = this.initAReset(0, sourceToken);
                    }
                }
                if (sourceToken == null) {
                    if (this.m_listHeader_[this.m_resultLength_] == null) {
                        this.m_listHeader_[this.m_resultLength_] = new TokenListHeader();
                    }
                    if (!top) {
                        coleiter = RuleBasedCollator.UCA_.getCollationElementIterator(this.m_source_.substring(this.m_parsedToken_.m_charsOffset_, this.m_parsedToken_.m_charsOffset_ + this.m_parsedToken_.m_charsLen_));
                        CE = coleiter.next();
                        expand = coleiter.getOffset() + this.m_parsedToken_.m_charsOffset_;
                        SecondCE = coleiter.next();
                        this.m_listHeader_[this.m_resultLength_].m_baseCE_ = CE & -193;
                        this.m_listHeader_[this.m_resultLength_].m_baseContCE_ = RuleBasedCollator.isContinuation(SecondCE) != false ? SecondCE : 0;
                        this.m_listHeader_[this.m_resultLength_].m_nextCE_ = 0;
                        this.m_listHeader_[this.m_resultLength_].m_nextContCE_ = 0;
                        this.m_listHeader_[this.m_resultLength_].m_previousCE_ = 0;
                        this.m_listHeader_[this.m_resultLength_].m_previousContCE_ = 0;
                        this.m_listHeader_[this.m_resultLength_].m_indirect_ = false;
                        sourceToken = new Token();
                        expandNext = this.initAReset(expand, sourceToken);
                    } else {
                        top = false;
                        this.m_listHeader_[this.m_resultLength_].m_previousCE_ = 0;
                        this.m_listHeader_[this.m_resultLength_].m_previousContCE_ = 0;
                        this.m_listHeader_[this.m_resultLength_].m_indirect_ = true;
                        ib = CollationRuleParser.INDIRECT_BOUNDARIES_[this.m_parsedToken_.m_indirectIndex_];
                        this.m_listHeader_[this.m_resultLength_].m_baseCE_ = ib.m_startCE_;
                        this.m_listHeader_[this.m_resultLength_].m_baseContCE_ = ib.m_startContCE_;
                        this.m_listHeader_[this.m_resultLength_].m_nextCE_ = ib.m_limitCE_;
                        this.m_listHeader_[this.m_resultLength_].m_nextContCE_ = ib.m_limitContCE_;
                        sourceToken = new Token();
                        expandNext = this.initAReset(0, sourceToken);
                    }
                } else {
                    top = false;
                }
            }
            lastToken = sourceToken;
        }
        if (this.m_resultLength_ > 0 && this.m_listHeader_[this.m_resultLength_ - 1].m_first_ == null) {
            --this.m_resultLength_;
        }
        return this.m_resultLength_;
    }

    private static final void throwParseException(String rules, int offset) throws ParseException {
        String precontext = rules.substring(0, offset);
        String postcontext = rules.substring(offset, rules.length());
        StringBuilder error = new StringBuilder("Parse error occurred in rule at offset ");
        error.append(offset);
        error.append("\n after the prefix \"");
        error.append(precontext);
        error.append("\" before the suffix \"");
        error.append(postcontext);
        throw new ParseException(error.toString(), offset);
    }

    private final boolean doSetTop() {
        this.m_parsedToken_.m_charsOffset_ = this.m_extraCurrent_;
        this.m_source_.append('\ufffe');
        IndirectBoundaries ib = INDIRECT_BOUNDARIES_[this.m_parsedToken_.m_indirectIndex_];
        this.m_source_.append((char)(ib.m_startCE_ >> 16));
        this.m_source_.append((char)(ib.m_startCE_ & 0xFFFF));
        this.m_extraCurrent_ += 3;
        if (CollationRuleParser.INDIRECT_BOUNDARIES_[this.m_parsedToken_.m_indirectIndex_].m_startContCE_ == 0) {
            this.m_parsedToken_.m_charsLen_ = 3;
        } else {
            this.m_source_.append((char)(CollationRuleParser.INDIRECT_BOUNDARIES_[this.m_parsedToken_.m_indirectIndex_].m_startContCE_ >> 16));
            this.m_source_.append((char)(CollationRuleParser.INDIRECT_BOUNDARIES_[this.m_parsedToken_.m_indirectIndex_].m_startContCE_ & 0xFFFF));
            this.m_extraCurrent_ += 2;
            this.m_parsedToken_.m_charsLen_ = 5;
        }
        return true;
    }

    private static boolean isCharNewLine(char c) {
        switch (c) {
            case '\n': 
            case '\f': 
            case '\r': 
            case '\u0085': 
            case '\u2028': 
            case '\u2029': {
                return true;
            }
        }
        return false;
    }

    private int parseNextToken(boolean startofrules) throws ParseException {
        boolean variabletop = false;
        boolean top = false;
        boolean inchars = true;
        boolean inquote = false;
        boolean wasinquote = false;
        int before = 0;
        boolean isescaped = false;
        int newextensionlen = 0;
        int extensionoffset = 0;
        int newstrength = -1;
        this.m_parsedToken_.m_charsLen_ = 0;
        this.m_parsedToken_.m_charsOffset_ = 0;
        this.m_parsedToken_.m_prefixOffset_ = 0;
        this.m_parsedToken_.m_prefixLen_ = 0;
        this.m_parsedToken_.m_indirectIndex_ = '\u0000';
        int limit = this.m_rules_.length();
        while (this.m_current_ < limit) {
            char ch = this.m_source_.charAt(this.m_current_);
            if (inquote) {
                if (ch == '\'') {
                    inquote = false;
                } else if (this.m_parsedToken_.m_charsLen_ == 0 || inchars) {
                    if (this.m_parsedToken_.m_charsLen_ == 0) {
                        this.m_parsedToken_.m_charsOffset_ = this.m_extraCurrent_;
                    }
                    ++this.m_parsedToken_.m_charsLen_;
                } else {
                    if (newextensionlen == 0) {
                        extensionoffset = this.m_extraCurrent_;
                    }
                    ++newextensionlen;
                }
            } else if (isescaped) {
                isescaped = false;
                if (newstrength == -1) {
                    CollationRuleParser.throwParseException(this.m_rules_, this.m_current_);
                }
                if (ch != '\u0000' && this.m_current_ != limit) {
                    if (inchars) {
                        if (this.m_parsedToken_.m_charsLen_ == 0) {
                            this.m_parsedToken_.m_charsOffset_ = this.m_current_;
                        }
                        ++this.m_parsedToken_.m_charsLen_;
                    } else {
                        if (newextensionlen == 0) {
                            extensionoffset = this.m_current_;
                        }
                        ++newextensionlen;
                    }
                }
            } else if (!UCharacterProperty.isRuleWhiteSpace(ch)) {
                switch (ch) {
                    case '=': {
                        if (newstrength != -1) {
                            return this.doEndParseNextToken(newstrength, top, extensionoffset, newextensionlen, variabletop, before);
                        }
                        if (startofrules) {
                            this.m_parsedToken_.m_indirectIndex_ = (char)5;
                            top = this.doSetTop();
                            return this.doEndParseNextToken(-559038737, top, extensionoffset, newextensionlen, variabletop, before);
                        }
                        newstrength = 15;
                        if (this.m_source_.charAt(this.m_current_ + 1) == '*') {
                            ++this.m_current_;
                            this.m_prevStrength_ = newstrength;
                            break;
                        }
                        this.m_prevStrength_ = -1;
                        break;
                    }
                    case ',': {
                        if (newstrength != -1) {
                            return this.doEndParseNextToken(newstrength, top, extensionoffset, newextensionlen, variabletop, before);
                        }
                        if (startofrules) {
                            this.m_parsedToken_.m_indirectIndex_ = (char)5;
                            top = this.doSetTop();
                            return this.doEndParseNextToken(-559038737, top, extensionoffset, newextensionlen, variabletop, before);
                        }
                        newstrength = 2;
                        this.m_prevStrength_ = -1;
                        break;
                    }
                    case ';': {
                        if (newstrength != -1) {
                            return this.doEndParseNextToken(newstrength, top, extensionoffset, newextensionlen, variabletop, before);
                        }
                        if (startofrules) {
                            this.m_parsedToken_.m_indirectIndex_ = (char)5;
                            top = this.doSetTop();
                            return this.doEndParseNextToken(-559038737, top, extensionoffset, newextensionlen, variabletop, before);
                        }
                        newstrength = 1;
                        this.m_prevStrength_ = -1;
                        break;
                    }
                    case '<': {
                        if (newstrength != -1) {
                            return this.doEndParseNextToken(newstrength, top, extensionoffset, newextensionlen, variabletop, before);
                        }
                        if (startofrules) {
                            this.m_parsedToken_.m_indirectIndex_ = (char)5;
                            top = this.doSetTop();
                            return this.doEndParseNextToken(-559038737, top, extensionoffset, newextensionlen, variabletop, before);
                        }
                        if (this.m_source_.charAt(this.m_current_ + 1) == '<') {
                            ++this.m_current_;
                            if (this.m_source_.charAt(this.m_current_ + 1) == '<') {
                                ++this.m_current_;
                                newstrength = 2;
                            } else {
                                newstrength = 1;
                            }
                        } else {
                            newstrength = 0;
                        }
                        if (this.m_source_.charAt(this.m_current_ + 1) == '*') {
                            ++this.m_current_;
                            this.m_prevStrength_ = newstrength;
                            break;
                        }
                        this.m_prevStrength_ = -1;
                        break;
                    }
                    case '&': {
                        if (newstrength != -1) {
                            return this.doEndParseNextToken(newstrength, top, extensionoffset, newextensionlen, variabletop, before);
                        }
                        newstrength = -559038737;
                        this.m_prevStrength_ = -1;
                        break;
                    }
                    case '[': {
                        this.m_optionEnd_ = this.m_rules_.indexOf(93, this.m_current_);
                        if (this.m_optionEnd_ == -1) break;
                        byte result = this.readAndSetOption();
                        this.m_current_ = this.m_optionEnd_;
                        if ((result & 4) != 0) {
                            if (newstrength == -559038737) {
                                top = this.doSetTop();
                                if (before != 0) {
                                    this.m_source_.append('-');
                                    this.m_source_.append((char)before);
                                    this.m_extraCurrent_ += 2;
                                    this.m_parsedToken_.m_charsLen_ += 2;
                                }
                                ++this.m_current_;
                                return this.doEndParseNextToken(newstrength, true, extensionoffset, newextensionlen, variabletop, before);
                            }
                            CollationRuleParser.throwParseException(this.m_rules_, this.m_current_);
                            break;
                        }
                        if ((result & 8) != 0) {
                            if (newstrength != -559038737 && newstrength != -1) {
                                variabletop = true;
                                this.m_parsedToken_.m_charsOffset_ = this.m_extraCurrent_++;
                                this.m_source_.append('\uffff');
                                ++this.m_current_;
                                this.m_parsedToken_.m_charsLen_ = 1;
                                return this.doEndParseNextToken(newstrength, top, extensionoffset, newextensionlen, variabletop, before);
                            }
                            CollationRuleParser.throwParseException(this.m_rules_, this.m_current_);
                            break;
                        }
                        if ((result & 3) == 0) break;
                        if (newstrength == -559038737) {
                            before = (byte)(result & 3);
                            break;
                        }
                        CollationRuleParser.throwParseException(this.m_rules_, this.m_current_);
                        break;
                    }
                    case '/': {
                        wasinquote = false;
                        inchars = false;
                        break;
                    }
                    case '\\': {
                        isescaped = true;
                        break;
                    }
                    case '\'': {
                        if (newstrength == -1) {
                            if (this.m_prevStrength_ == -1) {
                                CollationRuleParser.throwParseException(this.m_rules_, this.m_current_);
                            } else {
                                newstrength = this.m_prevStrength_;
                            }
                        }
                        inquote = true;
                        if (inchars) {
                            if (!wasinquote) {
                                this.m_parsedToken_.m_charsOffset_ = this.m_extraCurrent_;
                            }
                            if (this.m_parsedToken_.m_charsLen_ != 0) {
                                this.m_source_.append(this.m_source_.substring(this.m_current_ - this.m_parsedToken_.m_charsLen_, this.m_current_));
                                this.m_extraCurrent_ += this.m_parsedToken_.m_charsLen_;
                            }
                            ++this.m_parsedToken_.m_charsLen_;
                        } else {
                            if (!wasinquote) {
                                extensionoffset = this.m_extraCurrent_;
                            }
                            if (newextensionlen != 0) {
                                this.m_source_.append(this.m_source_.substring(this.m_current_ - newextensionlen, this.m_current_));
                                this.m_extraCurrent_ += newextensionlen;
                            }
                            ++newextensionlen;
                        }
                        wasinquote = true;
                        ++this.m_current_;
                        ch = this.m_source_.charAt(this.m_current_);
                        if (ch != '\'') break;
                        this.m_source_.append(ch);
                        ++this.m_extraCurrent_;
                        inquote = false;
                        break;
                    }
                    case '@': {
                        if (newstrength == -1) {
                            this.m_options_.m_isFrenchCollation_ = true;
                            break;
                        }
                    }
                    case '|': {
                        this.m_parsedToken_.m_prefixOffset_ = this.m_parsedToken_.m_charsOffset_;
                        this.m_parsedToken_.m_prefixLen_ = this.m_parsedToken_.m_charsLen_;
                        if (inchars) {
                            if (!wasinquote) {
                                this.m_parsedToken_.m_charsOffset_ = this.m_extraCurrent_;
                            }
                            if (this.m_parsedToken_.m_charsLen_ != 0) {
                                String prefix = this.m_source_.substring(this.m_current_ - this.m_parsedToken_.m_charsLen_, this.m_current_);
                                this.m_source_.append(prefix);
                                this.m_extraCurrent_ += this.m_parsedToken_.m_charsLen_;
                            }
                            ++this.m_parsedToken_.m_charsLen_;
                        }
                        wasinquote = true;
                        do {
                            ++this.m_current_;
                        } while (UCharacterProperty.isRuleWhiteSpace(ch = this.m_source_.charAt(this.m_current_)));
                        break;
                    }
                    case '#': {
                        do {
                            ++this.m_current_;
                        } while (!CollationRuleParser.isCharNewLine(ch = this.m_source_.charAt(this.m_current_)));
                        break;
                    }
                    case '!': {
                        break;
                    }
                    default: {
                        if (newstrength == -1) {
                            if (this.m_prevStrength_ == -1) {
                                CollationRuleParser.throwParseException(this.m_rules_, this.m_current_);
                            } else {
                                newstrength = this.m_prevStrength_;
                            }
                        }
                        if (CollationRuleParser.isSpecialChar(ch) && !inquote) {
                            CollationRuleParser.throwParseException(this.m_rules_, this.m_current_);
                        }
                        if (ch == '\u0000' && this.m_current_ + 1 == limit) break;
                        if (inchars) {
                            if (this.m_parsedToken_.m_charsLen_ == 0) {
                                this.m_parsedToken_.m_charsOffset_ = this.m_current_;
                            }
                            ++this.m_parsedToken_.m_charsLen_;
                            if (this.m_prevStrength_ == -1) break;
                            char[] fullchar = Character.toChars(Character.codePointAt(this.m_source_, this.m_current_));
                            this.m_current_ += fullchar.length;
                            this.m_parsedToken_.m_charsLen_ += fullchar.length - 1;
                            return this.doEndParseNextToken(newstrength, top, extensionoffset, newextensionlen, variabletop, before);
                        }
                        if (newextensionlen == 0) {
                            extensionoffset = this.m_current_;
                        }
                        ++newextensionlen;
                    }
                }
            }
            if (wasinquote && ch != '\'') {
                this.m_source_.append(ch);
                ++this.m_extraCurrent_;
            }
            ++this.m_current_;
        }
        return this.doEndParseNextToken(newstrength, top, extensionoffset, newextensionlen, variabletop, before);
    }

    private int doEndParseNextToken(int newstrength, boolean top, int extensionoffset, int newextensionlen, boolean variabletop, int before) throws ParseException {
        if (newstrength == -1) {
            return -1;
        }
        if (this.m_parsedToken_.m_charsLen_ == 0 && !top) {
            CollationRuleParser.throwParseException(this.m_rules_, this.m_current_);
        }
        this.m_parsedToken_.m_strength_ = newstrength;
        this.m_parsedToken_.m_extensionOffset_ = extensionoffset;
        this.m_parsedToken_.m_extensionLen_ = newextensionlen;
        this.m_parsedToken_.m_flags_ = (char)((variabletop ? 8 : 0) | (top ? 4 : 0) | before);
        return this.m_current_;
    }

    private Token getVirginBefore(Token sourcetoken, int strength) throws ParseException {
        if (sourcetoken != null) {
            int offset = sourcetoken.m_source_ & 0xFFFFFF;
            this.m_UCAColEIter_.setText(this.m_source_.substring(offset, offset + 1));
        } else {
            this.m_UCAColEIter_.setText(this.m_source_.substring(this.m_parsedToken_.m_charsOffset_, this.m_parsedToken_.m_charsOffset_ + 1));
        }
        int basece = this.m_UCAColEIter_.next() & 0xFFFFFF3F;
        int basecontce = this.m_UCAColEIter_.next();
        if (basecontce == -1) {
            basecontce = 0;
        }
        int ch = 0;
        if (basece >>> 24 >= RuleBasedCollator.UCA_CONSTANTS_.PRIMARY_IMPLICIT_MIN_ && basece >>> 24 <= RuleBasedCollator.UCA_CONSTANTS_.PRIMARY_IMPLICIT_MAX_) {
            int primary = basece & 0xFFFF0000 | (basecontce & 0xFFFF0000) >> 16;
            int raw = RuleBasedCollator.impCEGen_.getRawFromImplicit(primary);
            ch = RuleBasedCollator.impCEGen_.getCodePointFromRaw(raw - 1);
            int primaryCE = RuleBasedCollator.impCEGen_.getImplicitFromRaw(raw - 1);
            this.m_utilCEBuffer_[0] = primaryCE & 0xFFFF0000 | 0x505;
            this.m_utilCEBuffer_[1] = primaryCE << 16 & 0xFFFF0000 | 0xC0;
            this.m_parsedToken_.m_charsOffset_ = this.m_extraCurrent_;
            this.m_source_.append('\ufffe');
            this.m_source_.append((char)ch);
            this.m_extraCurrent_ += 2;
            ++this.m_parsedToken_.m_charsLen_;
            this.m_utilToken_.m_source_ = this.m_parsedToken_.m_charsLen_ << 24 | this.m_parsedToken_.m_charsOffset_;
            this.m_utilToken_.m_rules_ = this.m_source_;
            sourcetoken = this.m_hashTable_.get(this.m_utilToken_);
            if (sourcetoken == null) {
                this.m_listHeader_[this.m_resultLength_] = new TokenListHeader();
                this.m_listHeader_[this.m_resultLength_].m_baseCE_ = this.m_utilCEBuffer_[0] & 0xFFFFFF3F;
                this.m_listHeader_[this.m_resultLength_].m_baseContCE_ = RuleBasedCollator.isContinuation(this.m_utilCEBuffer_[1]) ? this.m_utilCEBuffer_[1] : 0;
                this.m_listHeader_[this.m_resultLength_].m_nextCE_ = 0;
                this.m_listHeader_[this.m_resultLength_].m_nextContCE_ = 0;
                this.m_listHeader_[this.m_resultLength_].m_previousCE_ = 0;
                this.m_listHeader_[this.m_resultLength_].m_previousContCE_ = 0;
                this.m_listHeader_[this.m_resultLength_].m_indirect_ = false;
                sourcetoken = new Token();
                this.initAReset(-1, sourcetoken);
            }
        } else {
            CollationParsedRuleBuilder.INVERSE_UCA_.getInversePrevCE(basece, basecontce, strength, this.m_utilCEBuffer_);
            if (CollationParsedRuleBuilder.INVERSE_UCA_.getCEStrengthDifference(basece, basecontce, this.m_utilCEBuffer_[0], this.m_utilCEBuffer_[1]) < strength) {
                this.m_utilCEBuffer_[0] = strength == 1 ? basece - 512 : basece - 2;
                if (RuleBasedCollator.isContinuation(basecontce)) {
                    this.m_utilCEBuffer_[1] = strength == 1 ? basecontce - 512 : basecontce - 2;
                }
            }
            this.m_parsedToken_.m_charsOffset_ -= 10;
            this.m_parsedToken_.m_charsLen_ += 10;
            this.m_listHeader_[this.m_resultLength_] = new TokenListHeader();
            this.m_listHeader_[this.m_resultLength_].m_baseCE_ = this.m_utilCEBuffer_[0] & 0xFFFFFF3F;
            this.m_listHeader_[this.m_resultLength_].m_baseContCE_ = RuleBasedCollator.isContinuation(this.m_utilCEBuffer_[1]) ? this.m_utilCEBuffer_[1] : 0;
            this.m_listHeader_[this.m_resultLength_].m_nextCE_ = 0;
            this.m_listHeader_[this.m_resultLength_].m_nextContCE_ = 0;
            this.m_listHeader_[this.m_resultLength_].m_previousCE_ = 0;
            this.m_listHeader_[this.m_resultLength_].m_previousContCE_ = 0;
            this.m_listHeader_[this.m_resultLength_].m_indirect_ = false;
            sourcetoken = new Token();
            this.initAReset(-1, sourcetoken);
        }
        return sourcetoken;
    }

    private int initAReset(int expand, Token targetToken) throws ParseException {
        if (this.m_resultLength_ == this.m_listHeader_.length - 1) {
            TokenListHeader[] temp = new TokenListHeader[this.m_resultLength_ << 1];
            System.arraycopy(this.m_listHeader_, 0, temp, 0, this.m_resultLength_ + 1);
            this.m_listHeader_ = temp;
        }
        targetToken.m_rules_ = this.m_source_;
        targetToken.m_source_ = this.m_parsedToken_.m_charsLen_ << 24 | this.m_parsedToken_.m_charsOffset_;
        targetToken.m_expansion_ = this.m_parsedToken_.m_extensionLen_ << 24 | this.m_parsedToken_.m_extensionOffset_;
        targetToken.m_flags_ = this.m_parsedToken_.m_flags_;
        if (this.m_parsedToken_.m_prefixOffset_ != 0) {
            CollationRuleParser.throwParseException(this.m_rules_, this.m_parsedToken_.m_charsOffset_ - 1);
        }
        targetToken.m_prefix_ = 0;
        targetToken.m_polarity_ = 1;
        targetToken.m_strength_ = -559038737;
        targetToken.m_next_ = null;
        targetToken.m_previous_ = null;
        targetToken.m_CELength_ = 0;
        targetToken.m_expCELength_ = 0;
        targetToken.m_listHeader_ = this.m_listHeader_[this.m_resultLength_];
        this.m_listHeader_[this.m_resultLength_].m_first_ = null;
        this.m_listHeader_[this.m_resultLength_].m_last_ = null;
        this.m_listHeader_[this.m_resultLength_].m_first_ = null;
        this.m_listHeader_[this.m_resultLength_].m_last_ = null;
        this.m_listHeader_[this.m_resultLength_].m_reset_ = targetToken;
        int result = 0;
        if (expand > 0 && this.m_parsedToken_.m_charsLen_ > 1) {
            targetToken.m_source_ = expand - this.m_parsedToken_.m_charsOffset_ << 24 | this.m_parsedToken_.m_charsOffset_;
            result = this.m_parsedToken_.m_charsLen_ + this.m_parsedToken_.m_charsOffset_ - expand << 24 | expand;
        }
        ++this.m_resultLength_;
        this.m_hashTable_.put(targetToken, targetToken);
        return result;
    }

    private static final boolean isSpecialChar(char ch) {
        return ch <= '/' && ch >= ' ' || ch <= '?' && ch >= ':' || ch <= '`' && ch >= '[' || ch <= '~' && ch >= '}' || ch == '{';
    }

    private UnicodeSet readAndSetUnicodeSet(String source, int start) throws ParseException {
        while (source.charAt(start) != '[') {
            ++start;
        }
        int noOpenBraces = 1;
        int current = 1;
        while (start + current < source.length() && noOpenBraces != 0) {
            if (source.charAt(start + current) == '[') {
                ++noOpenBraces;
            } else if (source.charAt(start + current) == ']') {
                --noOpenBraces;
            }
            ++current;
        }
        if (noOpenBraces != 0 || source.indexOf("]", start + current) == -1) {
            CollationRuleParser.throwParseException(this.m_rules_, start);
        }
        return new UnicodeSet(source.substring(start, start + current));
    }

    private int readOption(String rules, int start, int optionend) {
        this.m_optionarg_ = 0;
        int i = 0;
        while (i < RULES_OPTIONS_.length) {
            String option = RULES_OPTIONS_[i].m_name_;
            int optionlength = option.length();
            if (rules.length() > start + optionlength && option.equalsIgnoreCase(rules.substring(start, start + optionlength))) {
                if (optionend - start <= optionlength) break;
                this.m_optionarg_ = start + optionlength;
                while (this.m_optionarg_ < optionend && (UCharacter.isWhitespace(rules.charAt(this.m_optionarg_)) || UCharacterProperty.isRuleWhiteSpace(rules.charAt(this.m_optionarg_)))) {
                    ++this.m_optionarg_;
                }
                break;
            }
            ++i;
        }
        if (i == RULES_OPTIONS_.length) {
            i = -1;
        }
        return i;
    }

    private byte readAndSetOption() throws ParseException {
        int start = this.m_current_ + 1;
        int i = this.readOption(this.m_rules_, start, this.m_optionEnd_);
        int optionarg = this.m_optionarg_;
        if (i < 0) {
            CollationRuleParser.throwParseException(this.m_rules_, start);
        }
        if (i < 7) {
            if (optionarg != 0) {
                int j = 0;
                while (j < RULES_OPTIONS_[i].m_subOptions_.length) {
                    String subname = RULES_OPTIONS_[i].m_subOptions_[j];
                    int size = optionarg + subname.length();
                    if (this.m_rules_.length() > size && subname.equalsIgnoreCase(this.m_rules_.substring(optionarg, size))) {
                        this.setOptions(this.m_options_, RULES_OPTIONS_[i].m_attribute_, RULES_OPTIONS_[i].m_subOptionAttributeValues_[j]);
                        return 16;
                    }
                    ++j;
                }
            }
            CollationRuleParser.throwParseException(this.m_rules_, optionarg);
        } else {
            if (i == 7) {
                return 24;
            }
            if (i == 8) {
                return 16;
            }
            if (i == 9) {
                if (optionarg != 0) {
                    int j = 0;
                    while (j < RULES_OPTIONS_[i].m_subOptions_.length) {
                        String subname = RULES_OPTIONS_[i].m_subOptions_[j];
                        int size = optionarg + subname.length();
                        if (this.m_rules_.length() > size && subname.equalsIgnoreCase(this.m_rules_.substring(optionarg, optionarg + subname.length()))) {
                            return (byte)(0x10 | RULES_OPTIONS_[i].m_subOptionAttributeValues_[j] + 1);
                        }
                        ++j;
                    }
                }
                CollationRuleParser.throwParseException(this.m_rules_, optionarg);
            } else {
                if (i == 10) {
                    this.m_parsedToken_.m_indirectIndex_ = '\u0000';
                    return 20;
                }
                if (i < 13) {
                    int j = 0;
                    while (j < RULES_OPTIONS_[i].m_subOptions_.length) {
                        String subname = RULES_OPTIONS_[i].m_subOptions_[j];
                        int size = optionarg + subname.length();
                        if (this.m_rules_.length() > size && subname.equalsIgnoreCase(this.m_rules_.substring(optionarg, size))) {
                            this.m_parsedToken_.m_indirectIndex_ = (char)(i - 10 + (j << 1));
                            return 20;
                        }
                        ++j;
                    }
                    CollationRuleParser.throwParseException(this.m_rules_, optionarg);
                } else {
                    if (i == 13 || i == 14) {
                        int noOpenBraces = 1;
                        ++this.m_current_;
                        while (this.m_current_ < this.m_source_.length() && noOpenBraces != 0) {
                            if (this.m_source_.charAt(this.m_current_) == '[') {
                                ++noOpenBraces;
                            } else if (this.m_source_.charAt(this.m_current_) == ']') {
                                --noOpenBraces;
                            }
                            ++this.m_current_;
                        }
                        this.m_optionEnd_ = this.m_current_ - 1;
                        return 16;
                    }
                    CollationRuleParser.throwParseException(this.m_rules_, optionarg);
                }
            }
        }
        return 16;
    }

    private void setOptions(OptionSet optionset, int attribute, int value) {
        switch (attribute) {
            case 6: {
                optionset.m_isHiragana4_ = value == 17;
                break;
            }
            case 0: {
                optionset.m_isFrenchCollation_ = value == 17;
                break;
            }
            case 1: {
                optionset.m_isAlternateHandlingShifted_ = value == 20;
                break;
            }
            case 2: {
                optionset.m_caseFirst_ = value;
                break;
            }
            case 3: {
                optionset.m_isCaseLevel_ = value == 17;
                break;
            }
            case 4: {
                if (value == 17) {
                    value = 17;
                }
                optionset.m_decomposition_ = value;
                break;
            }
            case 5: {
                optionset.m_strength_ = value;
                break;
            }
        }
    }

    UnicodeSet getTailoredSet() throws ParseException {
        boolean startOfRules = true;
        UnicodeSet tailored = new UnicodeSet();
        CanonicalIterator it = new CanonicalIterator("");
        this.m_parsedToken_.m_strength_ = -1;
        int sourcelimit = this.m_source_.length();
        while (this.m_current_ < sourcelimit) {
            this.m_parsedToken_.m_prefixOffset_ = 0;
            if (this.parseNextToken(startOfRules) < 0) continue;
            startOfRules = false;
            if (this.m_parsedToken_.m_strength_ == -559038737) continue;
            it.setSource(this.m_source_.substring(this.m_parsedToken_.m_charsOffset_, this.m_parsedToken_.m_charsOffset_ + this.m_parsedToken_.m_charsLen_));
            String pattern = it.next();
            while (pattern != null) {
                if (Normalizer.quickCheck(pattern, Normalizer.FCD, 0) != Normalizer.NO) {
                    tailored.add(pattern);
                }
                pattern = it.next();
            }
        }
        return tailored;
    }

    private final void extractSetsFromRules(String rules) throws ParseException {
        int optionNumber = -1;
        int setStart = 0;
        int i = 0;
        while (i < rules.length()) {
            if (rules.charAt(i) == '[') {
                UnicodeSet newSet;
                optionNumber = this.readOption(rules, i + 1, rules.length());
                setStart = this.m_optionarg_;
                if (optionNumber == 13) {
                    newSet = this.readAndSetUnicodeSet(rules, setStart);
                    if (this.m_copySet_ == null) {
                        this.m_copySet_ = newSet;
                    } else {
                        this.m_copySet_.addAll(newSet);
                    }
                } else if (optionNumber == 14) {
                    newSet = this.readAndSetUnicodeSet(rules, setStart);
                    if (this.m_removeSet_ == null) {
                        this.m_removeSet_ = newSet;
                    } else {
                        this.m_removeSet_.addAll(newSet);
                    }
                }
            }
            ++i;
        }
    }

    private static class IndirectBoundaries {
        int m_startCE_;
        int m_startContCE_;
        int m_limitCE_;
        int m_limitContCE_;

        IndirectBoundaries(int[] startce, int[] limitce) {
            this.m_startCE_ = startce[0];
            this.m_startContCE_ = startce[1];
            if (limitce != null) {
                this.m_limitCE_ = limitce[0];
                this.m_limitContCE_ = limitce[1];
            } else {
                this.m_limitCE_ = 0;
                this.m_limitContCE_ = 0;
            }
        }
    }

    static class OptionSet {
        int m_variableTopValue_;
        boolean m_isFrenchCollation_;
        boolean m_isAlternateHandlingShifted_;
        int m_caseFirst_;
        boolean m_isCaseLevel_;
        int m_decomposition_;
        int m_strength_;
        boolean m_isHiragana4_;

        OptionSet(RuleBasedCollator collator) {
            this.m_variableTopValue_ = collator.m_variableTopValue_;
            this.m_isFrenchCollation_ = collator.isFrenchCollation();
            this.m_isAlternateHandlingShifted_ = collator.isAlternateHandlingShifted();
            this.m_caseFirst_ = collator.m_caseFirst_;
            this.m_isCaseLevel_ = collator.isCaseLevel();
            this.m_decomposition_ = collator.getDecomposition();
            this.m_strength_ = collator.getStrength();
            this.m_isHiragana4_ = collator.m_isHiragana4_;
        }
    }

    private static class ParsedToken {
        int m_strength_ = -1;
        int m_charsOffset_ = 0;
        int m_charsLen_ = 0;
        int m_extensionOffset_ = 0;
        int m_extensionLen_ = 0;
        int m_prefixOffset_ = 0;
        int m_prefixLen_ = 0;
        char m_flags_ = '\u0000';
        char m_indirectIndex_;

        ParsedToken() {
        }
    }

    static class Token {
        int[] m_CE_ = new int[128];
        int m_CELength_ = 0;
        int[] m_expCE_ = new int[128];
        int m_expCELength_ = 0;
        int m_source_;
        int m_expansion_;
        int m_prefix_;
        int m_strength_;
        int m_toInsert_;
        int m_polarity_ = 1;
        TokenListHeader m_listHeader_;
        Token m_previous_ = null;
        Token m_next_ = null;
        StringBuilder m_rules_;
        char m_flags_;

        Token() {
        }

        public int hashCode() {
            int result = 0;
            int len = (this.m_source_ & 0xFF000000) >>> 24;
            int inc = (len - 32) / 32 + 1;
            int start = this.m_source_ & 0xFFFFFF;
            int limit = start + len;
            while (start < limit) {
                result = result * 37 + this.m_rules_.charAt(start);
                start += inc;
            }
            return result;
        }

        /*
         * Unable to fully structure code
         */
        public boolean equals(Object target) {
            block5: {
                if (target == this) {
                    return true;
                }
                if (!(target instanceof Token)) break block5;
                t = (Token)target;
                sstart = this.m_source_ & 0xFFFFFF;
                tstart = t.m_source_ & 0xFFFFFF;
                slimit = (this.m_source_ & -16777216) >> 24;
                tlimit = (this.m_source_ & -16777216) >> 24;
                end = sstart + slimit - 1;
                if (this.m_source_ == 0 || t.m_source_ == 0) {
                    return false;
                }
                if (slimit != tlimit) {
                    return false;
                }
                if (this.m_source_ != t.m_source_) ** GOTO lbl18
                return true;
lbl-1000:
                // 1 sources

                {
                    ++sstart;
                    ++tstart;
lbl18:
                    // 2 sources

                    ** while (sstart < end && this.m_rules_.charAt((int)sstart) == t.m_rules_.charAt((int)tstart))
                }
lbl19:
                // 1 sources

                if (this.m_rules_.charAt(sstart) == t.m_rules_.charAt(tstart)) {
                    return true;
                }
            }
            return false;
        }
    }

    static class TokenListHeader {
        Token m_first_;
        Token m_last_;
        Token m_reset_;
        boolean m_indirect_;
        int m_baseCE_;
        int m_baseContCE_;
        int m_nextCE_;
        int m_nextContCE_;
        int m_previousCE_;
        int m_previousContCE_;
        int[] m_pos_ = new int[16];
        int[] m_gapsLo_ = new int[9];
        int[] m_gapsHi_ = new int[9];
        int[] m_numStr_ = new int[9];
        Token[] m_fStrToken_ = new Token[3];
        Token[] m_lStrToken_ = new Token[3];

        TokenListHeader() {
        }
    }

    private static class TokenOption {
        private String m_name_;
        private int m_attribute_;
        private String[] m_subOptions_;
        private int[] m_subOptionAttributeValues_;

        TokenOption(String name, int attribute, String[] suboptions, int[] suboptionattributevalue) {
            this.m_name_ = name;
            this.m_attribute_ = attribute;
            this.m_subOptions_ = suboptions;
            this.m_subOptionAttributeValues_ = suboptionattributevalue;
        }
    }
}

