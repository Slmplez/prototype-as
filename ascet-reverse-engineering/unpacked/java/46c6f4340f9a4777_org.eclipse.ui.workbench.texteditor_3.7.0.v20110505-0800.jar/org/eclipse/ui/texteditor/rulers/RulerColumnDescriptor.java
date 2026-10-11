/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.InvalidRegistryObjectException
 *  org.eclipse.core.runtime.content.IContentType
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.ui.IEditorInput
 *  org.eclipse.ui.IWorkbenchPartSite
 */
package org.eclipse.ui.texteditor.rulers;

import java.net.URL;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.InvalidRegistryObjectException;
import org.eclipse.core.runtime.content.IContentType;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.ui.IEditorInput;
import org.eclipse.ui.IWorkbenchPartSite;
import org.eclipse.ui.internal.texteditor.rulers.ExtensionPointHelper;
import org.eclipse.ui.internal.texteditor.rulers.RulerColumnMessages;
import org.eclipse.ui.internal.texteditor.rulers.RulerColumnPlacement;
import org.eclipse.ui.internal.texteditor.rulers.RulerColumnTarget;
import org.eclipse.ui.texteditor.IDocumentProvider;
import org.eclipse.ui.texteditor.IDocumentProviderExtension4;
import org.eclipse.ui.texteditor.ITextEditor;
import org.eclipse.ui.texteditor.rulers.IContributedRulerColumn;
import org.eclipse.ui.texteditor.rulers.RulerColumnRegistry;

public final class RulerColumnDescriptor {
    private static final String CLASS = "class";
    private static final String ID = "id";
    private static final String NAME = "name";
    private static final String ENABLED = "enabled";
    private static final String ICON = "icon";
    private static final String GLOBAL = "global";
    private static final String INCLUDE_IN_MENU = "includeInMenu";
    private static final String TARGET_EDITOR = "targetEditor";
    private static final String TARGET_CONTENT_TYPE = "targetContentType";
    private static final String TARGET_CLASS = "targetClass";
    private static final String PLACEMENT = "placement";
    private final String fId;
    private final String fName;
    private final ImageDescriptor fIcon;
    private final IConfigurationElement fElement;
    private final RulerColumnTarget fTarget;
    private final RulerColumnPlacement fRulerColumnPlacement;
    private final boolean fDefaultEnablement;
    private final boolean fIsGlobal;
    private final boolean fIncludeInMenu;

    RulerColumnDescriptor(IConfigurationElement element, RulerColumnRegistry registry) throws InvalidRegistryObjectException, CoreException {
        Assert.isLegal((registry != null ? 1 : 0) != 0);
        Assert.isLegal((element != null ? 1 : 0) != 0);
        this.fElement = element;
        ExtensionPointHelper helper = new ExtensionPointHelper(element);
        this.fId = helper.getNonNullAttribute(ID);
        this.fName = helper.getDefaultAttribute(NAME, this.fId);
        helper.getNonNullAttribute(CLASS);
        URL iconURL = helper.getDefaultResourceURL(ICON, null);
        this.fIcon = iconURL == null ? null : ImageDescriptor.createFromURL((URL)iconURL);
        this.fDefaultEnablement = helper.getDefaultAttribute(ENABLED, true);
        this.fIsGlobal = helper.getDefaultAttribute(GLOBAL, true);
        this.fIncludeInMenu = helper.getDefaultAttribute(INCLUDE_IN_MENU, true);
        IConfigurationElement[] targetEditors = element.getChildren(TARGET_EDITOR);
        IConfigurationElement[] targetContentTypes = element.getChildren(TARGET_CONTENT_TYPE);
        IConfigurationElement[] targetClasses = element.getChildren(TARGET_CLASS);
        if (targetContentTypes.length + targetEditors.length + targetClasses.length == 0) {
            helper.fail(RulerColumnMessages.RulerColumnDescriptor_missing_target_msg);
            this.fTarget = null;
        } else {
            RulerColumnTarget target;
            RulerColumnTarget combined = null;
            int i = 0;
            while (i < targetEditors.length) {
                IConfigurationElement targetEditor = targetEditors[i];
                target = RulerColumnTarget.createEditorIdTarget(new ExtensionPointHelper(targetEditor).getNonNullAttribute(ID));
                combined = RulerColumnTarget.createOrTarget(combined, target);
                ++i;
            }
            i = 0;
            while (i < targetContentTypes.length) {
                IConfigurationElement targetContentType = targetContentTypes[i];
                target = RulerColumnTarget.createContentTypeTarget(new ExtensionPointHelper(targetContentType).getNonNullAttribute(ID));
                combined = RulerColumnTarget.createOrTarget(combined, target);
                ++i;
            }
            i = 0;
            while (i < targetClasses.length) {
                IConfigurationElement targetClass = targetClasses[i];
                target = RulerColumnTarget.createClassTarget(new ExtensionPointHelper(targetClass).getNonNullAttribute(CLASS));
                combined = RulerColumnTarget.createOrTarget(combined, target);
                ++i;
            }
            this.fTarget = combined;
        }
        IConfigurationElement[] placements = element.getChildren(PLACEMENT);
        switch (placements.length) {
            case 0: {
                this.fRulerColumnPlacement = new RulerColumnPlacement();
                break;
            }
            case 1: {
                this.fRulerColumnPlacement = new RulerColumnPlacement(placements[0]);
                break;
            }
            default: {
                helper.fail(RulerColumnMessages.RulerColumnDescriptor_invalid_placement_msg);
                this.fRulerColumnPlacement = null;
            }
        }
        Assert.isTrue((this.fTarget != null ? 1 : 0) != 0);
        Assert.isTrue((this.fRulerColumnPlacement != null ? 1 : 0) != 0);
    }

