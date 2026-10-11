/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.util;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public class XMLComponentRegistry {
    private static XMLComponentRegistry fPinstance;
    public static final String F_NAME = "n";
    public static final String F_DESCRIPTION = "d";
    public static final int F_SCHEMA_COMPONENT = 2;
    public static final int F_ELEMENT_COMPONENT = 4;
    public static final int F_ATTRIBUTE_COMPONENT = 8;
    private static ArrayList fConsumers;
    private Map fSchemaComponentMap = Collections.synchronizedMap(new HashMap());
    private Map fAttributeComponentMap = Collections.synchronizedMap(new HashMap());
    private Map fElementComponentMap = Collections.synchronizedMap(new HashMap());

    static {
        fConsumers = new ArrayList();
    }

    private XMLComponentRegistry() {
    }

    public static XMLComponentRegistry Instance() {
        if (fPinstance == null) {
            fPinstance = new XMLComponentRegistry();
        }
        return fPinstance;
    }

    public void dispose() {
        if (this.fSchemaComponentMap != null) {
            this.fSchemaComponentMap.clear();
        }
        if (this.fAttributeComponentMap != null) {
            this.fAttributeComponentMap.clear();
        }
        if (this.fElementComponentMap != null) {
            this.fElementComponentMap.clear();
        }
    }

    public void putDescription(String key, String value, int mapType) {
        this.putValue(F_DESCRIPTION, key, value, mapType);
    }

    public void putName(String key, String value, int mapType) {
        this.putValue(F_NAME, key, value, mapType);
    }

    private Map getTargetMap(int mask) {
        Map targetMap = null;
        if (mask == 2) {
            targetMap = this.fSchemaComponentMap;
        } else if (mask == 8) {
            targetMap = this.fAttributeComponentMap;
        } else if (mask == 4) {
            targetMap = this.fElementComponentMap;
        }
        return targetMap;
    }

    private void putValue(String valueKey, String key, String value, int mapType) {
        if (key != null) {
            Map targetMap = this.getTargetMap(mapType);
            if (targetMap == null) {
                return;
            }
            HashMap previousValue = (HashMap)targetMap.get(key);
            if (previousValue == null) {
                HashMap<String, String> newValue = new HashMap<String, String>();
                newValue.put(valueKey, value);
                targetMap.put(key, newValue);
            } else {
                previousValue.put(valueKey, value);
            }
        }
    }

    public void put(String key, HashMap value, int mapType) {
        if (key != null) {
            Map targetMap = this.getTargetMap(mapType);
            if (targetMap == null) {
                return;
            }
            targetMap.put(key, value);
        }
    }

    public HashMap get(String key, int mapType) {
        Map targetMap = this.getTargetMap(mapType);
        if (targetMap == null) {
            return null;
        }
        return (HashMap)targetMap.get(key);
    }

    private String getValue(String valueKey, String key, int mapType) {
        HashMap map;
        if (key != null && (map = this.get(key, mapType)) != null) {
            return (String)map.get(valueKey);
        }
        return null;
    }

    public String getDescription(String key, int mapType) {
        return this.getValue(F_DESCRIPTION, key, mapType);
    }

    public String getName(String key, int mapType) {
        return this.getValue(F_NAME, key, mapType);
    }

    public void connect(Object consumer) {
        if (!fConsumers.contains(consumer)) {
            fConsumers.add(consumer);
        }
    }

    public void disconnect(Object consumer) {
        fConsumers.remove(consumer);
        if (fConsumers.size() == 0) {
            this.dispose();
        }
    }
}

