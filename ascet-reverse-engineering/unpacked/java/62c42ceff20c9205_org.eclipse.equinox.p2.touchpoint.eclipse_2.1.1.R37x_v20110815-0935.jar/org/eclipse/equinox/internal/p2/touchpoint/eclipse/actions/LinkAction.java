/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.equinox.p2.engine.spi.ProvisioningAction
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.equinox.internal.p2.touchpoint.eclipse.actions;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.Map;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.equinox.internal.p2.touchpoint.eclipse.Util;
import org.eclipse.equinox.internal.p2.touchpoint.eclipse.actions.Messages;
import org.eclipse.equinox.p2.engine.spi.ProvisioningAction;
import org.eclipse.osgi.util.NLS;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class LinkAction
extends ProvisioningAction {
    public static final String ID = "ln";
    private static final boolean WINDOWS = File.separatorChar == '\\';

    public IStatus execute(Map<String, Object> parameters) {
        String linkTarget;
        String targetDir = (String)parameters.get("targetDir");
        if (targetDir == null) {
            return Util.createError(NLS.bind((String)Messages.parameter_not_set, (Object)"targetDir", (Object)ID));
        }
        if (targetDir.equals("@artifact")) {
            try {
                targetDir = Util.resolveArtifactParam(parameters);
            }
            catch (CoreException e) {
                return e.getStatus();
            }
            File dir = new File(targetDir);
            if (!dir.isDirectory()) {
                return Util.createError(NLS.bind((String)Messages.artifact_not_directory, (Object)dir));
            }
        }
        if ((linkTarget = (String)parameters.get("linkTarget")) == null) {
            return Util.createError(NLS.bind((String)Messages.parameter_not_set, (Object)"linkTarget", (Object)ID));
        }
        String linkName = (String)parameters.get("linkName");
        if (linkName == null) {
            return Util.createError(NLS.bind((String)Messages.parameter_not_set, (Object)"linkName", (Object)ID));
        }
        String force = (String)parameters.get("force");
        this.ln(targetDir, linkTarget, linkName, Boolean.valueOf(force));
        return Status.OK_STATUS;
    }

    public IStatus undo(Map<String, Object> parameters) {
        return null;
    }

    private void ln(String targetDir, String linkTarget, String linkName, boolean force) {
        if (WINDOWS) {
            return;
        }
        Runtime r = Runtime.getRuntime();
        try {
            Process process = r.exec(new String[]{ID, new StringBuffer("-s").append(force ? "f" : "").toString(), linkTarget, new StringBuffer(String.valueOf(targetDir)).append('/').append(linkName).toString()});
            this.readOffStream(process.getErrorStream());
            this.readOffStream(process.getInputStream());
            try {
                process.waitFor();
            }
            catch (InterruptedException interruptedException) {
                Thread.currentThread().interrupt();
            }
        }
        catch (IOException iOException) {}
    }

    private void readOffStream(InputStream inputStream) {
        block12: {
            BufferedReader reader = new BufferedReader(new InputStreamReader(inputStream));
            try {
                try {
                    while (reader.readLine() != null) {
                    }
                }
                catch (IOException iOException) {
                    try {
                        reader.close();
                    }
                    catch (IOException iOException2) {}
                    break block12;
                }
            }
            catch (Throwable throwable) {
                try {
                    reader.close();
                }
                catch (IOException iOException) {}
                throw throwable;
            }
            try {
                reader.close();
            }
            catch (IOException iOException) {}
        }
    }
}

