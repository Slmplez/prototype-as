/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.baseadaptor.loader;

import java.net.URL;
import java.security.ProtectionDomain;
import org.eclipse.osgi.baseadaptor.bundlefile.BundleEntry;
import org.eclipse.osgi.baseadaptor.bundlefile.BundleFile;
import org.eclipse.osgi.baseadaptor.loader.ClasspathEntry;
import org.eclipse.osgi.baseadaptor.loader.ClasspathManager;
import org.eclipse.osgi.framework.adaptor.BundleClassLoader;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface BaseClassLoader
extends BundleClassLoader {
    public ProtectionDomain getDomain();

    public ClasspathEntry createClassPathEntry(BundleFile var1, ProtectionDomain var2);

    public Class<?> defineClass(String var1, byte[] var2, ClasspathEntry var3, BundleEntry var4);

    public Class<?> publicFindLoaded(String var1);

    public Object publicGetPackage(String var1);

    public Object publicDefinePackage(String var1, String var2, String var3, String var4, String var5, String var6, String var7, URL var8);

    public ClasspathManager getClasspathManager();
}

