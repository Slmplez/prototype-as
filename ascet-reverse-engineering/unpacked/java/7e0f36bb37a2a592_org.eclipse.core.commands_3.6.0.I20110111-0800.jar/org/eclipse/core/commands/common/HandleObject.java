/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.commands.common;

import org.eclipse.core.commands.common.EventManager;
import org.eclipse.core.commands.common.IIdentifiable;
import org.eclipse.core.internal.commands.util.Util;

public abstract class HandleObject
extends EventManager
implements IIdentifiable {
    private static final int HASH_CODE_NOT_COMPUTED = -1;
    private static final int HASH_FACTOR = 89;
    private static final int HASH_INITIAL;
    protected transient boolean defined = false;
    private transient int hashCode = -1;
    protected final String id;
    protected transient String string = null;
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.core.commands.common.HandleObject");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        HASH_INITIAL = clazz.getName().hashCode();
    }

    protected HandleObject(String id) {
        if (id == null) {
            throw new NullPointerException("Cannot create a handle with a null id");
        }
        this.id = id;
    }

    public boolean equals(Object object) {
        if (object == this) {
            return true;
        }
        if (!(object instanceof HandleObject)) {
            return false;
        }
        HandleObject handle = (HandleObject)object;
        return Util.equals(this.id, handle.id) && this.getClass() == handle.getClass();
    }

    public final String getId() {
        return this.id;
    }

    public final int hashCode() {
        if (this.hashCode == -1) {
            this.hashCode = HASH_INITIAL * 89 + Util.hashCode(this.id);
            if (this.hashCode == -1) {
                ++this.hashCode;
            }
        }
        return this.hashCode;
    }

    public final boolean isDefined() {
        return this.defined;
    }

    public abstract String toString();

    public abstract void undefine();
}

