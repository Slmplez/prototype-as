/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.AssertionFailedException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.ListenerList
 *  org.eclipse.core.runtime.SubProgressMonitor
 *  org.eclipse.jface.dialogs.IDialogConstants
 *  org.eclipse.jface.dialogs.MessageDialog
 *  org.eclipse.jface.dialogs.MessageDialogWithToggle
 *  org.eclipse.jface.operation.IRunnableContext
 *  org.eclipse.jface.operation.IRunnableWithProgress
 *  org.eclipse.jface.preference.IPreferenceStore
 *  org.eclipse.jface.viewers.ArrayContentProvider
 *  org.eclipse.jface.viewers.ILabelProvider
 *  org.eclipse.jface.viewers.IStructuredContentProvider
 *  org.eclipse.jface.window.IShellProvider
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.swt.events.SelectionAdapter
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.layout.GridLayout
 *  org.eclipse.swt.widgets.Button
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Label
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.internal;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.AssertionFailedException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.ListenerList;
import org.eclipse.core.runtime.SubProgressMonitor;
import org.eclipse.jface.dialogs.IDialogConstants;
import org.eclipse.jface.dialogs.MessageDialog;
import org.eclipse.jface.dialogs.MessageDialogWithToggle;
import org.eclipse.jface.operation.IRunnableContext;
import org.eclipse.jface.operation.IRunnableWithProgress;
import org.eclipse.jface.preference.IPreferenceStore;
import org.eclipse.jface.viewers.ArrayContentProvider;
import org.eclipse.jface.viewers.ILabelProvider;
import org.eclipse.jface.viewers.IStructuredContentProvider;
import org.eclipse.jface.window.IShellProvider;
import org.eclipse.osgi.util.NLS;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.ISaveablePart;
import org.eclipse.ui.ISaveablePart2;
import org.eclipse.ui.ISaveablesLifecycleListener;
import org.eclipse.ui.ISaveablesSource;
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.Saveable;
import org.eclipse.ui.SaveablesLifecycleEvent;
import org.eclipse.ui.dialogs.ListSelectionDialog;
import org.eclipse.ui.internal.DefaultSaveable;
import org.eclipse.ui.internal.EditorManager;
import org.eclipse.ui.internal.SaveableHelper;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.dialogs.EventLoopProgressMonitor;
import org.eclipse.ui.internal.misc.StatusUtil;
import org.eclipse.ui.internal.util.PrefUtil;
import org.eclipse.ui.model.WorkbenchPartLabelProvider;

