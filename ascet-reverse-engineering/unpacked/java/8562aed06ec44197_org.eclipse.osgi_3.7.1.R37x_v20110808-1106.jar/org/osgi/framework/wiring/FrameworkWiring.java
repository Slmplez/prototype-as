/*
 * Decompiled with CFR 0.152.
 */
package org.osgi.framework.wiring;

import java.util.Collection;
import org.osgi.framework.Bundle;
import org.osgi.framework.BundleReference;
import org.osgi.framework.FrameworkListener;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface FrameworkWiring
extends BundleReference {
    public void refreshBundles(Collection<Bundle> var1, FrameworkListener[] var2);

    public boolean resolveBundles(Collection<Bundle> var1);

    public Collection<Bundle> getRemovalPendingBundles();

    public Collection<Bundle> getDependencyClosure(Collection<Bundle> var1);
}

