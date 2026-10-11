/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 */
package org.eclipse.jdt.internal.launching;

import java.io.File;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.jdt.internal.launching.LaunchingMessages;
import org.eclipse.jdt.internal.launching.Standard11xVM;
import org.eclipse.jdt.internal.launching.StandardVMType;
import org.eclipse.jdt.launching.IVMInstall;
import org.eclipse.jdt.launching.LibraryLocation;

public class Standard11xVMType
extends StandardVMType {
    protected IPath getDefaultSystemLibrary(File installLocation) {
        return new Path(installLocation.getPath()).append("lib").append("classes.zip");
    }

    protected IVMInstall doCreateVMInstall(String id) {
        return new Standard11xVM(this, id);
    }

    protected IPath getDefaultSystemLibrarySource(File libLocation) {
        this.setDefaultRootPath("");
        return Path.EMPTY;
    }

    public String getName() {
        return LaunchingMessages.Standard11xVMType_Standard_1_1_x_VM_1;
    }

    protected File getDefaultExtensionDirectory(File installLocation) {
        return null;
    }

    protected File getDefaultEndorsedDirectory(File installLocation) {
        return null;
    }

    public LibraryLocation[] getDefaultLibraryLocations(File installLocation) {
        IPath libPath = this.getDefaultSystemLibrary(installLocation);
        File lib = libPath.toFile();
        if (lib.exists()) {
            return new LibraryLocation[]{new LibraryLocation(libPath, this.getDefaultSystemLibrarySource(lib), this.getDefaultPackageRootPath())};
        }
        return new LibraryLocation[0];
    }

    protected boolean canDetectDefaultSystemLibraries(File javaHome, File javaExecutable) {
        LibraryLocation[] locations = this.getDefaultLibraryLocations(javaHome);
        String version = this.getVMVersion(javaHome, javaExecutable);
        return locations.length > 0 && version.startsWith("1.1");
    }
}

