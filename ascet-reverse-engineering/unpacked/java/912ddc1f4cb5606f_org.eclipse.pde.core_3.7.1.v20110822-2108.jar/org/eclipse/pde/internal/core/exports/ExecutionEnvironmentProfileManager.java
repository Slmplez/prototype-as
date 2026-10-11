/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.jdt.launching.JavaRuntime
 *  org.eclipse.jdt.launching.environments.IExecutionEnvironment
 *  org.eclipse.osgi.util.NLS
 *  org.osgi.framework.Bundle
 */
package org.eclipse.pde.internal.core.exports;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.URL;
import java.util.Properties;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.Status;
import org.eclipse.jdt.launching.JavaRuntime;
import org.eclipse.jdt.launching.environments.IExecutionEnvironment;
import org.eclipse.osgi.util.NLS;
import org.eclipse.pde.internal.core.PDECore;
import org.eclipse.pde.internal.core.PDECoreMessages;
import org.osgi.framework.Bundle;

public class ExecutionEnvironmentProfileManager {
    private static final IPath PROFILE_PATH = PDECore.getDefault().getStateLocation().append(".profiles");
    private static int fgCustomCount = -1;
    private static final String[] LOCATIONS = new String[]{PROFILE_PATH.toOSString()};

    public static String[] getCustomProfileLocations() {
        ExecutionEnvironmentProfileManager.initialize();
        if (fgCustomCount > 0) {
            return LOCATIONS;
        }
        return null;
    }

    private static synchronized void initialize() {
        if (fgCustomCount == -1) {
            fgCustomCount = 0;
            File dir = PROFILE_PATH.toFile();
            if (!dir.exists()) {
                dir.mkdir();
            }
            File[] files = dir.listFiles();
            int i = 0;
            while (i < files.length) {
                files[i].delete();
                ++i;
            }
            Bundle bundle = Platform.getBundle((String)"org.eclipse.osgi");
            IExecutionEnvironment[] environments = JavaRuntime.getExecutionEnvironmentsManager().getExecutionEnvironments();
            int i2 = 0;
            while (i2 < environments.length) {
                block19: {
                    Properties properties;
                    IExecutionEnvironment env = environments[i2];
                    String path = String.valueOf(env.getId().replace('/', '_')) + ".profile";
                    URL entry = bundle.getEntry(path);
                    if (entry == null && (properties = env.getProfileProperties()) != null) {
                        File profile = new File(dir, path);
                        OutputStream stream = null;
                        try {
                            try {
                                ++fgCustomCount;
                                stream = new BufferedOutputStream(new FileOutputStream(profile));
                                properties.store(stream, null);
                            }
                            catch (IOException e) {
                                PDECore.log((IStatus)new Status(4, "org.eclipse.pde.core", NLS.bind((String)PDECoreMessages.ExecutionEnvironmentProfileManager_0, (Object)env.getId()), (Throwable)e));
                                try {
                                    if (stream != null) {
                                        stream.close();
                                    }
                                    break block19;
                                }
                                catch (IOException e2) {
                                    PDECore.logException(e2);
                                }
                                break block19;
                            }
                        }
                        catch (Throwable throwable) {
                            try {
                                if (stream != null) {
                                    stream.close();
                                }
                            }
                            catch (IOException e) {
                                PDECore.logException(e);
                            }
                            throw throwable;
                        }
                        try {
                            if (stream != null) {
                                stream.close();
                            }
                        }
                        catch (IOException e) {
                            PDECore.logException(e);
                        }
                    }
                }
                ++i2;
            }
        }
    }
}

