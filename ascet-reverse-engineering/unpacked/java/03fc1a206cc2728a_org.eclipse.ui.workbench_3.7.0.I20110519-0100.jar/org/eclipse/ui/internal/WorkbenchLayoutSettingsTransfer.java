/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.jface.dialogs.ErrorDialog
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.ui.internal;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.jface.dialogs.ErrorDialog;
import org.eclipse.osgi.util.NLS;
import org.eclipse.ui.IMemento;
import org.eclipse.ui.IPersistableElement;
import org.eclipse.ui.IPerspectiveDescriptor;
import org.eclipse.ui.IViewPart;
import org.eclipse.ui.IViewReference;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.XMLMemento;
import org.eclipse.ui.internal.Perspective;
import org.eclipse.ui.internal.ViewFactory;
import org.eclipse.ui.internal.Workbench;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchPage;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.WorkbenchWindow;
import org.eclipse.ui.internal.preferences.WorkbenchSettingsTransfer;
import org.eclipse.ui.internal.util.PrefUtil;
import org.eclipse.ui.internal.util.Util;
import org.eclipse.ui.presentations.AbstractPresentationFactory;

public class WorkbenchLayoutSettingsTransfer
extends WorkbenchSettingsTransfer {
    static /* synthetic */ Class class$0;

    public XMLMemento recordSharableWorkbenchState() {
        XMLMemento memento = XMLMemento.createWriteRoot("workbench");
        IStatus status = this.saveSettings(memento);
        if (status.getSeverity() != 0) {
            ErrorDialog.openError(null, (String)WorkbenchMessages.Workbench_problemsSaving, (String)WorkbenchMessages.Workbench_problemsSavingMsg, (IStatus)status);
        }
        return memento;
    }

    private IStatus saveSettings(XMLMemento memento) {
        MultiStatus result = new MultiStatus("org.eclipse.ui", 0, WorkbenchMessages.Workbench_problemsSaving, null);
        memento.putString("version", Workbench.VERSION_STRING[1]);
        IWorkbenchWindow[] windows = PlatformUI.getWorkbench().getWorkbenchWindows();
        int nX = 0;
        while (nX < windows.length) {
            WorkbenchWindow window = (WorkbenchWindow)windows[nX];
            IMemento childMem = memento.createChild("window");
            result.merge(this.saveState(window, childMem));
            ++nX;
        }
        return result;
    }

    private IStatus saveState(WorkbenchWindow window, IMemento memento) {
        MultiStatus result = new MultiStatus("org.eclipse.ui", 0, WorkbenchMessages.WorkbenchWindow_problemsSavingWindow, null);
        IWorkbenchPage activePage = window.getActivePage();
        if (activePage != null && activePage.findView("org.eclipse.ui.internal.introview") != null) {
            IMemento introMem = memento.createChild("intro");
            boolean isStandby = this.getWorkbench().getIntroManager().isIntroStandby(this.getWorkbench().getIntroManager().getIntro());
            introMem.putString("standby", String.valueOf(isStandby));
        }
        IWorkbenchPage[] pages = window.getPages();
        int i = 0;
        while (i < pages.length) {
            IAdaptable input;
            IWorkbenchPage page = pages[i];
            IMemento pageMem = memento.createChild("page");
            pageMem.putString("label", page.getLabel());
            result.add(this.saveState((WorkbenchPage)page, pageMem));
            if (page == window.getActivePage()) {
                pageMem.putString("focus", "true");
            }
            if ((input = page.getInput()) != null) {
                IPersistableElement persistable;
                Class<?> clazz = class$0;
                if (clazz == null) {
                    try {
                        clazz = Class.forName("org.eclipse.ui.IPersistableElement");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                if ((persistable = (IPersistableElement)Util.getAdapter(input, clazz)) == null) {
                    WorkbenchPlugin.log("Unable to save page input: " + input + ", because it does not adapt to IPersistableElement");
                } else {
                    IMemento inputMem = pageMem.createChild("input");
                    inputMem.putString("factoryID", persistable.getFactoryId());
                    persistable.saveState(inputMem);
                }
            }
            ++i;
        }
        return result;
    }

    private IStatus saveState(WorkbenchPage page, IMemento memento) {
        MultiStatus result = new MultiStatus("org.eclipse.ui", 0, NLS.bind((String)WorkbenchMessages.WorkbenchPage_unableToSavePerspective, (Object)page.getLabel()), null);
        this.saveEditorState(memento);
        IMemento viewMem = memento.createChild("views");
        IViewReference[] refs = page.getViewReferences();
        int i = 0;
        while (i < refs.length) {
            IViewReference viewReference = refs[i];
            String tagId = ViewFactory.getKey(viewReference);
            if (tagId != null) {
                IMemento childMem = viewMem.createChild("view");
                childMem.putString("id", tagId);
                String name = viewReference.getPartName();
                if (name != null) {
                    childMem.putString("partName", name);
                }
            }
            ++i;
        }
        IMemento perspectiveMemento = memento.createChild("perspectives");
        if (page.getPerspective() != null) {
            perspectiveMemento.putString("activePerspective", page.getPerspective().getId());
        }
        if (page.getActivePart() != null) {
            if (page.getActivePart() instanceof IViewPart) {
                IViewReference ref = (IViewReference)page.getReference(page.getActivePart());
                if (ref != null) {
                    perspectiveMemento.putString("activePart", ViewFactory.getKey(ref));
                }
            } else {
                perspectiveMemento.putString("activePart", page.getActivePart().getSite().getId());
            }
        }
        IPerspectiveDescriptor[] perspectives = page.getOpenPerspectives();
        int i2 = 0;
        while (i2 < perspectives.length) {
            IPerspectiveDescriptor perspectiveDescriptor = perspectives[i2];
            IMemento gChildMem = perspectiveMemento.createChild("perspective");
            Perspective perspective = page.findPerspective(perspectiveDescriptor);
            perspective.saveState(gChildMem);
            ++i2;
        }
        return result;
    }

    private void saveEditorState(IMemento memento) {
        IMemento editorsMemento = memento.createChild("editors");
        IMemento editorArea = editorsMemento.createChild("editorArea");
        editorArea.putString("activeWorkbook", "DefaultEditorWorkbook");
        IMemento info = editorArea.createChild("info");
        info.putString("part", "DefaultEditorWorkbook");
        IMemento folder = info.createChild("folder");
        folder.putInteger("appearance", 1);
        folder.putInteger("expanded", 2);
        IMemento presentation = folder.createChild("presentation");
        presentation.putString("id", this.getCurrentPresentationClassName());
    }

    private String getCurrentPresentationClassName() {
        String currentPresentationFactoryId = PrefUtil.getAPIPreferenceStore().getString("presentationFactoryId");
        AbstractPresentationFactory factory = WorkbenchPlugin.getDefault().getPresentationFactory(currentPresentationFactoryId);
        if (factory == null) {
            factory = WorkbenchPlugin.getDefault().getPresentationFactory("org.eclipse.ui.presentations.default");
        }
        return factory.getClass().getName();
    }

    private IWorkbench getWorkbench() {
        return PlatformUI.getWorkbench();
    }

    public IStatus transferSettings(IPath newWorkspaceRoot) {
        try {
            File workspaceFile = this.createFileAndDirectories(newWorkspaceRoot);
            if (workspaceFile == null) {
                return new Status(4, WorkbenchPlugin.PI_WORKBENCH, WorkbenchMessages.WorkbenchSettings_CouldNotCreateDirectories);
            }
            FileOutputStream stream = new FileOutputStream(workspaceFile);
            OutputStreamWriter writer = new OutputStreamWriter((OutputStream)stream, "utf-8");
            XMLMemento memento = XMLMemento.createWriteRoot("workbench");
            IStatus status = this.saveSettings(memento);
            if (status.getSeverity() != 0) {
                return status;
            }
            memento.save(writer);
            writer.close();
        }
        catch (IOException e) {
            return new Status(4, WorkbenchPlugin.PI_WORKBENCH, WorkbenchMessages.Workbench_problemsSavingMsg, (Throwable)e);
        }
        return Status.OK_STATUS;
    }

    private File createFileAndDirectories(IPath newWorkspaceRoot) {
        IPath newWorkspaceLocation = this.getNewWorkbenchStateLocation(newWorkspaceRoot).append("workbench.xml");
        File workspaceFile = new File(newWorkspaceLocation.toOSString());
        File parent = workspaceFile.getParentFile();
        if (!parent.exists() && !parent.mkdirs()) {
            return null;
        }
        return workspaceFile;
    }

    public String getName() {
        return WorkbenchMessages.WorkbenchLayoutSettings_Name;
    }
}

