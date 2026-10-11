/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.ui.internal;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.eclipse.osgi.util.NLS;
import org.eclipse.ui.IFolderLayout;
import org.eclipse.ui.IPageLayout;
import org.eclipse.ui.IPerspectiveDescriptor;
import org.eclipse.ui.IPlaceholderFolderLayout;
import org.eclipse.ui.IViewLayout;
import org.eclipse.ui.IViewReference;
import org.eclipse.ui.PartInitException;
import org.eclipse.ui.activities.WorkbenchActivityHelper;
import org.eclipse.ui.internal.ContainerPlaceholder;
import org.eclipse.ui.internal.FolderLayout;
import org.eclipse.ui.internal.LayoutHelper;
import org.eclipse.ui.internal.LayoutPart;
import org.eclipse.ui.internal.PartPane;
import org.eclipse.ui.internal.PartPlaceholder;
import org.eclipse.ui.internal.PlaceholderFolderLayout;
import org.eclipse.ui.internal.ViewFactory;
import org.eclipse.ui.internal.ViewLayout;
import org.eclipse.ui.internal.ViewLayoutRec;
import org.eclipse.ui.internal.ViewSashContainer;
import org.eclipse.ui.internal.ViewStack;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.registry.ActionSetRegistry;
import org.eclipse.ui.internal.registry.IActionSetDescriptor;
import org.eclipse.ui.internal.registry.ViewRegistry;
import org.eclipse.ui.views.IViewDescriptor;
import org.eclipse.ui.views.IViewRegistry;

