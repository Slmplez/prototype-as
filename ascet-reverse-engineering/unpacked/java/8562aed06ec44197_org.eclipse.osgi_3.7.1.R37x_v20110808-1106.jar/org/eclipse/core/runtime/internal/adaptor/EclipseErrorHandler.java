/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.runtime.internal.adaptor;

import java.io.IOException;
import java.net.URLConnection;
import java.util.Properties;
import org.eclipse.core.runtime.internal.adaptor.EclipseAdaptorMsg;
import org.eclipse.osgi.baseadaptor.BaseAdaptor;
import org.eclipse.osgi.baseadaptor.HookConfigurator;
import org.eclipse.osgi.baseadaptor.HookRegistry;
import org.eclipse.osgi.baseadaptor.hooks.AdaptorHook;
import org.eclipse.osgi.framework.internal.core.FrameworkProperties;
import org.eclipse.osgi.framework.log.FrameworkLog;
import org.eclipse.osgi.framework.log.FrameworkLogEntry;
import org.osgi.framework.BundleContext;
import org.osgi.framework.BundleException;

public class EclipseErrorHandler
implements AdaptorHook,
HookConfigurator {
    private static final String PROP_EXITONERROR = "eclipse.exitOnError";
    private BaseAdaptor adaptor;

    public void frameworkStart(BundleContext context) throws BundleException {
    }

    public void frameworkStop(BundleContext context) throws BundleException {
    }

    public void frameworkStopping(BundleContext context) {
    }

    public void addProperties(Properties properties) {
    }

    public URLConnection mapLocationToURLConnection(String location) throws IOException {
        return null;
    }

    private boolean isFatalException(Throwable error) {
        if (error instanceof VirtualMachineError) {
            return true;
        }
        return error instanceof ThreadDeath;
    }

    public void handleRuntimeError(Throwable error) {
        boolean exitOnError = false;
        try {
            try {
                exitOnError = Boolean.valueOf(FrameworkProperties.getProperty(PROP_EXITONERROR, "true"));
                String message = EclipseAdaptorMsg.ECLIPSE_ADAPTOR_RUNTIME_ERROR;
                if (exitOnError && this.isFatalException(error)) {
                    message = String.valueOf(message) + ' ' + EclipseAdaptorMsg.ECLIPSE_ADAPTOR_EXITING;
                }
                FrameworkLogEntry logEntry = new FrameworkLogEntry("org.eclipse.osgi", 4, 0, message, 0, error, null);
                this.adaptor.getFrameworkLog().log(logEntry);
            }
            catch (Throwable t) {
                try {
                    error.printStackTrace();
                    t.printStackTrace();
                }
                catch (Throwable throwable) {}
                if (exitOnError && this.isFatalException(error)) {
                    System.exit(13);
                }
            }
        }
        finally {
            if (exitOnError && this.isFatalException(error)) {
                System.exit(13);
            }
        }
    }

    public void addHooks(HookRegistry hookRegistry) {
        hookRegistry.addAdaptorHook(this);
    }

    public FrameworkLog createFrameworkLog() {
        return null;
    }

    public void initialize(BaseAdaptor initAdaptor) {
        this.adaptor = initAdaptor;
    }
}

