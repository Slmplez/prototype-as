/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.common.NamedHandleObject
 *  org.eclipse.core.commands.common.NotDefinedException
 */
package org.eclipse.jface.bindings;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.eclipse.core.commands.common.NamedHandleObject;
import org.eclipse.core.commands.common.NotDefinedException;
import org.eclipse.jface.bindings.ISchemeListener;
import org.eclipse.jface.bindings.SchemeEvent;
import org.eclipse.jface.util.Util;

public final class Scheme
extends NamedHandleObject
implements Comparable {
    private Set listeners = null;
    private String parentId = null;

    Scheme(String id) {
        super(id);
    }

    public final void addSchemeListener(ISchemeListener schemeListener) {
        if (schemeListener == null) {
            throw new NullPointerException("Can't add a null scheme listener.");
        }
        if (this.listeners == null) {
            this.listeners = new HashSet();
        }
        this.listeners.add(schemeListener);
    }

    public final int compareTo(Object object) {
        Scheme scheme = (Scheme)object;
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
        this.fireSchemeChanged(new SchemeEvent(this, definedChanged, nameChanged, descriptionChanged, parentIdChanged));
    }

    private final void fireSchemeChanged(SchemeEvent event) {
        if (event == null) {
            throw new NullPointerException("Cannot send a null event to listeners.");
        }
        if (this.listeners == null) {
            return;
        }
        Iterator listenerItr = this.listeners.iterator();
        while (listenerItr.hasNext()) {
            ISchemeListener listener = (ISchemeListener)listenerItr.next();
            listener.schemeChanged(event);
        }
    }

    public final String getParentId() throws NotDefinedException {
        if (!this.defined) {
            throw new NotDefinedException("Cannot get the parent identifier from an undefined scheme. " + this.id);
        }
        return this.parentId;
    }

    public final void removeSchemeListener(ISchemeListener schemeListener) {
        if (schemeListener == null) {
            throw new NullPointerException("Cannot remove a null listener.");
        }
        if (this.listeners == null) {
            return;
        }
        this.listeners.remove(schemeListener);
        if (this.listeners.isEmpty()) {
            this.listeners = null;
        }
    }

    public final String toString() {
        if (this.string == null) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Scheme(");
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
        this.fireSchemeChanged(new SchemeEvent(this, definedChanged, nameChanged, descriptionChanged, parentIdChanged));
    }
}

