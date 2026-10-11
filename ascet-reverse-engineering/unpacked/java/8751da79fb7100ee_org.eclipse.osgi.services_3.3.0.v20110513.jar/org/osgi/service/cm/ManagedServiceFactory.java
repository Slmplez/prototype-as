/*
 * Decompiled with CFR 0.152.
 */
package org.osgi.service.cm;

import java.util.Dictionary;
import org.osgi.service.cm.ConfigurationException;

public interface ManagedServiceFactory {
    public String getName();

    public void updated(String var1, Dictionary var2) throws ConfigurationException;

    public void deleted(String var1);
}

