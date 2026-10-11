/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.osgi.framework.ServiceReference
 */
package org.osgi.service.cm;

import java.util.Dictionary;
import org.osgi.framework.ServiceReference;

public interface ConfigurationPlugin {
    public static final String CM_TARGET = "cm.target";
    public static final String CM_RANKING = "service.cmRanking";

    public void modifyConfiguration(ServiceReference var1, Dictionary var2);
}

