/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.framework.adaptor;

import java.io.IOException;
import java.net.URL;
import java.net.URLConnection;
import java.util.Enumeration;
import java.util.List;
import java.util.Properties;
import org.eclipse.osgi.framework.adaptor.BundleData;
import org.eclipse.osgi.framework.adaptor.BundleOperation;
import org.eclipse.osgi.framework.adaptor.BundleWatcher;
import org.eclipse.osgi.framework.adaptor.EventPublisher;
import org.eclipse.osgi.framework.adaptor.PermissionStorage;
import org.eclipse.osgi.framework.log.FrameworkLog;
import org.eclipse.osgi.service.resolver.PlatformAdmin;
import org.eclipse.osgi.service.resolver.State;
import org.osgi.framework.BundleContext;
import org.osgi.framework.BundleException;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface FrameworkAdaptor {
    public static final String FRAMEWORK_SYMBOLICNAME = "org.eclipse.osgi";

    public void initialize(EventPublisher var1);

    public void initializeStorage() throws IOException;

    public void compactStorage() throws IOException;

    public Properties getProperties();

    public BundleData[] getInstalledBundles();

    public URLConnection mapLocationToURLConnection(String var1) throws BundleException;

    public BundleOperation installBundle(String var1, URLConnection var2);

    public BundleOperation updateBundle(BundleData var1, URLConnection var2);

    public BundleOperation uninstallBundle(BundleData var1);

    public long getTotalFreeSpace() throws IOException;

    public PermissionStorage getPermissionStorage() throws IOException;

    public void frameworkStart(BundleContext var1) throws BundleException;

    public void frameworkStop(BundleContext var1) throws BundleException;

    public void frameworkStopping(BundleContext var1);

    public int getInitialBundleStartLevel();

    public void setInitialBundleStartLevel(int var1);

    public FrameworkLog getFrameworkLog();

    public BundleData createSystemBundleData() throws BundleException;

    public BundleWatcher getBundleWatcher();

    public PlatformAdmin getPlatformAdmin();

    public State getState();

    public ClassLoader getBundleClassLoaderParent();

    public void handleRuntimeError(Throwable var1);

    public Enumeration<URL> findEntries(List<BundleData> var1, String var2, String var3, int var4);
}

