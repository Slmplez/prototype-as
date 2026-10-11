/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.equinox.frameworkadmin.BundleInfo
 *  org.eclipse.equinox.internal.p2.core.helpers.LogHelper
 *  org.eclipse.equinox.internal.provisional.frameworkadmin.BundlesState
 *  org.eclipse.equinox.internal.provisional.frameworkadmin.ConfigData
 *  org.eclipse.equinox.internal.provisional.frameworkadmin.FrameworkAdmin
 *  org.eclipse.equinox.internal.provisional.frameworkadmin.FrameworkAdminRuntimeException
 *  org.eclipse.equinox.internal.provisional.frameworkadmin.LauncherData
 *  org.eclipse.equinox.internal.provisional.frameworkadmin.Manipulator
 *  org.eclipse.equinox.p2.core.IProvisioningAgent
 *  org.eclipse.equinox.p2.engine.IProfile
 *  org.osgi.framework.Filter
 *  org.osgi.framework.InvalidSyntaxException
 *  org.osgi.util.tracker.ServiceTracker
 */
package org.eclipse.equinox.internal.p2.touchpoint.eclipse;

import java.io.IOException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.equinox.frameworkadmin.BundleInfo;
import org.eclipse.equinox.internal.p2.core.helpers.LogHelper;
import org.eclipse.equinox.internal.p2.touchpoint.eclipse.Activator;
import org.eclipse.equinox.internal.p2.touchpoint.eclipse.Messages;
import org.eclipse.equinox.internal.p2.touchpoint.eclipse.Util;
import org.eclipse.equinox.internal.provisional.frameworkadmin.BundlesState;
import org.eclipse.equinox.internal.provisional.frameworkadmin.ConfigData;
import org.eclipse.equinox.internal.provisional.frameworkadmin.FrameworkAdmin;
import org.eclipse.equinox.internal.provisional.frameworkadmin.FrameworkAdminRuntimeException;
import org.eclipse.equinox.internal.provisional.frameworkadmin.LauncherData;
import org.eclipse.equinox.internal.provisional.frameworkadmin.Manipulator;
import org.eclipse.equinox.p2.core.IProvisioningAgent;
import org.eclipse.equinox.p2.engine.IProfile;
import org.osgi.framework.Filter;
import org.osgi.framework.InvalidSyntaxException;
import org.osgi.util.tracker.ServiceTracker;

public class LazyManipulator
implements Manipulator {
    private static final String FILTER_OBJECTCLASS;
    private static final String filterFwName = "(org.eclipse.equinox.frameworkhandler.framework.name=Equinox)";
    private static final String filterLauncherName = "(org.eclipse.equinox.frameworkhandler.launcher.name=Eclipse.exe)";
    private static final String filterFwAdmin;
    private Manipulator manipulator;
    private final IProfile profile;
    private final IProvisioningAgent agent;
    static /* synthetic */ Class class$0;

    static {
        StringBuffer stringBuffer = new StringBuffer("(objectClass=");
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.equinox.internal.provisional.frameworkadmin.FrameworkAdmin");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        FILTER_OBJECTCLASS = stringBuffer.append(clazz.getName()).append(')').toString();
        filterFwAdmin = "(&" + FILTER_OBJECTCLASS + filterFwName + filterLauncherName + ')';
    }

    public LazyManipulator(IProvisioningAgent agent, IProfile profile) {
        this.profile = profile;
        this.agent = agent;
    }

    private void loadDelegate() {
        if (this.manipulator != null) {
            return;
        }
        this.manipulator = this.getFrameworkManipulator();
        if (this.manipulator == null) {
            throw new IllegalStateException(Messages.failed_acquire_framework_manipulator);
        }
        LauncherData launcherData = this.manipulator.getLauncherData();
        launcherData.setFwConfigLocation(Util.getConfigurationFolder(this.profile));
        launcherData.setLauncher(Util.getLauncherPath(this.profile));
        launcherData.setLauncherConfigLocation(Util.getLauncherConfigLocation(this.profile));
        launcherData.setOS(Util.getOSFromProfile(this.profile));
        launcherData.setHome(Util.getInstallFolder(this.profile));
        try {
            this.manipulator.load();
        }
        catch (IllegalStateException e) {
            LogHelper.log((IStatus)Util.createError(Messages.error_loading_manipulator, e));
            throw new IllegalStateException(Messages.error_loading_manipulator);
        }
        catch (FrameworkAdminRuntimeException e) {
            LogHelper.log((IStatus)Util.createError(Messages.error_loading_manipulator, (Exception)((Object)e)));
        }
        catch (IOException e) {
            LogHelper.log((IStatus)Util.createError(Messages.error_loading_manipulator, e));
            throw new IllegalStateException(Messages.error_loading_manipulator);
        }
        this.manipulator.getConfigData().setProperty("eclipse.p2.profile", this.profile.getProfileId());
        this.manipulator.getConfigData().setProperty("eclipse.p2.data.area", Util.getAgentLocation(this.agent).getRootLocation().toString());
    }

    public static FrameworkAdmin getFrameworkAdmin() {
        ServiceTracker fwAdminTracker = null;
        try {
            FrameworkAdmin fwAdmin;
            Filter filter = Activator.getContext().createFilter(filterFwAdmin);
            fwAdminTracker = new ServiceTracker(Activator.getContext(), filter, null);
            fwAdminTracker.open();
            FrameworkAdmin frameworkAdmin = fwAdmin = (FrameworkAdmin)fwAdminTracker.getService();
            return frameworkAdmin;
        }
        catch (InvalidSyntaxException invalidSyntaxException) {
            return null;
        }
        finally {
            if (fwAdminTracker != null) {
                fwAdminTracker.close();
            }
        }
    }

    private Manipulator getFrameworkManipulator() {
        FrameworkAdmin fwAdmin = LazyManipulator.getFrameworkAdmin();
        if (fwAdmin != null) {
            return fwAdmin.getManipulator();
        }
        return null;
    }

    public void save(boolean backup) throws IOException, FrameworkAdminRuntimeException {
        if (this.manipulator != null) {
            this.manipulator.save(backup);
        }
    }

    public BundlesState getBundlesState() throws FrameworkAdminRuntimeException {
        this.loadDelegate();
        return this.manipulator.getBundlesState();
    }

    public ConfigData getConfigData() throws FrameworkAdminRuntimeException {
        this.loadDelegate();
        return this.manipulator.getConfigData();
    }

    public BundleInfo[] getExpectedState() throws IllegalStateException, IOException, FrameworkAdminRuntimeException {
        this.loadDelegate();
        return this.manipulator.getExpectedState();
    }

    public LauncherData getLauncherData() throws FrameworkAdminRuntimeException {
        this.loadDelegate();
        return this.manipulator.getLauncherData();
    }

    public long getTimeStamp() {
        this.loadDelegate();
        return this.manipulator.getTimeStamp();
    }

    public void initialize() {
        this.loadDelegate();
        this.manipulator.initialize();
    }

    public void load() throws IllegalStateException, FrameworkAdminRuntimeException {
        this.loadDelegate();
    }

    public void setConfigData(ConfigData configData) {
        this.loadDelegate();
        this.manipulator.setConfigData(configData);
    }

    public void setLauncherData(LauncherData launcherData) {
        this.loadDelegate();
        this.manipulator.setLauncherData(launcherData);
    }
}

