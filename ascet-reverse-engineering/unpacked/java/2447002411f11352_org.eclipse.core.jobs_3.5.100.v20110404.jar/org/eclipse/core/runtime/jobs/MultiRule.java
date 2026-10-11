/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.runtime.jobs;

import java.util.ArrayList;
import org.eclipse.core.runtime.jobs.ISchedulingRule;

public class MultiRule
implements ISchedulingRule {
    private ISchedulingRule[] rules;

    public static ISchedulingRule combine(ISchedulingRule[] ruleArray) {
        ISchedulingRule result = null;
        int i = 0;
        while (i < ruleArray.length) {
            if (ruleArray[i] != null) {
                result = result == null ? ruleArray[i] : MultiRule.combine(result, ruleArray[i]);
            }
            ++i;
        }
        return result;
    }

    public static ISchedulingRule combine(ISchedulingRule rule1, ISchedulingRule rule2) {
        if (rule1 == rule2) {
            return rule1;
        }
        if (rule1 == null) {
            return rule2;
        }
        if (rule2 == null) {
            return rule1;
        }
        if (rule1.contains(rule2)) {
            return rule1;
        }
        if (rule2.contains(rule1)) {
            return rule2;
        }
        MultiRule result = new MultiRule();
        result.rules = new ISchedulingRule[]{rule1, rule2};
        if (rule1 instanceof MultiRule || rule2 instanceof MultiRule) {
            result.rules = MultiRule.flatten(result.rules);
        }
        return result;
    }

    private static ISchedulingRule[] flatten(ISchedulingRule[] nestedRules) {
        ArrayList<ISchedulingRule> myRules = new ArrayList<ISchedulingRule>(nestedRules.length);
        int i = 0;
        while (i < nestedRules.length) {
            if (nestedRules[i] instanceof MultiRule) {
                ISchedulingRule[] children = ((MultiRule)nestedRules[i]).getChildren();
                int j = 0;
                while (j < children.length) {
                    myRules.add(children[j]);
                    ++j;
                }
            } else {
                myRules.add(nestedRules[i]);
            }
            ++i;
        }
        return myRules.toArray(new ISchedulingRule[myRules.size()]);
    }

    public MultiRule(ISchedulingRule[] nestedRules) {
        this.rules = MultiRule.flatten(nestedRules);
    }

    private MultiRule() {
    }

    public ISchedulingRule[] getChildren() {
        return (ISchedulingRule[])this.rules.clone();
    }

    public boolean contains(ISchedulingRule rule) {
        if (this == rule) {
            return true;
        }
        if (rule instanceof MultiRule) {
            ISchedulingRule[] otherRules = ((MultiRule)rule).getChildren();
            int other = 0;
            while (other < otherRules.length) {
                boolean found = false;
                int mine = 0;
                while (!found && mine < this.rules.length) {
                    found = this.rules[mine].contains(otherRules[other]);
                    ++mine;
                }
                if (!found) {
                    return false;
                }
                ++other;
            }
            return true;
        }
        int i = 0;
        while (i < this.rules.length) {
            if (this.rules[i].contains(rule)) {
                return true;
            }
            ++i;
        }
        return false;
    }

    public boolean isConflicting(ISchedulingRule rule) {
        if (this == rule) {
            return true;
        }
        if (rule instanceof MultiRule) {
            ISchedulingRule[] otherRules = ((MultiRule)rule).getChildren();
            int j = 0;
            while (j < otherRules.length) {
                int i = 0;
                while (i < this.rules.length) {
                    if (this.rules[i].isConflicting(otherRules[j])) {
                        return true;
                    }
                    ++i;
                }
                ++j;
            }
        } else {
            int i = 0;
            while (i < this.rules.length) {
                if (this.rules[i].isConflicting(rule)) {
                    return true;
                }
                ++i;
            }
        }
        return false;
    }

    public String toString() {
        StringBuffer buffer = new StringBuffer();
        buffer.append("MultiRule[");
        int last = this.rules.length - 1;
        int i = 0;
        while (i < this.rules.length) {
            buffer.append(this.rules[i]);
            if (i != last) {
                buffer.append(',');
            }
            ++i;
        }
        buffer.append(']');
        return buffer.toString();
    }
}

