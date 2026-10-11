/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.equinox.internal.provisional.frameworkadmin.Manipulator
 *  org.eclipse.equinox.p2.engine.spi.ProvisioningAction
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.equinox.internal.p2.touchpoint.eclipse.actions;

import java.util.Map;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.equinox.internal.p2.touchpoint.eclipse.Util;
import org.eclipse.equinox.internal.p2.touchpoint.eclipse.actions.Messages;
import org.eclipse.equinox.internal.provisional.frameworkadmin.Manipulator;
import org.eclipse.equinox.p2.engine.spi.ProvisioningAction;
import org.eclipse.osgi.util.NLS;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class AddProgramArgumentAction
extends ProvisioningAction {
    public static final String ID = "addProgramArg";

    public IStatus execute(Map<String, Object> parameters) {
        Manipulator manipulator = (Manipulator)parameters.get("manipulator");
        String programArg = (String)parameters.get("programArg");
        if (programArg == null) {
            return Util.createError(NLS.bind((String)Messages.parameter_not_set, (Object)"programArg", (Object)ID));
        }
        String programArgValue = (String)parameters.get("programArgValue");
        if ("@ignore".equals(programArgValue)) {
            return Status.OK_STATUS;
        }
        if (programArg.equals("@artifact")) {
            try {
                programArg = Util.resolveArtifactParam(parameters);
            }
            catch (CoreException e) {
                return e.getStatus();
            }
        }
        manipulator.getLauncherData().addProgramArg(programArg);
        if (programArgValue != null) {
            if (programArgValue.equals("@artifact")) {
                try {
                    programArgValue = Util.resolveArtifactParam(parameters);
                }
                catch (CoreException e) {
                    return e.getStatus();
                }
            }
            manipulator.getLauncherData().addProgramArg(programArgValue);
        }
        return Status.OK_STATUS;
    }

    public IStatus undo(Map<String, Object> parameters) {
        Manipulator manipulator = (Manipulator)parameters.get("manipulator");
        String programArg = (String)parameters.get("programArg");
        if (programArg == null) {
            return Util.createError(NLS.bind((String)Messages.parameter_not_set, (Object)"programArg", (Object)ID));
        }
        String programArgValue = (String)parameters.get("programArgValue");
        if ("@ignore".equals(programArgValue)) {
            return Status.OK_STATUS;
        }
        if (programArg.startsWith("-")) {
            manipulator.getLauncherData().removeProgramArg(programArg);
        }
        return Status.OK_STATUS;
    }
}

