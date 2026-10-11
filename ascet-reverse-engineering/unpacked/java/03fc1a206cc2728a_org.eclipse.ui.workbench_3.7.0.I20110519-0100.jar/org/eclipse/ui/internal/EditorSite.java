/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.action.MenuManager
 *  org.eclipse.jface.viewers.ISelectionProvider
 */
package org.eclipse.ui.internal;

import java.util.ArrayList;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.action.MenuManager;
import org.eclipse.jface.viewers.ISelectionProvider;
import org.eclipse.ui.IActionBars2;
import org.eclipse.ui.IEditorActionBarContributor;
import org.eclipse.ui.IEditorPart;
import org.eclipse.ui.IEditorReference;
import org.eclipse.ui.IEditorSite;
import org.eclipse.ui.SubActionBars;
import org.eclipse.ui.SubActionBars2;
import org.eclipse.ui.internal.EditorActionBars;
import org.eclipse.ui.internal.EditorSiteDragAndDropServiceImpl;
import org.eclipse.ui.internal.PartSite;
import org.eclipse.ui.internal.WorkbenchPage;
import org.eclipse.ui.internal.registry.EditorDescriptor;
import org.eclipse.ui.services.IServiceLocator;

public class EditorSite
extends PartSite
implements IEditorSite {
    private EditorDescriptor desc;
    private SubActionBars ab = null;
    static /* synthetic */ Class class$0;

    public EditorSite(IEditorReference ref, IEditorPart editor, WorkbenchPage page, EditorDescriptor desc) {
        super(ref, editor, page);
        Assert.isNotNull((Object)desc);
        this.desc = desc;
        if (desc.getConfigurationElement() != null) {
            this.setConfigurationElement(desc.getConfigurationElement());
        } else {
            this.setId(desc.getId());
            this.setRegisteredName(desc.getLabel());
        }
        this.initializeDefaultServices();
    }

    private void initializeDefaultServices() {
        EditorSiteDragAndDropServiceImpl editorDTService = new EditorSiteDragAndDropServiceImpl();
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.dnd.IDragAndDropService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.serviceLocator.registerService(clazz, editorDTService);
    }

    public void setActionBars(SubActionBars bars) {
        super.setActionBars(bars);
        this.ab = bars instanceof IActionBars2 ? new SubActionBars2((IActionBars2)((Object)bars), (IServiceLocator)this) : new SubActionBars(bars, this);
    }

    public void activateActionBars(boolean forceVisibility) {
        if (this.ab != null) {
            this.ab.activate(forceVisibility);
        }
        super.activateActionBars(forceVisibility);
    }

    public void deactivateActionBars(boolean forceHide) {
        if (this.ab != null) {
            this.ab.deactivate(forceHide);
        }
        super.deactivateActionBars(forceHide);
    }

    public IEditorActionBarContributor getActionBarContributor() {
        EditorActionBars bars = (EditorActionBars)this.getActionBars();
        if (bars != null) {
            return bars.getEditorContributor();
        }
        return null;
    }

    public IEditorActionBarContributor getExtensionActionBarContributor() {
        EditorActionBars bars = (EditorActionBars)this.getActionBars();
        if (bars != null) {
            return bars.getExtensionContributor();
        }
        return null;
    }

    public IEditorPart getEditorPart() {
        return (IEditorPart)this.getPart();
    }

    public EditorDescriptor getEditorDescriptor() {
        return this.desc;
    }

    protected String getInitialScopeId() {
        return "org.eclipse.ui.textEditorScope";
    }

    public void dispose() {
        super.dispose();
        if (this.ab != null) {
            this.ab.dispose();
        }
    }

    public final void registerContextMenu(MenuManager menuManager, ISelectionProvider selectionProvider, boolean includeEditorInput) {
        this.registerContextMenu(this.getId(), menuManager, selectionProvider, includeEditorInput);
    }

    public final void registerContextMenu(String menuId, MenuManager menuManager, ISelectionProvider selectionProvider, boolean includeEditorInput) {
        if (this.menuExtenders == null) {
            this.menuExtenders = new ArrayList(1);
        }
        PartSite.registerContextMenu(menuId, menuManager, selectionProvider, includeEditorInput, this.getPart(), this.menuExtenders);
    }
}

