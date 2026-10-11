/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.ui.internal.preferences;

import java.io.File;
import java.io.IOException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.ui.IWorkingSetManager;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.internal.AbstractWorkingSetManager;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.preferences.WorkbenchSettingsTransfer;

public class WorkingSetSettingsTransfer
extends WorkbenchSettingsTransfer {
    public String getName() {
        return WorkbenchMessages.WorkingSets_Name;
    }

    public IStatus transferSettings(IPath newWorkspaceRoot) {
        IPath dataLocation = this.getNewWorkbenchStateLocation(newWorkspaceRoot);
        if (dataLocation == null) {
            return this.noWorkingSettingsStatus();
        }
        dataLocation = dataLocation.append("workingsets.xml");
        File stateFile = new File(dataLocation.toOSString());
        try {
            IWorkingSetManager manager = PlatformUI.getWorkbench().getWorkingSetManager();
            if (!(manager instanceof AbstractWorkingSetManager)) {
                return new Status(4, WorkbenchPlugin.PI_WORKBENCH, WorkbenchMessages.WorkingSets_CannotSave);
            }
            ((AbstractWorkingSetManager)manager).saveState(stateFile);
        }
        catch (IOException e) {
            new Status(4, WorkbenchPlugin.PI_WORKBENCH, WorkbenchMessages.ProblemSavingWorkingSetState_message, (Throwable)e);
        }
        return Status.OK_STATUS;
    }
}

