/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.service.resolver.VersionRange
 */
package org.eclipse.pde.core.project;

import org.eclipse.osgi.service.resolver.VersionRange;

public interface IHostDescription {
    public String getName();

    public VersionRange getVersionRange();
}

