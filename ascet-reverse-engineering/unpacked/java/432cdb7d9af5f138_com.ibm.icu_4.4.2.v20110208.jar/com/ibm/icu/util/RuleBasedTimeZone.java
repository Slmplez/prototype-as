/*
 * Decompiled with CFR 0.152.
 */
package com.ibm.icu.util;

import com.ibm.icu.impl.Grego;
import com.ibm.icu.util.AnnualTimeZoneRule;
import com.ibm.icu.util.BasicTimeZone;
import com.ibm.icu.util.InitialTimeZoneRule;
import com.ibm.icu.util.TimeZone;
import com.ibm.icu.util.TimeZoneRule;
import com.ibm.icu.util.TimeZoneTransition;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Date;
import java.util.List;

public class RuleBasedTimeZone
extends BasicTimeZone {
    private static final long serialVersionUID = 7580833058949327935L;
    private final InitialTimeZoneRule initialRule;
    private List<TimeZoneRule> historicRules;
    private AnnualTimeZoneRule[] finalRules;
    private transient List<TimeZoneTransition> historicTransitions;
    private transient boolean upToDate;

    public RuleBasedTimeZone(String id, InitialTimeZoneRule initialRule) {
        super.setID(id);
        this.initialRule = initialRule;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public void addTransitionRule(TimeZoneRule rule) {
        if (!rule.isTransitionRule()) {
            throw new IllegalArgumentException("Rule must be a transition rule");
        }
        if (rule instanceof AnnualTimeZoneRule && ((AnnualTimeZoneRule)rule).getEndYear() == Integer.MAX_VALUE) {
            if (this.finalRules == null) {
                this.finalRules = new AnnualTimeZoneRule[2];
                this.finalRules[0] = (AnnualTimeZoneRule)rule;
            } else {
                if (this.finalRules[1] != null) throw new IllegalStateException("Too many final rules");
                this.finalRules[1] = (AnnualTimeZoneRule)rule;
            }
        } else {
            if (this.historicRules == null) {
                this.historicRules = new ArrayList<TimeZoneRule>();
            }
            this.historicRules.add(rule);
        }
        this.upToDate = false;
    }

    public int getOffset(int era, int year, int month, int day, int dayOfWeek, int milliseconds) {
        if (era == 0) {
            year = 1 - year;
        }
        long time = Grego.fieldsToDay(year, month, day) * 86400000L + (long)milliseconds;
        int[] offsets = new int[2];
        this.getOffset(time, true, 3, 1, offsets);
        return offsets[0] + offsets[1];
    }

    public void getOffset(long time, boolean local, int[] offsets) {
        this.getOffset(time, local, 4, 12, offsets);
    }

    public void getOffsetFromLocal(long date, int nonExistingTimeOpt, int duplicatedTimeOpt, int[] offsets) {
        this.getOffset(date, true, nonExistingTimeOpt, duplicatedTimeOpt, offsets);
    }

    public int getRawOffset() {
        long now = System.currentTimeMillis();
        int[] offsets = new int[2];
        this.getOffset(now, false, offsets);
        return offsets[0];
    }

    public boolean inDaylightTime(Date date) {
        int[] offsets = new int[2];
        this.getOffset(date.getTime(), false, offsets);
        return offsets[1] != 0;
    }

    public void setRawOffset(int offsetMillis) {
        throw new UnsupportedOperationException("setRawOffset in RuleBasedTimeZone is not supported.");
    }

    public boolean useDaylightTime() {
        long now = System.currentTimeMillis();
        int[] offsets = new int[2];
        this.getOffset(now, false, offsets);
        if (offsets[1] != 0) {
            return true;
        }
        TimeZoneTransition tt = this.getNextTransition(now, false);
        return tt != null && tt.getTo().getDSTSavings() != 0;
    }

    public boolean hasSameRules(TimeZone other) {
        if (!(other instanceof RuleBasedTimeZone)) {
            return false;
        }
        RuleBasedTimeZone otherRBTZ = (RuleBasedTimeZone)other;
        if (!this.initialRule.isEquivalentTo(otherRBTZ.initialRule)) {
            return false;
        }
        if (this.finalRules != null && otherRBTZ.finalRules != null) {
            int i = 0;
            while (i < this.finalRules.length) {
                if (!(this.finalRules[i] == null && otherRBTZ.finalRules[i] == null || this.finalRules[i] != null && otherRBTZ.finalRules[i] != null && this.finalRules[i].isEquivalentTo(otherRBTZ.finalRules[i]))) {
                    return false;
                }
                ++i;
            }
        } else if (this.finalRules != null || otherRBTZ.finalRules != null) {
            return false;
        }
        if (this.historicRules != null && otherRBTZ.historicRules != null) {
            if (this.historicRules.size() != otherRBTZ.historicRules.size()) {
                return false;
            }
            for (TimeZoneRule rule : this.historicRules) {
                boolean foundSameRule = false;
                for (TimeZoneRule orule : otherRBTZ.historicRules) {
                    if (!rule.isEquivalentTo(orule)) continue;
                    foundSameRule = true;
                    break;
                }
                if (foundSameRule) continue;
                return false;
            }
        } else if (this.historicRules != null || otherRBTZ.historicRules != null) {
            return false;
        }
        return true;
    }

    public TimeZoneRule[] getTimeZoneRules() {
        int size = 1;
        if (this.historicRules != null) {
            size += this.historicRules.size();
        }
        if (this.finalRules != null) {
            size = this.finalRules[1] != null ? (size += 2) : ++size;
        }
        TimeZoneRule[] rules = new TimeZoneRule[size];
        rules[0] = this.initialRule;
        int idx = 1;
        if (this.historicRules != null) {
            while (idx < this.historicRules.size() + 1) {
                rules[idx] = this.historicRules.get(idx - 1);
                ++idx;
            }
        }
        if (this.finalRules != null) {
            rules[idx++] = this.finalRules[0];
            if (this.finalRules[1] != null) {
                rules[idx] = this.finalRules[1];
            }
        }
        return rules;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public TimeZoneTransition getNextTransition(long base, boolean inclusive) {
        this.complete();
        if (this.historicTransitions == null) {
            return null;
        }
        boolean isFinal = false;
        TimeZoneTransition result = null;
        TimeZoneTransition tzt = this.historicTransitions.get(0);
        long tt = tzt.getTime();
        if (tt > base || inclusive && tt == base) {
            result = tzt;
        } else {
            int idx = this.historicTransitions.size() - 1;
            tzt = this.historicTransitions.get(idx);
            tt = tzt.getTime();
            if (inclusive && tt == base) {
                result = tzt;
            } else if (tt <= base) {
                if (this.finalRules == null) return null;
                Date start0 = this.finalRules[0].getNextStart(base, this.finalRules[1].getRawOffset(), this.finalRules[1].getDSTSavings(), inclusive);
                Date start1 = this.finalRules[1].getNextStart(base, this.finalRules[0].getRawOffset(), this.finalRules[0].getDSTSavings(), inclusive);
                tzt = start1.after(start0) ? new TimeZoneTransition(start0.getTime(), this.finalRules[1], this.finalRules[0]) : new TimeZoneTransition(start1.getTime(), this.finalRules[0], this.finalRules[1]);
                result = tzt;
                isFinal = true;
            } else {
                --idx;
                TimeZoneTransition prev = tzt;
                while (idx > 0) {
                    tzt = this.historicTransitions.get(idx);
                    tt = tzt.getTime();
                    if (tt < base || !inclusive && tt == base) break;
                    --idx;
                    prev = tzt;
                }
                result = prev;
            }
        }
        TimeZoneRule from = result.getFrom();
        TimeZoneRule to = result.getTo();
        if (from.getRawOffset() != to.getRawOffset()) return result;
        if (from.getDSTSavings() != to.getDSTSavings()) return result;
        if (!isFinal) return this.getNextTransition(result.getTime(), false);
        return null;
    }

    public TimeZoneTransition getPreviousTransition(long base, boolean inclusive) {
        this.complete();
        if (this.historicTransitions == null) {
            return null;
        }
        TimeZoneTransition result = null;
        TimeZoneTransition tzt = this.historicTransitions.get(0);
        long tt = tzt.getTime();
        if (inclusive && tt == base) {
            result = tzt;
        } else {
            if (tt >= base) {
                return null;
            }
            int idx = this.historicTransitions.size() - 1;
            tzt = this.historicTransitions.get(idx);
            tt = tzt.getTime();
            if (inclusive && tt == base) {
                result = tzt;
            } else if (tt < base) {
                if (this.finalRules != null) {
                    Date start0 = this.finalRules[0].getPreviousStart(base, this.finalRules[1].getRawOffset(), this.finalRules[1].getDSTSavings(), inclusive);
                    Date start1 = this.finalRules[1].getPreviousStart(base, this.finalRules[0].getRawOffset(), this.finalRules[0].getDSTSavings(), inclusive);
                    tzt = start1.before(start0) ? new TimeZoneTransition(start0.getTime(), this.finalRules[1], this.finalRules[0]) : new TimeZoneTransition(start1.getTime(), this.finalRules[0], this.finalRules[1]);
                }
                result = tzt;
            } else {
                --idx;
                while (idx >= 0) {
                    tzt = this.historicTransitions.get(idx);
                    tt = tzt.getTime();
                    if (tt < base || inclusive && tt == base) break;
                    --idx;
                }
                result = tzt;
            }
        }
        TimeZoneRule from = result.getFrom();
        TimeZoneRule to = result.getTo();
        if (from.getRawOffset() == to.getRawOffset() && from.getDSTSavings() == to.getDSTSavings()) {
            result = this.getPreviousTransition(result.getTime(), false);
        }
        return result;
    }

    public Object clone() {
        RuleBasedTimeZone other = (RuleBasedTimeZone)super.clone();
        if (this.historicRules != null) {
            other.historicRules = new ArrayList<TimeZoneRule>(this.historicRules);
        }
        if (this.finalRules != null) {
            other.finalRules = (AnnualTimeZoneRule[])this.finalRules.clone();
        }
        return other;
    }

    private void complete() {
        if (this.upToDate) {
            return;
        }
        if (this.finalRules != null && this.finalRules[1] == null) {
            throw new IllegalStateException("Incomplete final rules");
        }
        if (this.historicRules != null || this.finalRules != null) {
            InitialTimeZoneRule curRule = this.initialRule;
            long lastTransitionTime = -184303902528000000L;
            if (this.historicRules != null) {
                BitSet done = new BitSet(this.historicRules.size());
                while (true) {
                    long tt;
                    Date d;
                    int curStdOffset = curRule.getRawOffset();
                    int curDstSavings = curRule.getDSTSavings();
                    long nextTransitionTime = 183882168921600000L;
                    TimeZoneRule nextRule = null;
                    int i = 0;
                    while (i < this.historicRules.size()) {
                        if (!done.get(i)) {
                            TimeZoneRule r = this.historicRules.get(i);
                            d = r.getNextStart(lastTransitionTime, curStdOffset, curDstSavings, false);
                            if (d == null) {
                                done.set(i);
                            } else if (!(r == curRule || r.getName().equals(curRule.getName()) && r.getRawOffset() == curRule.getRawOffset() && r.getDSTSavings() == curRule.getDSTSavings() || (tt = d.getTime()) >= nextTransitionTime)) {
                                nextTransitionTime = tt;
                                nextRule = r;
                            }
                        }
                        ++i;
                    }
                    if (nextRule == null) {
                        boolean bDoneAll = true;
                        int j = 0;
                        while (j < this.historicRules.size()) {
                            if (!done.get(j)) {
                                bDoneAll = false;
                                break;
                            }
                            ++j;
                        }
                        if (bDoneAll) break;
                    }
                    if (this.finalRules != null) {
                        i = 0;
                        while (i < 2) {
                            if (this.finalRules[i] != curRule && (d = this.finalRules[i].getNextStart(lastTransitionTime, curStdOffset, curDstSavings, false)) != null && (tt = d.getTime()) < nextTransitionTime) {
                                nextTransitionTime = tt;
                                nextRule = this.finalRules[i];
                            }
                            ++i;
                        }
                    }
                    if (nextRule == null) break;
                    if (this.historicTransitions == null) {
                        this.historicTransitions = new ArrayList<TimeZoneTransition>();
                    }
                    this.historicTransitions.add(new TimeZoneTransition(nextTransitionTime, curRule, nextRule));
                    lastTransitionTime = nextTransitionTime;
                    curRule = nextRule;
                }
            }
            if (this.finalRules != null) {
                if (this.historicTransitions == null) {
                    this.historicTransitions = new ArrayList<TimeZoneTransition>();
                }
                Date d0 = this.finalRules[0].getNextStart(lastTransitionTime, curRule.getRawOffset(), curRule.getDSTSavings(), false);
                Date d1 = this.finalRules[1].getNextStart(lastTransitionTime, curRule.getRawOffset(), curRule.getDSTSavings(), false);
                if (d1.after(d0)) {
                    this.historicTransitions.add(new TimeZoneTransition(d0.getTime(), curRule, this.finalRules[0]));
                    d1 = this.finalRules[1].getNextStart(d0.getTime(), this.finalRules[0].getRawOffset(), this.finalRules[0].getDSTSavings(), false);
                    this.historicTransitions.add(new TimeZoneTransition(d1.getTime(), this.finalRules[0], this.finalRules[1]));
                } else {
                    this.historicTransitions.add(new TimeZoneTransition(d1.getTime(), curRule, this.finalRules[1]));
                    d0 = this.finalRules[0].getNextStart(d1.getTime(), this.finalRules[1].getRawOffset(), this.finalRules[1].getDSTSavings(), false);
                    this.historicTransitions.add(new TimeZoneTransition(d0.getTime(), this.finalRules[1], this.finalRules[0]));
                }
            }
        }
        this.upToDate = true;
    }

    /*
     * Unable to fully structure code
     * Could not resolve type clashes
     */
    private void getOffset(long time, boolean local, int NonExistingTimeOpt, int DuplicatedTimeOpt, int[] offsets) {
        block2: {
            block3: {
                block1: {
                    this.complete();
                    if (this.historicTransitions != null) break block1;
                    rule /* !! */  = this.initialRule;
                    break block2;
                }
                tstart = RuleBasedTimeZone.getTransitionTime(this.historicTransitions.get(0), local, NonExistingTimeOpt, DuplicatedTimeOpt);
                if (time >= tstart) break block3;
                rule /* !! */  = this.initialRule;
                break block2;
            }
            idx = this.historicTransitions.size() - 1;
            tend = RuleBasedTimeZone.getTransitionTime(this.historicTransitions.get(idx), local, NonExistingTimeOpt, DuplicatedTimeOpt);
            if (time <= tend) ** GOTO lbl18
            rule /* !! */  = this.finalRules != null ? this.findRuleInFinal(time, local, NonExistingTimeOpt, DuplicatedTimeOpt) : this.historicTransitions.get(idx).getTo();
            break block2;
            while (time < RuleBasedTimeZone.getTransitionTime(this.historicTransitions.get(idx), local, NonExistingTimeOpt, DuplicatedTimeOpt)) {
                --idx;
lbl18:
                // 2 sources

                if (idx >= 0) continue;
            }
            rule /* !! */  = this.historicTransitions.get(idx).getTo();
        }
        offsets[0] = rule /* !! */ .getRawOffset();
        offsets[1] = rule /* !! */ .getDSTSavings();
    }

    private TimeZoneRule findRuleInFinal(long time, boolean local, int NonExistingTimeOpt, int DuplicatedTimeOpt) {
        Date start1;
        int localDelta;
        if (this.finalRules == null || this.finalRules.length != 2 || this.finalRules[0] == null || this.finalRules[1] == null) {
            return null;
        }
        long base = time;
        if (local) {
            localDelta = RuleBasedTimeZone.getLocalDelta(this.finalRules[1].getRawOffset(), this.finalRules[1].getDSTSavings(), this.finalRules[0].getRawOffset(), this.finalRules[0].getDSTSavings(), NonExistingTimeOpt, DuplicatedTimeOpt);
            base -= (long)localDelta;
        }
        Date start0 = this.finalRules[0].getPreviousStart(base, this.finalRules[1].getRawOffset(), this.finalRules[1].getDSTSavings(), true);
        base = time;
        if (local) {
            localDelta = RuleBasedTimeZone.getLocalDelta(this.finalRules[0].getRawOffset(), this.finalRules[0].getDSTSavings(), this.finalRules[1].getRawOffset(), this.finalRules[1].getDSTSavings(), NonExistingTimeOpt, DuplicatedTimeOpt);
            base -= (long)localDelta;
        }
        return start0.after(start1 = this.finalRules[1].getPreviousStart(base, this.finalRules[0].getRawOffset(), this.finalRules[0].getDSTSavings(), true)) ? this.finalRules[0] : this.finalRules[1];
    }

    private static long getTransitionTime(TimeZoneTransition tzt, boolean local, int NonExistingTimeOpt, int DuplicatedTimeOpt) {
        long time = tzt.getTime();
        if (local) {
            time += (long)RuleBasedTimeZone.getLocalDelta(tzt.getFrom().getRawOffset(), tzt.getFrom().getDSTSavings(), tzt.getTo().getRawOffset(), tzt.getTo().getDSTSavings(), NonExistingTimeOpt, DuplicatedTimeOpt);
        }
        return time;
    }

    private static int getLocalDelta(int rawBefore, int dstBefore, int rawAfter, int dstAfter, int NonExistingTimeOpt, int DuplicatedTimeOpt) {
        boolean stdToDst;
        int delta = 0;
        int offsetBefore = rawBefore + dstBefore;
        int offsetAfter = rawAfter + dstAfter;
        boolean dstToStd = dstBefore != 0 && dstAfter == 0;
        boolean bl = stdToDst = dstBefore == 0 && dstAfter != 0;
        delta = offsetAfter - offsetBefore >= 0 ? ((NonExistingTimeOpt & 3) == 1 && dstToStd || (NonExistingTimeOpt & 3) == 3 && stdToDst ? offsetBefore : ((NonExistingTimeOpt & 3) == 1 && stdToDst || (NonExistingTimeOpt & 3) == 3 && dstToStd ? offsetAfter : ((NonExistingTimeOpt & 0xC) == 12 ? offsetBefore : offsetAfter))) : ((DuplicatedTimeOpt & 3) == 1 && dstToStd || (DuplicatedTimeOpt & 3) == 3 && stdToDst ? offsetAfter : ((DuplicatedTimeOpt & 3) == 1 && stdToDst || (DuplicatedTimeOpt & 3) == 3 && dstToStd ? offsetBefore : ((DuplicatedTimeOpt & 0xC) == 4 ? offsetBefore : offsetAfter)));
        return delta;
    }
}

