/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.provisional.frameworkadmin;

import java.io.File;
import java.io.IOException;
import org.eclipse.equinox.internal.provisional.frameworkadmin.FrameworkAdminRuntimeException;
import org.eclipse.equinox.internal.provisional.frameworkadmin.Manipulator;

public interface FrameworkAdmin {
    public static final String SERVICE_PROP_KEY_FW_NAME = "org.eclipse.equinox.frameworkhandler.framework.name";
    public static final String SERVICE_PROP_KEY_FW_VERSION = "org.eclipse.equinox.frameworkhandler.framework.version";
    public static final String SERVICE_PROP_KEY_LAUNCHER_NAME = "org.eclipse.equinox.frameworkhandler.launcher.name";
    public static final String SERVICE_PROP_KEY_LAUNCHER_VERSION = "org.eclipse.equinox.frameworkhandler.launcher.version";
    public static final String SERVICE_PROP_KEY_RUNNING_SYSTEM_FLAG = "org.eclipse.equinox.frameworkhandler.runningfwflag";

    public Manipulator getManipulator();

    public Manipulator getRunningManipulator();

    public Process launch(Manipulator var1, File var2) throws IllegalArgumentException, IOException, FrameworkAdminRuntimeException;

    public boolean isActive();
}

