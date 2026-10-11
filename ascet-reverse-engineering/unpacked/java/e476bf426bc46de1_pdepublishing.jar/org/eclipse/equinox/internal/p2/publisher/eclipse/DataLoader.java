/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.equinox.frameworkadmin.BundleInfo
 *  org.eclipse.equinox.internal.frameworkadmin.equinox.EquinoxFwConfigFileParser
 *  org.eclipse.equinox.internal.frameworkadmin.equinox.EquinoxManipulatorImpl
 *  org.eclipse.equinox.internal.p2.core.helpers.LogHelper
 *  org.eclipse.equinox.internal.p2.core.helpers.ServiceHelper
 *  org.eclipse.equinox.internal.provisional.frameworkadmin.ConfigData
 *  org.eclipse.equinox.internal.provisional.frameworkadmin.FrameworkAdmin
 *  org.eclipse.equinox.internal.provisional.frameworkadmin.FrameworkAdminRuntimeException
 *  org.eclipse.equinox.internal.provisional.frameworkadmin.LauncherData
 *  org.eclipse.equinox.internal.provisional.frameworkadmin.Manipulator
 *  org.eclipse.equinox.simpleconfigurator.manipulator.SimpleConfiguratorManipulator
 *  org.osgi.framework.BundleContext
 */
package org.eclipse.equinox.internal.p2.publisher.eclipse;

import java.io.File;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URISyntaxException;
import java.net.URL;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.equinox.frameworkadmin.BundleInfo;
import org.eclipse.equinox.internal.frameworkadmin.equinox.EquinoxFwConfigFileParser;
import org.eclipse.equinox.internal.frameworkadmin.equinox.EquinoxManipulatorImpl;
import org.eclipse.equinox.internal.p2.core.helpers.LogHelper;
import org.eclipse.equinox.internal.p2.core.helpers.ServiceHelper;
import org.eclipse.equinox.internal.provisional.frameworkadmin.ConfigData;
import org.eclipse.equinox.internal.provisional.frameworkadmin.FrameworkAdmin;
import org.eclipse.equinox.internal.provisional.frameworkadmin.FrameworkAdminRuntimeException;
import org.eclipse.equinox.internal.provisional.frameworkadmin.LauncherData;
import org.eclipse.equinox.internal.provisional.frameworkadmin.Manipulator;
import org.eclipse.equinox.simpleconfigurator.manipulator.SimpleConfiguratorManipulator;
import org.eclipse.pde.internal.publishing.Activator;
import org.osgi.framework.BundleContext;

public class DataLoader {
    private static final String FILTER_OBJECTCLASS;
    private static final String filterFwName = "(org.eclipse.equinox.frameworkhandler.framework.name=Equinox)";
    private static final String filterLauncherName = "(org.eclipse.equinox.frameworkhandler.launcher.name=Eclipse.exe)";
    private static final String frameworkAdminFillter;
    private static final String ORG_ECLIPSE_EQUINOX_SIMPLECONFIGURATOR_CONFIGURL = "org.eclipse.equinox.simpleconfigurator.configUrl";
    private Manipulator manipulator;
    private final File configurationLocation;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

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
        FILTER_OBJECTCLASS = stringBuffer.append(clazz.getName()).append(")").toString();
        frameworkAdminFillter = "(&" + FILTER_OBJECTCLASS + filterFwName + filterLauncherName + ")";
    }

    public DataLoader(File configurationLocation, File executableLocation) {
        this.configurationLocation = configurationLocation;
        this.initializeFrameworkManipulator(configurationLocation.getParentFile(), executableLocation);
    }

    private void initializeFrameworkManipulator(File config, File executable) {
        this.getFrameworkManipulator();
        LauncherData launcherData = this.manipulator.getLauncherData();
        launcherData.setFwPersistentDataLocation(config, true);
        launcherData.setLauncher(executable);
        if (executable == null) {
            launcherData.setHome(config.getParentFile());
        }
        try {
            this.manipulator.load();
        }
        catch (IllegalStateException e2) {
            e2.printStackTrace();
        }
        catch (FrameworkAdminRuntimeException e2) {
            e2.printStackTrace();
        }
        catch (IOException e2) {
            e2.printStackTrace();
        }
    }

    public ConfigData getConfigData() {
        ConfigData data;
        String value;
        if (this.manipulator == null) {
            return null;
        }
        EquinoxFwConfigFileParser parser = new EquinoxFwConfigFileParser(Activator.getContext());
        try {
            if (this.configurationLocation != null && this.configurationLocation.exists()) {
                parser.readFwConfig(this.manipulator, this.configurationLocation);
            }
        }
        catch (IOException e) {
            LogHelper.log((IStatus)new Status(4, Activator.ID, "Error loading config.", (Throwable)e));
        }
        catch (URISyntaxException e) {
            LogHelper.log((IStatus)new Status(4, Activator.ID, "Error loading config.", (Throwable)e));
        }
        if ((value = (data = this.manipulator.getConfigData()).getProperty(ORG_ECLIPSE_EQUINOX_SIMPLECONFIGURATOR_CONFIGURL)) != null) {
            try {
                BundleContext bundleContext = Activator.getContext();
                Class<?> clazz = class$1;
                if (clazz == null) {
                    try {
                        clazz = class$1 = Class.forName("org.eclipse.equinox.simpleconfigurator.manipulator.SimpleConfiguratorManipulator");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                SimpleConfiguratorManipulator simpleManipulator = (SimpleConfiguratorManipulator)ServiceHelper.getService((BundleContext)bundleContext, (String)clazz.getName());
                BundleInfo[] bundleInfos = simpleManipulator.loadConfiguration(new URL(value).openStream(), null);
                data.setBundles(bundleInfos);
            }
            catch (MalformedURLException malformedURLException) {
            }
            catch (IOException iOException) {}
            try {
                data.setProperty(ORG_ECLIPSE_EQUINOX_SIMPLECONFIGURATOR_CONFIGURL, EquinoxManipulatorImpl.makeRelative((String)value, (URL)this.configurationLocation.toURL()));
            }
            catch (MalformedURLException malformedURLException) {}
        }
        return data;
    }

    public LauncherData getLauncherData() {
        return this.manipulator == null ? null : this.manipulator.getLauncherData();
    }

    private void getFrameworkManipulator() {
        FrameworkAdmin admin = this.getFrameworkAdmin();
        if (admin == null) {
            throw new RuntimeException("Framework admin service not found");
        }
        this.manipulator = admin.getManipulator();
        if (this.manipulator == null) {
            throw new RuntimeException("Framework manipulator not found");
        }
    }

    private FrameworkAdmin getFrameworkAdmin() {
        BundleContext bundleContext = Activator.getContext();
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.equinox.internal.provisional.frameworkadmin.FrameworkAdmin");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        return (FrameworkAdmin)ServiceHelper.getService((BundleContext)bundleContext, (String)clazz.getName(), (String)frameworkAdminFillter);
    }
}

