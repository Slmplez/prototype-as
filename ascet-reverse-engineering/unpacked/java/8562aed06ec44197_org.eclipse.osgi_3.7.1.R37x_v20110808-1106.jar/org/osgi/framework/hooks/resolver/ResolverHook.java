/*
 * Decompiled with CFR 0.152.
 */
package org.osgi.framework.hooks.resolver;

import java.util.Collection;
import org.osgi.framework.wiring.BundleCapability;
import org.osgi.framework.wiring.BundleRequirement;
import org.osgi.framework.wiring.BundleRevision;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ResolverHook {
    public void filterResolvable(Collection<BundleRevision> var1);

    public void filterSingletonCollisions(BundleCapability var1, Collection<BundleCapability> var2);

    public void filterMatches(BundleRequirement var1, Collection<BundleCapability> var2);

    public void end();
}

