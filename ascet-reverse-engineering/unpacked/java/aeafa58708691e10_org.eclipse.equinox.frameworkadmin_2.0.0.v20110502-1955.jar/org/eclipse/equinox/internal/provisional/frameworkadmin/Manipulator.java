/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.provisional.frameworkadmin;

import java.io.IOException;
import org.eclipse.equinox.frameworkadmin.BundleInfo;
import org.eclipse.equinox.internal.provisional.frameworkadmin.BundlesState;
import org.eclipse.equinox.internal.provisional.frameworkadmin.ConfigData;
import org.eclipse.equinox.internal.provisional.frameworkadmin.FrameworkAdminRuntimeException;
import org.eclipse.equinox.internal.provisional.frameworkadmin.LauncherData;

public interface Manipulator {
    public BundlesState getBundlesState() throws FrameworkAdminRuntimeException;

    public ConfigData getConfigData() throws FrameworkAdminRuntimeException;

    public BundleInfo[] getExpectedState() throws IllegalStateException, IOException, FrameworkAdminRuntimeException;

    public LauncherData getLauncherData() throws FrameworkAdminRuntimeException;

    public long getTimeStamp();

    public void initialize();

    public void load() throws IllegalStateException, IOException, FrameworkAdminRuntimeException;

    public void save(boolean var1) throws IOException, FrameworkAdminRuntimeException;

    public void setConfigData(ConfigData var1);

    public void setLauncherData(LauncherData var1);
}

