/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.module;

import org.eclipse.osgi.internal.module.CompositeResolveHelper;
import org.eclipse.osgi.service.resolver.BundleDescription;

public interface CompositeResolveHelperRegistry {
    public CompositeResolveHelper getCompositeResolveHelper(BundleDescription var1);
}

