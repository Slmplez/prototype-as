/*
 * Decompiled with CFR 0.152.
 */
package com.ibm.icu.text;

import com.ibm.icu.impl.UCharacterProperty;
import com.ibm.icu.impl.Utility;
import com.ibm.icu.text.NFRule;
import com.ibm.icu.text.RuleBasedNumberFormat;
import java.text.ParsePosition;
import java.util.Vector;

final class NFRuleSet {
    private String name;
    private NFRule[] rules;
    private NFRule negativeNumberRule = null;
    private NFRule[] fractionRules = new NFRule[3];
    private boolean isFractionRuleSet = false;
    private int recursionCount = 0;
    private static final int RECURSION_LIMIT = 50;

    public NFRuleSet(String[] descriptions, int index) throws IllegalArgumentException {
        String description = descriptions[index];
        if (description.length() == 0) {
            throw new IllegalArgumentException("Empty rule set description");
        }
        if (description.charAt(0) == '%') {
            int pos = description.indexOf(58);
            if (pos == -1) {
                throw new IllegalArgumentException("Rule set name doesn't end in colon");
            }
            this.name = description.substring(0, pos);
            while (pos < description.length() && UCharacterProperty.isRuleWhiteSpace(description.charAt(++pos))) {
            }
            descriptions[index] = description = description.substring(pos);
        } else {
            this.name = "%default";
        }
        if (description.length() == 0) {
            throw new IllegalArgumentException("Empty rule set description");
        }
    }

    public void parseRules(String description, RuleBasedNumberFormat owner) {
        Vector<String> ruleDescriptions = new Vector<String>();
        int oldP = 0;
        int p = description.indexOf(59);
        while (oldP != -1) {
            if (p != -1) {
                ruleDescriptions.addElement(description.substring(oldP, p));
                oldP = p + 1;
            } else {
                if (oldP < description.length()) {
                    ruleDescriptions.addElement(description.substring(oldP));
                }
                oldP = p;
            }
            p = description.indexOf(59, p + 1);
        }
        Vector<NFRule> tempRules = new Vector<NFRule>();
        NFRule predecessor = null;
        int i = 0;
        while (i < ruleDescriptions.size()) {
            Object temp = NFRule.makeRules((String)ruleDescriptions.elementAt(i), this, predecessor, owner);
            if (temp instanceof NFRule) {
                tempRules.addElement((NFRule)temp);
                predecessor = (NFRule)temp;
            } else if (temp instanceof NFRule[]) {
                NFRule[] rulesToAdd = (NFRule[])temp;
                int j = 0;
                while (j < rulesToAdd.length) {
                    tempRules.addElement(rulesToAdd[j]);
                    predecessor = rulesToAdd[j];
                    ++j;
                }
            }
            ++i;
        }
        ruleDescriptions = null;
        long defaultBaseValue = 0L;
        int i2 = 0;
        while (i2 < tempRules.size()) {
            NFRule rule = (NFRule)tempRules.elementAt(i2);
            switch ((int)rule.getBaseValue()) {
                case 0: {
                    rule.setBaseValue(defaultBaseValue);
                    if (!this.isFractionRuleSet) {
                        ++defaultBaseValue;
                    }
                    ++i2;
                    break;
                }
                case -1: {
                    this.negativeNumberRule = rule;
                    tempRules.removeElementAt(i2);
                    break;
                }
                case -2: {
                    this.fractionRules[0] = rule;
                    tempRules.removeElementAt(i2);
                    break;
                }
                case -3: {
                    this.fractionRules[1] = rule;
                    tempRules.removeElementAt(i2);
                    break;
                }
                case -4: {
                    this.fractionRules[2] = rule;
                    tempRules.removeElementAt(i2);
                    break;
                }
                default: {
                    if (rule.getBaseValue() < defaultBaseValue) {
                        throw new IllegalArgumentException("Rules are not in order, base: " + rule.getBaseValue() + " < " + defaultBaseValue);
                    }
                    defaultBaseValue = rule.getBaseValue();
                    if (!this.isFractionRuleSet) {
                        ++defaultBaseValue;
                    }
                    ++i2;
                }
            }
        }
        this.rules = new NFRule[tempRules.size()];
        tempRules.copyInto(this.rules);
    }

