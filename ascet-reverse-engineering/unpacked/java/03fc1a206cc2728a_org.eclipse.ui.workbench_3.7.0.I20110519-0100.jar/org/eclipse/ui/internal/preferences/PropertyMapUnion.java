/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal.preferences;

import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.eclipse.ui.internal.preferences.IPropertyMap;
import org.eclipse.ui.internal.util.Util;

public class PropertyMapUnion
implements IPropertyMap {
    private Map values;
    static /* synthetic */ Class class$0;

    public Set keySet() {
        return this.values.keySet();
    }

    public Object getValue(String propertyId, Class propertyType) {
        PropertyInfo info = (PropertyInfo)this.values.get(propertyId);
        if (info == null) {
            return null;
        }
        Object value = info.value;
        if (propertyType.isInstance(value)) {
            return value;
        }
        return null;
    }

    public boolean isCommonProperty(String propertyId) {
        PropertyInfo info = (PropertyInfo)this.values.get(propertyId);
        if (info == null) {
            return false;
        }
        return info.commonAttribute;
    }

    public boolean propertyExists(String propertyId) {
        return this.values.get(propertyId) != null;
    }

    public void setValue(String propertyId, Object newValue) {
        PropertyInfo info = new PropertyInfo(newValue, true);
        this.values.put(propertyId, info);
    }

    public void addMap(IPropertyMap toAdd) {
        Object value;
        PropertyInfo localInfo;
        Set keySet = toAdd.keySet();
        Iterator iter = this.keySet().iterator();
        while (iter.hasNext()) {
            String key = (String)iter.next();
            localInfo = (PropertyInfo)this.values.get(key);
            if (localInfo == null) continue;
            if (toAdd.propertyExists(key)) {
                Class<?> clazz = class$0;
                if (clazz == null) {
                    try {
                        clazz = Class.forName("java.lang.Object");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                value = toAdd.getValue(key, clazz);
                Class<?> clazz2 = class$0;
                if (clazz2 == null) {
                    try {
                        clazz2 = Class.forName("java.lang.Object");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                if (!Util.equals(value, toAdd.getValue(key, clazz2))) {
                    localInfo.value = null;
                }
                localInfo.commonAttribute = localInfo.commonAttribute && toAdd.isCommonProperty(key);
                continue;
            }
            localInfo.commonAttribute = false;
        }
        iter = keySet.iterator();
        while (iter.hasNext()) {
            String element = (String)iter.next();
            localInfo = (PropertyInfo)this.values.get(element);
            if (localInfo != null) continue;
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = Class.forName("java.lang.Object");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            value = toAdd.getValue(element, clazz);
            boolean isCommon = toAdd.isCommonProperty(element);
            localInfo = new PropertyInfo(value, isCommon);
            this.values.put(element, localInfo);
        }
    }

    public void removeValue(String propertyId) {
        this.values.remove(propertyId);
    }

    private static final class PropertyInfo {
        Object value;
        boolean commonAttribute;

        PropertyInfo(Object value, boolean commonAttribute) {
            this.value = value;
            this.commonAttribute = commonAttribute;
        }
    }
}

