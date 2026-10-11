/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.launching;

import java.io.File;
import java.net.URL;
import org.eclipse.jdt.launching.IVMInstallType;
import org.eclipse.jdt.launching.IVMRunner;
import org.eclipse.jdt.launching.LibraryLocation;

public interface IVMInstall {
    public IVMRunner getVMRunner(String var1);

    public String getId();

    public String getName();

    public void setName(String var1);

    public File getInstallLocation();

    public void setInstallLocation(File var1);

    public IVMInstallType getVMInstallType();

    public LibraryLocation[] getLibraryLocations();

    public void setLibraryLocations(LibraryLocation[] var1);

    public void setJavadocLocation(URL var1);

    public URL getJavadocLocation();

    public String[] getVMArguments();

    public void setVMArguments(String[] var1);
}

