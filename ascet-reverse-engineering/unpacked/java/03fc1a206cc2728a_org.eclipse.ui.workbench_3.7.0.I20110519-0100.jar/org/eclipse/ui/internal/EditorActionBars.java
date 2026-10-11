/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.expressions.Expression
 *  org.eclipse.jface.action.ActionContributionItem
 *  org.eclipse.jface.action.ContributionManager
 *  org.eclipse.jface.action.GroupMarker
 *  org.eclipse.jface.action.IContributionItem
 *  org.eclipse.jface.action.IContributionManager
 *  org.eclipse.jface.action.IContributionManagerOverrides
 *  org.eclipse.jface.action.ICoolBarManager
 *  org.eclipse.jface.action.IMenuManager
 *  org.eclipse.jface.action.IToolBarManager
 *  org.eclipse.jface.action.SubContributionManager
 *  org.eclipse.jface.action.SubCoolBarManager
 *  org.eclipse.jface.action.SubMenuManager
 *  org.eclipse.jface.action.SubStatusLineManager
 *  org.eclipse.jface.action.SubToolBarManager
 *  org.eclipse.jface.internal.provisional.action.IToolBarContributionItem
 */
package org.eclipse.ui.internal;

import org.eclipse.core.expressions.Expression;
import org.eclipse.jface.action.ActionContributionItem;
import org.eclipse.jface.action.ContributionManager;
import org.eclipse.jface.action.GroupMarker;
import org.eclipse.jface.action.IContributionItem;
import org.eclipse.jface.action.IContributionManager;
import org.eclipse.jface.action.IContributionManagerOverrides;
import org.eclipse.jface.action.ICoolBarManager;
import org.eclipse.jface.action.IMenuManager;
import org.eclipse.jface.action.IToolBarManager;
import org.eclipse.jface.action.SubContributionManager;
import org.eclipse.jface.action.SubCoolBarManager;
import org.eclipse.jface.action.SubMenuManager;
import org.eclipse.jface.action.SubStatusLineManager;
import org.eclipse.jface.action.SubToolBarManager;
import org.eclipse.jface.internal.provisional.action.IToolBarContributionItem;
import org.eclipse.ui.IActionBars2;
import org.eclipse.ui.IEditorActionBarContributor;
import org.eclipse.ui.IEditorPart;
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.SubActionBars2;
import org.eclipse.ui.actions.RetargetAction;
import org.eclipse.ui.internal.EditorMenuManager;
import org.eclipse.ui.internal.PlaceholderContributionItem;
import org.eclipse.ui.internal.WorkbenchPage;
import org.eclipse.ui.internal.WorkbenchWindow;
import org.eclipse.ui.internal.expressions.LegacyEditorActionBarExpression;
import org.eclipse.ui.internal.misc.Policy;
import org.eclipse.ui.internal.provisional.presentations.IActionBarPresentationFactory;
import org.eclipse.ui.services.IServiceLocator;

