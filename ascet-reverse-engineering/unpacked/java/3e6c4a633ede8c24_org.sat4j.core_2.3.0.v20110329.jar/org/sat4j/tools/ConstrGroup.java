/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.tools;

import java.util.Iterator;
import org.sat4j.core.Vec;
import org.sat4j.specs.IConstr;
import org.sat4j.specs.ISolver;
import org.sat4j.specs.IVec;

public class ConstrGroup
implements IConstr {
    private final IVec<IConstr> constrs = new Vec<IConstr>();
    private final boolean disallowNullConstraints;

    public ConstrGroup() {
        this(true);
    }

    public ConstrGroup(boolean bl) {
        this.disallowNullConstraints = bl;
    }

    public void add(IConstr iConstr) {
        if (iConstr == null && this.disallowNullConstraints) {
            throw new IllegalArgumentException("The constraint you entered cannot be removed from the solver.");
        }
        this.constrs.push(iConstr);
    }

    public void clear() {
        this.constrs.clear();
    }

    public void removeFrom(ISolver iSolver) {
        Iterator<IConstr> iterator = this.constrs.iterator();
        while (iterator.hasNext()) {
            iSolver.removeConstr(iterator.next());
        }
    }

    public IConstr getConstr(int n) {
        return this.constrs.get(n);
    }

    public int size() {
        return this.constrs.size();
    }

    public boolean learnt() {
        if (this.constrs.size() == 0) {
            return false;
        }
        return this.constrs.get(0).learnt();
    }

    public double getActivity() {
        return 0.0;
    }

    public int get(int n) {
        throw new UnsupportedOperationException();
    }
}