    public void makeIntoFractionRuleSet() {
        this.isFractionRuleSet = true;
    }

    public boolean equals(Object that) {
        if (!(that instanceof NFRuleSet)) {
            return false;
        }
        NFRuleSet that2 = (NFRuleSet)that;
        if (!(this.name.equals(that2.name) && Utility.objectEquals(this.negativeNumberRule, that2.negativeNumberRule) && Utility.objectEquals(this.fractionRules[0], that2.fractionRules[0]) && Utility.objectEquals(this.fractionRules[1], that2.fractionRules[1]) && Utility.objectEquals(this.fractionRules[2], that2.fractionRules[2]) && this.rules.length == that2.rules.length && this.isFractionRuleSet == that2.isFractionRuleSet)) {
            return false;
        }
        int i = 0;
        while (i < this.rules.length) {
            if (!this.rules[i].equals(that2.rules[i])) {
                return false;
            }
            ++i;
        }
        return true;
    }

    public String toString() {
        StringBuilder result = new StringBuilder();
        result.append(String.valueOf(this.name) + ":\n");
        int i = 0;
        while (i < this.rules.length) {
            result.append("    " + this.rules[i].toString() + "\n");
            ++i;
        }
        if (this.negativeNumberRule != null) {
            result.append("    " + this.negativeNumberRule.toString() + "\n");
        }
        if (this.fractionRules[0] != null) {
            result.append("    " + this.fractionRules[0].toString() + "\n");
        }
        if (this.fractionRules[1] != null) {
            result.append("    " + this.fractionRules[1].toString() + "\n");
        }
        if (this.fractionRules[2] != null) {
            result.append("    " + this.fractionRules[2].toString() + "\n");
        }
        return result.toString();
    }

    public boolean isFractionSet() {
        return this.isFractionRuleSet;
    }

    public String getName() {
        return this.name;
    }

    public boolean isPublic() {
        return !this.name.startsWith("%%");
    }

    public boolean isParseable() {
        return !this.name.endsWith("-prefixpart") && !this.name.endsWith("-postfixpart") && !this.name.endsWith("-postfx");
    }

    public void format(long number, StringBuffer toInsertInto, int pos) {
        NFRule applicableRule = this.findNormalRule(number);
        if (++this.recursionCount >= 50) {
            this.recursionCount = 0;
            throw new IllegalStateException("Recursion limit exceeded when applying ruleSet " + this.name);
        }
        applicableRule.doFormat(number, toInsertInto, pos);
        --this.recursionCount;
    }

    public void format(double number, StringBuffer toInsertInto, int pos) {
        NFRule applicableRule = this.findRule(number);
        if (++this.recursionCount >= 50) {
            this.recursionCount = 0;
            throw new IllegalStateException("Recursion limit exceeded when applying ruleSet " + this.name);
        }
        applicableRule.doFormat(number, toInsertInto, pos);
        --this.recursionCount;
    }

    private NFRule findRule(double number) {
        if (this.isFractionRuleSet) {
            return this.findFractionRuleSetRule(number);
        }
        if (number < 0.0) {
            if (this.negativeNumberRule != null) {
                return this.negativeNumberRule;
            }
            number = -number;
        }
        if (number != Math.floor(number)) {
            if (number < 1.0 && this.fractionRules[1] != null) {
                return this.fractionRules[1];
            }
            if (this.fractionRules[0] != null) {
                return this.fractionRules[0];
            }
        }
        if (this.fractionRules[2] != null) {
            return this.fractionRules[2];
        }
        return this.findNormalRule(Math.round(number));
    }

    private NFRule findNormalRule(long number) {
        if (this.isFractionRuleSet) {
            return this.findFractionRuleSetRule(number);
        }
        if (number < 0L) {
            if (this.negativeNumberRule != null) {
                return this.negativeNumberRule;
            }
            number = -number;
        }
        int lo = 0;
        int hi = this.rules.length;
        if (hi > 0) {
            while (lo < hi) {
                int mid = (lo + hi) / 2;
                if (this.rules[mid].getBaseValue() == number) {
                    return this.rules[mid];
                }
                if (this.rules[mid].getBaseValue() > number) {
                    hi = mid;
                    continue;
                }
                lo = mid + 1;
            }
            if (hi == 0) {
                throw new IllegalStateException("The rule set " + this.name + " cannot format the value " + number);
            }
            NFRule result = this.rules[hi - 1];
            if (result.shouldRollBack(number)) {
                if (hi == 1) {
                    throw new IllegalStateException("The rule set " + this.name + " cannot roll back from the rule '" + result + "'");
                }
                result = this.rules[hi - 2];
            }
            return result;
        }
        return this.fractionRules[2];
    }

