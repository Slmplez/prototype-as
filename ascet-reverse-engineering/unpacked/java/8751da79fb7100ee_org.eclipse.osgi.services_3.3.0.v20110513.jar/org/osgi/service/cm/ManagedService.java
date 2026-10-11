/*
 * Decompiled with CFR 0.152.
 */
package org.osgi.service.cm;

import java.util.Dictionary;
import org.osgi.service.cm.ConfigurationException;

public interface ManagedService {
    public void updated(Dictionary var1) throws ConfigurationException;
}

