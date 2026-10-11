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
import java.util.ArrayList;
import java.util.Map;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.equinox.internal.p2.touchpoint.eclipse.Util;
import org.eclipse.equinox.internal.p2.touchpoint.eclipse.actions.ActionConstants;
import org.eclipse.equinox.internal.p2.touchpoint.eclipse.actions.Messages;
import org.eclipse.equinox.p2.engine.spi.ProvisioningAction;
import org.eclipse.osgi.util.NLS;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ChmodAction
extends ProvisioningAction {
    private static final String ACTION_CHMOD = "chmod";
    private static final boolean WINDOWS = File.separatorChar == '\\';

    public IStatus execute(Map<String, Object> parameters) {
        String targetFile;
        String targetDir = (String)parameters.get("targetDir");
        if (targetDir == null) {
            return Util.createError(NLS.bind((String)Messages.parameter_not_set, (Object)"targetDir", (Object)ACTION_CHMOD));
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
        if ((targetFile = (String)parameters.get("targetFile")) == null) {
            return Util.createError(NLS.bind((String)Messages.parameter_not_set, (Object)"targetFile", (Object)ACTION_CHMOD));
        }
        String permissions = (String)parameters.get("permissions");
        if (permissions == null) {
            return Util.createError(NLS.bind((String)Messages.parameter_not_set, (Object)"permissions", (Object)ACTION_CHMOD));
        }
        String optionsString = (String)parameters.get(ActionConstants.PARM_OPTIONS);
        File probe = new File(new StringBuffer(String.valueOf(targetDir)).append('/').append(targetFile).toString());
        if (!probe.exists()) {
            return Util.createError(NLS.bind((String)Messages.action_0_failed_file_1_doesNotExist, (Object)ACTION_CHMOD, (Object)probe.toString()));
        }
        String[] options = null;
        if (optionsString != null) {
            ArrayList<String> collect = new ArrayList<String>();
            String r = optionsString.trim();
            while (r.length() > 0) {
                int spaceIdx = r.indexOf(32);
                if (spaceIdx < 0) {
                    collect.add(r);
                    r = "";
                    continue;
                }
                collect.add(r.substring(0, spaceIdx));
                r = r.substring(spaceIdx + 1);
                r = r.trim();
            }
            if (collect.size() > 0) {
                options = collect.toArray(new String[collect.size()]);
            }
        }
        this.chmod(targetDir, targetFile, permissions, options);
        return Status.OK_STATUS;
    }

    public IStatus undo(Map<String, Object> parameters) {
        return Status.OK_STATUS;
    }

    public void chmod(String targetDir, String targetFile, String perms, String[] options) {
        if (WINDOWS) {
            return;
        }
        Runtime r = Runtime.getRuntime();
        try {
            String[] args = new String[3 + (options == null ? 0 : options.length)];
            int i = 0;
            args[i++] = ACTION_CHMOD;
            if (options != null) {
                int j = 0;
                while (j < options.length) {
                    args[i++] = options[j];
                    ++j;
                }
            }
            args[i++] = perms;
            args[i] = new StringBuffer(String.valueOf(targetDir)).append('/').append(targetFile).toString();
            Process process = r.exec(args);
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

