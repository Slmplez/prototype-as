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
public class SetProgramPropertyAction
extends ProvisioningAction {
    public static final String ID = "setProgramProperty";

    public IStatus execute(Map<String, Object> parameters) {
        Manipulator manipulator = (Manipulator)parameters.get("manipulator");
        String propName = (String)parameters.get("propName");
        if (propName == null) {
            return Util.createError(NLS.bind((String)Messages.parameter_not_set, (Object)"propName", (Object)ID));
        }
        String propValue = (String)parameters.get("propValue");
        if (propValue != null && propValue.equals("@artifact")) {
            try {
                propValue = Util.resolveArtifactParam(parameters);
            }
            catch (CoreException e) {
                return e.getStatus();
            }
        }
        this.getMemento().put("previousValue", (Object)manipulator.getConfigData().getProperty(propName));
        manipulator.getConfigData().setProperty(propName, propValue);
        return Status.OK_STATUS;
    }

    public IStatus undo(Map<String, Object> parameters) {
        Manipulator manipulator = (Manipulator)parameters.get("manipulator");
        String propName = (String)parameters.get("propName");
        if (propName == null) {
            return Util.createError(NLS.bind((String)Messages.parameter_not_set, (Object)"propName", (Object)ID));
        }
        String previousValue = (String)this.getMemento().get("previousValue");
        manipulator.getConfigData().setProperty(propName, previousValue);
        return Status.OK_STATUS;
    }
}

