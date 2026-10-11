/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.equinox.internal.provisional.frameworkadmin.ConfigData
 *  org.eclipse.equinox.internal.provisional.frameworkadmin.Manipulator
 *  org.eclipse.equinox.p2.engine.spi.ProvisioningAction
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.equinox.internal.p2.touchpoint.eclipse.actions;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.equinox.internal.p2.touchpoint.eclipse.Util;
import org.eclipse.equinox.internal.p2.touchpoint.eclipse.actions.Messages;
import org.eclipse.equinox.internal.provisional.frameworkadmin.ConfigData;
import org.eclipse.equinox.internal.provisional.frameworkadmin.Manipulator;
import org.eclipse.equinox.p2.engine.spi.ProvisioningAction;
import org.eclipse.osgi.util.NLS;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class AddProgramPropertyAction
extends ProvisioningAction {
    public static final String ID = "addProgramProperty";

    protected static List<String> convertToList(String value) {
        ArrayList<String> result = new ArrayList<String>();
        StringTokenizer tokenizer = new StringTokenizer(value, ",");
        while (tokenizer.hasMoreTokens()) {
            result.add(tokenizer.nextToken());
        }
        return result;
    }

    protected static String convertToString(List<String> list) {
        StringBuffer buffer = new StringBuffer();
        Iterator<String> iter = list.iterator();
        while (iter.hasNext()) {
            buffer.append(iter.next());
            if (!iter.hasNext()) continue;
            buffer.append(',');
        }
        return buffer.toString();
    }

    public IStatus execute(Map<String, Object> parameters) {
        Manipulator manipulator = (Manipulator)parameters.get("manipulator");
        String propName = (String)parameters.get("propName");
        if (propName == null) {
            return Util.createError(NLS.bind((String)Messages.parameter_not_set, (Object)"propName", (Object)ID));
        }
        String propValue = (String)parameters.get("propValue");
        if (propValue == null) {
            return Util.createError(NLS.bind((String)Messages.parameter_not_set, (Object)"propValue", (Object)ID));
        }
        if (propValue != null && propValue.equals("@artifact")) {
            try {
                propValue = Util.resolveArtifactParam(parameters);
            }
            catch (CoreException e) {
                return e.getStatus();
            }
        }
        ConfigData data = manipulator.getConfigData();
        String previous = data.getProperty(propName);
        this.getMemento().put("previousValue", (Object)previous);
        if (previous != null) {
            propValue = new StringBuffer(String.valueOf(previous)).append(',').append(propValue).toString();
        }
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

