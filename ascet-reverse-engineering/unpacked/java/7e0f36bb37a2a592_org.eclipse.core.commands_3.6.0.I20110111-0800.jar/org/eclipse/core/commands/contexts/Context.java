/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.commands.contexts;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.eclipse.core.commands.common.NamedHandleObject;
import org.eclipse.core.commands.common.NotDefinedException;
import org.eclipse.core.commands.contexts.ContextEvent;
import org.eclipse.core.commands.contexts.IContextListener;
import org.eclipse.core.internal.commands.util.Util;

public final class Context
extends NamedHandleObject
implements Comparable {
    private Set listeners = null;
    private String parentId = null;

    Context(String id) {
        super(id);
    }

    public final void addContextListener(IContextListener listener) {
        if (listener == null) {
            throw new NullPointerException();
        }
        if (this.listeners == null) {
            this.listeners = new HashSet();
        }
        this.listeners.add(listener);
    }

    public final int compareTo(Object object) {
        Context scheme = (Context)object;
        int compareTo = Util.compare((Comparable)((Object)this.id), (Comparable)((Object)scheme.id));
        if (compareTo == 0 && (compareTo = Util.compare((Comparable)((Object)this.name), (Comparable)((Object)scheme.name))) == 0 && (compareTo = Util.compare((Comparable)((Object)this.parentId), (Comparable)((Object)scheme.parentId))) == 0 && (compareTo = Util.compare((Comparable)((Object)this.description), (Comparable)((Object)scheme.description))) == 0) {
            compareTo = Util.compare(this.defined, scheme.defined);
        }
        return compareTo;
    }

    public final void define(String name, String description, String parentId) {
        if (name == null) {
            throw new NullPointerException("The name of a scheme cannot be null");
        }
        boolean definedChanged = !this.defined;
        this.defined = true;
        boolean nameChanged = !Util.equals(this.name, name);
        this.name = name;
        boolean descriptionChanged = !Util.equals(this.description, description);
        this.description = description;
        boolean parentIdChanged = !Util.equals(this.parentId, parentId);
        this.parentId = parentId;
        this.fireContextChanged(new ContextEvent(this, definedChanged, nameChanged, descriptionChanged, parentIdChanged));
    }

    private final void fireContextChanged(ContextEvent event) {
        if (event == null) {
            throw new NullPointerException("Cannot send a null event to listeners.");
        }
        if (this.listeners == null) {
            return;
        }
        Iterator listenerItr = this.listeners.iterator();
        while (listenerItr.hasNext()) {
            IContextListener listener = (IContextListener)listenerItr.next();
            listener.contextChanged(event);
        }
    }

    public final String getParentId() throws NotDefinedException {
        if (!this.defined) {
            throw new NotDefinedException("Cannot get the parent identifier from an undefined context. " + this.id);
        }
        return this.parentId;
    }

    public final void removeContextListener(IContextListener contextListener) {
        if (contextListener == null) {
            throw new NullPointerException("Cannot remove a null listener.");
        }
        if (this.listeners == null) {
            return;
        }
        this.listeners.remove(contextListener);
        if (this.listeners.isEmpty()) {
            this.listeners = null;
        }
    }

    public final String toString() {
        if (this.string == null) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Context(");
            stringBuffer.append(this.id);
            stringBuffer.append(',');
            stringBuffer.append(this.name);
            stringBuffer.append(',');
            stringBuffer.append(this.description);
            stringBuffer.append(',');
            stringBuffer.append(this.parentId);
            stringBuffer.append(',');
            stringBuffer.append(this.defined);
            stringBuffer.append(')');
            this.string = stringBuffer.toString();
        }
        return this.string;
    }

    public final void undefine() {
        this.string = null;
        boolean definedChanged = this.defined;
        this.defined = false;
        boolean nameChanged = this.name != null;
        this.name = null;
        boolean descriptionChanged = this.description != null;
        this.description = null;
        boolean parentIdChanged = this.parentId != null;
        this.parentId = null;
        this.fireContextChanged(new ContextEvent(this, definedChanged, nameChanged, descriptionChanged, parentIdChanged));
    }
}

