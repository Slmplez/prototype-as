/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.framework.adaptor;

import java.io.FileNotFoundException;
import java.net.URL;
import java.util.Enumeration;
import org.eclipse.osgi.framework.adaptor.BundleClassLoader;
import org.eclipse.osgi.framework.adaptor.BundleData;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ClassLoaderDelegateHook {
    public Class<?> preFindClass(String var1, BundleClassLoader var2, BundleData var3) throws ClassNotFoundException;

    public Class<?> postFindClass(String var1, BundleClassLoader var2, BundleData var3) throws ClassNotFoundException;

    public URL preFindResource(String var1, BundleClassLoader var2, BundleData var3) throws FileNotFoundException;

    public URL postFindResource(String var1, BundleClassLoader var2, BundleData var3) throws FileNotFoundException;

    public Enumeration<URL> preFindResources(String var1, BundleClassLoader var2, BundleData var3) throws FileNotFoundException;

    public Enumeration<URL> postFindResources(String var1, BundleClassLoader var2, BundleData var3) throws FileNotFoundException;

    public String preFindLibrary(String var1, BundleClassLoader var2, BundleData var3) throws FileNotFoundException;

    public String postFindLibrary(String var1, BundleClassLoader var2, BundleData var3);
}