public class EditorActionBars
extends SubActionBars2 {
    private static final boolean DEBUG_TOOLBAR_DISPOSAL = Policy.DEBUG_TOOLBAR_DISPOSAL;
    private IToolBarManager coolItemToolBarMgr = null;
    private IEditorActionBarContributor editorContributor;
    private boolean enabledAllowed = false;
    private IEditorActionBarContributor extensionContributor;
    private int refCount;
    private IToolBarContributionItem toolBarContributionItem = null;
    private String type;
    private IActionBarPresentationFactory actionBarPresentation;
    private LegacyEditorActionBarExpression editorHandlerExpression = null;

    public EditorActionBars(WorkbenchPage page, IServiceLocator serviceLocator, String type) {
        super((IActionBars2)page.getActionBars(), serviceLocator);
        this.type = type;
        this.actionBarPresentation = ((WorkbenchWindow)page.getWorkbenchWindow()).getActionBarPresentationFactory();
    }

    public void activate(boolean forceVisibility) {
        this.setActive(true, forceVisibility);
    }

    public void addRef() {
        ++this.refCount;
    }

    protected SubMenuManager createSubMenuManager(IMenuManager parent) {
        return new EditorMenuManager(parent);
    }

    protected SubToolBarManager createSubToolBarManager(IToolBarManager parent) {
        return null;
    }

    public void deactivate(boolean forceVisibility) {
        this.setActive(false, forceVisibility);
    }

    public void dispose() {
        super.dispose();
        if (this.editorContributor != null) {
            this.editorContributor.dispose();
        }
        if (this.extensionContributor != null) {
            this.extensionContributor.dispose();
        }
        if (this.toolBarContributionItem != null) {
            ICoolBarManager coolBarManager = this.getCoolBarManager();
            if (coolBarManager instanceof SubContributionManager) {
                SubContributionManager subManager = (SubContributionManager)coolBarManager;
                IContributionManager manager = subManager.getParent();
                if (manager instanceof ContributionManager) {
                    PlaceholderContributionItem replacementItem = new PlaceholderContributionItem(this.toolBarContributionItem);
                    boolean succeeded = ((ContributionManager)manager).replaceItem(replacementItem.getId(), (IContributionItem)replacementItem);
                    if (!succeeded && DEBUG_TOOLBAR_DISPOSAL) {
                        System.out.println("FAILURE WHILE DISPOSING EditorActionBars");
                        System.out.println("Could not replace " + replacementItem.getId() + " in the contribution manager.");
                    }
                } else if (DEBUG_TOOLBAR_DISPOSAL) {
                    System.out.println("FAILURE WHILE DISPOSING EditorActionBars");
                    System.out.println("The manager was not a ContributionManager.");
                    System.out.println("It was a " + manager.getClass().getName());
                }
            } else if (DEBUG_TOOLBAR_DISPOSAL) {
                System.out.println("FAILURE WHILE DISPOSING EditorActionBars");
                System.out.println("The coolBarManager was not a SubContributionManager");
                System.out.println("It was a " + coolBarManager.getClass().getName());
            }
            this.toolBarContributionItem.dispose();
        }
        this.toolBarContributionItem = null;
        if (this.coolItemToolBarMgr != null) {
            this.coolItemToolBarMgr.removeAll();
        }
        this.coolItemToolBarMgr = null;
        this.editorHandlerExpression = null;
    }

    public IEditorActionBarContributor getEditorContributor() {
        return this.editorContributor;
    }

    public String getEditorType() {
        return this.type;
    }

    public IEditorActionBarContributor getExtensionContributor() {
        return this.extensionContributor;
    }

    public int getRef() {
        return this.refCount;
    }

    public IToolBarManager getToolBarManager() {
        ICoolBarManager coolBarManager = this.getCastedParent().getCoolBarManager();
        if (coolBarManager == null) {
            return null;
        }
        if (coolBarManager.find("group.editor") == null) {
            coolBarManager.add((IContributionItem)new GroupMarker("group.editor"));
        }
        if (this.toolBarContributionItem == null) {
            IContributionItem foundItem = coolBarManager.find(this.type);
            if (foundItem instanceof IToolBarContributionItem) {
                this.toolBarContributionItem = (IToolBarContributionItem)foundItem;
                this.coolItemToolBarMgr = this.toolBarContributionItem.getToolBarManager();
                if (this.coolItemToolBarMgr == null) {
                    this.coolItemToolBarMgr = this.actionBarPresentation.createToolBarManager();
                    this.toolBarContributionItem = this.actionBarPresentation.createToolBarContributionItem(this.coolItemToolBarMgr, this.type);
                    coolBarManager.prependToGroup("group.editor", (IContributionItem)this.toolBarContributionItem);
                }
            } else {
                this.coolItemToolBarMgr = this.actionBarPresentation.createToolBarManager();
                if (coolBarManager instanceof ContributionManager && foundItem instanceof PlaceholderContributionItem) {
                    PlaceholderContributionItem placeholder = (PlaceholderContributionItem)foundItem;
                    this.toolBarContributionItem = this.createToolBarContributionItem(this.coolItemToolBarMgr, placeholder);
                    ((ContributionManager)coolBarManager).replaceItem(this.type, (IContributionItem)this.toolBarContributionItem);
                } else {
                    this.toolBarContributionItem = this.actionBarPresentation.createToolBarContributionItem(this.coolItemToolBarMgr, this.type);
                    coolBarManager.prependToGroup("group.editor", (IContributionItem)this.toolBarContributionItem);
                }
            }
            ((ContributionManager)this.coolItemToolBarMgr).setOverrides((IContributionManagerOverrides)new Overrides());
            this.toolBarContributionItem.setVisible(this.getActive());
            this.coolItemToolBarMgr.markDirty();
        }
        return this.coolItemToolBarMgr;
    }

    IToolBarContributionItem createToolBarContributionItem(IToolBarManager manager, PlaceholderContributionItem item) {
        IToolBarContributionItem toolBarContributionItem = this.actionBarPresentation.createToolBarContributionItem(manager, item.getId());
        toolBarContributionItem.setCurrentHeight(item.getHeight());
        toolBarContributionItem.setCurrentWidth(item.getWidth());
        toolBarContributionItem.setMinimumItemsToShow(item.getMinimumItemsToShow());
        toolBarContributionItem.setUseChevron(item.getUseChevron());
        return toolBarContributionItem;
    }

    private boolean isVisible() {
        if (this.toolBarContributionItem != null) {
            return this.toolBarContributionItem.isVisible();
        }
        return false;
    }

    public void partChanged(IWorkbenchPart part) {
        super.partChanged(part);
        if (part instanceof IEditorPart) {
            IEditorPart editor = (IEditorPart)part;
            if (this.editorContributor != null) {
                this.editorContributor.setActiveEditor(editor);
            }
            if (this.extensionContributor != null) {
                this.extensionContributor.setActiveEditor(editor);
            }
        }
    }

    public void removeRef() {
        --this.refCount;
    }

    private void setActive(boolean set, boolean forceVisibility) {
        this.basicSetActive(set);
        if (this.isSubMenuManagerCreated()) {
            ((EditorMenuManager)this.getMenuManager()).setVisible(set, forceVisibility);
        }
        if (this.isSubStatusLineManagerCreated()) {
            ((SubStatusLineManager)this.getStatusLineManager()).setVisible(set);
        }
        this.setVisible(set, forceVisibility);
    }

    public void setEditorContributor(IEditorActionBarContributor c) {
        this.editorContributor = c;
    }

    private void setEnabledAllowed(boolean enabledAllowed) {
        if (this.enabledAllowed == enabledAllowed) {
            return;
        }
        this.enabledAllowed = enabledAllowed;
        if (this.coolItemToolBarMgr != null) {
            IContributionItem[] items = this.coolItemToolBarMgr.getItems();
            int i = 0;
            while (i < items.length) {
                IContributionItem item = items[i];
                item.update("enabled");
                ++i;
            }
        }
    }

    public void setExtensionContributor(IEditorActionBarContributor c) {
        this.extensionContributor = c;
    }

    private void setVisible(boolean visible) {
        if (this.toolBarContributionItem != null) {
            this.toolBarContributionItem.setVisible(visible);
            if (this.toolBarContributionItem.getParent() != null) {
                this.toolBarContributionItem.getParent().markDirty();
            }
        }
    }

    private void setVisible(boolean visible, boolean forceVisibility) {
        if (visible) {
            this.setEnabledAllowed(true);
            if (!this.isVisible()) {
                this.setVisible(true);
            }
        } else if (forceVisibility) {
            this.setVisible(false);
        } else {
            this.setEnabledAllowed(false);
        }
        ICoolBarManager coolBarManager = this.getCastedParent().getCoolBarManager();
        if (this.coolItemToolBarMgr != null && coolBarManager != null) {
            IContributionItem[] items = this.coolItemToolBarMgr.getItems();
            int i = 0;
            while (i < items.length) {
                IContributionItem item = items[i];
                item.setVisible(visible || !forceVisibility);
                this.coolItemToolBarMgr.markDirty();
                if (!coolBarManager.isDirty()) {
                    coolBarManager.markDirty();
                }
                ++i;
            }
            this.coolItemToolBarMgr.update(false);
            if (this.toolBarContributionItem != null) {
                this.toolBarContributionItem.setVisible(visible || !forceVisibility);
            }
            if (this.getCoolBarManager() != null) {
                ((SubCoolBarManager)this.getCoolBarManager()).setVisible(visible || !forceVisibility);
            }
        }
    }

    public Expression getHandlerExpression() {
        if (this.editorHandlerExpression == null) {
            this.editorHandlerExpression = new LegacyEditorActionBarExpression(this.type);
        }
        return this.editorHandlerExpression;
    }

    private class Overrides
    implements IContributionManagerOverrides {
        private Overrides() {
        }

        public Integer getAccelerator(IContributionItem item) {
            return null;
        }

        public String getAcceleratorText(IContributionItem item) {
            return null;
        }

        public Boolean getEnabled(IContributionItem item) {
            if (item instanceof ActionContributionItem && ((ActionContributionItem)item).getAction() instanceof RetargetAction || EditorActionBars.this.enabledAllowed) {
                return null;
            }
            return Boolean.FALSE;
        }

        public String getText(IContributionItem item) {
            return null;
        }

        public Boolean getVisible(IContributionItem item) {
            return null;
        }
    }
}

