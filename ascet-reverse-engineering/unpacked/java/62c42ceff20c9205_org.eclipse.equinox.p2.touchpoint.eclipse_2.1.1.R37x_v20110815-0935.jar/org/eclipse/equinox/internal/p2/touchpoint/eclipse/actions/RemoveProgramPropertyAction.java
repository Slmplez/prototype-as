/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.equinox.internal.provisional.frameworkadmin.ConfigData
 *  org.eclipse.equinox.internal.provisional.frameworkadmin.Manipulator
 *  org.eclipse.equinox.p2.engine.spi.ProvisioningAction
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.equinox.internal.p2.touchpoint.eclipse.actions;

import java.util.List;
import java.util.Map;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.equinox.internal.p2.touchpoint.eclipse.Util;
import org.eclipse.equinox.internal.p2.touchpoint.eclipse.actions.AddProgramPropertyAction;
import org.eclipse.equinox.internal.p2.touchpoint.eclipse.actions.Messages;
import org.eclipse.equinox.internal.provisional.frameworkadmin.ConfigData;
import org.eclipse.equinox.internal.provisional.frameworkadmin.Manipulator;
import org.eclipse.equinox.p2.engine.spi.ProvisioningAction;
import org.eclipse.osgi.util.NLS;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class RemoveProgramPropertyAction
extends ProvisioningAction {
    public static final String ID = "removeProgramProperty";

    public IStatus execute(Map<String, Object> parameters) {
        Manipulator manipulator = (Manipulator)parameters.get("manipulator");
        String propName = (String)parameters.get("propName");
        if (propName == null) {
            return Util.createError(NLS.bind((String)Messages.parameter_not_set, (Object)"propName", (Object)ID));
        }
        String propValue = (String)parameters.get("propValue");
        ConfigData data = manipulator.getConfigData();
        String previous = data.getProperty(propName);
        if (previous == null) {
            return Status.OK_STATUS;
        }
        this.getMemento().put("previousValue", (Object)previous);
        if (propValue == null) {
            data.setProperty(propName, null);
            return Status.OK_STATUS;
        }
        List<String> list = AddProgramPropertyAction.convertToList(previous);
        if (!list.remove(propValue)) {
            return Status.OK_STATUS;
        }
        propValue = list.isEmpty() ? null : AddProgramPropertyAction.convertToString(list);
        data.setProperty(propName, propValue);
        return Status.OK_STATUS;
    }

    public IStatus undo(Map<String, Object> parameters) {
        Manipulator manipulator = (Manipulator)parameters.get("manipulator");
        String propName = (String)parameters.get("propName");
        if (propName == null) {
            return Util.createError(NLS.bind((String)Messages.parameter_not_set, (Object)"propName", (Object)ID));
        }
        String previous = (String)this.getMemento().get("previousValue");
        manipulator.getConfigData().setProperty(propName, previous);
        return Status.OK_STATUS;
    }
}

