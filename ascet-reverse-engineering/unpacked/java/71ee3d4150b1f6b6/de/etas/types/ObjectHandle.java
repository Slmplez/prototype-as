/*
 * Decompiled with CFR 0.152.
 */
package de.etas.types;

import de.etas.types.Identifiable;

public abstract class ObjectHandle
implements Identifiable {
    protected long objectIdent;
    protected boolean registered;

    public ObjectHandle() {
        this.objectIdent = 0L;
        this.registered = false;
    }

    public ObjectHandle(Identifiable obj) {
        if (obj == null) {
            this.objectIdent = 0L;
        } else {
            this.objectIdent = obj.getIdentifier();
            this.registered = obj.isRegistered();
        }
    }

    public boolean equals(Object hndl) {
        if (super.equals(hndl)) {
            return true;
        }
        if (!(hndl instanceof Identifiable)) {
            return false;
        }
        if (hndl == null) {
            return this.objectIdent == 0L;
        }
        return this.objectIdent == ((Identifiable)hndl).getIdentifier();
    }

    public final long getIdentifier() {
        return this.objectIdent;
    }

    public int hashCode() {
        return (int)this.objectIdent;
    }

    public final boolean isRegistered() {
        return this.registered;
    }

    public final boolean nullHandle() {
        return this.objectIdent == 0L;
    }

    public final void setIdentifier(long id) {
        this.objectIdent = id;
    }

    public final void setIdentifier(Identifiable id) {
        this.objectIdent = id == null ? 0L : id.getIdentifier();
    }

    public final void setRegistered(boolean flag) {
        this.registered = flag;
    }
}

