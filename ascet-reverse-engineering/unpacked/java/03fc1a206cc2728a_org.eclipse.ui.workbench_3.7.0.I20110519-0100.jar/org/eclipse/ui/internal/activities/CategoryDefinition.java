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

public final class CategoryDefinition
implements Comparable {
    private static final int HASH_FACTOR = 89;
    private static final int HASH_INITIAL;
    private transient int hashCode = HASH_INITIAL;
    private String id;
    private String name;
    private String sourceId;
    private transient String string;
    private String description;
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.internal.activities.CategoryDefinition");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        HASH_INITIAL = clazz.getName().hashCode();
    }

    static Map categoryDefinitionsById(Collection categoryDefinitions, boolean allowNullIds) {
        if (categoryDefinitions == null) {
            throw new NullPointerException();
        }
        HashMap<String, CategoryDefinition> map = new HashMap<String, CategoryDefinition>();
        Iterator iterator = categoryDefinitions.iterator();
        while (iterator.hasNext()) {
            Object object = iterator.next();
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = Class.forName("org.eclipse.ui.internal.activities.CategoryDefinition");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            Util.assertInstance(object, clazz);
            CategoryDefinition categoryDefinition = (CategoryDefinition)object;
            String id = categoryDefinition.getId();
            if (!allowNullIds && id == null) continue;
            map.put(id, categoryDefinition);
        }
        return map;
    }

    static Map categoryDefinitionsByName(Collection categoryDefinitions, boolean allowNullNames) {
        if (categoryDefinitions == null) {
            throw new NullPointerException();
        }
        HashMap<String, HashSet<CategoryDefinition>> map = new HashMap<String, HashSet<CategoryDefinition>>();
        Iterator iterator = categoryDefinitions.iterator();
        while (iterator.hasNext()) {
            Object object = iterator.next();
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = Class.forName("org.eclipse.ui.internal.activities.CategoryDefinition");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            Util.assertInstance(object, clazz);
            CategoryDefinition categoryDefinition = (CategoryDefinition)object;
            String name = categoryDefinition.getName();
            if (!allowNullNames && name == null) continue;
            HashSet<CategoryDefinition> categoryDefinitions2 = (HashSet<CategoryDefinition>)map.get(name);
            if (categoryDefinitions2 == null) {
                categoryDefinitions2 = new HashSet<CategoryDefinition>();
                map.put(name, categoryDefinitions2);
            }
            categoryDefinitions2.add(categoryDefinition);
        }
        return map;
    }

    public CategoryDefinition(String id, String name, String sourceId, String description) {
        this.id = id;
        this.name = name;
        this.sourceId = sourceId;
        this.description = description;
    }

    public int compareTo(Object object) {
        CategoryDefinition castedObject = (CategoryDefinition)object;
        int compareTo = Util.compare((Comparable)((Object)this.id), (Comparable)((Object)castedObject.id));
        if (compareTo == 0 && (compareTo = Util.compare((Comparable)((Object)this.name), (Comparable)((Object)castedObject.name))) == 0) {
            compareTo = Util.compare((Comparable)((Object)this.sourceId), (Comparable)((Object)castedObject.sourceId));
        }
        return compareTo;
    }

    public boolean equals(Object object) {
        if (!(object instanceof CategoryDefinition)) {
            return false;
        }
        CategoryDefinition castedObject = (CategoryDefinition)object;
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
}

