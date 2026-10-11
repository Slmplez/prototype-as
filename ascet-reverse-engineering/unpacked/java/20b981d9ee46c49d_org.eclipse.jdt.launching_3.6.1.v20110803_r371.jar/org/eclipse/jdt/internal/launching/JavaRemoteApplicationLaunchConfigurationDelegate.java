/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.NullProgressMonitor
 *  org.eclipse.debug.core.ILaunch
 *  org.eclipse.debug.core.ILaunchConfiguration
 *  org.eclipse.debug.core.model.IDebugTarget
 */
package org.eclipse.jdt.internal.launching;

import com.ibm.icu.text.MessageFormat;
import java.util.Map;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.debug.core.ILaunch;
import org.eclipse.debug.core.ILaunchConfiguration;
import org.eclipse.debug.core.model.IDebugTarget;
import org.eclipse.jdt.internal.launching.LaunchingMessages;
import org.eclipse.jdt.launching.AbstractJavaLaunchConfigurationDelegate;
import org.eclipse.jdt.launching.IJavaLaunchConfigurationConstants;
import org.eclipse.jdt.launching.IVMConnector;
import org.eclipse.jdt.launching.JavaRuntime;

public class JavaRemoteApplicationLaunchConfigurationDelegate
extends AbstractJavaLaunchConfigurationDelegate {
    public void launch(ILaunchConfiguration configuration, String mode, ILaunch launch, IProgressMonitor monitor) throws CoreException {
        if (monitor == null) {
            monitor = new NullProgressMonitor();
        }
        monitor.beginTask(MessageFormat.format((String)LaunchingMessages.JavaRemoteApplicationLaunchConfigurationDelegate_Attaching_to__0_____1, (Object[])new String[]{configuration.getName()}), 3);
        if (monitor.isCanceled()) {
            return;
        }
        try {
            monitor.subTask(LaunchingMessages.JavaRemoteApplicationLaunchConfigurationDelegate_Verifying_launch_attributes____1);
            String connectorId = this.getVMConnectorId(configuration);
            IVMConnector connector = null;
            connector = connectorId == null ? JavaRuntime.getDefaultVMConnector() : JavaRuntime.getVMConnector(connectorId);
            if (connector == null) {
                this.abort(LaunchingMessages.JavaRemoteApplicationLaunchConfigurationDelegate_Connector_not_specified_2, null, 119);
            }
            Map argMap = configuration.getAttribute(IJavaLaunchConfigurationConstants.ATTR_CONNECT_MAP, null);
            int connectTimeout = JavaRuntime.getPreferences().getInt(JavaRuntime.PREF_CONNECT_TIMEOUT);
            argMap.put("timeout", Integer.toString(connectTimeout));
            if (monitor.isCanceled()) {
                return;
            }
            monitor.worked(1);
            monitor.subTask(LaunchingMessages.JavaRemoteApplicationLaunchConfigurationDelegate_Creating_source_locator____2);
            this.setDefaultSourceLocator(launch, configuration);
            monitor.worked(1);
            connector.connect(argMap, monitor, launch);
            if (monitor.isCanceled()) {
                IDebugTarget[] debugTargets = launch.getDebugTargets();
                int i = 0;
                while (i < debugTargets.length) {
                    IDebugTarget target = debugTargets[i];
                    if (target.canDisconnect()) {
                        target.disconnect();
                    }
                    ++i;
                }
                return;
            }
        }
        finally {
            monitor.done();
        }
    }
}

