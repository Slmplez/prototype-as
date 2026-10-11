/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.osgi.framework.Version
 */
package org.eclipse.pde.core.project;

import org.osgi.framework.Version;

public interface IPackageExportDescription {
    public String getName();

    public Version getVersion();

    public String[] getFriends();

    public boolean isApi();
}

