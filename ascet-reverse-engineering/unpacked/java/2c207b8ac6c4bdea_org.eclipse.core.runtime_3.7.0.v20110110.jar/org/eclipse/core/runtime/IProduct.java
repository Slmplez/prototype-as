/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.osgi.framework.Bundle
 */
package org.eclipse.core.runtime;

import org.osgi.framework.Bundle;

public interface IProduct {
    public String getApplication();

    public String getName();

    public String getDescription();

    public String getId();

    public String getProperty(String var1);

    public Bundle getDefiningBundle();
}

