/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.osgi.framework.BundleContext
 *  org.osgi.framework.BundleListener
 */
package org.eclipse.ui.internal;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.ui.IWorkingSet;
import org.eclipse.ui.IWorkingSetManager;
import org.eclipse.ui.WorkbenchException;
import org.eclipse.ui.XMLMemento;
import org.eclipse.ui.internal.AbstractWorkingSetManager;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.statushandlers.IStatusAdapterConstants;
import org.eclipse.ui.statushandlers.StatusAdapter;
import org.eclipse.ui.statushandlers.StatusManager;
import org.osgi.framework.BundleContext;
import org.osgi.framework.BundleListener;

public class WorkingSetManager
extends AbstractWorkingSetManager
implements IWorkingSetManager,
BundleListener {
    public static final String WORKING_SET_STATE_FILENAME = "workingsets.xml";
    private boolean restoreInProgress;
    private boolean savePending;

    public WorkingSetManager(BundleContext context) {
        super(context);
    }

    public void addRecentWorkingSet(IWorkingSet workingSet) {
        this.internalAddRecentWorkingSet(workingSet);
        this.saveState();
    }

    public void addWorkingSet(IWorkingSet workingSet) {
        super.addWorkingSet(workingSet);
        this.saveState();
    }

    private File getWorkingSetStateFile() {
        IPath path = WorkbenchPlugin.getDefault().getDataLocation();
        if (path == null) {
            return null;
        }
        path = path.append(WORKING_SET_STATE_FILENAME);
        return path.toFile();
    }

    public void removeWorkingSet(IWorkingSet workingSet) {
        if (this.internalRemoveWorkingSet(workingSet)) {
            this.saveState();
        }
    }

    public void restoreState() {
        block9: {
            File stateFile = this.getWorkingSetStateFile();
            if (stateFile != null && stateFile.exists()) {
                block8: {
                    try {
                        this.restoreInProgress = true;
                        FileInputStream input = new FileInputStream(stateFile);
                        BufferedReader reader = new BufferedReader(new InputStreamReader((InputStream)input, "utf-8"));
                        XMLMemento memento = XMLMemento.createReadRoot(reader);
                        this.restoreWorkingSetState(memento);
                        this.restoreMruList(memento);
                        reader.close();
                    }
                    catch (IOException e) {
                        this.handleInternalError(e, WorkbenchMessages.ProblemRestoringWorkingSetState_title, WorkbenchMessages.ProblemRestoringWorkingSetState_message);
                        this.restoreInProgress = false;
                        break block8;
                    }
                    catch (WorkbenchException e) {
                        try {
                            this.handleInternalError((Exception)((Object)e), WorkbenchMessages.ProblemRestoringWorkingSetState_title, WorkbenchMessages.ProblemRestoringWorkingSetState_message);
                            break block8;
                        }
                        catch (Throwable throwable) {
                            throw throwable;
                        }
                        finally {
                            this.restoreInProgress = false;
                        }
                    }
                    this.restoreInProgress = false;
                }
                if (!this.savePending) break block9;
                this.saveState();
                this.savePending = false;
            }
        }
    }

    private void saveState() {
        if (this.restoreInProgress) {
            this.savePending = true;
            return;
        }
        File stateFile = this.getWorkingSetStateFile();
        if (stateFile == null) {
            return;
        }
        try {
            this.saveState(stateFile);
        }
        catch (IOException e) {
            stateFile.delete();
            this.handleInternalError(e, WorkbenchMessages.ProblemSavingWorkingSetState_title, WorkbenchMessages.ProblemSavingWorkingSetState_message);
        }
    }

    public void workingSetChanged(IWorkingSet changedWorkingSet, String propertyChangeId, Object oldValue) {
        this.saveState();
        super.workingSetChanged(changedWorkingSet, propertyChangeId, oldValue);
    }

    private void handleInternalError(Exception exp, String title, String message) {
        Status status = new Status(4, WorkbenchPlugin.PI_WORKBENCH, message, (Throwable)exp);
        StatusAdapter sa = new StatusAdapter((IStatus)status);
        sa.setProperty(IStatusAdapterConstants.TITLE_PROPERTY, title);
        StatusManager.getManager().handle(sa, 1);
    }
}

