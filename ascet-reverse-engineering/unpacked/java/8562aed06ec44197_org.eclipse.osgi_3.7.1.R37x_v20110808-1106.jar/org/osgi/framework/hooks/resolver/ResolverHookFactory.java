/*
 * Decompiled with CFR 0.152.
 */
package org.osgi.framework.hooks.resolver;

import java.util.Collection;
import org.osgi.framework.hooks.resolver.ResolverHook;
import org.osgi.framework.wiring.BundleRevision;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ResolverHookFactory {
    public ResolverHook begin(Collection<BundleRevision> var1);
}

