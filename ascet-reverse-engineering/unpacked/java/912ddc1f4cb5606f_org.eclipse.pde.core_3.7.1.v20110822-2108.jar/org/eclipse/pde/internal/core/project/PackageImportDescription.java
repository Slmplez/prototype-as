/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.service.resolver.VersionRange
 */
package org.eclipse.pde.internal.core.project;

import org.eclipse.osgi.service.resolver.VersionRange;
import org.eclipse.pde.core.project.IPackageImportDescription;
import org.eclipse.pde.internal.core.project.RequirementSpecification;

public class PackageImportDescription
extends RequirementSpecification
implements IPackageImportDescription {
    public PackageImportDescription(String name, VersionRange range, boolean optional) {
        super(name, range, false, optional);
    }
}

