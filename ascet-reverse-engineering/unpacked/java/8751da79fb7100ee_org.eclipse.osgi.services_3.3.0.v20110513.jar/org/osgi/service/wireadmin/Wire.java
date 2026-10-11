/*
 * Decompiled with CFR 0.152.
 */
package org.osgi.service.wireadmin;

import java.util.Dictionary;

public interface Wire {
    public boolean isValid();

    public boolean isConnected();

    public Class[] getFlavors();

    public void update(Object var1);

    public Object poll();

    public Object getLastValue();

    public Dictionary getProperties();

    public String[] getScope();

    public boolean hasScope(String var1);
}

