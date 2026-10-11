/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.provisional.configuratormanipulator;

import java.io.IOException;
import org.eclipse.equinox.frameworkadmin.BundleInfo;
import org.eclipse.equinox.internal.provisional.frameworkadmin.Manipulator;

public interface ConfiguratorManipulator {
    public static final String SERVICE_PROP_KEY_CONFIGURATOR_BUNDLESYMBOLICNAME = "org.eclipse.equinox.configurator.BundleSymbolicName";

    public BundleInfo[] save(Manipulator var1, boolean var2) throws IOException;

    public void updateBundles(Manipulator var1) throws IOException;

    public void cleanup(Manipulator var1);
}

