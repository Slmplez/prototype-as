/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.util.ILogger
 *  org.eclipse.core.databinding.util.Policy
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.osgi.framework.log.FrameworkLog
 *  org.eclipse.osgi.framework.log.FrameworkLogEntry
 *  org.osgi.framework.BundleActivator
 *  org.osgi.framework.BundleContext
 *  org.osgi.util.tracker.ServiceTracker
 */
package org.eclipse.core.internal.databinding;

import java.util.ArrayList;
import org.eclipse.core.databinding.util.ILogger;
import org.eclipse.core.databinding.util.Policy;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.osgi.framework.log.FrameworkLog;
import org.eclipse.osgi.framework.log.FrameworkLogEntry;
import org.osgi.framework.BundleActivator;
import org.osgi.framework.BundleContext;
import org.osgi.util.tracker.ServiceTracker;

public class Activator
implements BundleActivator {
    public static final String PLUGIN_ID = "org.eclipse.core.databinding";
    private static volatile ServiceTracker _frameworkLogTracker;
    static /* synthetic */ Class class$0;

    public void start(BundleContext context) throws Exception {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.osgi.framework.log.FrameworkLog");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        _frameworkLogTracker = new ServiceTracker(context, clazz.getName(), null);
        _frameworkLogTracker.open();
        Policy.setLog((ILogger)new ILogger(){

            public void log(IStatus status) {
                FrameworkLog log;
                ServiceTracker frameworkLogTracker = _frameworkLogTracker;
                FrameworkLog frameworkLog = log = frameworkLogTracker == null ? null : (FrameworkLog)frameworkLogTracker.getService();
                if (log != null) {
                    log.log(Activator.this.createLogEntry(status));
                } else {
                    System.err.println(String.valueOf(status.getPlugin()) + " - " + status.getCode() + " - " + status.getMessage());
                    if (status.getException() != null) {
                        status.getException().printStackTrace(System.err);
                    }
                }
            }
        });
    }

    FrameworkLogEntry createLogEntry(IStatus status) {
        IStatus[] children;
        IStatus coreStatus;
        int stackCode;
        Throwable t = status.getException();
        ArrayList<FrameworkLogEntry> childlist = new ArrayList<FrameworkLogEntry>();
        int n = stackCode = t instanceof CoreException ? 1 : 0;
        if (stackCode == 1 && (coreStatus = ((CoreException)t).getStatus()) != null) {
            childlist.add(this.createLogEntry(coreStatus));
        }
        if (status.isMultiStatus()) {
            children = status.getChildren();
            int i = 0;
            while (i < children.length) {
                childlist.add(this.createLogEntry(children[i]));
                ++i;
            }
        }
        children = childlist.size() == 0 ? null : childlist.toArray(new FrameworkLogEntry[childlist.size()]);
        return new FrameworkLogEntry(status.getPlugin(), status.getSeverity(), status.getCode(), status.getMessage(), stackCode, t, (FrameworkLogEntry[])children);
    }

    public void stop(BundleContext context) throws Exception {
        if (_frameworkLogTracker != null) {
            _frameworkLogTracker.close();
            _frameworkLogTracker = null;
        }
    }
}

