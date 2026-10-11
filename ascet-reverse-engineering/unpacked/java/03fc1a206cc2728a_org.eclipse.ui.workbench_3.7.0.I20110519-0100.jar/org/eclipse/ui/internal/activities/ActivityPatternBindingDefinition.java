/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal.activities;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.ui.internal.util.Util;

public final class ActivityPatternBindingDefinition {
    private static final int HASH_FACTOR = 89;
    private static final int HASH_INITIAL;
    private String activityId;
    private transient int hashCode = HASH_INITIAL;
    private String pattern;
    private String sourceId;
    private transient String string;
    private boolean isEqualityPattern;
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.internal.activities.ActivityPatternBindingDefinition");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        HASH_INITIAL = clazz.getName().hashCode();
    }

    static Map activityPatternBindingDefinitionsByActivityId(Collection activityPatternBindingDefinitions) {
        if (activityPatternBindingDefinitions == null) {
            throw new NullPointerException();
        }
        HashMap<String, ArrayList<ActivityPatternBindingDefinition>> map = new HashMap<String, ArrayList<ActivityPatternBindingDefinition>>();
        Iterator iterator = activityPatternBindingDefinitions.iterator();
        while (iterator.hasNext()) {
            Object object = iterator.next();
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = Class.forName("org.eclipse.ui.internal.activities.ActivityPatternBindingDefinition");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            Util.assertInstance(object, clazz);
            ActivityPatternBindingDefinition activityPatternBindingDefinition = (ActivityPatternBindingDefinition)object;
            String activityId = activityPatternBindingDefinition.getActivityId();
            if (activityId == null) continue;
            ArrayList<ActivityPatternBindingDefinition> activityPatternBindingDefinitions2 = (ArrayList<ActivityPatternBindingDefinition>)map.get(activityId);
            if (activityPatternBindingDefinitions2 == null) {
                activityPatternBindingDefinitions2 = new ArrayList<ActivityPatternBindingDefinition>();
                map.put(activityId, activityPatternBindingDefinitions2);
            }
            activityPatternBindingDefinitions2.add(activityPatternBindingDefinition);
        }
        return map;
    }

    public ActivityPatternBindingDefinition(String activityId, String pattern, String sourceId) {
        this(activityId, pattern, sourceId, false);
    }

    public ActivityPatternBindingDefinition(String activityId, String pattern, String sourceId, boolean isEqualityPattern) {
        this.activityId = activityId;
        this.pattern = pattern;
        this.sourceId = sourceId;
        this.isEqualityPattern = isEqualityPattern;
    }

    public int compareTo(Object object) {
        ActivityPatternBindingDefinition castedObject = (ActivityPatternBindingDefinition)object;
        int compareTo = Util.compare((Comparable)((Object)this.activityId), (Comparable)((Object)castedObject.activityId));
        if (compareTo == 0 && (compareTo = Util.compare((Comparable)((Object)this.pattern), (Comparable)((Object)castedObject.pattern))) == 0 && (compareTo = Util.compare(this.isEqualityPattern, castedObject.isEqualityPattern)) == 0) {
            compareTo = Util.compare((Comparable)((Object)this.sourceId), (Comparable)((Object)castedObject.sourceId));
        }
        return compareTo;
    }

    public boolean equals(Object object) {
        if (!(object instanceof ActivityPatternBindingDefinition)) {
            return false;
        }
        ActivityPatternBindingDefinition castedObject = (ActivityPatternBindingDefinition)object;
        if (!Util.equals(this.activityId, castedObject.activityId)) {
            return false;
        }
        if (!Util.equals(this.pattern, castedObject.pattern)) {
            return false;
        }
        if (!Util.equals(this.isEqualityPattern, castedObject.isEqualityPattern)) {
            return false;
        }
        return Util.equals(this.sourceId, castedObject.sourceId);
    }

    public String getActivityId() {
        return this.activityId;
    }

    public String getPattern() {
        return this.pattern;
    }

    public String getSourceId() {
        return this.sourceId;
    }

    public boolean isEqualityPattern() {
        return this.isEqualityPattern;
    }

    public int hashCode() {
        if (this.hashCode == HASH_INITIAL) {
            this.hashCode = this.hashCode * 89 + Util.hashCode(this.activityId);
            this.hashCode = this.hashCode * 89 + Util.hashCode(this.pattern);
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
            stringBuffer.append(this.isEqualityPattern);
            stringBuffer.append(',');
            stringBuffer.append(this.pattern);
            stringBuffer.append(',');
            stringBuffer.append(this.sourceId);
            stringBuffer.append(']');
            this.string = stringBuffer.toString();
        }
        return this.string;
    }
}