    private NFRule findFractionRuleSetRule(double number) {
        long leastCommonMultiple = this.rules[0].getBaseValue();
        int i = 1;
        while (i < this.rules.length) {
            leastCommonMultiple = NFRuleSet.lcm(leastCommonMultiple, this.rules[i].getBaseValue());
            ++i;
        }
        long numerator = Math.round(number * (double)leastCommonMultiple);
        long difference = Long.MAX_VALUE;
        int winner = 0;
        int i2 = 0;
        while (i2 < this.rules.length) {
            long tempDifference = numerator * this.rules[i2].getBaseValue() % leastCommonMultiple;
            if (leastCommonMultiple - tempDifference < tempDifference) {
                tempDifference = leastCommonMultiple - tempDifference;
            }
            if (tempDifference < difference) {
                difference = tempDifference;
                winner = i2;
                if (difference == 0L) break;
            }
            ++i2;
        }
        if (winner + 1 < this.rules.length && this.rules[winner + 1].getBaseValue() == this.rules[winner].getBaseValue() && (Math.round(number * (double)this.rules[winner].getBaseValue()) < 1L || Math.round(number * (double)this.rules[winner].getBaseValue()) >= 2L)) {
            ++winner;
        }
        return this.rules[winner];
    }

    /*
     * Unable to fully structure code
     */
    private static long lcm(long x, long y) {
        x1 = x;
        y1 = y;
        p2 = 0;
        while ((x1 & 1L) == 0L && (y1 & 1L) == 0L) {
            ++p2;
            x1 >>= 1;
            y1 >>= 1;
        }
        t = (x1 & 1L) == 1L ? -y1 : x1;
        ** GOTO lbl19
        {
            t >>= 1;
            do {
                if ((t & 1L) == 0L) continue block1;
                if (t > 0L) {
                    x1 = t;
                } else {
                    y1 = -t;
                }
                t = x1 - y1;
lbl19:
                // 2 sources

            } while (t != 0L);
        }
        gcd = x1 << p2;
        return x / gcd * y;
    }

    public Number parse(String text, ParsePosition parsePosition, double upperBound) {
        ParsePosition highWaterMark = new ParsePosition(0);
        Number result = new Long(0L);
        Number tempResult = null;
        if (text.length() == 0) {
            return result;
        }
        if (this.negativeNumberRule != null) {
            tempResult = this.negativeNumberRule.doParse(text, parsePosition, false, upperBound);
            if (parsePosition.getIndex() > highWaterMark.getIndex()) {
                result = tempResult;
                highWaterMark.setIndex(parsePosition.getIndex());
            }
            parsePosition.setIndex(0);
        }
        int i = 0;
        while (i < 3) {
            if (this.fractionRules[i] != null) {
                tempResult = this.fractionRules[i].doParse(text, parsePosition, false, upperBound);
                if (parsePosition.getIndex() > highWaterMark.getIndex()) {
                    result = tempResult;
                    highWaterMark.setIndex(parsePosition.getIndex());
                }
                parsePosition.setIndex(0);
            }
            ++i;
        }
        i = this.rules.length - 1;
        while (i >= 0 && highWaterMark.getIndex() < text.length()) {
            if (this.isFractionRuleSet || !((double)this.rules[i].getBaseValue() >= upperBound)) {
                tempResult = this.rules[i].doParse(text, parsePosition, this.isFractionRuleSet, upperBound);
                if (parsePosition.getIndex() > highWaterMark.getIndex()) {
                    result = tempResult;
                    highWaterMark.setIndex(parsePosition.getIndex());
                }
                parsePosition.setIndex(0);
            }
            --i;
        }
        parsePosition.setIndex(highWaterMark.getIndex());
        return result;
    }
}

