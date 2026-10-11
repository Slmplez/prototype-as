/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.expressions.Expression
 */
package org.eclipse.ui.internal.activities;

import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.core.expressions.Expression;
import org.eclipse.ui.internal.util.Util;

public final class ActivityDefinition
implements Comparable {
    private static final int HASH_FACTOR = 89;
    private static final int HASH_INITIAL;
    private transient int hashCode = HASH_INITIAL;
    private String id;
    private String name;
    private String sourceId;
    private String description;
    private transient String string;
    private Expression enabledWhen;
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.internal.activities.ActivityDefinition");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        HASH_INITIAL = clazz.getName().hashCode();
    }

    static Map activityDefinitionsById(Collection activityDefinitions, boolean allowNullIds) {
        if (activityDefinitions == null) {
            throw new NullPointerException();
        }
        HashMap<String, ActivityDefinition> map = new HashMap<String, ActivityDefinition>();
        Iterator iterator = activityDefinitions.iterator();
        while (iterator.hasNext()) {
            Object object = iterator.next();
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = Class.forName("org.eclipse.ui.internal.activities.ActivityDefinition");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            Util.assertInstance(object, clazz);
            ActivityDefinition activityDefinition = (ActivityDefinition)object;
            String id = activityDefinition.getId();
            if (!allowNullIds && id == null) continue;
            map.put(id, activityDefinition);
        }
        return map;
    }

    static Map activityDefinitionsByName(Collection activityDefinitions, boolean allowNullNames) {
        if (activityDefinitions == null) {
            throw new NullPointerException();
        }
        HashMap<String, HashSet<ActivityDefinition>> map = new HashMap<String, HashSet<ActivityDefinition>>();
        Iterator iterator = activityDefinitions.iterator();
        while (iterator.hasNext()) {
            Object object = iterator.next();
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = Class.forName("org.eclipse.ui.internal.activities.ActivityDefinition");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            Util.assertInstance(object, clazz);
            ActivityDefinition activityDefinition = (ActivityDefinition)object;
            String name = activityDefinition.getName();
            if (!allowNullNames && name == null) continue;
            HashSet<ActivityDefinition> activityDefinitions2 = (HashSet<ActivityDefinition>)map.get(name);
            if (activityDefinitions2 == null) {
                activityDefinitions2 = new HashSet<ActivityDefinition>();
                map.put(name, activityDefinitions2);
            }
            activityDefinitions2.add(activityDefinition);
        }
        return map;
    }

    public ActivityDefinition(String id, String name, String sourceId, String description) {
        this.id = id;
        this.name = name;
        this.sourceId = sourceId;
        this.description = description;
    }

    public int compareTo(Object object) {
        ActivityDefinition castedObject = (ActivityDefinition)object;
        int compareTo = Util.compare((Comparable)((Object)this.id), (Comparable)((Object)castedObject.id));
        if (compareTo == 0 && (compareTo = Util.compare((Comparable)((Object)this.name), (Comparable)((Object)castedObject.name))) == 0) {
            compareTo = Util.compare((Comparable)((Object)this.sourceId), (Comparable)((Object)castedObject.sourceId));
        }
        return compareTo;
    }

    public boolean equals(Object object) {
        if (!(object instanceof ActivityDefinition)) {
            return false;
        }
        ActivityDefinition castedObject = (ActivityDefinition)object;
        if (!Util.equals(this.id, castedObject.id)) {
            return false;
        }
        if (!Util.equals(this.name, castedObject.name)) {
            return false;
        }
        return Util.equals(this.sourceId, castedObject.sourceId);
    }

    public String getId() {
        return this.id;
    }

    public String getName() {
        return this.name;
    }

    public String getSourceId() {
        return this.sourceId;
    }

    public int hashCode() {
        if (this.hashCode == HASH_INITIAL) {
            this.hashCode = this.hashCode * 89 + Util.hashCode(this.id);
            this.hashCode = this.hashCode * 89 + Util.hashCode(this.name);
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
            stringBuffer.append(this.id);
            stringBuffer.append(',');
            stringBuffer.append(this.name);
            stringBuffer.append(',');
            stringBuffer.append(this.sourceId);
            stringBuffer.append(']');
            this.string = stringBuffer.toString();
        }
        return this.string;
    }

    public String getDescription() {
        return this.description;
    }

    void setEnabledWhen(Expression expression) {
        this.enabledWhen = expression;
    }

    public Expression getEnabledWhen() {
        return this.enabledWhen;
    }
}

