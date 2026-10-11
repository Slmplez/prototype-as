/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.service.resolver.VersionRange
 */
package org.eclipse.pde.internal.core.project;

import org.eclipse.osgi.service.resolver.VersionRange;
import org.eclipse.pde.core.project.IHostDescription;
import org.eclipse.pde.internal.core.project.RequirementSpecification;

public class HostDescriptoin
extends RequirementSpecification
implements IHostDescription {
    public HostDescriptoin(String name, VersionRange range) {
        super(name, range, false, false);
    }
}

