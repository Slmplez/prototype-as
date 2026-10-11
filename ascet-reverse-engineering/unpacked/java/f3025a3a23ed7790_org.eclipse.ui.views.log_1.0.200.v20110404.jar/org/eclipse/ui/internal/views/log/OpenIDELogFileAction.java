/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.filesystem.EFS
 *  org.eclipse.core.filesystem.IFileStore
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.jface.action.Action
 *  org.eclipse.ui.IWorkbenchPage
 *  org.eclipse.ui.IWorkbenchWindow
 *  org.eclipse.ui.PartInitException
 *  org.eclipse.ui.ide.IDE
 */
package org.eclipse.ui.internal.views.log;

import org.eclipse.core.filesystem.EFS;
import org.eclipse.core.filesystem.IFileStore;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.jface.action.Action;
import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.PartInitException;
import org.eclipse.ui.ide.IDE;
import org.eclipse.ui.internal.views.log.Activator;
import org.eclipse.ui.internal.views.log.LogView;

public class OpenIDELogFileAction
extends Action {
    private LogView fView;

    public OpenIDELogFileAction(LogView logView) {
        this.fView = logView;
    }

    public void run() {
        Path logPath = new Path(this.fView.getLogFile().getAbsolutePath());
        IFileStore fileStore = EFS.getLocalFileSystem().getStore((IPath)logPath);
        if (!fileStore.fetchInfo().isDirectory() && fileStore.fetchInfo().exists()) {
            IWorkbenchWindow ww = Activator.getDefault().getWorkbench().getActiveWorkbenchWindow();
            IWorkbenchPage page = ww.getActivePage();
            try {
                IDE.openEditorOnFileStore((IWorkbenchPage)page, (IFileStore)fileStore);
            }
            catch (PartInitException partInitException) {}
        }
    }
}

