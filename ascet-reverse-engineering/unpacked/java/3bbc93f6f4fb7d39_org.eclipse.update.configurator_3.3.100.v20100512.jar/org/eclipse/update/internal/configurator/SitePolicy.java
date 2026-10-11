/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.update.internal.configurator;

import org.eclipse.update.configurator.IPlatformConfiguration;

public class SitePolicy
implements IPlatformConfiguration.ISitePolicy {
    private int type;
    private String[] list;

    public SitePolicy() {
    }

    public SitePolicy(int type, String[] list) {
        if (type != 0 && type != 1 && type != 2) {
            throw new IllegalArgumentException();
        }
        this.type = type;
        this.list = list == null ? new String[0] : list;
    }

    public int getType() {
        return this.type;
    }

    public String[] getList() {
        return this.list;
    }

    public synchronized void setList(String[] list) {
        this.list = list == null ? new String[0] : list;
    }
}

