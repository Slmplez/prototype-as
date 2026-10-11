/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.core.runtime.dynamichelpers.IExtensionTracker
 *  org.eclipse.jface.util.IPropertyChangeListener
 */
package org.eclipse.ui;

import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.core.runtime.dynamichelpers.IExtensionTracker;
import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.ui.IEditorInput;
import org.eclipse.ui.IEditorPart;
import org.eclipse.ui.IEditorReference;
import org.eclipse.ui.INavigationHistory;
import org.eclipse.ui.IPartService;
import org.eclipse.ui.IPerspectiveDescriptor;
import org.eclipse.ui.IReusableEditor;
import org.eclipse.ui.ISelectionService;
import org.eclipse.ui.IViewPart;
import org.eclipse.ui.IViewReference;
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.IWorkbenchPartReference;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.IWorkingSet;
import org.eclipse.ui.MultiPartInitException;
import org.eclipse.ui.PartInitException;
import org.eclipse.ui.internal.ICompatibleWorkbenchPage;

public interface IWorkbenchPage
extends IPartService,
ISelectionService,
ICompatibleWorkbenchPage {
    public static final String EDITOR_ID_ATTR = "org.eclipse.ui.editorID";
    public static final String CHANGE_RESET = "reset";
    public static final String CHANGE_RESET_COMPLETE = "resetComplete";
    public static final String CHANGE_VIEW_SHOW = "viewShow";
    public static final String CHANGE_VIEW_HIDE = "viewHide";
    public static final String CHANGE_EDITOR_OPEN = "editorOpen";
    public static final String CHANGE_EDITOR_CLOSE = "editorClose";
    public static final String CHANGE_EDITOR_AREA_SHOW = "editorAreaShow";
    public static final String CHANGE_EDITOR_AREA_HIDE = "editorAreaHide";
    public static final String CHANGE_ACTION_SET_SHOW = "actionSetShow";
    public static final String CHANGE_ACTION_SET_HIDE = "actionSetHide";
    public static final String CHANGE_FAST_VIEW_ADD = "fastViewAdd";
    public static final String CHANGE_FAST_VIEW_REMOVE = "fastViewRemove";
    public static final String CHANGE_WORKING_SET_REPLACE = "workingSetReplace";
    public static final String CHANGE_WORKING_SETS_REPLACE = "workingSetsReplace";
    public static final int VIEW_ACTIVATE = 1;
    public static final int VIEW_VISIBLE = 2;
    public static final int VIEW_CREATE = 3;
    public static final int MATCH_NONE = 0;
    public static final int MATCH_INPUT = 1;
    public static final int MATCH_ID = 2;
    public static final int STATE_MINIMIZED = 0;
    public static final int STATE_MAXIMIZED = 1;
    public static final int STATE_RESTORED = 2;

    public void activate(IWorkbenchPart var1);

    public void addPropertyChangeListener(IPropertyChangeListener var1);

    public void bringToTop(IWorkbenchPart var1);

    public boolean close();

    public boolean closeAllEditors(boolean var1);

    public boolean closeEditors(IEditorReference[] var1, boolean var2);

    public boolean closeEditor(IEditorPart var1, boolean var2);

    public IViewPart findView(String var1);

    public IViewReference findViewReference(String var1);

    public IViewReference findViewReference(String var1, String var2);

    public IEditorPart getActiveEditor();

    public IEditorPart findEditor(IEditorInput var1);

    public IEditorReference[] findEditors(IEditorInput var1, String var2, int var3);

    public IEditorPart[] getEditors();

    public IEditorReference[] getEditorReferences();

    public IEditorPart[] getDirtyEditors();

    public IAdaptable getInput();

    public String getLabel();

    public IPerspectiveDescriptor getPerspective();

    public IViewReference[] getViewReferences();

    public IViewPart[] getViews();

    public IWorkbenchWindow getWorkbenchWindow();

    public IWorkingSet getWorkingSet();

    public void hideActionSet(String var1);

    public void hideView(IViewPart var1);

    public void hideView(IViewReference var1);

    public boolean isPartVisible(IWorkbenchPart var1);

    public boolean isEditorAreaVisible();

    public void reuseEditor(IReusableEditor var1, IEditorInput var2);

    public IEditorPart openEditor(IEditorInput var1, String var2) throws PartInitException;

    public IEditorPart openEditor(IEditorInput var1, String var2, boolean var3) throws PartInitException;

    public IEditorPart openEditor(IEditorInput var1, String var2, boolean var3, int var4) throws PartInitException;

    public void removePropertyChangeListener(IPropertyChangeListener var1);

    public void resetPerspective();

    public boolean saveAllEditors(boolean var1);

    public boolean saveEditor(IEditorPart var1, boolean var2);

    public void savePerspective();

    public void savePerspectiveAs(IPerspectiveDescriptor var1);

    public void setEditorAreaVisible(boolean var1);

    public void setPerspective(IPerspectiveDescriptor var1);

    public void showActionSet(String var1);

    public IViewPart showView(String var1) throws PartInitException;

    public IViewPart showView(String var1, String var2, int var3) throws PartInitException;

    public boolean isEditorPinned(IEditorPart var1);

    public int getEditorReuseThreshold();

    public void setEditorReuseThreshold(int var1);

    public INavigationHistory getNavigationHistory();

    public IViewPart[] getViewStack(IViewPart var1);

    public String[] getNewWizardShortcuts();

    public String[] getPerspectiveShortcuts();

    public String[] getShowViewShortcuts();

    public IPerspectiveDescriptor[] getOpenPerspectives();

    public IPerspectiveDescriptor[] getSortedPerspectives();

    public void closePerspective(IPerspectiveDescriptor var1, boolean var2, boolean var3);

    public void closeAllPerspectives(boolean var1, boolean var2);

    public IExtensionTracker getExtensionTracker();

    public IWorkingSet[] getWorkingSets();

    public void setWorkingSets(IWorkingSet[] var1);

    public IWorkingSet getAggregateWorkingSet();

    public boolean isPageZoomed();

    public void zoomOut();

    public void toggleZoom(IWorkbenchPartReference var1);

    public int getPartState(IWorkbenchPartReference var1);

    public void setPartState(IWorkbenchPartReference var1, int var2);

    public IWorkbenchPartReference getReference(IWorkbenchPart var1);

    public void showEditor(IEditorReference var1);

    public void hideEditor(IEditorReference var1);

    public IEditorReference[] openEditors(IEditorInput[] var1, String[] var2, int var3) throws MultiPartInitException;
}

