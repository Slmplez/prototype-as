/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.ui.internal;

import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.ui.IEditorDescriptor;
import org.eclipse.ui.IEditorInput;
import org.eclipse.ui.IEditorRegistry;
import org.eclipse.ui.IElementFactory;
import org.eclipse.ui.IMemento;
import org.eclipse.ui.IPersistableElement;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.internal.WorkbenchPlugin;

public class EditorHistoryItem {
    private IEditorInput input;
    private IEditorDescriptor descriptor;
    private IMemento memento;

    public EditorHistoryItem(IEditorInput input, IEditorDescriptor descriptor) {
        this.input = input;
        this.descriptor = descriptor;
    }

    public EditorHistoryItem(IMemento memento) {
        this.memento = memento;
    }

    public IEditorDescriptor getDescriptor() {
        return this.descriptor;
    }

    public IEditorInput getInput() {
        return this.input;
    }

    public boolean isRestored() {
        return this.memento == null;
    }

    public String getName() {
        String name;
        if (this.isRestored() && this.getInput() != null) {
            return this.getInput().getName();
        }
        if (this.memento != null && (name = this.memento.getString("name")) != null) {
            return name;
        }
        return "";
    }

    public String getToolTipText() {
        String name;
        if (this.isRestored() && this.getInput() != null) {
            return this.getInput().getToolTipText();
        }
        if (this.memento != null && (name = this.memento.getString("tooltip")) != null) {
            return name;
        }
        return "";
    }

    public boolean matches(IEditorInput input) {
        if (this.isRestored()) {
            return input.equals(this.getInput());
        }
        if (!this.getName().equals(input.getName())) {
            return false;
        }
        if (!this.getToolTipText().equals(input.getToolTipText())) {
            return false;
        }
        IPersistableElement persistable = input.getPersistable();
        String inputId = persistable == null ? null : persistable.getFactoryId();
        String myId = this.getFactoryId();
        return myId == null ? inputId == null : myId.equals(inputId);
    }

    public String getFactoryId() {
        if (this.isRestored()) {
            IPersistableElement persistable;
            if (this.input != null && (persistable = this.input.getPersistable()) != null) {
                return persistable.getFactoryId();
            }
        } else if (this.memento != null) {
            return this.memento.getString("factoryID");
        }
        return null;
    }

    public IStatus restoreState() {
        Assert.isTrue((!this.isRestored() ? 1 : 0) != 0);
        IStatus result = Status.OK_STATUS;
        IMemento memento = this.memento;
        this.memento = null;
        String factoryId = memento.getString("factoryID");
        if (factoryId == null) {
            WorkbenchPlugin.log("Unable to restore mru list - no input factory ID.");
            return result;
        }
        IElementFactory factory = PlatformUI.getWorkbench().getElementFactory(factoryId);
        if (factory == null) {
            return result;
        }
        IMemento persistableMemento = memento.getChild("persistable");
        if (persistableMemento == null) {
            WorkbenchPlugin.log("Unable to restore mru list - no input element state: " + factoryId);
            return result;
        }
        IAdaptable adaptable = factory.createElement(persistableMemento);
        if (adaptable == null || !(adaptable instanceof IEditorInput)) {
            return result;
        }
        this.input = (IEditorInput)adaptable;
        String editorId = memento.getString("id");
        if (editorId != null) {
            IEditorRegistry registry = WorkbenchPlugin.getDefault().getEditorRegistry();
            this.descriptor = registry.findEditor(editorId);
        }
        return result;
    }

    public boolean canSave() {
        return !this.isRestored() || this.getInput() != null && this.getInput().getPersistable() != null;
    }

    public IStatus saveState(IMemento memento) {
        IPersistableElement persistable;
        if (!this.isRestored()) {
            memento.putMemento(this.memento);
        } else if (this.input != null && (persistable = this.input.getPersistable()) != null) {
            IMemento persistableMemento = memento.createChild("persistable");
            persistable.saveState(persistableMemento);
            memento.putString("factoryID", persistable.getFactoryId());
            if (this.descriptor != null && this.descriptor.getId() != null) {
                memento.putString("id", this.descriptor.getId());
            }
            memento.putString("name", this.input.getName());
            memento.putString("tooltip", this.input.getToolTipText());
        }
        return Status.OK_STATUS;
    }
}

