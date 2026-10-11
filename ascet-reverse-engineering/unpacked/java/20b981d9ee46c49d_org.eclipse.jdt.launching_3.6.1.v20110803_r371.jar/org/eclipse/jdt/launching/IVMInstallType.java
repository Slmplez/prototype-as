/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 */
package org.eclipse.jdt.launching;

import java.io.File;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.jdt.launching.IVMInstall;
import org.eclipse.jdt.launching.LibraryLocation;

public interface IVMInstallType {
    public IVMInstall createVMInstall(String var1);

    public IVMInstall findVMInstall(String var1);

    public IVMInstall findVMInstallByName(String var1);

    public void disposeVMInstall(String var1);

    public IVMInstall[] getVMInstalls();

    public String getName();

    public String getId();

    public IStatus validateInstallLocation(File var1);

    public File detectInstallLocation();

    public LibraryLocation[] getDefaultLibraryLocations(File var1);
}

