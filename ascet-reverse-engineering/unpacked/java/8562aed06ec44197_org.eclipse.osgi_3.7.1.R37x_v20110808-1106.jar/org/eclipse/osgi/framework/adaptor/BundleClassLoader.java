/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.framework.adaptor;

import java.io.IOException;
import java.net.URL;
import java.security.ProtectionDomain;
import java.util.Collection;
import java.util.Enumeration;
import java.util.List;
import org.eclipse.osgi.framework.adaptor.BundleData;
import org.eclipse.osgi.framework.adaptor.ClassLoaderDelegate;
import org.osgi.framework.BundleReference;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface BundleClassLoader
extends BundleReference {
    public void initialize();

    public URL findLocalResource(String var1);

    public Enumeration<URL> findLocalResources(String var1);

    public Class<?> findLocalClass(String var1) throws ClassNotFoundException;

    public URL getResource(String var1);

    public Enumeration<URL> getResources(String var1) throws IOException;

    public Class<?> loadClass(String var1) throws ClassNotFoundException;

    public void close();

    public void attachFragment(BundleData var1, ProtectionDomain var2, String[] var3);

    public ClassLoaderDelegate getDelegate();

    public ClassLoader getParent();

    public List<URL> findEntries(String var1, String var2, int var3);

    public Collection<String> listResources(String var1, String var2, int var3);

    public Collection<String> listLocalResources(String var1, String var2, int var3);
}

