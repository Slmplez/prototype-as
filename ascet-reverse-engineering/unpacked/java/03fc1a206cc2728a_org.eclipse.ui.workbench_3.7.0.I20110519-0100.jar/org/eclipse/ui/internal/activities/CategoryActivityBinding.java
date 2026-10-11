/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal.activities;

import org.eclipse.ui.activities.ICategoryActivityBinding;
import org.eclipse.ui.internal.util.Util;

public final class CategoryActivityBinding
implements ICategoryActivityBinding {
    private static final int HASH_FACTOR = 89;
    private static final int HASH_INITIAL;
    private String activityId;
    private String categoryId;
    private transient int hashCode = HASH_INITIAL;
    private transient String string;
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.internal.activities.CategoryActivityBinding");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        HASH_INITIAL = clazz.getName().hashCode();
    }

    public CategoryActivityBinding(String activityId, String categoryId) {
        if (activityId == null || categoryId == null) {
            throw new NullPointerException();
        }
        this.activityId = activityId;
        this.categoryId = categoryId;
    }

    public int compareTo(Object object) {
        CategoryActivityBinding castedObject = (CategoryActivityBinding)object;
        int compareTo = Util.compare((Comparable)((Object)this.activityId), (Comparable)((Object)castedObject.activityId));
        if (compareTo == 0) {
            compareTo = Util.compare((Comparable)((Object)this.categoryId), (Comparable)((Object)castedObject.categoryId));
        }
        return compareTo;
    }

    public boolean equals(Object object) {
        if (!(object instanceof CategoryActivityBinding)) {
            return false;
        }
        CategoryActivityBinding castedObject = (CategoryActivityBinding)object;
        if (!Util.equals(this.activityId, castedObject.activityId)) {
            return false;
        }
        return Util.equals(this.categoryId, castedObject.categoryId);
    }

    public String getActivityId() {
        return this.activityId;
    }

    public String getCategoryId() {
        return this.categoryId;
    }

    public int hashCode() {
        if (this.hashCode == HASH_INITIAL) {
            this.hashCode = this.hashCode * 89 + Util.hashCode(this.activityId);
            this.hashCode = this.hashCode * 89 + Util.hashCode(this.categoryId);
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
            stringBuffer.append(this.categoryId);
            stringBuffer.append(']');
            this.string = stringBuffer.toString();
        }
        return this.string;
    }
}

