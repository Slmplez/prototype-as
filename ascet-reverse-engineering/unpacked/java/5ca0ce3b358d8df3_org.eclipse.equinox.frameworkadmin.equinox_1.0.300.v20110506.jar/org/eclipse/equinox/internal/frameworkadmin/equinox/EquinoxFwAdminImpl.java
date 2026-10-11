/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.internal.provisional.configuratormanipulator.ConfiguratorManipulator
 *  org.eclipse.equinox.internal.provisional.configuratormanipulator.ConfiguratorManipulatorFactory
 *  org.eclipse.equinox.internal.provisional.frameworkadmin.FrameworkAdmin
 *  org.eclipse.equinox.internal.provisional.frameworkadmin.FrameworkAdminRuntimeException
 *  org.eclipse.equinox.internal.provisional.frameworkadmin.Manipulator
 *  org.eclipse.osgi.service.resolver.PlatformAdmin
 *  org.osgi.framework.BundleContext
 *  org.osgi.framework.Version
 *  org.osgi.service.startlevel.StartLevel
 */
package org.eclipse.equinox.internal.frameworkadmin.equinox;

import java.io.File;
import java.io.IOException;
import java.util.Dictionary;
import org.eclipse.equinox.internal.frameworkadmin.equinox.EclipseLauncherImpl;
import org.eclipse.equinox.internal.frameworkadmin.equinox.EquinoxManipulatorImpl;
import org.eclipse.equinox.internal.frameworkadmin.equinox.Log;
import org.eclipse.equinox.internal.provisional.configuratormanipulator.ConfiguratorManipulator;
import org.eclipse.equinox.internal.provisional.configuratormanipulator.ConfiguratorManipulatorFactory;
import org.eclipse.equinox.internal.provisional.frameworkadmin.FrameworkAdmin;
import org.eclipse.equinox.internal.provisional.frameworkadmin.FrameworkAdminRuntimeException;
import org.eclipse.equinox.internal.provisional.frameworkadmin.Manipulator;
import org.eclipse.osgi.service.resolver.PlatformAdmin;
import org.osgi.framework.BundleContext;
import org.osgi.framework.Version;
import org.osgi.service.startlevel.StartLevel;

public class EquinoxFwAdminImpl
implements FrameworkAdmin {
    boolean active = false;
    private ConfiguratorManipulator configuratorManipulator = null;
    BundleContext context = null;
    private boolean runningFw = false;
    private PlatformAdmin platformAdmin;
    private StartLevel startLevelService;

    public EquinoxFwAdminImpl() {
        this(null, false);
    }

    EquinoxFwAdminImpl(BundleContext context) {
        this(context, false);
    }

    EquinoxFwAdminImpl(BundleContext context, boolean runningFw) {
        this.context = context;
        this.active = true;
        this.runningFw = runningFw;
    }

    EquinoxFwAdminImpl(String configuratorManipulatorFactoryName) throws InstantiationException, IllegalAccessException, ClassNotFoundException {
        this.context = null;
        this.active = true;
        this.runningFw = false;
        this.loadConfiguratorManipulator(configuratorManipulatorFactoryName);
    }

    public void activate(BundleContext aContext) {
        this.context = aContext;
        this.runningFw = this.isRunningFw();
        Log.init(aContext);
    }

    void deactivate() {
        this.active = false;
        Log.dispose();
    }

    public ConfiguratorManipulator getConfiguratorManipulator() {
        return this.configuratorManipulator;
    }

    public Manipulator getManipulator() {
        return new EquinoxManipulatorImpl(this.context, this, this.platformAdmin, this.startLevelService, false);
    }

    public Manipulator getRunningManipulator() {
        if (!this.runningFw) {
            return null;
        }
        return new EquinoxManipulatorImpl(this.context, this, this.platformAdmin, this.startLevelService, true);
    }

    public boolean isActive() {
        return this.active;
    }

    boolean isRunningFw() {
        String fwVendor = this.context.getProperty("org.osgi.framework.vendor");
        if (!"Eclipse".equals(fwVendor)) {
            return false;
        }
        Dictionary header = this.context.getBundle(0L).getHeaders();
        String versionSt = (String)header.get("Bundle-Version");
        Version version = new Version(versionSt);
        int value = version.compareTo(new Version("3.3"));
        return value > 0;
    }

    public Process launch(Manipulator manipulator, File cwd) throws IllegalArgumentException, FrameworkAdminRuntimeException, IOException {
        return new EclipseLauncherImpl(this).launch(manipulator, cwd);
    }

    private void loadConfiguratorManipulator(String configuratorManipulatorFactoryName) throws InstantiationException, IllegalAccessException, ClassNotFoundException {
        this.configuratorManipulator = configuratorManipulatorFactoryName == null ? null : ConfiguratorManipulatorFactory.getInstance((String)configuratorManipulatorFactoryName);
    }

    public void setPlatformAdmin(PlatformAdmin admin) {
        this.platformAdmin = admin;
    }

    public void setStartLevel(StartLevel sl) {
        this.startLevelService = sl;
    }
}

