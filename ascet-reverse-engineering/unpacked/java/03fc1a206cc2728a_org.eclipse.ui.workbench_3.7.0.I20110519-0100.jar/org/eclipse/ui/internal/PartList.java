/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.dialogs.IPageChangeProvider
 *  org.eclipse.jface.dialogs.IPageChangedListener
 *  org.eclipse.jface.dialogs.PageChangedEvent
 */
package org.eclipse.ui.internal;

import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.dialogs.IPageChangeProvider;
import org.eclipse.jface.dialogs.IPageChangedListener;
import org.eclipse.jface.dialogs.PageChangedEvent;
import org.eclipse.ui.IEditorPart;
import org.eclipse.ui.IEditorReference;
import org.eclipse.ui.IPropertyListener;
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.IWorkbenchPartReference;
import org.eclipse.ui.IWorkbenchPartSite;
import org.eclipse.ui.internal.PartSite;
import org.eclipse.ui.internal.SaveablesList;
import org.eclipse.ui.internal.WorkbenchPartReference;
import org.eclipse.ui.part.AbstractMultiEditor;

public abstract class PartList {
    private IWorkbenchPartReference activePartReference;
    private IEditorReference activeEditorReference;
    private IPropertyListener listener = new IPropertyListener(){

        public void propertyChanged(Object source, int propId) {
            WorkbenchPartReference ref = (WorkbenchPartReference)source;
            switch (propId) {
                case 529: {
                    PartList.this.partOpened(ref);
                    break;
                }
                case 530: {
                    PartList.this.partClosed(ref);
                    break;
                }
                case 532: {
                    if (ref.getVisible()) {
                        PartList.this.partVisible(ref);
                        break;
                    }
                    PartList.this.partHidden(ref);
                    break;
                }
                case 258: {
                    PartList.this.partInputChanged(ref);
                }
            }
        }
    };
    private IPageChangedListener partPageListener = new IPageChangedListener(){

        public void pageChanged(PageChangedEvent event) {
            PartList.this.firePageChanged(event);
        }
    };
    static /* synthetic */ Class class$0;

    public IWorkbenchPartReference getActivePartReference() {
        return this.activePartReference;
    }

    public IEditorReference getActiveEditorReference() {
        return this.activeEditorReference;
    }

    public IEditorPart getActiveEditor() {
        return this.activeEditorReference == null ? null : this.activeEditorReference.getEditor(false);
    }

    public IWorkbenchPart getActivePart() {
        return this.activePartReference == null ? null : this.activePartReference.getPart(false);
    }

    public void addPart(WorkbenchPartReference ref) {
        Assert.isNotNull((Object)ref);
        ref.addInternalPropertyListener(this.listener);
        this.firePartAdded(ref);
        if (ref.getPart(false) != null) {
            this.partOpened(ref);
        }
        if (ref.getVisible()) {
            this.partVisible(ref);
        }
    }

    public void setActivePart(IWorkbenchPartReference ref) {
        if (ref == this.activePartReference) {
            return;
        }
        IWorkbenchPartReference oldPart = this.activePartReference;
        if (ref != null) {
            IWorkbenchPartSite site;
            IWorkbenchPart part = ref.getPart(true);
            Assert.isNotNull((Object)part);
            if (part instanceof AbstractMultiEditor && (site = ((AbstractMultiEditor)part).getActiveEditor().getSite()) instanceof PartSite) {
                ref = ((PartSite)site).getPane().getPartReference();
            }
        }
        this.activePartReference = ref;
        this.fireActivePartChanged(oldPart, ref);
    }

    public void setActiveEditor(IEditorReference ref) {
        if (ref == this.activeEditorReference) {
            return;
        }
        if (ref != null) {
            IWorkbenchPartSite site;
            IWorkbenchPart part = ref.getPart(true);
            Assert.isNotNull((Object)part);
            if (part instanceof AbstractMultiEditor && (site = ((AbstractMultiEditor)part).getActiveEditor().getSite()) instanceof PartSite) {
                ref = (IEditorReference)((PartSite)site).getPane().getPartReference();
            }
        }
        this.activeEditorReference = ref;
        this.fireActiveEditorChanged(ref);
    }

    public void removePart(WorkbenchPartReference ref) {
        Assert.isNotNull((Object)ref);
        Assert.isTrue((ref != this.activePartReference ? 1 : 0) != 0);
        Assert.isTrue((ref != this.activeEditorReference ? 1 : 0) != 0);
        if (ref.getVisible()) {
            ref.setVisible(false);
        }
        if (ref.getPart(false) != null) {
            this.partClosed(ref);
        }
        ref.removeInternalPropertyListener(this.listener);
        this.firePartRemoved(ref);
    }

    private void partInputChanged(WorkbenchPartReference ref) {
        this.firePartInputChanged(ref);
    }

    private void partHidden(WorkbenchPartReference ref) {
        Assert.isNotNull((Object)ref);
        Assert.isTrue((!ref.getVisible() ? 1 : 0) != 0);
        this.firePartHidden(ref);
    }

    private void partOpened(WorkbenchPartReference ref) {
        Assert.isNotNull((Object)ref);
        IWorkbenchPart actualPart = ref.getPart(false);
        Assert.isNotNull((Object)actualPart);
        Assert.isTrue((this.activePartReference != ref ? 1 : 0) != 0);
        Assert.isTrue((this.activeEditorReference != ref ? 1 : 0) != 0);
        IWorkbenchPartSite iWorkbenchPartSite = actualPart.getSite();
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.ISaveablesLifecycleListener");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        SaveablesList modelManager = (SaveablesList)iWorkbenchPartSite.getService(clazz);
        modelManager.postOpen(actualPart);
        if (actualPart instanceof IPageChangeProvider) {
            ((IPageChangeProvider)actualPart).addPageChangedListener(this.partPageListener);
        }
        this.firePartOpened(ref);
    }

    private void partClosed(WorkbenchPartReference ref) {
        Assert.isNotNull((Object)ref);
        IWorkbenchPart actualPart = ref.getPart(false);
        Assert.isNotNull((Object)actualPart);
        Assert.isTrue((this.activePartReference != ref ? 1 : 0) != 0);
        Assert.isTrue((this.activeEditorReference != ref ? 1 : 0) != 0);
        if (actualPart instanceof IPageChangeProvider) {
            ((IPageChangeProvider)actualPart).removePageChangedListener(this.partPageListener);
        }
        this.firePartClosed(ref);
    }

    private void partVisible(WorkbenchPartReference ref) {
        Assert.isNotNull((Object)ref);
        Assert.isTrue((boolean)ref.getVisible());
        Assert.isNotNull((Object)ref.getPart(false));
        this.firePartVisible(ref);
    }

    protected abstract void firePartOpened(IWorkbenchPartReference var1);

    protected abstract void firePartClosed(IWorkbenchPartReference var1);

    protected abstract void firePartAdded(IWorkbenchPartReference var1);

    protected abstract void firePartRemoved(IWorkbenchPartReference var1);

    protected abstract void fireActiveEditorChanged(IWorkbenchPartReference var1);

    protected abstract void fireActivePartChanged(IWorkbenchPartReference var1, IWorkbenchPartReference var2);

    protected abstract void firePartVisible(IWorkbenchPartReference var1);

    protected abstract void firePartHidden(IWorkbenchPartReference var1);

    protected abstract void firePartInputChanged(IWorkbenchPartReference var1);

    protected abstract void firePartBroughtToTop(IWorkbenchPartReference var1);

    protected abstract void firePageChanged(PageChangedEvent var1);
}

