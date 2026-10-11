/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.equinox.internal.provisional.frameworkadmin.LauncherData
 *  org.eclipse.equinox.internal.provisional.frameworkadmin.Manipulator
 *  org.eclipse.equinox.p2.engine.spi.ProvisioningAction
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.equinox.internal.p2.touchpoint.eclipse.actions;

import java.io.File;
import java.util.Map;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.equinox.internal.p2.touchpoint.eclipse.Util;
import org.eclipse.equinox.internal.p2.touchpoint.eclipse.actions.Messages;
import org.eclipse.equinox.internal.provisional.frameworkadmin.LauncherData;
import org.eclipse.equinox.internal.provisional.frameworkadmin.Manipulator;
import org.eclipse.equinox.p2.engine.spi.ProvisioningAction;
import org.eclipse.osgi.util.NLS;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class SetJvmAction
extends ProvisioningAction {
    public static final String ID = "setJvm";

    public IStatus execute(Map<String, Object> parameters) {
        String jvmArg = (String)parameters.get("jvm");
        if (jvmArg == null) {
            return Util.createError(NLS.bind((String)Messages.parameter_not_set, (Object)"jvm", (Object)ID));
        }
        LauncherData launcherData = ((Manipulator)parameters.get("manipulator")).getLauncherData();
        File previous = launcherData.getJvm();
        File jvm = "null".equals(jvmArg) ? null : new File(jvmArg);
        this.getMemento().put("previousValue", (Object)(previous == null ? null : previous.getPath()));
        launcherData.setJvm(jvm);
        return Status.OK_STATUS;
    }

    public IStatus undo(Map<String, Object> parameters) {
        String jvmArg = (String)parameters.get("jvm");
        if (jvmArg == null) {
            return Util.createError(NLS.bind((String)Messages.parameter_not_set, (Object)"jvm", (Object)ID));
        }
        String previous = (String)this.getMemento().get("previousValue");
        LauncherData launcherData = ((Manipulator)parameters.get("manipulator")).getLauncherData();
        launcherData.setJvm(previous == null ? null : new File(previous));
        return Status.OK_STATUS;
    }
}

