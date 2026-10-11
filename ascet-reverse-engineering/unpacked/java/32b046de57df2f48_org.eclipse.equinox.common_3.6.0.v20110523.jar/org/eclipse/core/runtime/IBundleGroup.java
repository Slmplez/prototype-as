/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.osgi.framework.Bundle
 */
package org.eclipse.core.runtime;

import org.osgi.framework.Bundle;

public interface IBundleGroup {
    public String getIdentifier();

    public String getName();

    public String getVersion();

    public String getDescription();

    public String getProviderName();

    public Bundle[] getBundles();

    public String getProperty(String var1);
}

