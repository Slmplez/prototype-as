/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.viewers.IDecorationContext
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.ui.internal.decorators;

import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.viewers.IDecorationContext;
import org.eclipse.osgi.util.NLS;
import org.eclipse.ui.internal.WorkbenchMessages;

class DecorationReference {
    Object element;
    Object adaptedElement;
    String undecoratedText;
    boolean forceUpdate = false;
    IDecorationContext[] contexts;

    DecorationReference(Object object, Object adaptedObject, IDecorationContext context) {
        this.contexts = new IDecorationContext[]{context};
        Assert.isNotNull((Object)object);
        this.element = object;
        this.adaptedElement = adaptedObject;
    }

    Object getAdaptedElement() {
        return this.adaptedElement;
    }

    Object getElement() {
        return this.element;
    }

    boolean shouldForceUpdate() {
        return this.forceUpdate;
    }

    void setForceUpdate(boolean forceUpdate) {
        this.forceUpdate = forceUpdate;
    }

    void setUndecoratedText(String text) {
        this.undecoratedText = text;
    }

    String getSubTask() {
        if (this.undecoratedText == null) {
            return WorkbenchMessages.DecorationReference_EmptyReference;
        }
        return NLS.bind((String)WorkbenchMessages.DecorationScheduler_DecoratingSubtask, (Object)this.undecoratedText);
    }

    IDecorationContext[] getContexts() {
        return this.contexts;
    }

    void addContext(IDecorationContext context) {
        IDecorationContext[] newContexts = new IDecorationContext[this.contexts.length + 1];
        System.arraycopy(this.contexts, 0, newContexts, 0, this.contexts.length);
        newContexts[this.contexts.length] = context;
        this.contexts = newContexts;
    }
}

