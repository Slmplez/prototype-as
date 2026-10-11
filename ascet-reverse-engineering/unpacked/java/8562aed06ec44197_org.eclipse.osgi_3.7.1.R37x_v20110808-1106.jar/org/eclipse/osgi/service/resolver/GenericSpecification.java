/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.service.resolver;

import org.eclipse.osgi.service.resolver.GenericDescription;
import org.eclipse.osgi.service.resolver.VersionConstraint;

public interface GenericSpecification
extends VersionConstraint {
    public static final int RESOLUTION_OPTIONAL = 1;
    public static final int RESOLUTION_MULTIPLE = 2;

    public String getMatchingFilter();

    public String getType();

    public int getResolution();

    public GenericDescription[] getSuppliers();
}

