/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.framework.adaptor;

import java.io.IOException;
import java.net.URL;
import java.util.Collection;
import java.util.Enumeration;
import org.osgi.framework.BundleException;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ClassLoaderDelegate {
    public Class<?> findClass(String var1) throws ClassNotFoundException;

    public URL findResource(String var1);

    public Enumeration<URL> findResources(String var1) throws IOException;

    public String findLibrary(String var1);

    public boolean isLazyTriggerSet();

    public void setLazyTrigger() throws BundleException;

    public Collection<String> listResources(String var1, String var2, int var3);
}

