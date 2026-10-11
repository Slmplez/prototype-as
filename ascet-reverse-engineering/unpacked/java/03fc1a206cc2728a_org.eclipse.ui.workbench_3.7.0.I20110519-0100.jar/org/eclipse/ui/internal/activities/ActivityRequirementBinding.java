/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal.activities;

import org.eclipse.ui.activities.IActivityRequirementBinding;
import org.eclipse.ui.internal.util.Util;

public final class ActivityRequirementBinding
implements IActivityRequirementBinding {
    private static final int HASH_FACTOR = 89;
    private static final int HASH_INITIAL;
    private String requiredActivityId;
    private transient int hashCode = HASH_INITIAL;
    private String activityId;
    private transient String string;
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.internal.activities.ActivityRequirementBinding");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        HASH_INITIAL = clazz.getName().hashCode();
    }

    public ActivityRequirementBinding(String requiredActivityId, String activityId) {
        if (requiredActivityId == null || activityId == null) {
            throw new NullPointerException();
        }
        this.requiredActivityId = requiredActivityId;
        this.activityId = activityId;
    }

    public int compareTo(Object object) {
        ActivityRequirementBinding castedObject = (ActivityRequirementBinding)object;
        int compareTo = Util.compare((Comparable)((Object)this.requiredActivityId), (Comparable)((Object)castedObject.requiredActivityId));
        if (compareTo == 0) {
            compareTo = Util.compare((Comparable)((Object)this.activityId), (Comparable)((Object)castedObject.activityId));
        }
        return compareTo;
    }

    public boolean equals(Object object) {
        if (!(object instanceof ActivityRequirementBinding)) {
            return false;
        }
        ActivityRequirementBinding castedObject = (ActivityRequirementBinding)object;
        if (!Util.equals(this.requiredActivityId, castedObject.requiredActivityId)) {
            return false;
        }
        return Util.equals(this.activityId, castedObject.activityId);
    }

    public String getRequiredActivityId() {
        return this.requiredActivityId;
    }

    public String getActivityId() {
        return this.activityId;
    }

    public int hashCode() {
        if (this.hashCode == HASH_INITIAL) {
            this.hashCode = this.hashCode * 89 + Util.hashCode(this.requiredActivityId);
            this.hashCode = this.hashCode * 89 + Util.hashCode(this.activityId);
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
            stringBuffer.append(this.requiredActivityId);
            stringBuffer.append(',');
            stringBuffer.append(this.activityId);
            stringBuffer.append(']');
            this.string = stringBuffer.toString();
        }
        return this.string;
    }
}

