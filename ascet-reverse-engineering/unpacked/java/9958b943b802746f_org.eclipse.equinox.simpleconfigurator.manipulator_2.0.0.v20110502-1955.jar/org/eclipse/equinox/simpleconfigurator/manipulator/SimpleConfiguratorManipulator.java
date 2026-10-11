/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.frameworkadmin.BundleInfo
 *  org.osgi.framework.BundleContext
 */
package org.eclipse.equinox.simpleconfigurator.manipulator;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URI;
import org.eclipse.equinox.frameworkadmin.BundleInfo;
import org.osgi.framework.BundleContext;

public interface SimpleConfiguratorManipulator {
    public static final String BUNDLES_INFO_PATH = "org.eclipse.equinox.simpleconfigurator/bundles.info";
    public static final String SOURCE_INFO_PATH = "org.eclipse.equinox.source/source.info";
    public static final String SOURCE_INFO = new String("source.info");
    public static final String SERVICE_PROP_VALUE_CONFIGURATOR_SYMBOLICNAME = "org.eclipse.equinox.simpleconfigurator";

    public BundleInfo[] loadConfiguration(BundleContext var1, String var2) throws IOException;

    public BundleInfo[] loadConfiguration(InputStream var1, URI var2) throws IOException;

    public void saveConfiguration(BundleInfo[] var1, OutputStream var2, URI var3) throws IOException;

    public void saveConfiguration(BundleInfo[] var1, File var2, URI var3) throws IOException;
}

