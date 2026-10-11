/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.commands;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import org.eclipse.core.commands.CategoryEvent;
import org.eclipse.core.commands.ICategoryListener;
import org.eclipse.core.commands.common.NamedHandleObject;
import org.eclipse.core.internal.commands.util.Util;

public final class Category
extends NamedHandleObject {
    private Collection categoryListeners;

    Category(String id) {
        super(id);
    }

    public final void addCategoryListener(ICategoryListener categoryListener) {
        if (categoryListener == null) {
            throw new NullPointerException();
        }
        if (this.categoryListeners == null) {
            this.categoryListeners = new ArrayList();
        }
        if (!this.categoryListeners.contains(categoryListener)) {
            this.categoryListeners.add(categoryListener);
        }
    }

    public final void define(String name, String description) {
        if (name == null) {
            throw new NullPointerException("The name of a command cannot be null");
        }
        boolean definedChanged = !this.defined;
        this.defined = true;
        boolean nameChanged = !Util.equals(this.name, name);
        this.name = name;
        boolean descriptionChanged = !Util.equals(this.description, description);
        this.description = description;
        this.fireCategoryChanged(new CategoryEvent(this, definedChanged, descriptionChanged, nameChanged));
    }

    private final void fireCategoryChanged(CategoryEvent categoryEvent) {
        if (categoryEvent == null) {
            throw new NullPointerException();
        }
        if (this.categoryListeners != null) {
            Iterator listenerItr = this.categoryListeners.iterator();
            while (listenerItr.hasNext()) {
                ICategoryListener listener = (ICategoryListener)listenerItr.next();
                listener.categoryChanged(categoryEvent);
            }
        }
    }

    public final void removeCategoryListener(ICategoryListener categoryListener) {
        if (categoryListener == null) {
            throw new NullPointerException();
        }
        if (this.categoryListeners != null) {
            this.categoryListeners.remove(categoryListener);
        }
    }

    public String toString() {
        if (this.string == null) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Category(");
            stringBuffer.append(this.id);
            stringBuffer.append(',');
            stringBuffer.append(this.name);
            stringBuffer.append(',');
            stringBuffer.append(this.description);
            stringBuffer.append(',');
            stringBuffer.append(this.defined);
            stringBuffer.append(')');
            this.string = stringBuffer.toString();
        }
        return this.string;
    }

    public void undefine() {
        this.string = null;
        boolean definedChanged = this.defined;
        this.defined = false;
        boolean nameChanged = this.name != null;
        this.name = null;
        boolean descriptionChanged = this.description != null;
        this.description = null;
        this.fireCategoryChanged(new CategoryEvent(this, definedChanged, descriptionChanged, nameChanged));
    }
}

