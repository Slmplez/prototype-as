/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IResource
 */
package org.eclipse.team.core.variants;

import org.eclipse.core.resources.IResource;
import org.eclipse.team.core.variants.IResourceVariant;

public interface IResourceVariantComparator {
    public boolean compare(IResource var1, IResourceVariant var2);

    public boolean compare(IResourceVariant var1, IResourceVariant var2);

    public boolean isThreeWay();
}

