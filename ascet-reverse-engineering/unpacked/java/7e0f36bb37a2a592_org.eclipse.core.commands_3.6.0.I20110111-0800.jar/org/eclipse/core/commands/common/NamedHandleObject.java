/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.commands.common;

import org.eclipse.core.commands.common.HandleObject;
import org.eclipse.core.commands.common.NotDefinedException;

public abstract class NamedHandleObject
extends HandleObject {
    protected String description = null;
    protected String name = null;

    protected NamedHandleObject(String id) {
        super(id);
    }

    public String getDescription() throws NotDefinedException {
        if (!this.isDefined()) {
            throw new NotDefinedException("Cannot get a description from an undefined object. " + this.id);
        }
        return this.description;
    }

    public String getName() throws NotDefinedException {
        if (!this.isDefined()) {
            throw new NotDefinedException("Cannot get the name from an undefined object. " + this.id);
        }
        return this.name;
    }
}