public class PageLayout
implements IPageLayout {
    private ArrayList actionSets = new ArrayList(3);
    private IPerspectiveDescriptor descriptor;
    private LayoutPart editorFolder;
    private boolean editorVisible = true;
    private boolean fixed;
    private ArrayList fastViews = new ArrayList(3);
    private Map mapIDtoFolder = new HashMap(10);
    private Map mapIDtoPart = new HashMap(10);
    private Map mapIDtoViewLayoutRec = new HashMap(10);
    private Map mapFolderToFolderLayout = new HashMap(10);
    private ArrayList newWizardShortcuts = new ArrayList(3);
    private ArrayList perspectiveShortcuts = new ArrayList(3);
    private ViewSashContainer rootLayoutContainer;
    private ArrayList showInPartIds = new ArrayList(3);
    private ArrayList showViewShortcuts = new ArrayList(3);
    private ViewFactory viewFactory;
    private List minimizedStacks = new ArrayList();
    private Collection hiddenMenuItemIds = new ArrayList();
    private Collection hiddenToolBarItemIds = new ArrayList();

    public PageLayout() {
    }

    public PageLayout(ViewSashContainer container, ViewFactory viewFactory, LayoutPart editorFolder, IPerspectiveDescriptor descriptor) {
        this.viewFactory = viewFactory;
        this.rootLayoutContainer = container;
        this.editorFolder = editorFolder;
        this.descriptor = descriptor;
        this.prefill();
    }

    private void addEditorArea() {
        try {
            LayoutPart newPart = this.createView("org.eclipse.ui.editorss");
            if (newPart == null) {
                return;
            }
            this.setRefPart("org.eclipse.ui.editorss", newPart);
            this.rootLayoutContainer.add(newPart);
        }
        catch (PartInitException e) {
            WorkbenchPlugin.log(this.getClass(), "addEditorArea()", (Throwable)((Object)e));
        }
    }

    public void addActionSet(String actionSetID) {
        if (!this.actionSets.contains(actionSetID)) {
            this.actionSets.add(actionSetID);
        }
    }

    public void addFastView(String id) {
        this.addFastView(id, -1.0f);
    }

    public void addFastView(String id, float ratio) {
        if (this.checkPartInLayout(id)) {
            return;
        }
        if (id != null) {
            try {
                IViewDescriptor viewDescriptor = this.viewFactory.getViewRegistry().find(ViewFactory.extractPrimaryId(id));
                if (!WorkbenchActivityHelper.filterItem(viewDescriptor)) {
                    IViewReference ref = this.viewFactory.createView(ViewFactory.extractPrimaryId(id), ViewFactory.extractSecondaryId(id));
                    this.fastViews.add(ref);
                    ViewLayoutRec rec = this.getViewLayoutRec(id, true);
                    if (ratio >= 0.05f && ratio <= 0.95f) {
                        rec.fastViewWidthRatio = ratio;
                    }
                }
            }
            catch (PartInitException e) {
                WorkbenchPlugin.log(this.getClass(), "addFastView", (Throwable)((Object)e));
            }
        }
    }

    private boolean isFastViewId(String partId) {
        int i = 0;
        while (i < this.fastViews.size()) {
            String refId;
            IViewReference ref = (IViewReference)this.fastViews.get(i);
            String secondaryId = ref.getSecondaryId();
            String string = refId = secondaryId == null ? ref.getId() : String.valueOf(ref.getId()) + ":" + secondaryId;
            if (refId.equals(partId)) {
                return true;
            }
            ++i;
        }
        return false;
    }

    ViewLayoutRec getViewLayoutRec(String id, boolean create) {
        ViewLayoutRec rec = (ViewLayoutRec)this.mapIDtoViewLayoutRec.get(id);
        if (rec == null && create) {
            rec = new ViewLayoutRec();
            if (this.isFixed()) {
                rec.isCloseable = false;
                rec.isMoveable = false;
            }
            this.mapIDtoViewLayoutRec.put(id, rec);
        }
        return rec;
    }

    public void addNewWizardShortcut(String id) {
        if (!this.newWizardShortcuts.contains(id)) {
            this.newWizardShortcuts.add(id);
        }
    }

    private void addPart(LayoutPart newPart, String partId, int relationship, float ratio, String refId) {
        this.setRefPart(partId, newPart);
        LayoutPart refPart = this.getFolderPart(refId);
        if (refPart == null) {
            refPart = this.getRefPart(refId);
        }
        if (refPart != null) {
            ratio = this.normalizeRatio(ratio);
            this.rootLayoutContainer.add(newPart, this.getPartSashConst(relationship), ratio, refPart);
        } else {
            WorkbenchPlugin.log(NLS.bind((String)WorkbenchMessages.PageLayout_missingRefPart, (Object)refId));
            this.rootLayoutContainer.add(newPart);
        }
    }

    public void addPerspectiveShortcut(String id) {
        if (!this.perspectiveShortcuts.contains(id)) {
            this.perspectiveShortcuts.add(id);
        }
    }

    public void addPlaceholder(String viewId, int relationship, float ratio, String refId) {
        if (!this.checkValidPlaceholderId(viewId)) {
            return;
        }
        PartPlaceholder newPart = new PartPlaceholder(viewId);
        this.addPart(newPart, viewId, relationship, ratio, refId);
        this.getViewLayoutRec(viewId, true);
    }

    boolean checkValidPlaceholderId(String id) {
        IViewRegistry reg;
        IViewDescriptor desc;
        if (this.checkPartInLayout(id)) {
            return false;
        }
        String primaryId = ViewFactory.extractPrimaryId(id);
        if (!ViewFactory.hasWildcard(primaryId) && (desc = (reg = WorkbenchPlugin.getDefault().getViewRegistry()).find(primaryId)) == null) {
            WorkbenchPlugin.log("Unable to find view with id: " + primaryId + ", when creating perspective " + this.getDescriptor().getId());
            return false;
        }
        return true;
    }

    public void addShowInPart(String id) {
        if (!this.showInPartIds.contains(id)) {
            this.showInPartIds.add(id);
        }
    }

    public void addShowViewShortcut(String id) {
        if (!this.showViewShortcuts.contains(id)) {
            this.showViewShortcuts.add(id);
        }
    }

    public void addHiddenMenuItemId(String id) {
        if (!this.hiddenMenuItemIds.contains(id)) {
            this.hiddenMenuItemIds.add(id);
        }
    }

    public void addHiddenToolBarItemId(String id) {
        if (!this.hiddenToolBarItemIds.contains(id)) {
            this.hiddenToolBarItemIds.add(id);
        }
    }

    public void addView(String viewId, int relationship, float ratio, String refId) {
        this.addView(viewId, relationship, ratio, refId, false, false, true);
    }

    public void addView(String viewId, int relationship, float ratio, String refId, boolean minimized) {
        this.addView(viewId, relationship, ratio, refId, minimized, false, true);
    }

    private void addView(String viewId, int relationship, float ratio, String refId, boolean minimized, boolean standalone, boolean showTitle) {
        if (this.checkPartInLayout(viewId)) {
            return;
        }
        try {
            LayoutPart newPart = this.createView(viewId);
            if (newPart == null) {
                this.addPlaceholder(viewId, relationship, ratio, refId);
                LayoutHelper.addViewActivator(this, viewId);
            } else {
                int appearance = 2;
                if (standalone) {
                    appearance = showTitle ? 3 : 4;
                }
                ViewStack newFolder = new ViewStack(this.rootLayoutContainer.page, true, appearance, null);
                newFolder.add(newPart);
                this.setFolderPart(viewId, newFolder);
                this.addPart(newFolder, viewId, relationship, ratio, refId);
                this.getViewLayoutRec(viewId, true);
                if (minimized) {
                    this.minimizedStacks.add(newFolder);
                }
            }
        }
        catch (PartInitException e) {
            WorkbenchPlugin.log(this.getClass(), "addView", (Throwable)((Object)e));
        }
    }

    public List getMinimizedStacks() {
        return this.minimizedStacks;
    }

    boolean checkPartInLayout(String partId) {
        if (this.getRefPart(partId) != null || this.isFastViewId(partId)) {
            WorkbenchPlugin.log(NLS.bind((String)WorkbenchMessages.PageLayout_duplicateRefPart, (Object)partId));
            return true;
        }
        return false;
    }

    public IFolderLayout createFolder(String folderId, int relationship, float ratio, String refId) {
        if (this.checkPartInLayout(folderId)) {
            ViewStack folder = (ViewStack)this.getRefPart(folderId);
            return (IFolderLayout)this.mapFolderToFolderLayout.get(folder);
        }
        ViewStack folder = new ViewStack(this.rootLayoutContainer.page);
        folder.setID(folderId);
        if (this.getDescriptor() != null && this.viewFactory.getWorkbenchPage().window.getWindowAdvisor().isDurableFolder(this.getDescriptor().getId(), folderId)) {
            folder.setDurable(true);
        }
        this.addPart(folder, folderId, relationship, ratio, refId);
        FolderLayout layout = new FolderLayout(this, folder, this.viewFactory);
        this.mapFolderToFolderLayout.put(folder, layout);
        return layout;
    }

    public IPlaceholderFolderLayout createPlaceholderFolder(String folderId, int relationship, float ratio, String refId) {
        if (this.checkPartInLayout(folderId)) {
            ContainerPlaceholder folder = (ContainerPlaceholder)this.getRefPart(folderId);
            return (IPlaceholderFolderLayout)this.mapFolderToFolderLayout.get(folder);
        }
        ContainerPlaceholder folder = new ContainerPlaceholder(null);
        folder.setContainer(this.rootLayoutContainer);
        folder.setRealContainer(new ViewStack(this.rootLayoutContainer.page));
        folder.setID(folderId);
        this.addPart(folder, folderId, relationship, ratio, refId);
        PlaceholderFolderLayout layout = new PlaceholderFolderLayout(this, folder);
        this.mapFolderToFolderLayout.put(folder, layout);
        return layout;
    }

    private LayoutPart createView(String partID) throws PartInitException {
        if (partID.equals("org.eclipse.ui.editorss")) {
            return this.editorFolder;
        }
        IViewDescriptor viewDescriptor = null;
        IViewRegistry viewRegistry = this.viewFactory.getViewRegistry();
        String primaryId = ViewFactory.extractPrimaryId(partID);
        if (viewRegistry instanceof ViewRegistry) {
            viewDescriptor = ((ViewRegistry)viewRegistry).findInternal(primaryId);
            if (viewDescriptor != null && WorkbenchActivityHelper.restrictUseOf(viewDescriptor)) {
                return null;
            }
        } else {
            viewDescriptor = viewRegistry.find(primaryId);
        }
        if (WorkbenchActivityHelper.filterItem(viewDescriptor)) {
            return null;
        }
        return LayoutHelper.createView(this.getViewFactory(), partID);
    }

    public ArrayList getActionSets() {
        return this.actionSets;
    }

    public IPerspectiveDescriptor getDescriptor() {
        return this.descriptor;
    }

    public String getEditorArea() {
        return "org.eclipse.ui.editorss";
    }

    public int getEditorReuseThreshold() {
        return -1;
    }

    public ArrayList getFastViews() {
        return this.fastViews;
    }

    private ViewStack getFolderPart(String viewId) {
        return (ViewStack)this.mapIDtoFolder.get(viewId);
    }

    public ArrayList getNewWizardShortcuts() {
        return this.newWizardShortcuts;
    }

    private int getPartSashConst(int nRelationship) {
        return nRelationship;
    }

    public ArrayList getPerspectiveShortcuts() {
        return this.perspectiveShortcuts;
    }

    LayoutPart getRefPart(String partID) {
        return (LayoutPart)this.mapIDtoPart.get(partID);
    }

    public ViewSashContainer getRootLayoutContainer() {
        return this.rootLayoutContainer;
    }

    public ArrayList getShowInPartIds() {
        return this.showInPartIds;
    }

    public ArrayList getShowViewShortcuts() {
        return this.showViewShortcuts;
    }

    public Collection getHiddenMenuItems() {
        return this.hiddenMenuItemIds;
    }

    public Collection getHiddenToolBarItems() {
        return this.hiddenToolBarItemIds;
    }

    ViewFactory getViewFactory() {
        return this.viewFactory;
    }

    public boolean isEditorAreaVisible() {
        return this.editorVisible;
    }

    private float normalizeRatio(float in) {
        if (in < 0.05f) {
            in = 0.05f;
        }
        if (in > 0.95f) {
            in = 0.95f;
        }
        return in;
    }

    private void prefill() {
        this.addEditorArea();
        ActionSetRegistry reg = WorkbenchPlugin.getDefault().getActionSetRegistry();
        IActionSetDescriptor[] array = reg.getActionSets();
        int count = array.length;
        int nX = 0;
        while (nX < count) {
            IActionSetDescriptor desc = array[nX];
            if (desc.isInitiallyVisible()) {
                this.addActionSet(desc.getId());
            }
            ++nX;
        }
    }

    public void setEditorAreaVisible(boolean showEditorArea) {
        this.editorVisible = showEditorArea;
    }

    public void setEditorReuseThreshold(int openEditors) {
    }

    public void setFixed(boolean fixed) {
        this.fixed = fixed;
    }

    public boolean isFixed() {
        return this.fixed;
    }

    void setFolderPart(String viewId, ContainerPlaceholder container) {
        LayoutPart tabFolder = container.getRealContainer();
        this.mapIDtoFolder.put(viewId, tabFolder);
    }

    void setFolderPart(String viewId, ViewStack folder) {
        this.mapIDtoFolder.put(viewId, folder);
    }

    void setRefPart(String partID, LayoutPart part) {
        this.mapIDtoPart.put(partID, part);
    }

    private void stackPart(LayoutPart newPart, String viewId, String refId) {
        this.setRefPart(viewId, newPart);
        this.getViewLayoutRec(viewId, true);
        ViewStack folder = this.getFolderPart(refId);
        if (folder != null) {
            folder.add(newPart);
            this.setFolderPart(viewId, folder);
            return;
        }
        LayoutPart refPart = this.getRefPart(refId);
        if (refPart != null && (refPart instanceof PartPane || refPart instanceof PartPlaceholder)) {
            ViewStack newFolder = new ViewStack(this.rootLayoutContainer.page);
            this.rootLayoutContainer.replace(refPart, newFolder);
            newFolder.add(refPart);
            newFolder.add(newPart);
            this.setFolderPart(refId, newFolder);
            this.setFolderPart(viewId, newFolder);
            return;
        }
        WorkbenchPlugin.log(NLS.bind((String)WorkbenchMessages.PageLayout_missingRefPart, (Object)refId));
        this.rootLayoutContainer.add(newPart);
    }

    public void stackPlaceholder(String viewId, String refId) {
        if (this.checkPartInLayout(viewId)) {
            return;
        }
        PartPlaceholder newPart = new PartPlaceholder(viewId);
        LayoutPart refPart = this.getRefPart(refId);
        if (refPart != null) {
            newPart.setContainer(refPart.getContainer());
        }
        this.stackPart(newPart, viewId, refId);
    }

    public void stackView(String viewId, String refId) {
        if (this.checkPartInLayout(viewId)) {
            return;
        }
        try {
            LayoutPart newPart = this.createView(viewId);
            if (newPart == null) {
                this.stackPlaceholder(viewId, refId);
                LayoutHelper.addViewActivator(this, viewId);
            } else {
                this.stackPart(newPart, viewId, refId);
            }
        }
        catch (PartInitException e) {
            WorkbenchPlugin.log(this.getClass(), "stackView", (Throwable)((Object)e));
        }
    }

    public static int swtConstantToLayoutPosition(int swtConstant) {
        switch (swtConstant) {
            case 128: {
                return 3;
            }
            case 1024: {
                return 4;
            }
            case 131072: {
                return 2;
            }
            case 16384: {
                return 1;
            }
        }
        return -1;
    }

    public void addStandaloneView(String viewId, boolean showTitle, int relationship, float ratio, String refId) {
        this.addView(viewId, relationship, ratio, refId, false, true, showTitle);
        ViewLayoutRec rec = this.getViewLayoutRec(viewId, true);
        rec.isStandalone = true;
        rec.showTitle = showTitle;
    }

    public void addStandaloneViewPlaceholder(String viewId, int relationship, float ratio, String refId, boolean showTitle) {
        String stackId = String.valueOf(viewId) + ".standalonefolder";
        if (!this.checkValidPlaceholderId(viewId)) {
            return;
        }
        ContainerPlaceholder folder = new ContainerPlaceholder(null);
        folder.setContainer(this.rootLayoutContainer);
        int appearance = 3;
        if (!showTitle) {
            appearance = 4;
        }
        folder.setRealContainer(new ViewStack(this.rootLayoutContainer.page, true, appearance, null));
        folder.setID(stackId);
        this.addPart(folder, stackId, relationship, ratio, refId);
        PlaceholderFolderLayout placeHolder = new PlaceholderFolderLayout(this, folder);
        placeHolder.addPlaceholder(viewId);
        ViewLayoutRec rec = this.getViewLayoutRec(viewId, true);
        rec.isStandalone = true;
        rec.showTitle = showTitle;
    }

    public IViewLayout getViewLayout(String viewId) {
        ViewLayoutRec rec = this.getViewLayoutRec(viewId, true);
        if (rec == null) {
            return null;
        }
        return new ViewLayout(this, rec);
    }

    public Map getIDtoViewLayoutRecMap() {
        return this.mapIDtoViewLayoutRec;
    }

    public void removePlaceholder(String id) {
        LayoutPart part = this.getRefPart(id);
        if (part instanceof PartPlaceholder) {
            ViewStack stack = this.getFolderPart(id);
            if (stack != null) {
                stack.remove(part);
            } else {
                this.rootLayoutContainer.remove(part);
            }
            this.mapIDtoPart.remove(id);
            this.mapIDtoFolder.remove(id);
            this.mapIDtoViewLayoutRec.remove(id);
        }
    }

    public IPlaceholderFolderLayout getFolderForView(String viewId) {
        if (!this.mapIDtoFolder.containsKey(viewId)) {
            return null;
        }
        ViewStack folder = (ViewStack)this.mapIDtoFolder.get(viewId);
        IPlaceholderFolderLayout layout = null;
        if (!this.mapFolderToFolderLayout.containsKey(folder)) {
            layout = new FolderLayout(this, folder, this.viewFactory);
            this.mapFolderToFolderLayout.put(folder, layout);
        } else {
            layout = (IPlaceholderFolderLayout)this.mapFolderToFolderLayout.get(folder);
        }
        return layout;
    }
}

