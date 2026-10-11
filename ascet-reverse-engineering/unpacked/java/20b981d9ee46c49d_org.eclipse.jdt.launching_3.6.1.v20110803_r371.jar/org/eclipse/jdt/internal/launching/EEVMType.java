/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.jdt.internal.launching;

import com.ibm.icu.text.MessageFormat;
import java.io.File;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Map;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.jdt.internal.launching.EEVMInstall;
import org.eclipse.jdt.internal.launching.LaunchingMessages;
import org.eclipse.jdt.internal.launching.LaunchingPlugin;
import org.eclipse.jdt.internal.launching.StandardVMType;
import org.eclipse.jdt.launching.AbstractVMInstallType;
import org.eclipse.jdt.launching.IVMInstall;
import org.eclipse.jdt.launching.LibraryLocation;
import org.eclipse.jdt.launching.environments.ExecutionEnvironmentDescription;

public class EEVMType
extends AbstractVMInstallType {
    public static final String ID_EE_VM_TYPE = "org.eclipse.jdt.launching.EEVMType";
    public static final String VAR_EE_HOME = "${ee.home}";
    private static final String[] REQUIRED_PROPERTIES = new String[]{"-Dee.executable", "-Dee.bootclasspath", "-Dee.language.level", "-Djava.home"};

    public static URL getJavadocLocation(Map properties) {
        String javadoc = EEVMType.getProperty("-Dee.javadoc", properties);
        if (javadoc != null && javadoc.length() > 0) {
            try {
                URL url = new URL(javadoc);
                if ("file".equalsIgnoreCase(url.getProtocol())) {
                    File file = new File(url.getFile());
                    url = file.getCanonicalFile().toURL();
                }
                return url;
            }
            catch (MalformedURLException e) {
                LaunchingPlugin.log(e);
                return null;
            }
            catch (IOException e) {
                LaunchingPlugin.log(e);
                return null;
            }
        }
        String version = EEVMType.getProperty("-Dee.language.level", properties);
        if (version != null) {
            return StandardVMType.getDefaultJavadocLocation(version);
        }
        return null;
    }

    public static IStatus validateDefinitionFile(ExecutionEnvironmentDescription description) {
        int i = 0;
        while (i < REQUIRED_PROPERTIES.length) {
            String key = REQUIRED_PROPERTIES[i];
            String property = description.getProperty(key);
            if (property == null) {
                return new Status(4, LaunchingPlugin.getUniqueIdentifier(), MessageFormat.format((String)LaunchingMessages.EEVMType_1, (Object[])new String[]{key}));
            }
            ++i;
        }
        return Status.OK_STATUS;
    }

    private static String getProperty(String property, Map properties) {
        return (String)properties.get(property);
    }

    protected IVMInstall doCreateVMInstall(String id) {
        return new EEVMInstall(this, id);
    }

    public File detectInstallLocation() {
        return null;
    }

    public LibraryLocation[] getDefaultLibraryLocations(File installLocationOrDefinitionFile) {
        return new LibraryLocation[0];
    }

    public String getName() {
        return LaunchingMessages.EEVMType_2;
    }

    public IStatus validateInstallLocation(File installLocation) {
        if (installLocation.exists()) {
            return new Status(1, "org.eclipse.jdt.launching", LaunchingMessages.EEVMType_4);
        }
        return new Status(4, "org.eclipse.jdt.launching", MessageFormat.format((String)LaunchingMessages.EEVMType_3, (Object[])new String[]{installLocation.getPath()}));
    }
}

