/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.minisat.constraints;

import org.sat4j.minisat.constraints.AbstractDataStructureFactory;
import org.sat4j.minisat.constraints.cnf.Lits;
import org.sat4j.minisat.core.ILits;

public abstract class AbstractCardinalityDataStructure
extends AbstractDataStructureFactory {
    private static final long serialVersionUID = 1L;

    protected ILits createLits() {
        return new Lits();
    }
}

