/*
 * Decompiled with CFR 0.152.
 */
package org.apache.xerces.impl.validation;

import java.util.Vector;
import org.apache.xerces.impl.validation.EntityState;
import org.apache.xerces.impl.validation.ValidationState;

public class ValidationManager {
    protected final Vector fVSs = new Vector();
    protected boolean fGrammarFound = false;
    protected boolean fCachedDTD = false;

    public final void addValidationState(ValidationState validationState) {
        this.fVSs.addElement(validationState);
    }

    public final void setEntityState(EntityState entityState) {
        int n = this.fVSs.size() - 1;
        while (n >= 0) {
            ((ValidationState)this.fVSs.elementAt(n)).setEntityState(entityState);
            --n;
        }
    }

    public final void setGrammarFound(boolean bl) {
        this.fGrammarFound = bl;
    }

    public final boolean isGrammarFound() {
        return this.fGrammarFound;
    }

    public final void setCachedDTD(boolean bl) {
        this.fCachedDTD = bl;
    }

    public final boolean isCachedDTD() {
        return this.fCachedDTD;
    }

    public final void reset() {
        this.fVSs.removeAllElements();
        this.fGrammarFound = false;
        this.fCachedDTD = false;
    }
}