public class SaveablesList
implements ISaveablesLifecycleListener {
    private ListenerList listeners = new ListenerList();
    private Map modelMap = new HashMap();
    private Map modelRefCounts = new HashMap();
    private Set nonPartSources = new HashSet();

    public Saveable[] getOpenModels() {
        HashSet allDistinctModels = new HashSet();
        Iterator saveables = this.modelMap.values().iterator();
        while (saveables.hasNext()) {
            allDistinctModels.addAll((Set)saveables.next());
        }
        return allDistinctModels.toArray(new Saveable[allDistinctModels.size()]);
    }

    private boolean addModel(Object source, Saveable model) {
        if (model == null) {
            this.logWarning("Ignored attempt to add invalid saveable", source, model);
            return false;
        }
        boolean result = false;
        HashSet<Saveable> modelsForSource = (HashSet<Saveable>)this.modelMap.get(source);
        if (modelsForSource == null) {
            modelsForSource = new HashSet<Saveable>();
            this.modelMap.put(source, modelsForSource);
        }
        if (modelsForSource.add(model)) {
            result = this.incrementRefCount(this.modelRefCounts, model);
        } else {
            this.logWarning("Ignored attempt to add saveable that was already registered", source, model);
        }
        return result;
    }

    private boolean incrementRefCount(Map referenceMap, Object key) {
        boolean result = false;
        Integer refCount = (Integer)referenceMap.get(key);
        if (refCount == null) {
            result = true;
            refCount = new Integer(0);
        }
        referenceMap.put(key, new Integer(refCount + 1));
        return result;
    }

    private boolean decrementRefCount(Map referenceMap, Object key) {
        boolean result = false;
        Integer refCount = (Integer)referenceMap.get(key);
        Assert.isTrue((refCount != null ? 1 : 0) != 0);
        if (refCount == 1) {
            referenceMap.remove(key);
            result = true;
        } else {
            referenceMap.put(key, new Integer(refCount - 1));
        }
        return result;
    }

    private boolean removeModel(Object source, Saveable model) {
        boolean result = false;
        Set modelsForSource = (Set)this.modelMap.get(source);
        if (modelsForSource == null) {
            this.logWarning("Ignored attempt to remove a saveable when no saveables were known", source, model);
        } else if (modelsForSource.remove(model)) {
            result = this.decrementRefCount(this.modelRefCounts, model);
            if (modelsForSource.isEmpty()) {
                this.modelMap.remove(source);
            }
        } else {
            this.logWarning("Ignored attempt to remove a saveable that was not registered", source, model);
        }
        return result;
    }

    private void logWarning(String message, Object source, Saveable model) {
        AssertionFailedException assertionFailedException = new AssertionFailedException("unknown saveable: " + model + " from part: " + source);
        assertionFailedException.fillInStackTrace();
        WorkbenchPlugin.log(StatusUtil.newStatus(2, message, (Throwable)assertionFailedException));
    }

    public void handleLifecycleEvent(SaveablesLifecycleEvent event) {
        if (!(event.getSource() instanceof IWorkbenchPart)) {
            this.updateNonPartSource((ISaveablesSource)event.getSource());
            return;
        }
        Saveable[] modelArray = event.getSaveables();
        switch (event.getEventType()) {
            case 1: {
                this.addModels(event.getSource(), modelArray);
                break;
            }
            case 2: {
                Saveable[] models = event.getSaveables();
                HashMap modelsDecrementing = new HashMap();
                HashSet modelsClosing = new HashSet();
                int i = 0;
                while (i < models.length) {
                    this.incrementRefCount(modelsDecrementing, models[i]);
                    ++i;
                }
                this.fillModelsClosing(modelsClosing, modelsDecrementing);
                boolean canceled = this.promptForSavingIfNecessary(PlatformUI.getWorkbench().getActiveWorkbenchWindow(), modelsClosing, modelsDecrementing, !event.isForce());
                if (!canceled) break;
                event.setVeto(true);
                break;
            }
            case 3: {
                this.removeModels(event.getSource(), modelArray);
                break;
            }
            case 4: {
                this.fireModelLifecycleEvent(new SaveablesLifecycleEvent(this, event.getEventType(), event.getSaveables(), false));
            }
        }
    }

    private void updateNonPartSource(ISaveablesSource source) {
        Saveable[] saveables = source.getSaveables();
        if (saveables.length == 0) {
            this.nonPartSources.remove(source);
        } else {
            this.nonPartSources.add(source);
        }
    }

    private void removeModels(Object source, Saveable[] modelArray) {
        ArrayList<Saveable> removed = new ArrayList<Saveable>();
        int i = 0;
        while (i < modelArray.length) {
            Saveable model = modelArray[i];
            if (this.removeModel(source, model)) {
                removed.add(model);
            }
            ++i;
        }
        if (removed.size() > 0) {
            this.fireModelLifecycleEvent(new SaveablesLifecycleEvent(this, 1, removed.toArray(new Saveable[removed.size()]), false));
        }
    }

    private void addModels(Object source, Saveable[] modelArray) {
        ArrayList<Saveable> added = new ArrayList<Saveable>();
        int i = 0;
        while (i < modelArray.length) {
            Saveable model = modelArray[i];
            if (this.addModel(source, model)) {
                added.add(model);
            }
            ++i;
        }
        if (added.size() > 0) {
            this.fireModelLifecycleEvent(new SaveablesLifecycleEvent(this, 1, added.toArray(new Saveable[added.size()]), false));
        }
    }

    private void fireModelLifecycleEvent(SaveablesLifecycleEvent event) {
        Object[] listenerArray = this.listeners.getListeners();
        int i = 0;
        while (i < listenerArray.length) {
            ((ISaveablesLifecycleListener)listenerArray[i]).handleLifecycleEvent(event);
            ++i;
        }
    }

    public void addModelLifecycleListener(ISaveablesLifecycleListener listener) {
        this.listeners.add((Object)listener);
    }

    public void removeModelLifecycleListener(ISaveablesLifecycleListener listener) {
        this.listeners.remove((Object)listener);
    }

    public Object preCloseParts(List partsToClose, boolean save, IWorkbenchWindow window) {
        return this.preCloseParts(partsToClose, save, window, window);
    }

    public Object preCloseParts(List partsToClose, boolean save, IShellProvider shellProvider, IWorkbenchWindow window) {
        boolean canceled;
        PostCloseInfo postCloseInfo = new PostCloseInfo();
        Iterator it = partsToClose.iterator();
        while (it.hasNext()) {
            IWorkbenchPart part = (IWorkbenchPart)it.next();
            postCloseInfo.partsClosing.add(part);
            if (part instanceof ISaveablePart) {
                ISaveablePart saveablePart = (ISaveablePart)((Object)part);
                if (save && !saveablePart.isSaveOnCloseNeeded()) continue;
            }
            if (save && part instanceof ISaveablePart2) {
                ISaveablePart2 saveablePart2 = (ISaveablePart2)((Object)part);
                int response = SaveableHelper.savePart(saveablePart2, window, true);
                if (response == 2) {
                    return null;
                }
                if (response != 3) continue;
            }
            Saveable[] modelsFromSource = this.getSaveables(part);
            int i = 0;
            while (i < modelsFromSource.length) {
                this.incrementRefCount(postCloseInfo.modelsDecrementing, modelsFromSource[i]);
                ++i;
            }
        }
        this.fillModelsClosing(postCloseInfo.modelsClosing, postCloseInfo.modelsDecrementing);
        if (save && (canceled = this.promptForSavingIfNecessary(shellProvider, window, postCloseInfo.modelsClosing, postCloseInfo.modelsDecrementing, true))) {
            return null;
        }
        return postCloseInfo;
    }

    private boolean promptForSavingIfNecessary(IWorkbenchWindow window, Set modelsClosing, Map modelsDecrementing, boolean canCancel) {
        return this.promptForSavingIfNecessary(window, window, modelsClosing, modelsDecrementing, canCancel);
    }

    private boolean promptForSavingIfNecessary(IShellProvider shellProvider, IWorkbenchWindow window, Set modelsClosing, Map modelsDecrementing, boolean canCancel) {
        boolean shouldCancel;
        ArrayList<Saveable> modelsToOptionallySave = new ArrayList<Saveable>();
        Iterator it = modelsDecrementing.keySet().iterator();
        while (it.hasNext()) {
            Saveable modelDecrementing = (Saveable)it.next();
            if (!modelDecrementing.isDirty() || modelsClosing.contains(modelDecrementing)) continue;
            modelsToOptionallySave.add(modelDecrementing);
        }
        boolean bl = shouldCancel = modelsToOptionallySave.isEmpty() ? false : this.promptForSaving(modelsToOptionallySave, shellProvider, window, canCancel, true);
        if (shouldCancel) {
            return true;
        }
        ArrayList<Saveable> modelsToSave = new ArrayList<Saveable>();
        Iterator it2 = modelsClosing.iterator();
        while (it2.hasNext()) {
            Saveable modelClosing = (Saveable)it2.next();
            if (!modelClosing.isDirty()) continue;
            modelsToSave.add(modelClosing);
        }
        return modelsToSave.isEmpty() ? false : this.promptForSaving(modelsToSave, shellProvider, window, canCancel, false);
    }

    private void fillModelsClosing(Set modelsClosing, Map modelsDecrementing) {
        Iterator it = modelsDecrementing.keySet().iterator();
        while (it.hasNext()) {
            Saveable model = (Saveable)it.next();
            if (!modelsDecrementing.get(model).equals(this.modelRefCounts.get(model))) continue;
            modelsClosing.add(model);
        }
    }

    public boolean promptForSaving(List modelsToSave, IShellProvider shellProvider, IRunnableContext runnableContext, final boolean canCancel, boolean stillOpenElsewhere) {
        block19: {
            IPreferenceStore apiPreferenceStore;
            block20: {
                Object dialog;
                String message;
                boolean dontPrompt;
                if (modelsToSave.size() <= 0) break block19;
                boolean canceled = SaveableHelper.waitForBackgroundSaveJobs(modelsToSave);
                if (canceled) {
                    return true;
                }
                apiPreferenceStore = PrefUtil.getAPIPreferenceStore();
                boolean bl = dontPrompt = stillOpenElsewhere && !apiPreferenceStore.getBoolean("PROMPT_WHEN_SAVEABLE_STILL_OPEN");
                if (dontPrompt) {
                    modelsToSave.clear();
                    return false;
                }
                if (modelsToSave.size() != 1) break block20;
                Saveable model = (Saveable)modelsToSave.get(0);
                String[] buttons = canCancel ? new String[]{IDialogConstants.YES_LABEL, IDialogConstants.NO_LABEL, IDialogConstants.CANCEL_LABEL} : new String[]{IDialogConstants.YES_LABEL, IDialogConstants.NO_LABEL};
                int choice = 1;
                if (stillOpenElsewhere) {
                    message = NLS.bind((String)WorkbenchMessages.EditorManager_saveChangesOptionallyQuestion, (Object)model.getName());
                    MessageDialogWithToggle dialogWithToggle = new MessageDialogWithToggle(shellProvider.getShell(), WorkbenchMessages.Save_Resource, null, message, 3, buttons, 0, WorkbenchMessages.EditorManager_closeWithoutPromptingOption, false){

                        protected int getShellStyle() {
                            return (canCancel ? 64 : 0) | 0x20 | 0x800 | 0x10000 | 0x10000000 | 2.getDefaultOrientation();
                        }
                    };
                    dialog = dialogWithToggle;
                } else {
                    message = NLS.bind((String)WorkbenchMessages.EditorManager_saveChangesQuestion, (Object)model.getName());
                    dialog = new MessageDialog(shellProvider.getShell(), WorkbenchMessages.Save_Resource, null, message, 3, buttons, 0){

                        protected int getShellStyle() {
                            return (canCancel ? 64 : 0) | 0x20 | 0x800 | 0x10000 | 0x10000000 | 3.getDefaultOrientation();
                        }
                    };
                }
                choice = SaveableHelper.testGetAutomatedResponse();
                if (SaveableHelper.testGetAutomatedResponse() == -1) {
                    choice = dialog.open();
                    if (stillOpenElsewhere) {
                        switch (choice) {
                            case 2: {
                                choice = 0;
                                break;
                            }
                            case 3: {
                                choice = 1;
                                break;
                            }
                            case 1: {
                                choice = 2;
                                break;
                            }
                        }
                        MessageDialogWithToggle dialogWithToggle = (MessageDialogWithToggle)dialog;
                        if (choice != 2 && dialogWithToggle.getToggleState()) {
                            apiPreferenceStore.setValue("PROMPT_WHEN_SAVEABLE_STILL_OPEN", false);
                        }
                    }
                }
                switch (choice) {
                    case 0: {
                        break block19;
                    }
                    case 1: {
                        modelsToSave.clear();
                        break block19;
                    }
                    default: {
                        return true;
                    }
                }
            }
            MyListSelectionDialog dlg = new MyListSelectionDialog(shellProvider.getShell(), modelsToSave, (IStructuredContentProvider)new ArrayContentProvider(), (ILabelProvider)new WorkbenchPartLabelProvider(), stillOpenElsewhere ? WorkbenchMessages.EditorManager_saveResourcesOptionallyMessage : WorkbenchMessages.EditorManager_saveResourcesMessage, canCancel, stillOpenElsewhere);
            dlg.setInitialSelections(modelsToSave.toArray());
            dlg.setTitle(EditorManager.SAVE_RESOURCES_TITLE);
            if (SaveableHelper.testGetAutomatedResponse() == -1) {
                int result = dlg.open();
                if (result == 1) {
                    return true;
                }
                if (dlg.getDontPromptSelection()) {
                    apiPreferenceStore.setValue("PROMPT_WHEN_SAVEABLE_STILL_OPEN", false);
                }
                modelsToSave = Arrays.asList(dlg.getResult());
            }
        }
        return this.saveModels(modelsToSave, shellProvider, runnableContext);
    }

    public boolean saveModels(final List finalModels, final IShellProvider shellProvider, IRunnableContext runnableContext) {
        IRunnableWithProgress progressOp = new IRunnableWithProgress(){

            public void run(IProgressMonitor monitor) {
                EventLoopProgressMonitor monitorWrap = new EventLoopProgressMonitor(monitor);
                monitorWrap.beginTask(WorkbenchMessages.Saving_Modifications, finalModels.size());
                Iterator i = finalModels.iterator();
                while (i.hasNext()) {
                    Saveable model = (Saveable)i.next();
                    if (!model.isDirty()) {
                        monitor.worked(1);
                        continue;
                    }
                    SaveableHelper.doSaveModel(model, (IProgressMonitor)new SubProgressMonitor((IProgressMonitor)monitorWrap, 1), shellProvider, true);
                    if (monitorWrap.isCanceled()) break;
                }
                monitorWrap.done();
            }
        };
        return !SaveableHelper.runProgressMonitorOperation(WorkbenchMessages.Save_All, progressOp, runnableContext, shellProvider);
    }

    public void postClose(Object postCloseInfoObject) {
        PostCloseInfo postCloseInfo = (PostCloseInfo)postCloseInfoObject;
        ArrayList<Saveable> removed = new ArrayList<Saveable>();
        Iterator it = postCloseInfo.partsClosing.iterator();
        while (it.hasNext()) {
            IWorkbenchPart part = (IWorkbenchPart)it.next();
            HashSet saveables = (HashSet)this.modelMap.get(part);
            if (saveables == null) continue;
            saveables = new HashSet(saveables);
            Iterator it2 = saveables.iterator();
            while (it2.hasNext()) {
                Saveable saveable = (Saveable)it2.next();
                if (!this.removeModel(part, saveable)) continue;
                removed.add(saveable);
            }
        }
        if (removed.size() > 0) {
            this.fireModelLifecycleEvent(new SaveablesLifecycleEvent(this, 3, removed.toArray(new Saveable[removed.size()]), false));
        }
    }

    private Saveable[] getSaveables(IWorkbenchPart part) {
        if (part instanceof ISaveablesSource) {
            ISaveablesSource source = (ISaveablesSource)((Object)part);
            return source.getSaveables();
        }
        if (part instanceof ISaveablePart) {
            return new Saveable[]{new DefaultSaveable(part)};
        }
        return new Saveable[0];
    }

    public void postOpen(IWorkbenchPart part) {
        this.addModels(part, this.getSaveables(part));
    }

    public void dirtyChanged(IWorkbenchPart part) {
        Saveable[] saveables = this.getSaveables(part);
        if (saveables.length > 0) {
            this.fireModelLifecycleEvent(new SaveablesLifecycleEvent(this, 4, saveables, false));
        }
    }

    public Object[] testGetSourcesForModel(Saveable model) {
        ArrayList result = new ArrayList();
        Iterator it = this.modelMap.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = it.next();
            Set values = (Set)entry.getValue();
            if (!values.contains(model)) continue;
            result.add(entry.getKey());
        }
        return result.toArray();
    }

    public ISaveablesSource[] getNonPartSources() {
        return this.nonPartSources.toArray(new ISaveablesSource[this.nonPartSources.size()]);
    }

    public IWorkbenchPart[] getPartsForSaveable(Saveable model) {
        ArrayList result = new ArrayList();
        Iterator it = this.modelMap.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = it.next();
            Set values = (Set)entry.getValue();
            if (!values.contains(model) || !(entry.getKey() instanceof IWorkbenchPart)) continue;
            result.add(entry.getKey());
        }
        return result.toArray(new IWorkbenchPart[result.size()]);
    }

    private static final class MyListSelectionDialog
    extends ListSelectionDialog {
        private final boolean canCancel;
        private Button checkbox;
        private boolean dontPromptSelection;
        private boolean stillOpenElsewhere;

        private MyListSelectionDialog(Shell shell, Object input, IStructuredContentProvider contentprovider, ILabelProvider labelProvider, String message, boolean canCancel, boolean stillOpenElsewhere) {
            super(shell, input, contentprovider, labelProvider, message);
            this.canCancel = canCancel;
            this.stillOpenElsewhere = stillOpenElsewhere;
            int shellStyle = this.getShellStyle();
            if (!canCancel) {
                shellStyle &= 0xFFFFFFBF;
            }
            this.setShellStyle(shellStyle | 0x10000000);
        }

        public boolean getDontPromptSelection() {
            return this.dontPromptSelection;
        }

        protected void createButtonsForButtonBar(Composite parent) {
            this.createButton(parent, 0, IDialogConstants.OK_LABEL, true);
            if (this.canCancel) {
                this.createButton(parent, 1, IDialogConstants.CANCEL_LABEL, false);
            }
        }

        protected Control createDialogArea(Composite parent) {
            Composite dialogAreaComposite = (Composite)super.createDialogArea(parent);
            if (this.stillOpenElsewhere) {
                Composite checkboxComposite = new Composite(dialogAreaComposite, 0);
                checkboxComposite.setLayout((Layout)new GridLayout(2, false));
                this.checkbox = new Button(checkboxComposite, 32);
                this.checkbox.addSelectionListener((SelectionListener)new SelectionAdapter(this){
                    final /* synthetic */ MyListSelectionDialog this$1;
                    {
                        this.this$1 = myListSelectionDialog;
                    }

                    public void widgetSelected(SelectionEvent e) {
                        MyListSelectionDialog.access$1(this.this$1, MyListSelectionDialog.access$0(this.this$1).getSelection());
                    }
                });
                GridData gd = new GridData();
                gd.horizontalAlignment = 1;
                this.checkbox.setLayoutData((Object)gd);
                Label label = new Label(checkboxComposite, 0);
                label.setText(WorkbenchMessages.EditorManager_closeWithoutPromptingOption);
                gd = new GridData();
                gd.grabExcessHorizontalSpace = true;
                gd.horizontalAlignment = 1;
            }
            return dialogAreaComposite;
        }

        static /* synthetic */ Button access$0(MyListSelectionDialog myListSelectionDialog) {
            return myListSelectionDialog.checkbox;
        }

        static /* synthetic */ void access$1(MyListSelectionDialog myListSelectionDialog, boolean bl) {
            myListSelectionDialog.dontPromptSelection = bl;
        }
    }

    private static class PostCloseInfo {
        private List partsClosing = new ArrayList();
        private Map modelsDecrementing = new HashMap();
        private Set modelsClosing = new HashSet();

        private PostCloseInfo() {
        }
    }
}

