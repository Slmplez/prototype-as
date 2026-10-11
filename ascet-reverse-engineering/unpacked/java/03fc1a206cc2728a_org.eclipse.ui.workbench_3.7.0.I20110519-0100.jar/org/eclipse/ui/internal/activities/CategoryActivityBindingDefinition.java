/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal.activities;

import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.ui.internal.util.Util;

public final class CategoryActivityBindingDefinition {
    private static final int HASH_FACTOR = 89;
    private static final int HASH_INITIAL;
    private String activityId;
    private String categoryId;
    private transient int hashCode = HASH_INITIAL;
    private String sourceId;
    private transient String string;
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.internal.activities.CategoryActivityBindingDefinition");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        HASH_INITIAL = clazz.getName().hashCode();
    }

    static Map categoryActivityBindingDefinitionsByCategoryId(Collection categoryActivityBindingDefinitions) {
        if (categoryActivityBindingDefinitions == null) {
            throw new NullPointerException();
        }
        HashMap<String, HashSet<CategoryActivityBindingDefinition>> map = new HashMap<String, HashSet<CategoryActivityBindingDefinition>>();
        Iterator iterator = categoryActivityBindingDefinitions.iterator();
        while (iterator.hasNext()) {
            Object object = iterator.next();
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = Class.forName("org.eclipse.ui.internal.activities.CategoryActivityBindingDefinition");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            Util.assertInstance(object, clazz);
            CategoryActivityBindingDefinition categoryActivityBindingDefinition = (CategoryActivityBindingDefinition)object;
            String categoryId = categoryActivityBindingDefinition.getCategoryId();
            if (categoryId == null) continue;
            HashSet<CategoryActivityBindingDefinition> categoryActivityBindingDefinitions2 = (HashSet<CategoryActivityBindingDefinition>)map.get(categoryId);
            if (categoryActivityBindingDefinitions2 == null) {
                categoryActivityBindingDefinitions2 = new HashSet<CategoryActivityBindingDefinition>();
                map.put(categoryId, categoryActivityBindingDefinitions2);
            }
            categoryActivityBindingDefinitions2.add(categoryActivityBindingDefinition);
        }
        return map;
    }

    public CategoryActivityBindingDefinition(String activityId, String categoryId, String sourceId) {
        this.activityId = activityId;
        this.categoryId = categoryId;
        this.sourceId = sourceId;
    }

    public int compareTo(Object object) {
        CategoryActivityBindingDefinition castedObject = (CategoryActivityBindingDefinition)object;
        int compareTo = Util.compare((Comparable)((Object)this.activityId), (Comparable)((Object)castedObject.activityId));
        if (compareTo == 0 && (compareTo = Util.compare((Comparable)((Object)this.categoryId), (Comparable)((Object)castedObject.categoryId))) == 0) {
            compareTo = Util.compare((Comparable)((Object)this.sourceId), (Comparable)((Object)castedObject.sourceId));
        }
        return compareTo;
    }

    public boolean equals(Object object) {
        if (!(object instanceof CategoryActivityBindingDefinition)) {
            return false;
        }
        CategoryActivityBindingDefinition castedObject = (CategoryActivityBindingDefinition)object;
        if (!Util.equals(this.activityId, castedObject.activityId)) {
            return false;
        }
        if (!Util.equals(this.categoryId, castedObject.categoryId)) {
            return false;
        }
        return Util.equals(this.sourceId, castedObject.sourceId);
    }

    public String getActivityId() {
        return this.activityId;
    }

    public String getCategoryId() {
        return this.categoryId;
    }

    public String getSourceId() {
        return this.sourceId;
    }

    public int hashCode() {
        if (this.hashCode == HASH_INITIAL) {
            this.hashCode = this.hashCode * 89 + Util.hashCode(this.activityId);
            this.hashCode = this.hashCode * 89 + Util.hashCode(this.categoryId);
            this.hashCode = this.hashCode * 89 + Util.hashCode(this.sourceId);
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
            stringBuffer.append(',');
            stringBuffer.append(this.sourceId);
            stringBuffer.append(']');
            this.string = stringBuffer.toString();
        }
        return this.string;
    }
}

