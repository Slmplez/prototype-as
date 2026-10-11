/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.baseadaptor.hooks;

import java.io.IOException;
import java.net.URLConnection;
import java.util.Properties;
import org.eclipse.osgi.baseadaptor.BaseAdaptor;
import org.eclipse.osgi.framework.log.FrameworkLog;
import org.osgi.framework.BundleContext;
import org.osgi.framework.BundleException;

public interface AdaptorHook {
    public void initialize(BaseAdaptor var1);

    public void frameworkStart(BundleContext var1) throws BundleException;

    public void frameworkStop(BundleContext var1) throws BundleException;

    public void frameworkStopping(BundleContext var1);

    public void addProperties(Properties var1);

    public URLConnection mapLocationToURLConnection(String var1) throws IOException;

    public void handleRuntimeError(Throwable var1);

    public FrameworkLog createFrameworkLog();
}

