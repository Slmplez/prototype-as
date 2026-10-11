/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 */
package org.eclipse.equinox.p2.engine.spi;

import java.util.Map;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.equinox.p2.engine.spi.Memento;
import org.eclipse.equinox.p2.engine.spi.Touchpoint;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class ProvisioningAction {
    private Memento memento = new Memento();
    private Touchpoint touchpoint;

    protected Memento getMemento() {
        return this.memento;
    }

    public abstract IStatus execute(Map<String, Object> var1);

    public abstract IStatus undo(Map<String, Object> var1);

    public void setTouchpoint(Touchpoint touchpoint) {
        this.touchpoint = touchpoint;
    }

    public Touchpoint getTouchpoint() {
        return this.touchpoint;
    }
}

