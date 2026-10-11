/*
 * Decompiled with CFR 0.152.
 */
package com.ibm.icu.text;

import com.ibm.icu.impl.PluralRulesLoader;
import com.ibm.icu.impl.Utility;
import com.ibm.icu.text.UnicodeSet;
import com.ibm.icu.util.ULocale;
import java.io.Serializable;
import java.text.ParseException;
import java.util.Collections;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class PluralRules
implements Serializable {
    private static final long serialVersionUID = 1L;
    private final RuleList rules;
    private final Set<String> keywords;
    private int repeatLimit;
    public static final String KEYWORD_ZERO = "zero";
    public static final String KEYWORD_ONE = "one";
    public static final String KEYWORD_TWO = "two";
    public static final String KEYWORD_FEW = "few";
    public static final String KEYWORD_MANY = "many";
    public static final String KEYWORD_OTHER = "other";
    private static final UnicodeSet START_CHARS = new UnicodeSet("[[:ID_Start:][_]]");
    private static final UnicodeSet CONT_CHARS = new UnicodeSet("[:ID_Continue:]");
    private static final Constraint NO_CONSTRAINT = new Constraint(){
        private static final long serialVersionUID = 9163464945387899416L;

        public boolean isFulfilled(double n) {
            return true;
        }

        public String toString() {
            return "n is any";
        }

        public int updateRepeatLimit(int limit) {
            return limit;
        }
    };
    private static final Rule DEFAULT_RULE = new Rule(){
        private static final long serialVersionUID = -5677499073940822149L;

        public String getKeyword() {
            return PluralRules.KEYWORD_OTHER;
        }

        public boolean appliesTo(double n) {
            return true;
        }

        public String toString() {
            return "(other)";
        }

        public int updateRepeatLimit(int limit) {
            return limit;
        }
    };
    public static final PluralRules DEFAULT = new PluralRules(new RuleChain(DEFAULT_RULE));

    public static PluralRules parseDescription(String description) throws ParseException {
        if ((description = description.trim()).length() == 0) {
            return DEFAULT;
        }
        return new PluralRules(PluralRules.parseRuleChain(description));
    }

    public static PluralRules createRules(String description) {
        try {
            return PluralRules.parseDescription(description);
        }
        catch (ParseException parseException) {
            return null;
        }
    }

    /*
     * WARNING - void declaration
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private static Constraint parseConstraint(String description) throws ParseException {
        void var1_2;
        description = description.trim().toLowerCase(Locale.ENGLISH);
        Object var1_1 = null;
        String[] or_together = Utility.splitString(description, "or");
        int i = 0;
        while (i < or_together.length) {
            Constraint andConstraint = null;
            String[] and_together = Utility.splitString(or_together[i], "and");
            int j = 0;
            while (j < and_together.length) {
                String t;
                Constraint newConstraint = NO_CONSTRAINT;
                String condition = and_together[j].trim();
                String[] tokens = Utility.splitWhitespace(condition);
                int mod = 0;
                boolean inRange = true;
                boolean integersOnly = true;
                long lowBound = -1L;
                long highBound = -1L;
                boolean isRange = false;
                int x = 0;
                if (!"n".equals(t = tokens[x++])) {
                    throw PluralRules.unexpected(t, condition);
                }
                if (x < tokens.length) {
                    if ("mod".equals(t = tokens[x++])) {
                        mod = Integer.parseInt(tokens[x++]);
                        t = PluralRules.nextToken(tokens, x++, condition);
                    }
                    if ("is".equals(t)) {
                        if ("not".equals(t = PluralRules.nextToken(tokens, x++, condition))) {
                            inRange = false;
                            t = PluralRules.nextToken(tokens, x++, condition);
                        }
                    } else {
                        isRange = true;
                        if ("not".equals(t)) {
                            inRange = false;
                            t = PluralRules.nextToken(tokens, x++, condition);
                        }
                        if ("in".equals(t)) {
                            t = PluralRules.nextToken(tokens, x++, condition);
                        } else {
                            if (!"within".equals(t)) throw PluralRules.unexpected(t, condition);
                            integersOnly = false;
                            t = PluralRules.nextToken(tokens, x++, condition);
                        }
                    }
                    if (isRange) {
                        String[] pair = Utility.splitString(t, "..");
                        if (pair.length != 2) throw PluralRules.unexpected(t, condition);
                        lowBound = Long.parseLong(pair[0]);
                        highBound = Long.parseLong(pair[1]);
                    } else {
                        lowBound = highBound = Long.parseLong(t);
                    }
                    if (x != tokens.length) {
                        throw PluralRules.unexpected(tokens[x], condition);
                    }
                    newConstraint = new RangeConstraint(mod, inRange, integersOnly, lowBound, highBound);
                }
                andConstraint = andConstraint == null ? newConstraint : new AndConstraint(andConstraint, newConstraint);
                ++j;
            }
            if (var1_2 == null) {
                Constraint constraint = andConstraint;
            } else {
                OrConstraint orConstraint = new OrConstraint((Constraint)var1_2, andConstraint);
            }
            ++i;
        }
        return var1_2;
    }

    private static ParseException unexpected(String token, String context) {
        return new ParseException("unexpected token '" + token + "' in '" + context + "'", -1);
    }

    private static String nextToken(String[] tokens, int x, String context) throws ParseException {
        if (x < tokens.length) {
            return tokens[x];
        }
        throw new ParseException("missing token at end of '" + context + "'", -1);
    }

    private static Rule parseRule(String description) throws ParseException {
        int x = description.indexOf(58);
        if (x == -1) {
            throw new ParseException("missing ':' in rule description '" + description + "'", 0);
        }
        String keyword = description.substring(0, x).trim();
        if (!PluralRules.isValidKeyword(keyword)) {
            throw new ParseException("keyword '" + keyword + " is not valid", 0);
        }
        if ((description = description.substring(x + 1).trim()).length() == 0) {
            throw new ParseException("missing constraint in '" + description + "'", x + 1);
        }
        Constraint constraint = PluralRules.parseConstraint(description);
        ConstrainedRule rule = new ConstrainedRule(keyword, constraint);
        return rule;
    }

    private static RuleChain parseRuleChain(String description) throws ParseException {
        RuleChain rc = null;
        String[] rules = Utility.split(description, ';');
        int i = 0;
        while (i < rules.length) {
            Rule r = PluralRules.parseRule(rules[i].trim());
            rc = rc == null ? new RuleChain(r) : rc.addRule(r);
            ++i;
        }
        return rc;
    }

    public static PluralRules forLocale(ULocale locale) {
        return PluralRulesLoader.loader.forLocale(locale);
    }

    private static boolean isValidKeyword(String token) {
        if (token.length() > 0 && START_CHARS.contains(token.charAt(0))) {
            int i = 1;
            while (i < token.length()) {
                if (!CONT_CHARS.contains(token.charAt(i))) {
                    return false;
                }
                ++i;
            }
            return true;
        }
        return false;
    }

    private PluralRules(RuleList rules) {
        this.rules = rules;
        this.keywords = Collections.unmodifiableSet(rules.getKeywords());
    }

    public String select(double number) {
        return this.rules.select(number);
    }

    public Set<String> getKeywords() {
        return this.keywords;
    }

    public static ULocale[] getAvailableULocales() {
        return PluralRulesLoader.loader.getAvailableULocales();
    }

    public static ULocale getFunctionalEquivalent(ULocale locale, boolean[] isAvailable) {
        return PluralRulesLoader.loader.getFunctionalEquivalent(locale, isAvailable);
    }

    public String toString() {
        return "keywords: " + this.keywords + " rules: " + this.rules.toString() + " limit: " + this.getRepeatLimit();
    }

    public int hashCode() {
        return this.keywords.hashCode();
    }

    public boolean equals(Object rhs) {
        return rhs instanceof PluralRules && this.equals((PluralRules)rhs);
    }

    public boolean equals(PluralRules rhs) {
        if (rhs == null) {
            return false;
        }
        if (rhs == this) {
            return true;
        }
        if (!rhs.getKeywords().equals(this.keywords)) {
            return false;
        }
        int limit = Math.max(this.getRepeatLimit(), rhs.getRepeatLimit());
        int i = 0;
        while (i < limit) {
            if (!this.select(i).equals(rhs.select(i))) {
                return false;
            }
            ++i;
        }
        return true;
    }

    private int getRepeatLimit() {
        if (this.repeatLimit == 0) {
            this.repeatLimit = this.rules.getRepeatLimit() + 1;
        }
        return this.repeatLimit;
    }

    private static class AndConstraint
    extends BinaryConstraint {
        private static final long serialVersionUID = 7766999779862263523L;

        AndConstraint(Constraint a, Constraint b) {
            super(a, b, " && ");
        }

        public boolean isFulfilled(double n) {
            return this.a.isFulfilled(n) && this.b.isFulfilled(n);
        }
    }

    private static abstract class BinaryConstraint
    implements Constraint,
    Serializable {
        private static final long serialVersionUID = 1L;
        protected final Constraint a;
        protected final Constraint b;
        private final String conjunction;

        protected BinaryConstraint(Constraint a, Constraint b, String c) {
            this.a = a;
            this.b = b;
            this.conjunction = c;
        }

        public int updateRepeatLimit(int limit) {
            return this.a.updateRepeatLimit(this.b.updateRepeatLimit(limit));
        }

        public String toString() {
            return String.valueOf(this.a.toString()) + this.conjunction + this.b.toString();
        }
    }

    private static class ConstrainedRule
    implements Rule,
    Serializable {
        private static final long serialVersionUID = 1L;
        private final String keyword;
        private final Constraint constraint;

        public ConstrainedRule(String keyword, Constraint constraint) {
            this.keyword = keyword;
            this.constraint = constraint;
        }

        public Rule and(Constraint c) {
            return new ConstrainedRule(this.keyword, new AndConstraint(this.constraint, c));
        }

        public Rule or(Constraint c) {
            return new ConstrainedRule(this.keyword, new OrConstraint(this.constraint, c));
        }

        public String getKeyword() {
            return this.keyword;
        }

        public boolean appliesTo(double n) {
            return this.constraint.isFulfilled(n);
        }

        public int updateRepeatLimit(int limit) {
            return this.constraint.updateRepeatLimit(limit);
        }

        public String toString() {
            return String.valueOf(this.keyword) + ": " + this.constraint;
        }
    }

    private static interface Constraint
    extends Serializable {
        public boolean isFulfilled(double var1);

        public int updateRepeatLimit(int var1);
    }

    private static class OrConstraint
    extends BinaryConstraint {
        private static final long serialVersionUID = 1405488568664762222L;

        OrConstraint(Constraint a, Constraint b) {
            super(a, b, " || ");
        }

        public boolean isFulfilled(double n) {
            return this.a.isFulfilled(n) || this.b.isFulfilled(n);
        }
    }

    private static class RangeConstraint
    implements Constraint,
    Serializable {
        private static final long serialVersionUID = 1L;
        private int mod;
        private boolean inRange;
        private boolean integersOnly;
        private long lowerBound;
        private long upperBound;

        public boolean isFulfilled(double n) {
            if (this.integersOnly && n - (double)((long)n) != 0.0) {
                return !this.inRange;
            }
            if (this.mod != 0) {
                n %= (double)this.mod;
            }
            return this.inRange == (n >= (double)this.lowerBound && n <= (double)this.upperBound);
        }

        RangeConstraint(int mod, boolean inRange, boolean integersOnly, long lowerBound, long upperBound) {
            this.mod = mod;
            this.inRange = inRange;
            this.integersOnly = integersOnly;
            this.lowerBound = lowerBound;
            this.upperBound = upperBound;
        }

        public int updateRepeatLimit(int limit) {
            int mylimit = this.mod == 0 ? (int)this.upperBound : this.mod;
            return Math.max(mylimit, limit);
        }

        public String toString() {
            return "[mod: " + this.mod + " inRange: " + this.inRange + " integersOnly: " + this.integersOnly + " low: " + this.lowerBound + " high: " + this.upperBound + "]";
        }
    }

    private static interface Rule
    extends Serializable {
        public String getKeyword();

        public boolean appliesTo(double var1);

        public int updateRepeatLimit(int var1);
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static class RuleChain
    implements RuleList,
    Serializable {
        private static final long serialVersionUID = 1L;
        private final Rule rule;
        private final RuleChain next;

        public RuleChain(Rule rule) {
            this(rule, null);
        }

        private RuleChain(Rule rule, RuleChain next) {
            this.rule = rule;
            this.next = next;
        }

        public RuleChain addRule(Rule nextRule) {
            return new RuleChain(nextRule, this);
        }

        private Rule selectRule(double n) {
            Rule r = null;
            if (this.next != null) {
                r = this.next.selectRule(n);
            }
            if (r == null && this.rule.appliesTo(n)) {
                r = this.rule;
            }
            return r;
        }

        @Override
        public String select(double n) {
            Rule r = this.selectRule(n);
            if (r == null) {
                return PluralRules.KEYWORD_OTHER;
            }
            return r.getKeyword();
        }

        @Override
        public Set<String> getKeywords() {
            HashSet<String> result = new HashSet<String>();
            result.add(PluralRules.KEYWORD_OTHER);
            RuleChain rc = this;
            while (rc != null) {
                result.add(rc.rule.getKeyword());
                rc = rc.next;
            }
            return result;
        }

        @Override
        public int getRepeatLimit() {
            int result = 0;
            RuleChain rc = this;
            while (rc != null) {
                result = rc.rule.updateRepeatLimit(result);
                rc = rc.next;
            }
            return result;
        }

        public String toString() {
            String s = this.rule.toString();
            if (this.next != null) {
                s = String.valueOf(this.next.toString()) + "; " + s;
            }
            return s;
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static interface RuleList
    extends Serializable {
        public String select(double var1);

        public Set<String> getKeywords();

        public int getRepeatLimit();
    }
}

