/*
 * Decompiled with CFR 0.152.
 */
package org.osgi.service.framework;

import java.util.Map;
import org.osgi.framework.BundleException;
import org.osgi.service.framework.CompositeBundle;

public interface CompositeBundleFactory {
    public static final String COMPOSITE_SERVICE_FILTER_IMPORT = "CompositeServiceFilter-Import";
    public static final String COMPOSITE_SERVICE_FILTER_EXPORT = "CompositeServiceFilter-Export";

    public CompositeBundle installCompositeBundle(Map var1, String var2, Map var3) throws BundleException;
}

