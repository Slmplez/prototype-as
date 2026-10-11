/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.framework.adaptor;

import java.io.File;
import java.io.IOException;
import java.net.URL;
import java.util.Dictionary;
import java.util.Enumeration;
import org.eclipse.osgi.framework.adaptor.BundleClassLoader;
import org.eclipse.osgi.framework.adaptor.BundleProtectionDomain;
import org.eclipse.osgi.framework.adaptor.ClassLoaderDelegate;
import org.osgi.framework.Bundle;
import org.osgi.framework.BundleException;
import org.osgi.framework.BundleReference;
import org.osgi.framework.Version;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface BundleData
extends BundleReference {
    public static final int TYPE_FRAGMENT = 1;
    public static final int TYPE_FRAMEWORK_EXTENSION = 2;
    public static final int TYPE_BOOTCLASSPATH_EXTENSION = 4;
    public static final int TYPE_SINGLETON = 8;
    public static final int TYPE_EXTCLASSPATH_EXTENSION = 16;
    public static final int TYPE_COMPOSITEBUNDLE = 32;
    public static final int TYPE_SURROGATEBUNDLE = 64;

    public BundleClassLoader createClassLoader(ClassLoaderDelegate var1, BundleProtectionDomain var2, String[] var3);

    public URL getEntry(String var1);

    public Enumeration<String> getEntryPaths(String var1);

    public String findLibrary(String var1);

    public void installNativeCode(String[] var1) throws BundleException;

    public File getDataFile(String var1);

    public Dictionary<String, String> getManifest() throws BundleException;

    public long getBundleID();

    public String getLocation();

    public long getLastModified();

    public void close() throws IOException;

    public void open() throws IOException;

    public void setBundle(Bundle var1);

    public int getStartLevel();

    public int getStatus();

    public void setStartLevel(int var1);

    public void setStatus(int var1);

    public void save() throws IOException;

    public String getSymbolicName();

    public Version getVersion();

    public int getType();

    public String[] getClassPath() throws BundleException;

    public String getActivator();

    public String getExecutionEnvironment();

    public String getDynamicImports();

    public Enumeration<URL> findLocalResources(String var1);
}

