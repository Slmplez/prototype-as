/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.application;

import java.util.ArrayList;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.IMemento;
import org.eclipse.ui.WorkbenchException;
import org.eclipse.ui.application.ActionBarAdvisor;
import org.eclipse.ui.application.IActionBarConfigurer;
import org.eclipse.ui.application.IWorkbenchConfigurer;
import org.eclipse.ui.application.IWorkbenchWindowConfigurer;
import org.eclipse.ui.internal.EditorAreaHelper;
import org.eclipse.ui.internal.PartStack;
import org.eclipse.ui.internal.WorkbenchPage;
import org.eclipse.ui.internal.WorkbenchWindowConfigurer;
import org.eclipse.ui.internal.util.PrefUtil;
import org.eclipse.ui.intro.IIntroManager;

public class WorkbenchWindowAdvisor {
    private IWorkbenchWindowConfigurer windowConfigurer;

    public WorkbenchWindowAdvisor(IWorkbenchWindowConfigurer configurer) {
        Assert.isNotNull((Object)configurer);
        this.windowConfigurer = configurer;
    }

    protected IWorkbenchWindowConfigurer getWindowConfigurer() {
        return this.windowConfigurer;
    }

    public void preWindowOpen() {
    }

    public ActionBarAdvisor createActionBarAdvisor(IActionBarConfigurer configurer) {
        return new ActionBarAdvisor(configurer);
    }

    public void postWindowRestore() throws WorkbenchException {
    }

    protected void cleanUpEditorArea() {
        WorkbenchPage activePage;
        EditorAreaHelper editorAreaHelper;
        if (this.getWindowConfigurer() != null && this.getWindowConfigurer().getWindow() != null && this.getWindowConfigurer().getWindow().getActivePage() != null && (editorAreaHelper = (activePage = (WorkbenchPage)this.getWindowConfigurer().getWindow().getActivePage()).getEditorPresentation()) != null) {
            ArrayList workbooks = editorAreaHelper.getWorkbooks();
            int i = 0;
            while (i < workbooks.size()) {
                PartStack editorStack = (PartStack)workbooks.get(i);
                if (editorStack.getChildren().length == 0) {
                    editorStack.getContainer().remove(editorStack);
                }
                ++i;
            }
        }
    }

    public void openIntro() {
        IWorkbenchConfigurer wbConfig = this.getWindowConfigurer().getWorkbenchConfigurer();
        Boolean introOpened = (Boolean)wbConfig.getData("introOpened");
        if (introOpened != null && introOpened.booleanValue()) {
            return;
        }
        wbConfig.setData("introOpened", Boolean.TRUE);
        boolean showIntro = PrefUtil.getAPIPreferenceStore().getBoolean("showIntro");
        IIntroManager introManager = wbConfig.getWorkbench().getIntroManager();
        boolean hasIntro = introManager.hasIntro();
        boolean isNewIntroContentAvailable = introManager.isNewContentAvailable();
        if (hasIntro && (showIntro || isNewIntroContentAvailable)) {
            PrefUtil.getAPIPreferenceStore().setValue("showIntro", false);
            PrefUtil.saveAPIPrefs();
            introManager.showIntro(this.getWindowConfigurer().getWindow(), false);
        }
    }

    public void postWindowCreate() {
    }

    public void postWindowOpen() {
    }

    public boolean preWindowShellClose() {
        return true;
    }

    public void postWindowClose() {
    }

    public void createWindowContents(Shell shell) {
        ((WorkbenchWindowConfigurer)this.getWindowConfigurer()).createDefaultContents(shell);
    }

    public Control createEmptyWindowContents(Composite parent) {
        return null;
    }

    public boolean isDurableFolder(String perspectiveId, String folderId) {
        return false;
    }

    public void dispose() {
    }

    public IStatus saveState(IMemento memento) {
        return Status.OK_STATUS;
    }

    public IStatus restoreState(IMemento memento) {
        return Status.OK_STATUS;
    }
}

