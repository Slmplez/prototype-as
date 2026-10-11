/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal.activities;

import java.util.regex.Pattern;
import org.eclipse.ui.activities.IActivityPatternBinding;
import org.eclipse.ui.internal.activities.PatternUtil;
import org.eclipse.ui.internal.util.Util;

public final class ActivityPatternBinding
implements IActivityPatternBinding {
    private static final int HASH_FACTOR = 89;
    private static final int HASH_INITIAL;
    private String activityId;
    private transient int hashCode = HASH_INITIAL;
    private Pattern pattern;
    private String patternString;
    private boolean isEqualityPattern;
    private transient String string;
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.internal.activities.ActivityPatternBinding");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        HASH_INITIAL = clazz.getName().hashCode();
    }

    public ActivityPatternBinding(String activityId, String pattern) {
        this(activityId, Pattern.compile(pattern));
    }

    public ActivityPatternBinding(String activityId, String pattern, boolean isEqualityPattern) {
        if (pattern == null) {
            throw new NullPointerException();
        }
        this.activityId = activityId;
        this.isEqualityPattern = isEqualityPattern;
        if (isEqualityPattern) {
            this.patternString = pattern;
            this.pattern = null;
        } else {
            this.patternString = null;
            this.pattern = Pattern.compile(pattern);
        }
    }

    public ActivityPatternBinding(String activityId, Pattern pattern) {
        if (pattern == null) {
            throw new NullPointerException();
        }
        this.activityId = activityId;
        this.pattern = pattern;
        this.isEqualityPattern = false;
        this.patternString = null;
    }

    public int compareTo(Object object) {
        ActivityPatternBinding castedObject = (ActivityPatternBinding)object;
        int compareTo = Util.compare((Comparable)((Object)this.activityId), (Comparable)((Object)castedObject.activityId));
        if (compareTo == 0 && (compareTo = Util.compare(this.isEqualityPattern, castedObject.isEqualityPattern)) == 0) {
            compareTo = Util.compare((Comparable)((Object)this.getPattern().pattern()), (Comparable)((Object)castedObject.getPattern().pattern()));
        }
        return compareTo;
    }

    public boolean equals(Object object) {
        if (!(object instanceof ActivityPatternBinding)) {
            return false;
        }
        ActivityPatternBinding castedObject = (ActivityPatternBinding)object;
        if (!Util.equals(this.activityId, castedObject.activityId)) {
            return false;
        }
        if (!Util.equals(this.isEqualityPattern, castedObject.isEqualityPattern)) {
            return false;
        }
        return Util.equals(this.getPattern(), castedObject.getPattern());
    }

    public String getActivityId() {
        return this.activityId;
    }

    public Pattern getPattern() {
        if (this.pattern == null) {
            this.pattern = Pattern.compile(PatternUtil.quotePattern(this.patternString));
        }
        return this.pattern;
    }

    public String getString() {
        if (this.isEqualityPattern) {
            return this.patternString;
        }
        return this.getPattern().pattern();
    }

    public boolean isEqualityPattern() {
        return this.isEqualityPattern;
    }

    public int hashCode() {
        if (this.hashCode == HASH_INITIAL) {
            this.hashCode = this.hashCode * 89 + Util.hashCode(this.activityId);
            this.hashCode = this.hashCode * 89 + Util.hashCode(this.pattern);
            if (this.hashCode == HASH_INITIAL) {
                ++this.hashCode;
            }
        }
        return this.hashCode;
    }

    public String toString() {
        if (this.string == null) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append('[');
            stringBuffer.append(this.activityId);
            stringBuffer.append(',');
            stringBuffer.append(this.isEqualityPattern());
            stringBuffer.append(',');
            stringBuffer.append(this.getString());
            stringBuffer.append(']');
            this.string = stringBuffer.toString();
        }
        return this.string;
    }

    public boolean isMatch(String toMatch) {
        if (this.isEqualityPattern) {
            return this.patternString.equals(toMatch);
        }
        return this.pattern.matcher(toMatch).matches();
    }
}

