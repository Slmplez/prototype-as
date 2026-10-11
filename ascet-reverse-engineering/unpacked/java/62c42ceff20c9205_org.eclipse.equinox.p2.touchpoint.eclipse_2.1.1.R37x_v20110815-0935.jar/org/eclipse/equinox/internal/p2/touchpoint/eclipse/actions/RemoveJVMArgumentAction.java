/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.equinox.internal.provisional.frameworkadmin.LauncherData
 *  org.eclipse.equinox.internal.provisional.frameworkadmin.Manipulator
 *  org.eclipse.equinox.p2.engine.spi.ProvisioningAction
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.equinox.internal.p2.touchpoint.eclipse.actions;

import java.io.File;
import java.io.IOException;
import java.util.Map;
import java.util.Properties;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.equinox.internal.p2.touchpoint.eclipse.Util;
import org.eclipse.equinox.internal.p2.touchpoint.eclipse.actions.AddJVMArgumentAction;
import org.eclipse.equinox.internal.p2.touchpoint.eclipse.actions.Messages;
import org.eclipse.equinox.internal.provisional.frameworkadmin.LauncherData;
import org.eclipse.equinox.internal.provisional.frameworkadmin.Manipulator;
import org.eclipse.equinox.p2.engine.spi.ProvisioningAction;
import org.eclipse.osgi.util.NLS;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class RemoveJVMArgumentAction
extends ProvisioningAction {
    public static final String ID = "removeJvmArg";

    public IStatus execute(Map<String, Object> parameters) {
        String jvmArg = (String)parameters.get("jvmArg");
        if (jvmArg == null) {
            return Util.createError(NLS.bind((String)Messages.parameter_not_set, (Object)"jvmArg", (Object)ID));
        }
        RemoveJVMArgumentAction.removeArg(jvmArg, parameters);
        return Status.OK_STATUS;
    }

    public IStatus undo(Map<String, Object> parameters) {
        String jvmArg = (String)parameters.get("jvmArg");
        if (jvmArg == null) {
            return Util.createError(NLS.bind((String)Messages.parameter_not_set, (Object)"jvmArg", (Object)ID));
        }
        AddJVMArgumentAction.addArg(jvmArg, parameters);
        return Status.OK_STATUS;
    }

    public static IStatus removeArg(String arg, Map<String, Object> parameters) {
        LauncherData launcherData = ((Manipulator)parameters.get("manipulator")).getLauncherData();
        File storageArea = (File)parameters.get("profileDataDirectory");
        try {
            if (arg.startsWith("-Xms")) {
                RemoveJVMArgumentAction.removeByteArg(arg, "-Xms", launcherData, storageArea);
            } else if (arg.startsWith("-Xmx")) {
                RemoveJVMArgumentAction.removeByteArg(arg, "-Xmx", launcherData, storageArea);
            } else if (arg.startsWith("-XX:MaxPermSize=")) {
                RemoveJVMArgumentAction.removeByteArg(arg, "-XX:MaxPermSize=", launcherData, storageArea);
            } else {
                launcherData.removeJvmArg(arg);
            }
        }
        catch (IOException e) {
            return new Status(4, "org.eclipse.equinox.p2.touchpoint.eclipse", Messages.error_processing_vmargs, (Throwable)e);
        }
        catch (IllegalArgumentException e) {
            return new Status(4, "org.eclipse.equinox.p2.touchpoint.eclipse", Messages.error_processing_vmargs, (Throwable)e);
        }
        return Status.OK_STATUS;
    }

    private static void removeByteArg(String arg, String flag, LauncherData launcherData, File storageArea) throws IOException {
        Properties storedValues = AddJVMArgumentAction.load(storageArea);
        String argValue = arg.substring(flag.length());
        String currentArg = AddJVMArgumentAction.getCurrentArg(flag, launcherData.getJvmArgs());
        AddJVMArgumentAction.detectUserValue(currentArg, flag, storedValues);
        AddJVMArgumentAction.validateValue(arg.substring(flag.length()));
        RemoveJVMArgumentAction.removeArg(storedValues, argValue, flag);
        launcherData.removeJvmArg(currentArg);
        AddJVMArgumentAction.setToMax(flag, storedValues, launcherData);
        AddJVMArgumentAction.save(storedValues, storageArea);
    }

    private static void removeArg(Properties storage, String value, String flag) {
        String[] args = AddJVMArgumentAction.getArgs(storage, flag);
        int i = 0;
        while (i < args.length) {
            if (args[i].equals(value)) {
                args[i] = null;
                break;
            }
            ++i;
        }
        RemoveJVMArgumentAction.setArgs(storage, flag, args);
    }

    private static void setArgs(Properties storedValues, String flag, String[] args) {
        if (args == null || args.length == 0) {
            storedValues.remove(flag);
        } else {
            String argString = "";
            int i = 0;
            while (i < args.length) {
                if (args[i] != null) {
                    argString = new StringBuffer(String.valueOf(argString)).append(args[i]).append(',').toString();
                }
                ++i;
            }
            if (argString.length() > 0) {
                storedValues.setProperty(flag, argString.substring(0, argString.length() - 1));
            } else {
                storedValues.remove(flag);
            }
        }
    }
}

