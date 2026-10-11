/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.p2.metadata.Version
 */
package org.eclipse.equinox.p2.publisher;

import org.eclipse.equinox.p2.metadata.Version;

public interface IPublisherAdvice {
    public boolean isApplicable(String var1, boolean var2, String var3, Version var4);
}

