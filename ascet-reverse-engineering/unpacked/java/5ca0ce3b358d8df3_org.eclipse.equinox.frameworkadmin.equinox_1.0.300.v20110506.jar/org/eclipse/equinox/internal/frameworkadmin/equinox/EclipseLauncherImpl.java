/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.internal.frameworkadmin.utils.SimpleBundlesState
 *  org.eclipse.equinox.internal.frameworkadmin.utils.Utils
 *  org.eclipse.equinox.internal.provisional.frameworkadmin.FrameworkAdmin
 *  org.eclipse.equinox.internal.provisional.frameworkadmin.FrameworkAdminRuntimeException
 *  org.eclipse.equinox.internal.provisional.frameworkadmin.LauncherData
 *  org.eclipse.equinox.internal.provisional.frameworkadmin.Manipulator
 */
package org.eclipse.equinox.internal.frameworkadmin.equinox;

import java.io.File;
import java.io.IOException;
import java.util.LinkedList;
import org.eclipse.equinox.internal.frameworkadmin.equinox.EquinoxFwAdminImpl;
import org.eclipse.equinox.internal.frameworkadmin.equinox.EquinoxManipulatorImpl;
import org.eclipse.equinox.internal.frameworkadmin.equinox.Log;
import org.eclipse.equinox.internal.frameworkadmin.equinox.Messages;
import org.eclipse.equinox.internal.frameworkadmin.utils.SimpleBundlesState;
import org.eclipse.equinox.internal.frameworkadmin.utils.Utils;
import org.eclipse.equinox.internal.provisional.frameworkadmin.FrameworkAdmin;
import org.eclipse.equinox.internal.provisional.frameworkadmin.FrameworkAdminRuntimeException;
import org.eclipse.equinox.internal.provisional.frameworkadmin.LauncherData;
import org.eclipse.equinox.internal.provisional.frameworkadmin.Manipulator;

public class EclipseLauncherImpl {
    EquinoxFwAdminImpl fwAdmin = null;

    static String getStringOfCmd(String[] cmdarray) {
        StringBuffer sb = new StringBuffer();
        int i = 0;
        while (i < cmdarray.length) {
            sb.append(cmdarray[i]);
            sb.append(" ");
            ++i;
        }
        return sb.toString();
    }

    EclipseLauncherImpl(EquinoxFwAdminImpl fwAdmin) {
        this.fwAdmin = fwAdmin;
    }

    public Process launch(Manipulator manipulator, File cwd) throws IllegalArgumentException, IOException, FrameworkAdminRuntimeException {
        SimpleBundlesState.checkAvailability((FrameworkAdmin)this.fwAdmin);
        Log.log(4, (Object)this, "launch(Manipulator , File )", "");
        LauncherData launcherData = manipulator.getLauncherData();
        if (launcherData.getLauncher() == null) {
            return this.launchInMemory(manipulator, cwd);
        }
        return this.launchByLauncher(manipulator, cwd);
    }

    private Process launchByLauncher(Manipulator manipulator, File cwd) throws IOException {
        LauncherData launcherData = manipulator.getLauncherData();
        if (launcherData.getLauncher() == null) {
            throw new IllegalStateException(Messages.exception_launcherLocationNotSet);
        }
        String[] cmdarray = new String[]{launcherData.getLauncher().getAbsolutePath()};
        if (cwd == null) {
            cwd = launcherData.getLauncher().getParentFile();
        }
        Process process = Runtime.getRuntime().exec(cmdarray, null, cwd);
        Log.log(4, "\t" + EclipseLauncherImpl.getStringOfCmd(cmdarray));
        return process;
    }

    private Process launchInMemory(Manipulator manipulator, File cwd) throws IOException {
        LauncherData launcherData = manipulator.getLauncherData();
        Utils.checkAbsoluteFile((File)launcherData.getFwJar(), (String)"fwJar");
        Utils.checkAbsoluteDir((File)cwd, (String)"cwd");
        LinkedList<String> cmdList = new LinkedList<String>();
        if (launcherData.getJvm() != null) {
            cmdList.add(launcherData.getJvm().getAbsolutePath());
        } else {
            cmdList.add("java");
        }
        if (launcherData.getJvmArgs() != null) {
            int i = 0;
            while (i < launcherData.getJvmArgs().length) {
                cmdList.add(launcherData.getJvmArgs()[i]);
                ++i;
            }
        }
        cmdList.add("-jar");
        cmdList.add(Utils.getRelativePath((File)launcherData.getFwJar(), (File)cwd));
        EquinoxManipulatorImpl.checkConsistencyOfFwConfigLocAndFwPersistentDataLoc(launcherData);
        cmdList.add("-configuration");
        cmdList.add(Utils.getRelativePath((File)launcherData.getFwPersistentDataLocation(), (File)cwd));
        if (launcherData.isClean()) {
            cmdList.add("-clean");
        }
        String[] cmdarray = new String[cmdList.size()];
        cmdList.toArray(cmdarray);
        Log.log(4, "In CWD = " + cwd + "\n\t" + EclipseLauncherImpl.getStringOfCmd(cmdarray));
        Process process = Runtime.getRuntime().exec(cmdarray, null, cwd);
        return process;
    }
}

