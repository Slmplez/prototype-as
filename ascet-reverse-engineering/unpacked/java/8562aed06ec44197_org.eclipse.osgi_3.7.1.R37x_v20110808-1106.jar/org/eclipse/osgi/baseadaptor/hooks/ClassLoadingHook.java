/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.baseadaptor.hooks;

import java.security.ProtectionDomain;
import java.util.ArrayList;
import org.eclipse.osgi.baseadaptor.BaseData;
import org.eclipse.osgi.baseadaptor.bundlefile.BundleEntry;
import org.eclipse.osgi.baseadaptor.loader.BaseClassLoader;
import org.eclipse.osgi.baseadaptor.loader.ClasspathEntry;
import org.eclipse.osgi.baseadaptor.loader.ClasspathManager;
import org.eclipse.osgi.framework.adaptor.BundleProtectionDomain;
import org.eclipse.osgi.framework.adaptor.ClassLoaderDelegate;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ClassLoadingHook {
    public byte[] processClass(String var1, byte[] var2, ClasspathEntry var3, BundleEntry var4, ClasspathManager var5);

    public boolean addClassPathEntry(ArrayList<ClasspathEntry> var1, String var2, ClasspathManager var3, BaseData var4, ProtectionDomain var5);

    public String findLibrary(BaseData var1, String var2);

    public ClassLoader getBundleClassLoaderParent();

    public BaseClassLoader createClassLoader(ClassLoader var1, ClassLoaderDelegate var2, BundleProtectionDomain var3, BaseData var4, String[] var5);

    public void initializedClassLoader(BaseClassLoader var1, BaseData var2);
}

