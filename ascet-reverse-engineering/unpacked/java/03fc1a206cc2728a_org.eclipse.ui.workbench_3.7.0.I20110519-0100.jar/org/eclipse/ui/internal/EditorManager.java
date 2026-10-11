/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.AbstractHandler
 *  org.eclipse.core.commands.ExecutionEvent
 *  org.eclipse.core.commands.IHandler
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtension
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.ISafeRunnable
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.core.runtime.SafeRunner
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.SubProgressMonitor
 *  org.eclipse.core.runtime.dynamichelpers.IExtensionChangeHandler
 *  org.eclipse.core.runtime.dynamichelpers.IExtensionTracker
 *  org.eclipse.jface.dialogs.DialogSettings
 *  org.eclipse.jface.dialogs.IDialogConstants
 *  org.eclipse.jface.dialogs.IDialogSettings
 *  org.eclipse.jface.dialogs.MessageDialog
 *  org.eclipse.jface.internal.provisional.action.ICoolBarManager2
 *  org.eclipse.jface.operation.IRunnableContext
 *  org.eclipse.jface.operation.IRunnableWithProgress
 *  org.eclipse.jface.preference.IPreferenceStore
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.jface.resource.ImageRegistry
 *  org.eclipse.jface.resource.JFaceResources
 *  org.eclipse.jface.util.IPropertyChangeListener
 *  org.eclipse.jface.util.PropertyChangeEvent
 *  org.eclipse.jface.util.SafeRunnable
 *  org.eclipse.jface.viewers.ArrayContentProvider
 *  org.eclipse.jface.viewers.ILabelProvider
 *  org.eclipse.jface.viewers.IStructuredContentProvider
 *  org.eclipse.jface.window.IShellProvider
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.swt.custom.BusyIndicator
 *  org.eclipse.swt.program.Program
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.internal;

import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import org.eclipse.core.commands.AbstractHandler;
import org.eclipse.core.commands.ExecutionEvent;
import org.eclipse.core.commands.IHandler;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.SafeRunner;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.SubProgressMonitor;
import org.eclipse.core.runtime.dynamichelpers.IExtensionChangeHandler;
import org.eclipse.core.runtime.dynamichelpers.IExtensionTracker;
import org.eclipse.jface.dialogs.DialogSettings;
import org.eclipse.jface.dialogs.IDialogConstants;
import org.eclipse.jface.dialogs.IDialogSettings;
import org.eclipse.jface.dialogs.MessageDialog;
import org.eclipse.jface.internal.provisional.action.ICoolBarManager2;
import org.eclipse.jface.operation.IRunnableContext;
import org.eclipse.jface.operation.IRunnableWithProgress;
import org.eclipse.jface.preference.IPreferenceStore;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.resource.ImageRegistry;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.jface.util.PropertyChangeEvent;
import org.eclipse.jface.util.SafeRunnable;
import org.eclipse.jface.viewers.ArrayContentProvider;
import org.eclipse.jface.viewers.ILabelProvider;
import org.eclipse.jface.viewers.IStructuredContentProvider;
import org.eclipse.jface.window.IShellProvider;
import org.eclipse.osgi.util.NLS;
import org.eclipse.swt.custom.BusyIndicator;
import org.eclipse.swt.program.Program;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.ActiveShellExpression;
import org.eclipse.ui.IEditorActionBarContributor;
import org.eclipse.ui.IEditorDescriptor;
import org.eclipse.ui.IEditorInput;
import org.eclipse.ui.IEditorLauncher;
import org.eclipse.ui.IEditorMatchingStrategy;
import org.eclipse.ui.IEditorPart;
import org.eclipse.ui.IEditorReference;
import org.eclipse.ui.IEditorRegistry;
import org.eclipse.ui.IEditorSite;
import org.eclipse.ui.IMemento;
import org.eclipse.ui.IPathEditorInput;
import org.eclipse.ui.IPersistableEditor;
import org.eclipse.ui.IPersistableElement;
import org.eclipse.ui.ISaveablePart;
import org.eclipse.ui.ISaveablePart2;
import org.eclipse.ui.ISaveablesSource;
import org.eclipse.ui.IViewPart;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.IWorkbenchPart3;
import org.eclipse.ui.IWorkbenchPartReference;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.PartInitException;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.Saveable;
import org.eclipse.ui.dialogs.EditorSelectionDialog;
import org.eclipse.ui.dialogs.ListSelectionDialog;
import org.eclipse.ui.handlers.IHandlerActivation;
import org.eclipse.ui.handlers.IHandlerService;
import org.eclipse.ui.internal.DefaultSaveable;
import org.eclipse.ui.internal.EditorActionBars;
import org.eclipse.ui.internal.EditorActionBuilder;
import org.eclipse.ui.internal.EditorAreaHelper;
import org.eclipse.ui.internal.EditorPane;
import org.eclipse.ui.internal.EditorReference;
import org.eclipse.ui.internal.EditorSite;
import org.eclipse.ui.internal.EditorStack;
import org.eclipse.ui.internal.MultiEditorInnerPane;
import org.eclipse.ui.internal.PartPane;
import org.eclipse.ui.internal.Perspective;
import org.eclipse.ui.internal.SaveableHelper;
import org.eclipse.ui.internal.SaveablesList;
import org.eclipse.ui.internal.StartupThreading;
import org.eclipse.ui.internal.Workbench;
import org.eclipse.ui.internal.WorkbenchImages;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchPage;
import org.eclipse.ui.internal.WorkbenchPartReference;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.WorkbenchWindow;
import org.eclipse.ui.internal.dialogs.EventLoopProgressMonitor;
import org.eclipse.ui.internal.editorsupport.ComponentSupport;
import org.eclipse.ui.internal.misc.ExternalEditor;
import org.eclipse.ui.internal.misc.StatusUtil;
import org.eclipse.ui.internal.misc.UIStats;
import org.eclipse.ui.internal.part.NullEditorInput;
import org.eclipse.ui.internal.progress.ProgressManagerUtil;
import org.eclipse.ui.internal.registry.EditorDescriptor;
import org.eclipse.ui.internal.registry.EditorRegistry;
import org.eclipse.ui.internal.tweaklets.TabBehaviour;
import org.eclipse.ui.internal.tweaklets.Tweaklets;
import org.eclipse.ui.internal.util.PrefUtil;
import org.eclipse.ui.internal.util.Util;
import org.eclipse.ui.model.WorkbenchPartLabelProvider;
import org.eclipse.ui.part.AbstractMultiEditor;
import org.eclipse.ui.part.MultiEditor;
import org.eclipse.ui.part.MultiEditorInput;
import org.eclipse.ui.statushandlers.StatusManager;

