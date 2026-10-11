/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.internal.provisional.frameworkadmin.LauncherData
 */
package org.eclipse.equinox.internal.frameworkadmin.equinox;

import java.io.File;
import org.eclipse.equinox.internal.frameworkadmin.equinox.EquinoxManipulatorImpl;
import org.eclipse.equinox.internal.provisional.frameworkadmin.LauncherData;

public class EquinoxLauncherData
extends LauncherData {
    File previousLauncher = null;

    public EquinoxLauncherData(String fwName, String fwVersion, String launcherName, String launcherVersion) {
        super(fwName, fwVersion, launcherName, launcherVersion);
    }

    public void setLauncher(File launcherFile) {
        if (this.previousLauncher == null && launcherFile != null && !launcherFile.equals(this.getLauncher())) {
            this.previousLauncher = EquinoxManipulatorImpl.getLauncherConfigLocation(this);
        }
        super.setLauncher(launcherFile);
    }

    File getPreviousLauncherIni() {
        return this.previousLauncher;
    }
}

