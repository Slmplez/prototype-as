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

public final class ActivityRequirementBindingDefinition {
    private static final int HASH_FACTOR = 89;
    private static final int HASH_INITIAL;
    private String requiredActivityId;
    private transient int hashCode = HASH_INITIAL;
    private String activityId;
    private String sourceId;
    private transient String string;
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.internal.activities.ActivityRequirementBindingDefinition");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        HASH_INITIAL = clazz.getName().hashCode();
    }

    static Map activityRequirementBindingDefinitionsByActivityId(Collection activityRequirementBindingDefinitions) {
        if (activityRequirementBindingDefinitions == null) {
            throw new NullPointerException();
        }
        HashMap<String, HashSet<ActivityRequirementBindingDefinition>> map = new HashMap<String, HashSet<ActivityRequirementBindingDefinition>>();
        Iterator iterator = activityRequirementBindingDefinitions.iterator();
        while (iterator.hasNext()) {
            Object object = iterator.next();
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = Class.forName("org.eclipse.ui.internal.activities.ActivityRequirementBindingDefinition");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            Util.assertInstance(object, clazz);
            ActivityRequirementBindingDefinition activityRequirementBindingDefinition = (ActivityRequirementBindingDefinition)object;
            String parentActivityId = activityRequirementBindingDefinition.getActivityId();
            if (parentActivityId == null) continue;
            HashSet<ActivityRequirementBindingDefinition> activityRequirementBindingDefinitions2 = (HashSet<ActivityRequirementBindingDefinition>)map.get(parentActivityId);
            if (activityRequirementBindingDefinitions2 == null) {
                activityRequirementBindingDefinitions2 = new HashSet<ActivityRequirementBindingDefinition>();
                map.put(parentActivityId, activityRequirementBindingDefinitions2);
            }
            activityRequirementBindingDefinitions2.add(activityRequirementBindingDefinition);
        }
        return map;
    }

    public ActivityRequirementBindingDefinition(String requiredActivityId, String activityId, String sourceId) {
        this.requiredActivityId = requiredActivityId;
        this.activityId = activityId;
        this.sourceId = sourceId;
    }

    public int compareTo(Object object) {
        ActivityRequirementBindingDefinition castedObject = (ActivityRequirementBindingDefinition)object;
        int compareTo = Util.compare((Comparable)((Object)this.requiredActivityId), (Comparable)((Object)castedObject.requiredActivityId));
        if (compareTo == 0 && (compareTo = Util.compare((Comparable)((Object)this.activityId), (Comparable)((Object)castedObject.activityId))) == 0) {
            compareTo = Util.compare((Comparable)((Object)this.sourceId), (Comparable)((Object)castedObject.sourceId));
        }
        return compareTo;
    }

    public boolean equals(Object object) {
        if (!(object instanceof ActivityRequirementBindingDefinition)) {
            return false;
        }
        ActivityRequirementBindingDefinition castedObject = (ActivityRequirementBindingDefinition)object;
        if (!Util.equals(this.requiredActivityId, castedObject.requiredActivityId)) {
            return false;
        }
        if (!Util.equals(this.activityId, castedObject.activityId)) {
            return false;
        }
        return Util.equals(this.sourceId, castedObject.sourceId);
    }

    public String getRequiredActivityId() {
        return this.requiredActivityId;
    }

    public String getActivityId() {
        return this.activityId;
    }

    public String getSourceId() {
        return this.sourceId;
    }

    public int hashCode() {
        if (this.hashCode == HASH_INITIAL) {
            this.hashCode = this.hashCode * 89 + Util.hashCode(this.requiredActivityId);
            this.hashCode = this.hashCode * 89 + Util.hashCode(this.activityId);
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
            stringBuffer.append(this.requiredActivityId);
            stringBuffer.append(',');
            stringBuffer.append(this.activityId);
            stringBuffer.append(',');
            stringBuffer.append(this.sourceId);
            stringBuffer.append(']');
            this.string = stringBuffer.toString();
        }
        return this.string;
    }
}

