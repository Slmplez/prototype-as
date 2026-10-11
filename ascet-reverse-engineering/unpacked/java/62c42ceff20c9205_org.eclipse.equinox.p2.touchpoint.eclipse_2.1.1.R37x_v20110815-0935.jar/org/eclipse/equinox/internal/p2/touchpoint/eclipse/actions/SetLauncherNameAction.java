/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.equinox.internal.p2.engine.Profile
 *  org.eclipse.equinox.internal.provisional.frameworkadmin.LauncherData
 *  org.eclipse.equinox.internal.provisional.frameworkadmin.Manipulator
 *  org.eclipse.equinox.p2.engine.IProfile
 *  org.eclipse.equinox.p2.engine.spi.ProvisioningAction
 */
package org.eclipse.equinox.internal.p2.touchpoint.eclipse.actions;

import java.util.Map;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.equinox.internal.p2.engine.Profile;
import org.eclipse.equinox.internal.p2.touchpoint.eclipse.Util;
import org.eclipse.equinox.internal.provisional.frameworkadmin.LauncherData;
import org.eclipse.equinox.internal.provisional.frameworkadmin.Manipulator;
import org.eclipse.equinox.p2.engine.IProfile;
import org.eclipse.equinox.p2.engine.spi.ProvisioningAction;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class SetLauncherNameAction
extends ProvisioningAction {
    public static final String ID = "setLauncherName";

    public IStatus execute(Map<String, Object> parameters) {
        Manipulator manipulator = (Manipulator)parameters.get("manipulator");
        IProfile profile = (IProfile)parameters.get("profile");
        this.getMemento().put("eclipse.touchpoint.launcherName", (Object)profile.getProperty("eclipse.touchpoint.launcherName"));
        String launcherName = (String)parameters.get("name");
        SetLauncherNameAction.setLauncher(manipulator, profile, launcherName);
        return Status.OK_STATUS;
    }

    public IStatus undo(Map<String, Object> parameters) {
        Manipulator manipulator = (Manipulator)parameters.get("manipulator");
        IProfile profile = (IProfile)parameters.get("profile");
        String previousLauncherName = (String)this.getMemento().get("eclipse.touchpoint.launcherName");
        SetLauncherNameAction.setLauncher(manipulator, profile, previousLauncherName);
        return Status.OK_STATUS;
    }

    private static void setLauncher(Manipulator manipulator, IProfile profile, String launcherName) {
        LauncherData launcherData = manipulator.getLauncherData();
        if (launcherName != null) {
            ((Profile)profile).setProperty("eclipse.touchpoint.launcherName", launcherName);
        } else {
            ((Profile)profile).removeProperty("eclipse.touchpoint.launcherName");
        }
        launcherData.setLauncher(Util.getLauncherPath(profile));
    }
}

