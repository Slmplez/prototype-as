/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal.statushandlers;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.eclipse.ui.internal.statushandlers.StatusHandlerDescriptor;

class StatusHandlerDescriptorsMap {
    private final String ASTERISK = "*";
    private HashMap map = new HashMap();

    public void addHandlerDescriptor(StatusHandlerDescriptor handlerDescriptor) {
        this.add(this.map, handlerDescriptor.getPrefix(), handlerDescriptor);
    }

    private void add(Map map, String prefix, StatusHandlerDescriptor handlerDescriptor) {
        if (prefix == null) {
            if (map.get("*") == null) {
                map.put("*", new ArrayList());
            }
            ((List)map.get("*")).add(handlerDescriptor);
        } else {
            int delimIndex = prefix.indexOf(".");
            String pre = null;
            String post = null;
            if (delimIndex != -1) {
                pre = prefix.substring(0, delimIndex);
                if (delimIndex < prefix.length() - 1) {
                    post = prefix.substring(delimIndex + 1);
                }
            } else {
                pre = prefix;
            }
            if (map.get(pre) == null) {
                map.put(pre, new HashMap());
            }
            this.add((Map)map.get(pre), post, handlerDescriptor);
        }
    }

    public void clear() {
        this.map.clear();
    }

    public List getHandlerDescriptors(String pluginId) {
        return this.get(pluginId, this.map);
    }

    private List get(String pluginId, Map map) {
        if (pluginId == null) {
            return this.getAsteriskList(map);
        }
        int delimIndex = pluginId.indexOf(".");
        String pre = null;
        String post = null;
        if (delimIndex != -1) {
            pre = pluginId.substring(0, delimIndex);
            if (delimIndex < pluginId.length() - 1) {
                post = pluginId.substring(delimIndex + 1);
            }
        } else {
            pre = pluginId;
        }
        if (map.get(pre) == null) {
            return this.getAsteriskList(map);
        }
        return this.get(post, (Map)map.get(pre));
    }

    private List getAsteriskList(Map map) {
        Object list = map.get("*");
        if (list != null) {
            return (List)list;
        }
        return null;
    }
}

