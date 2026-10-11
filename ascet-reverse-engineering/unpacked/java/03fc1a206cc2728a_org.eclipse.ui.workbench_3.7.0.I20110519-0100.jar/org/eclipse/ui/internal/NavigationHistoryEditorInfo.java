/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IAdaptable
 */
package org.eclipse.ui.internal;

import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.ui.IEditorInput;
import org.eclipse.ui.IEditorPart;
import org.eclipse.ui.IElementFactory;
import org.eclipse.ui.IMemento;
import org.eclipse.ui.IPersistableElement;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.XMLMemento;

public class NavigationHistoryEditorInfo {
    String editorID;
    IEditorInput editorInput;
    int refCount = 0;
    IMemento memento;

    NavigationHistoryEditorInfo(IEditorPart part) {
        this.editorID = part.getSite().getId();
        this.editorInput = part.getEditorInput();
    }

    NavigationHistoryEditorInfo(IMemento memento) {
        this.memento = memento;
    }

    boolean isPersistable() {
        if (this.editorInput != null) {
            IPersistableElement persistable = this.editorInput.getPersistable();
            return persistable != null;
        }
        return this.memento != null;
    }

    void handlePartClosed() {
        if (!this.isPersistable()) {
            return;
        }
        if (this.memento == null) {
            IPersistableElement persistable = this.editorInput.getPersistable();
            this.memento = XMLMemento.createWriteRoot("editor");
            this.memento.putString("id", this.editorID);
            this.memento.putString("factoryID", persistable.getFactoryId());
            persistable.saveState(this.memento);
        }
        this.editorID = null;
        this.editorInput = null;
    }

    void restoreEditor() {
        IAdaptable element;
        if (this.memento == null) {
            return;
        }
        String factoryID = this.memento.getString("factoryID");
        IElementFactory factory = PlatformUI.getWorkbench().getElementFactory(factoryID);
        if (factory != null && (element = factory.createElement(this.memento)) instanceof IEditorInput) {
            this.editorInput = (IEditorInput)element;
            this.editorID = this.memento.getString("id");
        }
        this.memento = null;
    }

    void saveState(IMemento mem) {
        if (this.editorInput != null) {
            IPersistableElement persistable = this.editorInput.getPersistable();
            mem.putString("id", this.editorID);
            mem.putString("factoryID", persistable.getFactoryId());
            persistable.saveState(mem);
        } else if (this.memento != null) {
            mem.putMemento(this.memento);
        }
    }
}

