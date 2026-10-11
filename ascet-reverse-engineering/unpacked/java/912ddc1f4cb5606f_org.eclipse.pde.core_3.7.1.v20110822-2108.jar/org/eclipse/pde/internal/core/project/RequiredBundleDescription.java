/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.service.resolver.VersionRange
 */
package org.eclipse.pde.internal.core.project;

import org.eclipse.osgi.service.resolver.VersionRange;
import org.eclipse.pde.core.project.IRequiredBundleDescription;
import org.eclipse.pde.internal.core.project.RequirementSpecification;

public class RequiredBundleDescription
extends RequirementSpecification
implements IRequiredBundleDescription {
    public RequiredBundleDescription(String name, VersionRange range, boolean reexport, boolean optional) {
        super(name, range, reexport, optional);
    }
}

