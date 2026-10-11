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
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Map;
import java.util.Properties;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.equinox.internal.p2.touchpoint.eclipse.Util;
import org.eclipse.equinox.internal.p2.touchpoint.eclipse.actions.Messages;
import org.eclipse.equinox.internal.p2.touchpoint.eclipse.actions.RemoveJVMArgumentAction;
import org.eclipse.equinox.internal.provisional.frameworkadmin.LauncherData;
import org.eclipse.equinox.internal.provisional.frameworkadmin.Manipulator;
import org.eclipse.equinox.p2.engine.spi.ProvisioningAction;
import org.eclipse.osgi.util.NLS;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class AddJVMArgumentAction
extends ProvisioningAction {
    public static final String ID = "addJvmArg";
    protected static final String STORAGE = new StringBuffer("org.eclipse.equinox.internal.p2.touchpoint.eclipse.actions").append(File.separator).append("jvmargs").toString();
    protected static final String XMX = "-Xmx";
    protected static final String XMS = "-Xms";
    protected static final String XX_MAX_PERM_SIZE = "-XX:MaxPermSize=";
    protected static final String PREFIX_USER_VALUE = "eclipse.userDefined:";

    public IStatus execute(Map<String, Object> parameters) {
        String jvmArg = (String)parameters.get("jvmArg");
        if (jvmArg == null) {
            return Util.createError(NLS.bind((String)Messages.parameter_not_set, (Object)"jvmArg", (Object)ID));
        }
        return AddJVMArgumentAction.addArg(jvmArg, parameters);
    }

    public IStatus undo(Map<String, Object> parameters) {
        String jvmArg = (String)parameters.get("jvmArg");
        if (jvmArg == null) {
            return Util.createError(NLS.bind((String)Messages.parameter_not_set, (Object)"jvmArg", (Object)ID));
        }
        return RemoveJVMArgumentAction.removeArg(jvmArg, parameters);
    }

    protected static String getUserArg(Properties storedValues, String flag) {
        return storedValues.getProperty(new StringBuffer(PREFIX_USER_VALUE).append(flag).toString());
    }

    protected static IStatus addArg(String arg, Map<String, Object> parameters) {
        LauncherData launcherData = ((Manipulator)parameters.get("manipulator")).getLauncherData();
        File storageArea = (File)parameters.get("profileDataDirectory");
        try {
            if (arg.startsWith(XMS)) {
                AddJVMArgumentAction.addByteArg(arg, XMS, launcherData, storageArea);
            } else if (arg.startsWith(XMX)) {
                AddJVMArgumentAction.addByteArg(arg, XMX, launcherData, storageArea);
            } else if (arg.startsWith(XX_MAX_PERM_SIZE)) {
                AddJVMArgumentAction.addByteArg(arg, XX_MAX_PERM_SIZE, launcherData, storageArea);
            } else {
                launcherData.addJvmArg(arg);
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

    protected static void addByteArg(String arg, String flag, LauncherData launcherData, File storageArea) throws IOException {
        Properties storedValues = AddJVMArgumentAction.load(storageArea);
        String currentArg = AddJVMArgumentAction.getCurrentArg(flag, launcherData.getJvmArgs());
        AddJVMArgumentAction.detectUserValue(currentArg, flag, storedValues);
        AddJVMArgumentAction.validateValue(arg.substring(flag.length()));
        AddJVMArgumentAction.rememberArg(storedValues, arg.substring(flag.length()), flag);
        launcherData.removeJvmArg(currentArg);
        AddJVMArgumentAction.setToMax(flag, storedValues, launcherData);
        AddJVMArgumentAction.save(storedValues, storageArea);
    }

    protected static void validateValue(String arg) {
        AddJVMArgumentAction.getByteValue(arg, AddJVMArgumentAction.getBytePower(arg));
    }

    protected static void detectUserValue(String currentValue, String flag, Properties storedValues) {
        String maxValue = AddJVMArgumentAction.getMaxValue(AddJVMArgumentAction.getArgs(storedValues, flag));
        if (currentValue == null) {
            AddJVMArgumentAction.setUserArg(storedValues, flag, null);
        } else if (maxValue == null || !maxValue.equals(currentValue.substring(flag.length()))) {
            AddJVMArgumentAction.setUserArg(storedValues, flag, currentValue.substring(flag.length()));
        }
    }

    protected static String getMaxValue(String[] values) {
        if (values == null || values.length == 0) {
            return null;
        }
        int max = 0;
        int i = 1;
        while (i < values.length) {
            if (AddJVMArgumentAction.compareSize(values[max], values[i]) < 0) {
                max = i;
            }
            ++i;
        }
        return values[max];
    }

    protected static void setToMax(String flag, Properties storedValues, LauncherData launcherData) {
        String maxStored = AddJVMArgumentAction.getMaxValue(AddJVMArgumentAction.getArgs(storedValues, flag));
        String userDefined = AddJVMArgumentAction.getUserArg(storedValues, flag);
        if (maxStored != null || userDefined != null) {
            if (maxStored == null) {
                launcherData.addJvmArg(new StringBuffer(String.valueOf(flag)).append(userDefined).toString());
            } else if (userDefined == null) {
                launcherData.addJvmArg(new StringBuffer(String.valueOf(flag)).append(maxStored).toString());
            } else if (AddJVMArgumentAction.compareSize(maxStored, userDefined) > 0) {
                launcherData.addJvmArg(new StringBuffer(String.valueOf(flag)).append(maxStored).toString());
            } else {
                launcherData.addJvmArg(new StringBuffer(String.valueOf(flag)).append(userDefined).toString());
            }
        }
    }

    protected static int compareSize(String a, String b) {
        int aPower = AddJVMArgumentAction.getBytePower(a);
        int bPower = AddJVMArgumentAction.getBytePower(b);
        double aVal = AddJVMArgumentAction.getByteValue(a, aPower);
        double bVal = AddJVMArgumentAction.getByteValue(b, bPower);
        while (aVal > 1024.0) {
            aVal /= 1024.0;
            aPower += 10;
        }
        while (bVal > 1024.0) {
            bVal /= 1024.0;
            bPower += 10;
        }
        if (aPower > bPower && aVal != 0.0) {
            return 1;
        }
        if (aPower < bPower && bVal != 0.0) {
            return -1;
        }
        if (aVal > bVal) {
            return 1;
        }
        if (aVal < bVal) {
            return -1;
        }
        return 0;
    }

    private static double getByteValue(String arg, int power) {
        try {
            if (power == 0) {
                return Integer.parseInt(arg);
            }
            return Integer.parseInt(arg.substring(0, arg.length() - 1));
        }
        catch (NumberFormatException numberFormatException) {
            throw new IllegalArgumentException(NLS.bind((String)Messages.invalid_byte_format, (Object)arg));
        }
    }

    private static int getBytePower(String arg) {
        switch (arg.charAt(arg.length() - 1)) {
            case 'K': 
            case 'k': {
                return 10;
            }
            case 'M': 
            case 'm': {
                return 20;
            }
            case 'G': 
            case 'g': {
                return 30;
            }
        }
        return 0;
    }

    protected static String getCurrentArg(String flag, String[] jvmArgs) {
        int i = 0;
        while (i < jvmArgs.length) {
            if (jvmArgs[i] != null && jvmArgs[i].startsWith(flag)) {
                return jvmArgs[i];
            }
            ++i;
        }
        return null;
    }

    protected static void rememberArg(Properties storedValues, String value, String flag) {
        String argString = storedValues.getProperty(flag);
        if (argString == null) {
            argString = "";
        } else if (argString.length() > 0) {
            argString = new StringBuffer(String.valueOf(argString)).append(',').toString();
        }
        argString = new StringBuffer(String.valueOf(argString)).append(value).toString();
        if (argString.length() != 0) {
            storedValues.put(flag, argString);
        }
    }

    protected static String[] getArgs(Properties storage, String flag) {
        String argString = storage.getProperty(flag);
        if (argString == null || argString.length() == 0) {
            return new String[0];
        }
        ArrayList<String> list = new ArrayList<String>();
        int i = 0;
        String arg = "";
        while (i < argString.length()) {
            char c;
            if ((c = argString.charAt(i++)) == ',') {
                list.add(arg);
                arg = "";
                continue;
            }
            arg = new StringBuffer(String.valueOf(arg)).append(c).toString();
        }
        list.add(arg);
        return list.toArray(new String[list.size()]);
    }

    private static void setUserArg(Properties storage, String flag, String value) {
        if (value == null) {
            storage.remove(new StringBuffer(PREFIX_USER_VALUE).append(flag).toString());
        } else {
            storage.setProperty(new StringBuffer(PREFIX_USER_VALUE).append(flag).toString(), value);
        }
    }

    protected static Properties load(File storageArea) throws IOException {
        Properties args = new Properties();
        File file = new File(storageArea, STORAGE);
        if (file.exists()) {
            FileInputStream in = null;
            try {
                try {
                    in = new FileInputStream(file);
                    args.load(in);
                }
                finally {
                    if (in != null) {
                        in.close();
                    }
                }
            }
            catch (FileNotFoundException fileNotFoundException) {}
        }
        return args;
    }

    protected static void save(Properties args, File storageArea) throws IOException {
        FileOutputStream out = null;
        File file = new File(storageArea, STORAGE);
        if (!file.exists()) {
            file.getParentFile().mkdirs();
        }
        try {
            try {
                out = new FileOutputStream(file);
                args.store(out, null);
            }
            finally {
                if (out != null) {
                    out.close();
                }
            }
        }
        catch (FileNotFoundException fileNotFoundException) {
            throw new IllegalStateException(NLS.bind((String)Messages.unable_to_open_file, (Object)file));
        }
    }
}

