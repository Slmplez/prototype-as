/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.service.resolver;

import java.util.Comparator;
import java.util.Dictionary;
import org.eclipse.osgi.service.resolver.BaseDescription;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.osgi.service.resolver.ExportPackageDescription;
import org.eclipse.osgi.service.resolver.State;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface Resolver {
    public void resolve(BundleDescription[] var1, Dictionary<Object, Object>[] var2);

    public void flush();

    public State getState();

    public void setState(State var1);

    public void bundleAdded(BundleDescription var1);

    public void bundleRemoved(BundleDescription var1, boolean var2);

    public void bundleUpdated(BundleDescription var1, BundleDescription var2, boolean var3);

    public ExportPackageDescription resolveDynamicImport(BundleDescription var1, String var2);

    public void setSelectionPolicy(Comparator<BaseDescription> var1);

    public Comparator<BaseDescription> getSelectionPolicy();
}