    public String getId() {
        return this.fId;
    }

    public String getName() {
        return this.fName;
    }

    public ImageDescriptor getIcon() {
        return this.fIcon;
    }

    RulerColumnTarget getTarget() {
        return this.fTarget;
    }

    RulerColumnPlacement getPlacement() {
        return this.fRulerColumnPlacement;
    }

    public boolean getDefaultEnablement() {
        return this.fDefaultEnablement;
    }

    public boolean isGlobal() {
        return this.fIsGlobal;
    }

    public boolean isIncludedInMenu() {
        return this.fIncludeInMenu;
    }

    public boolean matchesEditor(ITextEditor editor) {
        Assert.isLegal((editor != null ? 1 : 0) != 0);
        RulerColumnTarget target = this.getTarget();
        IWorkbenchPartSite site = editor.getSite();
        if (site != null && target.matchesEditorId(site.getId())) {
            return true;
        }
        if (target.matchesClass(editor.getClass())) {
            return true;
        }
        IContentType contentType = this.getContentType(editor);
        return contentType != null && target.matchesContentType(contentType);
    }

    public IContributedRulerColumn createColumn(ITextEditor editor) throws CoreException, InvalidRegistryObjectException {
        Assert.isLegal((editor != null ? 1 : 0) != 0);
        IContributedRulerColumn column = (IContributedRulerColumn)this.fElement.createExecutableExtension(CLASS);
        column.setDescriptor(this);
        column.setEditor(editor);
        column.columnCreated();
        return column;
    }

    public String toString() {
        return "RulerColumnDescriptor[name=" + this.getName() + "]";
    }

    IConfigurationElement getConfigurationElement() {
        return this.fElement;
    }

    public int hashCode() {
        int result = 1;
        result = 31 * result + (this.fId == null ? 0 : this.fId.hashCode());
        return result;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (this.getClass() != obj.getClass()) {
            return false;
        }
        RulerColumnDescriptor other = (RulerColumnDescriptor)obj;
        return !(this.fId == null ? other.fId != null : !this.fId.equals(other.fId));
    }

    private IContentType getContentType(ITextEditor editor) {
        IEditorInput input = editor.getEditorInput();
        if (input == null) {
            return null;
        }
        IDocumentProvider provider = editor.getDocumentProvider();
        if (provider instanceof IDocumentProviderExtension4) {
            IDocumentProviderExtension4 ext = (IDocumentProviderExtension4)((Object)provider);
            try {
                return ext.getContentType(input);
            }
            catch (CoreException coreException) {}
        }
        return null;
    }

    String getContributor() {
        try {
            return this.fElement.getContributor().getName();
        }
        catch (InvalidRegistryObjectException invalidRegistryObjectException) {
            return "unknown";
        }
    }
}

