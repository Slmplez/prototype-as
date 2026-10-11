/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.statushandlers;

import java.util.Map;
import org.eclipse.ui.statushandlers.StatusAdapter;

public abstract class AbstractStatusHandler {
    private Map params;
    private String id;

    public abstract void handle(StatusAdapter var1, int var2);

    public Map getParams() {
        return this.params;
    }

    public Object getParam(Object key) {
        if (this.params != null) {
            return this.params.get(key);
        }
        return null;
    }

    public void setParams(Map params) {
        this.params = params;
    }

    public String getId() {
        return this.id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public boolean supportsNotification(int type) {
        return false;
    }
}