public class EditorManager
implements IExtensionChangeHandler {
    EditorAreaHelper editorPresentation;
    WorkbenchWindow window;
    WorkbenchPage page;
    private Map actionCache = new HashMap();
    private static final String PIN_EDITOR_KEY = "PIN_EDITOR";
    private static final String PIN_EDITOR = "ovr16/pinned_ovr.gif";
    private IPropertyChangeListener editorPropChangeListnener = null;
    private IHandlerActivation pinEditorHandlerActivation = null;
    private long maxFileSize = 0L;
    private boolean checkDocumentSize;
    static final String RESOURCES_TO_SAVE_MESSAGE = WorkbenchMessages.EditorManager_saveResourcesMessage;
    static final String SAVE_RESOURCES_TITLE = WorkbenchMessages.EditorManager_saveResourcesTitle;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;

    public EditorManager(WorkbenchWindow window, WorkbenchPage workbenchPage, EditorAreaHelper pres) {
        Assert.isNotNull((Object)window);
        Assert.isNotNull((Object)workbenchPage);
        Assert.isNotNull((Object)pres);
        this.window = window;
        this.page = workbenchPage;
        this.editorPresentation = pres;
        this.initMaxFileSize();
        this.page.getExtensionTracker().registerHandler((IExtensionChangeHandler)this, null);
    }

    private void initMaxFileSize() {
        IPreferenceStore preferenceStore = PrefUtil.getInternalPreferenceStore();
        this.maxFileSize = preferenceStore.getLong("LARGE_DOC_SIZE_FOR_EDITORS");
        this.checkDocumentSize = this.maxFileSize != 0L;
    }

    void checkDeleteEditorResources() {
        IEditorReference[] editors = this.page.getEditorReferences();
        if (editors.length == 0) {
            if (this.editorPropChangeListnener != null) {
                IPreferenceStore prefStore = WorkbenchPlugin.getDefault().getPreferenceStore();
                prefStore.removePropertyChangeListener(this.editorPropChangeListnener);
                this.editorPropChangeListnener = null;
            }
            if (this.pinEditorHandlerActivation != null) {
                IWorkbench iWorkbench = this.window.getWorkbench();
                Class<?> clazz = class$0;
                if (clazz == null) {
                    try {
                        clazz = class$0 = Class.forName("org.eclipse.ui.handlers.IHandlerService");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                IHandlerService handlerService = (IHandlerService)iWorkbench.getService(clazz);
                handlerService.deactivateHandler(this.pinEditorHandlerActivation);
                this.pinEditorHandlerActivation = null;
            }
        }
    }

    void checkCreateEditorPropListener() {
        if (this.editorPropChangeListnener == null) {
            this.editorPropChangeListnener = new IPropertyChangeListener(){

                public void propertyChange(PropertyChangeEvent event) {
                    if (event.getProperty().equals("REUSE_OPEN_EDITORS_BOOLEAN")) {
                        IEditorReference[] editors = EditorManager.this.getEditors();
                        int i = 0;
                        while (i < editors.length) {
                            ((EditorReference)editors[i]).pinStatusUpdated();
                            ++i;
                        }
                    }
                }
            };
            WorkbenchPlugin.getDefault().getPreferenceStore().addPropertyChangeListener(this.editorPropChangeListnener);
        }
    }

    void checkCreatePinEditorShortcutKeyHandler() {
        if (this.pinEditorHandlerActivation == null) {
            Shell shell = this.window.getShell();
            AbstractHandler pinEditorHandler = new AbstractHandler(){

                public final Object execute(ExecutionEvent event) {
                    IEditorReference ref;
                    IPreferenceStore store = WorkbenchPlugin.getDefault().getPreferenceStore();
                    if ((store.getBoolean("REUSE_OPEN_EDITORS_BOOLEAN") || ((TabBehaviour)Tweaklets.get(TabBehaviour.KEY)).alwaysShowPinAction()) && (ref = EditorManager.this.editorPresentation.getVisibleEditor()) instanceof WorkbenchPartReference) {
                        WorkbenchPartReference concreteRef = (WorkbenchPartReference)((Object)ref);
                        concreteRef.setPinned(concreteRef.isPinned());
                    }
                    return null;
                }
            };
            IWorkbench iWorkbench = this.window.getWorkbench();
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.ui.handlers.IHandlerService");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            IHandlerService handlerService = (IHandlerService)iWorkbench.getService(clazz);
            this.pinEditorHandlerActivation = handlerService.activateHandler("org.eclipse.ui.window.pinEditor", (IHandler)pinEditorHandler, new ActiveShellExpression(shell));
        }
    }

    ImageDescriptor getEditorPinImageDesc() {
        ImageRegistry registry = JFaceResources.getImageRegistry();
        ImageDescriptor pinDesc = registry.getDescriptor(PIN_EDITOR_KEY);
        if (pinDesc == null) {
            pinDesc = WorkbenchImages.getWorkbenchImageDescriptor(PIN_EDITOR);
            registry.put(PIN_EDITOR_KEY, pinDesc);
        }
        return pinDesc;
    }

    private List collectDirtyEditors() {
        ArrayList<IEditorPart> result = new ArrayList<IEditorPart>(3);
        IEditorReference[] editors = this.page.getEditorReferences();
        int i = 0;
        while (i < editors.length) {
            IEditorPart part = (IEditorPart)editors[i].getPart(false);
            if (part != null && part.isDirty()) {
                result.add(part);
            }
            ++i;
        }
        return result;
    }

    public boolean containsEditor(IEditorReference ref) {
        IEditorReference[] editors = this.page.getEditorReferences();
        int i = 0;
        while (i < editors.length) {
            if (ref == editors[i]) {
                return true;
            }
            ++i;
        }
        return false;
    }

    private EditorActionBars createEditorActionBars(EditorDescriptor desc, IEditorSite site) {
        EditorActionBuilder builder;
        String type = desc.getId();
        EditorActionBars actionBars = (EditorActionBars)this.actionCache.get(type);
        if (actionBars != null) {
            actionBars.addRef();
            return actionBars;
        }
        actionBars = new EditorActionBars(this.page, site.getWorkbenchWindow(), type);
        actionBars.addRef();
        this.actionCache.put(type, actionBars);
        IEditorActionBarContributor contr = desc.createActionBarContributor();
        if (contr != null) {
            actionBars.setEditorContributor(contr);
            contr.init(actionBars, this.page);
        }
        if ((contr = (builder = new EditorActionBuilder()).readActionExtensions(desc)) != null) {
            actionBars.setExtensionContributor(contr);
            contr.init(actionBars, this.page);
        }
        return actionBars;
    }

    private EditorActionBars createEmptyEditorActionBars(IEditorSite site) {
        String type = String.valueOf(System.currentTimeMillis());
        EditorActionBars actionBars = new EditorActionBars(this.page, site.getWorkbenchWindow(), type);
        actionBars.addRef();
        this.actionCache.put(type, actionBars);
        return actionBars;
    }

    void disposeEditorActionBars(EditorActionBars actionBars) {
        actionBars.removeRef();
        if (actionBars.getRef() <= 0) {
            ICoolBarManager2 coolBar;
            String type = actionBars.getEditorType();
            Object obj = this.actionCache.get(type);
            if (actionBars == obj) {
                this.actionCache.remove(type);
            }
            if ((coolBar = (ICoolBarManager2)this.window.getCoolBarManager2()) != null) {
                coolBar.refresh();
            }
            actionBars.dispose();
        }
    }

    public IEditorPart findEditor(IEditorInput input) {
        return this.findEditor(null, input, 1);
    }

    public IEditorPart findEditor(String editorId, IEditorInput input, int matchFlags) {
        IEditorReference[] refs = this.findEditors(input, editorId, matchFlags);
        if (refs.length == 0) {
            return null;
        }
        return refs[0].getEditor(true);
    }

    public IEditorReference[] findEditors(IEditorInput input, String editorId, int matchFlags) {
        if (matchFlags == 0) {
            return new IEditorReference[0];
        }
        ArrayList result = new ArrayList();
        ArrayList<IEditorReference> othersList = new ArrayList<IEditorReference>(Arrays.asList(this.page.getEditorReferences()));
        if (!othersList.isEmpty()) {
            IEditorReference active = this.page.getActiveEditorReference();
            if (active != null) {
                othersList.remove(active);
                ArrayList<IEditorReference> activeList = new ArrayList<IEditorReference>(1);
                activeList.add(active);
                this.findEditors(activeList, input, editorId, matchFlags, result);
            }
            this.findEditors(othersList, input, editorId, matchFlags, result);
        }
        return result.toArray(new IEditorReference[result.size()]);
    }

    private void findEditors(List editorList, IEditorInput input, String editorId, int matchFlags, List result) {
        IEditorReference editor;
        Iterator i;
        if (matchFlags == 0) {
            return;
        }
        if ((matchFlags & 2) != 0 && editorId != null) {
            i = editorList.iterator();
            while (i.hasNext()) {
                editor = (EditorReference)i.next();
                if (editorId.equals(((WorkbenchPartReference)((Object)editor)).getId())) continue;
                i.remove();
            }
        }
        if ((matchFlags & 1) == 0) {
            result.addAll(editorList);
            return;
        }
        i = editorList.iterator();
        while (i.hasNext()) {
            IEditorMatchingStrategy matchingStrategy;
            editor = (EditorReference)i.next();
            EditorDescriptor desc = ((EditorReference)editor).getDescriptor();
            if (desc == null || (matchingStrategy = desc.getEditorMatchingStrategy()) == null) continue;
            i.remove();
            if (!matchingStrategy.matches(editor, input)) continue;
            result.add(editor);
        }
        i = editorList.iterator();
        while (i.hasNext()) {
            editor = (IEditorReference)i.next();
            IEditorPart part = (IEditorPart)editor.getPart(false);
            if (part == null) continue;
            i.remove();
            if (part.getEditorInput() == null || !part.getEditorInput().equals(input)) continue;
            result.add(editor);
        }
        String name = input.getName();
        IPersistableElement persistable = input.getPersistable();
        if (name == null || persistable == null) {
            return;
        }
        String id = persistable.getFactoryId();
        if (id == null) {
            return;
        }
        Iterator i2 = editorList.iterator();
        while (i2.hasNext()) {
            EditorReference editor2 = (EditorReference)i2.next();
            if (!name.equals(editor2.getName()) || !id.equals(editor2.getFactoryId())) continue;
            try {
                IEditorInput restoredInput = editor2.getEditorInput();
                if (!Util.equals(restoredInput, input)) continue;
                result.add(editor2);
            }
            catch (PartInitException e1) {
                WorkbenchPlugin.log((Throwable)((Object)e1));
            }
        }
    }

    private Display getDisplay() {
        return this.window.getShell().getDisplay();
    }

    public int getEditorCount() {
        return this.page.getEditorReferences().length;
    }

    private IEditorRegistry getEditorRegistry() {
        return WorkbenchPlugin.getDefault().getEditorRegistry();
    }

    public IEditorPart[] getDirtyEditors() {
        List dirtyEditors = this.collectDirtyEditors();
        return dirtyEditors.toArray(new IEditorPart[dirtyEditors.size()]);
    }

    public IEditorReference[] getEditors() {
        return this.page.getEditorReferences();
    }

    public IEditorPart getVisibleEditor() {
        IEditorReference ref = this.editorPresentation.getVisibleEditor();
        if (ref == null) {
            return null;
        }
        return (IEditorPart)ref.getPart(true);
    }

    public boolean isSaveAllNeeded() {
        IEditorReference[] editors = this.page.getEditorReferences();
        int i = 0;
        while (i < editors.length) {
            IEditorReference ed = editors[i];
            if (ed.isDirty()) {
                return true;
            }
            ++i;
        }
        return false;
    }

    private IEditorReference findReusableEditor(EditorDescriptor desc) {
        return ((TabBehaviour)Tweaklets.get(TabBehaviour.KEY)).findReusableEditor(this.page);
    }

    public IEditorReference openEditor(String editorId, IEditorInput input, boolean setVisible, IMemento editorState) throws PartInitException {
        if (editorId == null || input == null) {
            throw new IllegalArgumentException();
        }
        IEditorDescriptor desc = this.getEditorRegistry().findEditor(editorId);
        if (desc != null && !desc.isOpenExternal() && this.isLargeDocument(input) && (desc = EditorManager.getAlternateEditor()) == null) {
            return null;
        }
        if (desc == null) {
            throw new PartInitException(NLS.bind((String)WorkbenchMessages.EditorManager_unknownEditorIDMessage, (Object)editorId));
        }
        IEditorReference result = this.openEditorFromDescriptor((EditorDescriptor)desc, input, editorState);
        return result;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public IEditorReference openEditorFromDescriptor(EditorDescriptor desc, IEditorInput input, IMemento editorState) throws PartInitException {
        IEditorReference result = null;
        if (desc.isInternal()) {
            result = this.reuseInternalEditor(desc, input);
            if (result == null) {
                result = new EditorReference(this, input, desc, editorState);
            }
        } else if (desc.getId().equals("org.eclipse.ui.systemInPlaceEditor")) {
            if (ComponentSupport.inPlaceEditorSupported()) {
                result = new EditorReference(this, input, desc);
            }
        } else if (desc.getId().equals("org.eclipse.ui.systemExternalEditor")) {
            IPathEditorInput pathInput = this.getPathEditorInput(input);
            if (pathInput == null) throw new PartInitException(WorkbenchMessages.EditorManager_systemEditorError);
            result = this.openSystemExternalEditor(pathInput.getPath());
        } else {
            if (!desc.isOpenExternal()) throw new PartInitException(NLS.bind((String)WorkbenchMessages.EditorManager_invalidDescriptor, (Object)desc.getId()));
            result = this.openExternalEditor(desc, input);
        }
        if (result != null) {
            this.createEditorTab((EditorReference)result, "");
        }
        Workbench wb = (Workbench)this.window.getWorkbench();
        wb.getEditorHistory().add(input, desc);
        return result;
    }

    private IEditorReference openExternalEditor(final EditorDescriptor desc, IEditorInput input) throws PartInitException {
        final CoreException[] ex = new CoreException[1];
        final IPathEditorInput pathInput = this.getPathEditorInput(input);
        if (pathInput == null || pathInput.getPath() == null) {
            throw new PartInitException(NLS.bind((String)WorkbenchMessages.EditorManager_errorOpeningExternalEditor, (Object)desc.getFileName(), (Object)desc.getId()));
        }
        BusyIndicator.showWhile((Display)this.getDisplay(), (Runnable)new Runnable(){

            public void run() {
                try {
                    if (desc.getLauncher() != null) {
                        Object launcher = WorkbenchPlugin.createExtension(desc.getConfigurationElement(), "launcher");
                        ((IEditorLauncher)launcher).open(pathInput.getPath());
                    } else {
                        ExternalEditor oEditor = new ExternalEditor(pathInput.getPath(), desc);
                        oEditor.open();
                    }
                }
                catch (CoreException e) {
                    ex[0] = e;
                }
            }
        });
        if (ex[0] != null) {
            throw new PartInitException(NLS.bind((String)WorkbenchMessages.EditorManager_errorOpeningExternalEditor, (Object)desc.getFileName(), (Object)desc.getId()), ex[0]);
        }
        return null;
    }

    IEditorReference[] openMultiEditor(IEditorReference ref, AbstractMultiEditor part, MultiEditorInput input) throws PartInitException {
        String[] editorArray = input.getEditors();
        IEditorInput[] inputArray = input.getInput();
        EditorDescriptor[] descArray = new EditorDescriptor[editorArray.length];
        IEditorReference[] refArray = new IEditorReference[editorArray.length];
        IEditorPart[] partArray = new IEditorPart[editorArray.length];
        IEditorRegistry reg = this.getEditorRegistry();
        int i = 0;
        while (i < editorArray.length) {
            EditorDescriptor innerDesc = (EditorDescriptor)reg.findEditor(editorArray[i]);
            if (innerDesc == null) {
                throw new PartInitException(NLS.bind((String)WorkbenchMessages.EditorManager_unknownEditorIDMessage, (Object)editorArray[i]));
            }
            descArray[i] = innerDesc;
            InnerEditor innerRef = new InnerEditor(ref, part, inputArray[i], descArray[i]);
            refArray[i] = innerRef;
            partArray[i] = innerRef.getEditor(true);
            ++i;
        }
        part.setChildren(partArray);
        return refArray;
    }

    private void createEditorTab(EditorReference ref, String workbookId) throws PartInitException {
        this.editorPresentation.addEditor(ref, workbookId, true);
    }

    EditorSite createSite(IEditorReference ref, IEditorPart part, EditorDescriptor desc, IEditorInput input) throws PartInitException {
        EditorSite site = new EditorSite(ref, part, this.page, desc);
        if (desc != null) {
            site.setActionBars(this.createEditorActionBars(desc, site));
        } else {
            site.setActionBars(this.createEmptyEditorActionBars(site));
        }
        String label = part.getTitle();
        try {
            try {
                UIStats.start(2, label);
                part.init(site, input);
            }
            finally {
                UIStats.end(2, part, label);
            }
            if (part.getSite() != site || part.getEditorSite() != site) {
                throw new PartInitException(NLS.bind((String)WorkbenchMessages.EditorManager_siteIncorrect, (Object)desc.getId()));
            }
        }
        catch (Exception e) {
            this.disposeEditorActionBars((EditorActionBars)site.getActionBars());
            site.dispose();
            if (e instanceof PartInitException) {
                throw (PartInitException)((Object)e);
            }
            throw new PartInitException(WorkbenchMessages.EditorManager_errorInInit, e);
        }
        return site;
    }

    private IEditorReference reuseInternalEditor(EditorDescriptor desc, IEditorInput input) throws PartInitException {
        Assert.isNotNull((Object)desc, (String)"descriptor must not be null");
        Assert.isNotNull((Object)input, (String)"input must not be null");
        IEditorReference reusableEditorRef = this.findReusableEditor(desc);
        if (reusableEditorRef != null) {
            return ((TabBehaviour)Tweaklets.get(TabBehaviour.KEY)).reuseInternalEditor(this.page, this, this.editorPresentation, desc, input, reusableEditorRef);
        }
        return null;
    }

    IEditorPart createPart(EditorDescriptor desc) throws PartInitException {
        try {
            IEditorPart result = desc.createEditor();
            IConfigurationElement element = desc.getConfigurationElement();
            if (element != null) {
                this.page.getExtensionTracker().registerObject(element.getDeclaringExtension(), (Object)result, 2);
            }
            return result;
        }
        catch (CoreException e) {
            throw new PartInitException(StatusUtil.newStatus(desc.getPluginID(), WorkbenchMessages.EditorManager_instantiationError, (Throwable)e));
        }
    }

    private IEditorReference openSystemExternalEditor(final IPath location) throws PartInitException {
        if (location == null) {
            throw new IllegalArgumentException();
        }
        final boolean[] result = new boolean[1];
        BusyIndicator.showWhile((Display)this.getDisplay(), (Runnable)new Runnable(){

            public void run() {
                if (location != null) {
                    result[0] = Program.launch((String)location.toOSString());
                }
            }
        });
        if (!result[0]) {
            throw new PartInitException(NLS.bind((String)WorkbenchMessages.EditorManager_unableToOpenExternalEditor, (Object)location));
        }
        return null;
    }

    ImageDescriptor findImage(EditorDescriptor desc, IPath path) {
        if (desc == null) {
            return ImageDescriptor.getMissingImageDescriptor();
        }
        if (desc.isOpenExternal() && path != null) {
            return PlatformUI.getWorkbench().getEditorRegistry().getImageDescriptor(path.toOSString());
        }
        return desc.getImageDescriptor();
    }

    public IStatus restoreState(IMemento memento) {
        MultiStatus result = new MultiStatus("org.eclipse.ui", 0, WorkbenchMessages.EditorManager_problemsRestoringEditors, null);
        final String[] activeWorkbookID = new String[1];
        final ArrayList visibleEditors = new ArrayList(5);
        final IEditorReference[] activeEditor = new IEditorReference[1];
        IMemento areaMem = memento.getChild("editorArea");
        if (areaMem != null) {
            result.add(this.editorPresentation.restoreState(areaMem));
            activeWorkbookID[0] = areaMem.getString("activeWorkbook");
        }
        IMemento[] editorMems = memento.getChildren("editor");
        int x = 0;
        while (x < editorMems.length) {
            this.restoreEditorState(editorMems[x], visibleEditors, activeEditor, result);
            ++x;
        }
        if (areaMem != null) {
            result.add(this.editorPresentation.restorePresentationState(areaMem));
        }
        try {
            StartupThreading.runWithThrowable(new StartupThreading.StartupRunnable(){

                public void runWithException() throws Throwable {
                    IWorkbenchPart editor;
                    int i = 0;
                    while (i < visibleEditors.size()) {
                        EditorManager.this.setVisibleEditor((IEditorReference)visibleEditors.get(i), false);
                        ++i;
                    }
                    if (activeWorkbookID[0] != null) {
                        EditorManager.this.editorPresentation.setActiveEditorWorkbookFromID(activeWorkbookID[0]);
                    }
                    if (activeEditor[0] != null && (editor = activeEditor[0].getPart(true)) != null) {
                        EditorManager.this.page.activate(editor);
                    }
                }
            });
        }
        catch (Throwable t) {
            result.add((IStatus)new Status(4, "org.eclipse.ui", 0, WorkbenchMessages.EditorManager_exceptionRestoringEditor, t));
        }
        return result;
    }

    public boolean saveAll(boolean confirm, boolean closing, boolean addNonPartSources) {
        ISaveablePart[] parts = this.page.getDirtyParts();
        if (parts.length == 0) {
            return true;
        }
        ArrayList<ISaveablePart> dirtyParts = new ArrayList<ISaveablePart>(parts.length);
        int i = 0;
        while (i < parts.length) {
            dirtyParts.add(parts[i]);
            ++i;
        }
        return EditorManager.saveAll(dirtyParts, confirm, closing, addNonPartSources, this.window);
    }

    public static boolean saveAll(List dirtyParts, boolean confirm, boolean closing, boolean addNonPartSources, IWorkbenchWindow window) {
        return EditorManager.saveAll(dirtyParts, confirm, closing, addNonPartSources, window, window);
    }

    public static boolean saveAll(List dirtyParts, final boolean confirm, final boolean closing, boolean addNonPartSources, IRunnableContext runnableContext, final IShellProvider shellProvider) {
        List<Object> modelsToSave;
        block25: {
            block23: {
                block24: {
                    Object part;
                    dirtyParts = new ArrayList(dirtyParts);
                    if (closing) {
                        Iterator it = dirtyParts.iterator();
                        while (it.hasNext()) {
                            ISaveablePart saveablePart = (ISaveablePart)it.next();
                            if (saveablePart.isSaveOnCloseNeeded()) continue;
                            it.remove();
                        }
                    }
                    if (!confirm) break block23;
                    boolean saveable2Processed = false;
                    ListIterator listIterator = dirtyParts.listIterator();
                    WorkbenchPage currentPage = null;
                    Object currentPageOriginalPerspective = null;
                    while (listIterator.hasNext()) {
                        int choice;
                        part = (IWorkbenchPart)listIterator.next();
                        if (!(part instanceof ISaveablePart2)) continue;
                        WorkbenchPage page = (WorkbenchPage)part.getSite().getPage();
                        if (!Util.equals(currentPage, page)) {
                            if (currentPage != null && currentPageOriginalPerspective != null && !currentPageOriginalPerspective.equals(currentPage.getActivePerspective())) {
                                currentPage.setPerspective(((Perspective)currentPageOriginalPerspective).getDesc());
                            }
                            currentPage = page;
                            currentPageOriginalPerspective = page.getActivePerspective();
                        }
                        if (confirm) {
                            IWorkbenchWindow partsWindow;
                            Perspective perspective;
                            if (part instanceof IViewPart && (perspective = page.getFirstPerspectiveWithView((IViewPart)part)) != null) {
                                page.setPerspective(perspective.getDesc());
                            }
                            if ((partsWindow = page.getWorkbenchWindow()) != partsWindow.getWorkbench().getActiveWorkbenchWindow()) {
                                Shell shell = partsWindow.getShell();
                                if (shell.getMinimized()) {
                                    shell.setMinimized(false);
                                }
                                shell.setActive();
                            }
                            page.bringToTop((IWorkbenchPart)part);
                        }
                        if ((choice = SaveableHelper.savePart((ISaveablePart2)part, page.getWorkbenchWindow(), confirm)) == 2) {
                            return false;
                        }
                        if (choice == 3) continue;
                        saveable2Processed = true;
                        listIterator.remove();
                    }
                    if (currentPage != null && currentPageOriginalPerspective != null && !currentPageOriginalPerspective.equals(currentPage.getActivePerspective())) {
                        currentPage.setPerspective(((Perspective)currentPageOriginalPerspective).getDesc());
                    }
                    if (saveable2Processed) {
                        listIterator = dirtyParts.listIterator();
                        while (listIterator.hasNext()) {
                            part = (ISaveablePart)listIterator.next();
                            if (part.isDirty()) continue;
                            listIterator.remove();
                        }
                    }
                    if ((modelsToSave = EditorManager.convertToSaveables(dirtyParts, closing, addNonPartSources)).isEmpty()) {
                        return true;
                    }
                    boolean canceled = SaveableHelper.waitForBackgroundSaveJobs(modelsToSave);
                    if (canceled) {
                        return false;
                    }
                    if (modelsToSave.size() != 1) break block24;
                    Saveable model = (Saveable)modelsToSave.get(0);
                    String message = NLS.bind((String)WorkbenchMessages.EditorManager_saveChangesQuestion, (Object)model.getName());
                    String[] buttons = new String[]{IDialogConstants.YES_LABEL, IDialogConstants.NO_LABEL, IDialogConstants.CANCEL_LABEL};
                    MessageDialog d = new MessageDialog(shellProvider.getShell(), WorkbenchMessages.Save_Resource, null, message, 3, buttons, 0){

                        protected int getShellStyle() {
                            return super.getShellStyle() | 0x10000000;
                        }
                    };
                    int choice = SaveableHelper.testGetAutomatedResponse();
                    if (SaveableHelper.testGetAutomatedResponse() == -1) {
                        choice = d.open();
                    }
                    switch (choice) {
                        case 0: {
                            break block25;
                        }
                        case 1: {
                            return true;
                        }
                        default: {
                            return false;
                        }
                    }
                }
                ListSelectionDialog dlg = new ListSelectionDialog(shellProvider.getShell(), modelsToSave, (IStructuredContentProvider)new ArrayContentProvider(), (ILabelProvider)new WorkbenchPartLabelProvider(), RESOURCES_TO_SAVE_MESSAGE){

                    protected int getShellStyle() {
                        return super.getShellStyle() | 0x10000000;
                    }
                };
                dlg.setInitialSelections(modelsToSave.toArray());
                dlg.setTitle(SAVE_RESOURCES_TITLE);
                if (SaveableHelper.testGetAutomatedResponse() == -1) {
                    int result = dlg.open();
                    if (result == 1) {
                        return false;
                    }
                    modelsToSave = Arrays.asList(dlg.getResult());
                }
                break block25;
            }
            modelsToSave = EditorManager.convertToSaveables(dirtyParts, closing, addNonPartSources);
        }
        if (modelsToSave.isEmpty()) {
            return true;
        }
        final List<Object> finalModels = modelsToSave;
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
                    SaveableHelper.doSaveModel(model, (IProgressMonitor)new SubProgressMonitor((IProgressMonitor)monitorWrap, 1), shellProvider, closing || confirm);
                    if (monitorWrap.isCanceled()) break;
                }
                monitorWrap.done();
            }
        };
        return SaveableHelper.runProgressMonitorOperation(WorkbenchMessages.Save_All, progressOp, runnableContext, shellProvider);
    }

    private static List convertToSaveables(List parts, boolean closing, boolean addNonPartSources) {
        ArrayList<Saveable> result = new ArrayList<Saveable>();
        HashSet<Saveable> seen = new HashSet<Saveable>();
        Iterator i = parts.iterator();
        while (i.hasNext()) {
            IWorkbenchPart part = (IWorkbenchPart)i.next();
            Saveable[] saveables = EditorManager.getSaveables(part);
            int j = 0;
            while (j < saveables.length) {
                Saveable saveable = saveables[j];
                if (saveable.isDirty() && !seen.contains(saveable)) {
                    seen.add(saveable);
                    if (!closing || EditorManager.closingLastPartShowingModel(saveable, parts, part.getSite().getPage())) {
                        result.add(saveable);
                    }
                }
                ++j;
            }
        }
        if (addNonPartSources) {
            IWorkbench iWorkbench = PlatformUI.getWorkbench();
            Class<?> clazz = class$1;
            if (clazz == null) {
                try {
                    clazz = class$1 = Class.forName("org.eclipse.ui.ISaveablesLifecycleListener");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            SaveablesList saveablesList = (SaveablesList)iWorkbench.getService(clazz);
            ISaveablesSource[] nonPartSources = saveablesList.getNonPartSources();
            int i2 = 0;
            while (i2 < nonPartSources.length) {
                Saveable[] saveables = nonPartSources[i2].getSaveables();
                int j = 0;
                while (j < saveables.length) {
                    Saveable saveable = saveables[j];
                    if (saveable.isDirty() && !seen.contains(saveable)) {
                        seen.add(saveable);
                        result.add(saveable);
                    }
                    ++j;
                }
                ++i2;
            }
        }
        return result;
    }

    private static Saveable[] getSaveables(IWorkbenchPart part) {
        if (part instanceof ISaveablesSource) {
            ISaveablesSource source = (ISaveablesSource)((Object)part);
            return source.getSaveables();
        }
        return new Saveable[]{new DefaultSaveable(part)};
    }

    private static boolean closingLastPartShowingModel(Saveable model, List closingParts, IWorkbenchPage page) {
        HashSet<IWorkbenchPart> closingPartsWithSameModel = new HashSet<IWorkbenchPart>();
        Iterator i = closingParts.iterator();
        while (i.hasNext()) {
            IWorkbenchPart part = (IWorkbenchPart)i.next();
            Saveable[] models = EditorManager.getSaveables(part);
            if (!Arrays.asList(models).contains(model)) continue;
            closingPartsWithSameModel.add(part);
        }
        IWorkbenchPartReference[] pagePartRefs = ((WorkbenchPage)page).getAllParts();
        HashSet<IWorkbenchPart> pagePartsWithSameModels = new HashSet<IWorkbenchPart>();
        int i2 = 0;
        while (i2 < pagePartRefs.length) {
            Saveable[] models;
            IWorkbenchPartReference partRef = pagePartRefs[i2];
            IWorkbenchPart part = partRef.getPart(false);
            if (part != null && Arrays.asList(models = EditorManager.getSaveables(part)).contains(model)) {
                pagePartsWithSameModels.add(part);
            }
            ++i2;
        }
        Iterator i22 = closingPartsWithSameModel.iterator();
        while (i22.hasNext()) {
            IWorkbenchPart part = (IWorkbenchPart)i22.next();
            pagePartsWithSameModels.remove(part);
        }
        return pagePartsWithSameModels.isEmpty();
    }

    public boolean savePart(ISaveablePart saveable, IWorkbenchPart part, boolean confirm) {
        return SaveableHelper.savePart(saveable, part, this.window, confirm);
    }

    public IStatus saveState(IMemento memento) {
        MultiStatus result = new MultiStatus("org.eclipse.ui", 0, WorkbenchMessages.EditorManager_problemsSavingEditors, null);
        IMemento editorAreaMem = memento.createChild("editorArea");
        result.add(this.editorPresentation.saveState(editorAreaMem));
        editorAreaMem.putString("activeWorkbook", this.editorPresentation.getActiveEditorWorkbookID());
        ArrayList workbooks = this.editorPresentation.getWorkbooks();
        Iterator iter = workbooks.iterator();
        while (iter.hasNext()) {
            EditorStack workbook = (EditorStack)iter.next();
            EditorPane[] editorPanes = workbook.getEditors();
            int i = 0;
            while (i < editorPanes.length) {
                IEditorReference editorReference = editorPanes[i].getEditorReference();
                EditorReference e = (EditorReference)editorReference;
                IEditorPart editor = editorReference.getEditor(false);
                if (editor == null) {
                    if (e.getMemento() != null) {
                        IMemento editorMem = memento.createChild("editor");
                        editorMem.putMemento(e.getMemento());
                    }
                } else {
                    this.saveEditorState(memento, e, result);
                }
                ++i;
            }
        }
        return result;
    }

    public boolean setVisibleEditor(IEditorReference newEd, boolean setFocus) {
        return this.editorPresentation.setVisibleEditor(newEd, setFocus);
    }

    private IPathEditorInput getPathEditorInput(IEditorInput input) {
        if (input instanceof IPathEditorInput) {
            return (IPathEditorInput)input;
        }
        Class<?> clazz = class$2;
        if (clazz == null) {
            try {
                clazz = class$2 = Class.forName("org.eclipse.ui.IPathEditorInput");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        return (IPathEditorInput)Util.getAdapter(input, clazz);
    }

    public void restoreEditorState(IMemento editorMem, ArrayList visibleEditors, IEditorReference[] activeEditor, MultiStatus result) {
        String strFocus;
        boolean visibleEditor;
        final EditorReference e = new EditorReference(this, editorMem);
        final String workbookID = editorMem.getString("workbook");
        try {
            StartupThreading.runWithPartInitExceptions(new StartupThreading.StartupRunnable(){

                public void runWithException() throws Throwable {
                    EditorManager.this.createEditorTab(e, workbookID);
                }
            });
        }
        catch (PartInitException ex) {
            result.add(ex.getStatus());
        }
        String strActivePart = editorMem.getString("activePart");
        if ("true".equals(strActivePart)) {
            activeEditor[0] = e;
        }
        if (visibleEditor = "true".equals(strFocus = editorMem.getString("focus"))) {
            visibleEditors.add(e);
        }
    }

    protected void saveEditorState(IMemento mem, IEditorReference ed, MultiStatus res) {
        final EditorReference editorRef = (EditorReference)ed;
        final IEditorPart editor = ed.getEditor(false);
        final IMemento memento = mem;
        final MultiStatus result = res;
        if (!(editor.getEditorSite() instanceof EditorSite)) {
            return;
        }
        EditorSite site = (EditorSite)editor.getEditorSite();
        if (site.getPane() instanceof MultiEditorInnerPane) {
            return;
        }
        SafeRunner.run((ISafeRunnable)new SafeRunnable(){

            public void run() {
                IPath path;
                Map properties;
                IEditorInput input = editor.getEditorInput();
                if (!input.exists()) {
                    return;
                }
                IPersistableElement persistable = input.getPersistable();
                if (persistable == null) {
                    return;
                }
                IMemento editorMem = memento.createChild("editor");
                editorMem.putString("title", editorRef.getTitle());
                editorMem.putString("name", editorRef.getName());
                editorMem.putString("id", editorRef.getId());
                editorMem.putString("tooltip", editorRef.getTitleToolTip());
                editorMem.putString("partName", editorRef.getPartName());
                if (editor instanceof IWorkbenchPart3 && !(properties = ((IWorkbenchPart3)((Object)editor)).getPartProperties()).isEmpty()) {
                    IMemento propBag = editorMem.createChild("properties");
                    Iterator i = properties.entrySet().iterator();
                    while (i.hasNext()) {
                        Map.Entry entry = i.next();
                        IMemento p = propBag.createChild("property", (String)entry.getKey());
                        p.putTextData((String)entry.getValue());
                    }
                }
                if (editorRef.isPinned()) {
                    editorMem.putString("pinned", "true");
                }
                EditorPane editorPane = (EditorPane)((EditorSite)editor.getEditorSite()).getPane();
                editorMem.putString("workbook", editorPane.getWorkbook().getID());
                if (editor == EditorManager.this.page.getActiveEditor()) {
                    editorMem.putString("activePart", "true");
                }
                if (editorPane == editorPane.getWorkbook().getSelection()) {
                    editorMem.putString("focus", "true");
                }
                if (input instanceof IPathEditorInput && (path = ((IPathEditorInput)input).getPath()) != null) {
                    editorMem.putString("path", path.toString());
                }
                IMemento inputMem = editorMem.createChild("input");
                inputMem.putString("factoryID", persistable.getFactoryId());
                persistable.saveState(inputMem);
                if (editor instanceof IPersistableEditor) {
                    IMemento editorState = editorMem.createChild("editorState");
                    ((IPersistableEditor)((Object)editor)).saveState(editorState);
                }
            }

            public void handleException(Throwable e) {
                result.add((IStatus)new Status(4, "org.eclipse.ui", 0, NLS.bind((String)WorkbenchMessages.EditorManager_unableToSaveEditor, (Object)editorRef.getTitle()), e));
            }
        });
    }

    public IMemento getMemento(IEditorReference e) {
        if (e instanceof EditorReference) {
            return ((EditorReference)e).getMemento();
        }
        return null;
    }

    public void removeExtension(IExtension source, Object[] objects) {
        int i = 0;
        while (i < objects.length) {
            if (objects[i] instanceof IEditorPart) {
                IEditorPart editor = (IEditorPart)objects[i];
                IEditorInput input = editor.getEditorInput();
                this.page.closeEditor(editor, true);
                ((Workbench)this.window.getWorkbench()).getEditorHistory().remove(input);
            }
            ++i;
        }
    }

    public void addExtension(IExtensionTracker tracker, IExtension extension) {
    }

    IEditorReference openEmptyTab() {
        NullEditorInput input = new NullEditorInput();
        EditorDescriptor desc = (EditorDescriptor)((EditorRegistry)this.getEditorRegistry()).findEditor("org.eclipse.ui.internal.emptyEditorTab");
        EditorReference result = new EditorReference(this, input, desc);
        try {
            this.createEditorTab(result, "");
            return result;
        }
        catch (PartInitException e) {
            StatusManager.getManager().handle(StatusUtil.newStatus(WorkbenchPlugin.PI_WORKBENCH, (Throwable)((Object)e)));
            return null;
        }
    }

    public static boolean useIPersistableEditor() {
        IPreferenceStore store = WorkbenchPlugin.getDefault().getPreferenceStore();
        return store.getBoolean("USE_IPERSISTABLE_EDITORS");
    }

    private static IEditorDescriptor getAlternateEditor() {
        Shell shell = ProgressManagerUtil.getDefaultParent();
        EditorSelectionDialog dialog = new EditorSelectionDialog(shell){

            protected IDialogSettings getDialogSettings() {
                DialogSettings result = new DialogSettings("EditorSelectionDialog");
                result.put("EditorSelectionDialog.STORE_ID_INTERNAL_EXTERNAL", true);
                return result;
            }
        };
        dialog.setMessage(WorkbenchMessages.EditorManager_largeDocumentWarning);
        if (dialog.open() == 0) {
            return dialog.getSelectedEditor();
        }
        return null;
    }

    boolean isLargeDocument(IEditorInput editorInput) {
        if (!this.checkDocumentSize) {
            return false;
        }
        if (!(editorInput instanceof IPathEditorInput)) {
            return false;
        }
        try {
            IPath path = ((IPathEditorInput)editorInput).getPath();
            File file = new File(path.toOSString());
            return file.length() > this.maxFileSize;
        }
        catch (Exception exception) {
            return false;
        }
    }

    class InnerEditor
    extends EditorReference {
        private IEditorReference outerEditor;
        private AbstractMultiEditor outerEditorPart;

        public InnerEditor(IEditorReference outerEditor, AbstractMultiEditor outerEditorPart, IEditorInput input, EditorDescriptor desc) {
            super(EditorManager.this, input, desc);
            this.outerEditor = outerEditor;
            this.outerEditorPart = outerEditorPart;
        }

        public IEditorReference getOuterEditor() {
            return this.outerEditor;
        }

        protected void doDisposePart() {
            this.outerEditorPart = null;
            super.doDisposePart();
        }

        protected PartPane createPane() {
            return new MultiEditorInnerPane((EditorPane)((EditorReference)this.outerEditor).getPane(), this, EditorManager.this.page, EditorManager.this.editorPresentation.getActiveWorkbook(), this.outerEditorPart instanceof MultiEditor);
        }

        protected Composite getPaneControlContainer() {
            if (this.outerEditorPart instanceof MultiEditor) {
                return super.getPaneControlContainer();
            }
            return this.outerEditorPart.getInnerEditorContainer(this);
        }
    }
}

