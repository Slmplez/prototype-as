/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.p2.metadata.Version
 */
package org.eclipse.equinox.p2.publisher.actions;

import org.eclipse.equinox.p2.metadata.Version;
import org.eclipse.equinox.p2.publisher.IPublisherAdvice;

public interface IVersionAdvice
extends IPublisherAdvice {
    public static final String NS_BUNDLE = "bundle";
    public static final String NS_FEATURE = "feature";
    public static final String NS_ROOT = "root";

    public Version getVersion(String var1, String var2);
}

