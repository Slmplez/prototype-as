/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.minisat.core;

import org.sat4j.minisat.core.Constr;
import org.sat4j.minisat.core.Propagatable;
import org.sat4j.minisat.core.Undoable;
import org.sat4j.specs.IVec;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ILits {
    public static final int UNDEFINED = -1;

    public void init(int var1);

    public int getFromPool(int var1);

    public boolean belongsToPool(int var1);

    public void resetPool();

    public void ensurePool(int var1);

    public void unassign(int var1);

    public void satisfies(int var1);

    public boolean isSatisfied(int var1);

    public boolean isFalsified(int var1);

    public boolean isUnassigned(int var1);

    public boolean isImplied(int var1);

    public int nVars();

    public int realnVars();

    public int nextFreeVarId(boolean var1);

    public int not(int var1);

    public void reset(int var1);

    public int getLevel(int var1);

    public void setLevel(int var1, int var2);

    public Constr getReason(int var1);

    public void setReason(int var1, Constr var2);

    public IVec<Undoable> undos(int var1);

    public void watch(int var1, Propagatable var2);

    public IVec<Propagatable> watches(int var1);

    public String valueToString(int var1);
}

