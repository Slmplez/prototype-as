/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.jdt.launching.IVMInstall
 *  org.eclipse.jdt.launching.IVMInstallType
 *  org.eclipse.jdt.launching.JavaRuntime
 *  org.eclipse.jdt.launching.environments.IExecutionEnvironment
 *  org.eclipse.jdt.launching.environments.IExecutionEnvironmentsManager
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.pde.internal.core.util;

import java.util.ArrayList;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.jdt.launching.IVMInstall;
import org.eclipse.jdt.launching.IVMInstallType;
import org.eclipse.jdt.launching.JavaRuntime;
import org.eclipse.jdt.launching.environments.IExecutionEnvironment;
import org.eclipse.jdt.launching.environments.IExecutionEnvironmentsManager;
import org.eclipse.osgi.util.NLS;
import org.eclipse.pde.internal.core.PDECoreMessages;

public class VMUtil {
    public static IVMInstall[] getAllVMInstances() {
        ArrayList<IVMInstall> res = new ArrayList<IVMInstall>();
        IVMInstallType[] types = JavaRuntime.getVMInstallTypes();
        int i = 0;
        while (i < types.length) {
            IVMInstall[] installs = types[i].getVMInstalls();
            int k = 0;
            while (k < installs.length) {
                res.add(installs[k]);
                ++k;
            }
            ++i;
        }
        return res.toArray(new IVMInstall[res.size()]);
    }

    public static String[] getVMInstallNames() {
        IVMInstall[] installs = VMUtil.getAllVMInstances();
        String[] names = new String[installs.length];
        int i = 0;
        while (i < installs.length) {
            names[i] = installs[i].getName();
            ++i;
        }
        return names;
    }

    public static String getDefaultVMInstallName() {
        IVMInstall install = JavaRuntime.getDefaultVMInstall();
        if (install != null) {
            return install.getName();
        }
        return "";
    }

    public static String getDefaultVMInstallLocation() {
        IVMInstall install = JavaRuntime.getDefaultVMInstall();
        if (install != null) {
            return install.getInstallLocation().getAbsolutePath();
        }
        return null;
    }

    public static IVMInstall getVMInstall(String name) {
        if (name != null) {
            IVMInstall[] installs = VMUtil.getAllVMInstances();
            int i = 0;
            while (i < installs.length) {
                if (installs[i].getName().equals(name)) {
                    return installs[i];
                }
                ++i;
            }
        }
        return JavaRuntime.getDefaultVMInstall();
    }

    public static IExecutionEnvironment[] getExecutionEnvironments() {
        IExecutionEnvironmentsManager manager = JavaRuntime.getExecutionEnvironmentsManager();
        return manager.getExecutionEnvironments();
    }

    public static IExecutionEnvironment getExecutionEnvironment(String id) {
        IExecutionEnvironmentsManager manager = JavaRuntime.getExecutionEnvironmentsManager();
        return manager.getEnvironment(id);
    }

    public static String getVMInstallName(IExecutionEnvironment ee) throws CoreException {
        IPath containerPath = JavaRuntime.newJREContainerPath((IExecutionEnvironment)ee);
        IVMInstall vmi = JavaRuntime.getVMInstall((IPath)containerPath);
        if (vmi == null) {
            throw new CoreException(VMUtil.createErrorStatus(NLS.bind((String)PDECoreMessages.VMHelper_noJreForExecEnv, (Object)ee.getId())));
        }
        return vmi.getName();
    }

    public static IStatus createErrorStatus(String message) {
        return new Status(4, "org.eclipse.pde.core", 0, message, null);
    }
}

