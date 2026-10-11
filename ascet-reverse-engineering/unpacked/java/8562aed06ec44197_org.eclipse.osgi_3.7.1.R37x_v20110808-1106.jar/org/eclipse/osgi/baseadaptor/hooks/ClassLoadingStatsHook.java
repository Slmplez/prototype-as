/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.baseadaptor.hooks;

import java.net.URL;
import org.eclipse.osgi.baseadaptor.bundlefile.BundleEntry;
import org.eclipse.osgi.baseadaptor.loader.ClasspathEntry;
import org.eclipse.osgi.baseadaptor.loader.ClasspathManager;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ClassLoadingStatsHook {
    public void preFindLocalClass(String var1, ClasspathManager var2) throws ClassNotFoundException;

    public void postFindLocalClass(String var1, Class<?> var2, ClasspathManager var3) throws ClassNotFoundException;

    public void preFindLocalResource(String var1, ClasspathManager var2);

    public void postFindLocalResource(String var1, URL var2, ClasspathManager var3);

    public void recordClassDefine(String var1, Class<?> var2, byte[] var3, ClasspathEntry var4, BundleEntry var5, ClasspathManager var6);
}

