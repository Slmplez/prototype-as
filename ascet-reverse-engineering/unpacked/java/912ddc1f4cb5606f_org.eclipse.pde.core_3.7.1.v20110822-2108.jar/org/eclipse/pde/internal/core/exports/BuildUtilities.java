/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jdt.launching.IVMInstall
 *  org.eclipse.jdt.launching.JavaRuntime
 *  org.eclipse.jdt.launching.LibraryLocation
 *  org.eclipse.jdt.launching.environments.IExecutionEnvironment
 *  org.eclipse.jdt.launching.environments.IExecutionEnvironmentsManager
 */
package org.eclipse.pde.internal.core.exports;

import org.eclipse.jdt.launching.IVMInstall;
import org.eclipse.jdt.launching.JavaRuntime;
import org.eclipse.jdt.launching.LibraryLocation;
import org.eclipse.jdt.launching.environments.IExecutionEnvironment;
import org.eclipse.jdt.launching.environments.IExecutionEnvironmentsManager;

public class BuildUtilities {
    public static String getBootClasspath() {
        return BuildUtilities.getBootClasspath(JavaRuntime.getDefaultVMInstall());
    }

    public static String getBootClasspath(String environmentID) {
        IExecutionEnvironmentsManager manager = JavaRuntime.getExecutionEnvironmentsManager();
        IExecutionEnvironment environment = manager.getEnvironment(environmentID);
        IVMInstall vm = null;
        if (environment != null && (vm = environment.getDefaultVM()) == null) {
            IVMInstall[] installs = environment.getCompatibleVMs();
            int i = 0;
            while (i < installs.length) {
                IVMInstall install = installs[i];
                if (environment.isStrictlyCompatible(install)) {
                    vm = install;
                    break;
                }
                ++i;
            }
            if (vm == null && installs.length > 0) {
                vm = installs[0];
            }
        }
        if (vm == null) {
            vm = JavaRuntime.getDefaultVMInstall();
        }
        return BuildUtilities.getBootClasspath(vm);
    }

    public static String getBootClasspath(IVMInstall install) {
        StringBuffer buffer = new StringBuffer();
        LibraryLocation[] locations = JavaRuntime.getLibraryLocations((IVMInstall)install);
        int i = 0;
        while (i < locations.length) {
            buffer.append(locations[i].getSystemLibraryPath().toOSString());
            if (i < locations.length - 1) {
                buffer.append(";");
            }
            ++i;
        }
        return buffer.toString();
    }
}

