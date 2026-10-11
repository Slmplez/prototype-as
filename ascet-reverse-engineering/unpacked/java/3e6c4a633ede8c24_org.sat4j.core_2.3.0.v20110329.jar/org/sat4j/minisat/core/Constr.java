/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.minisat.core;

import org.sat4j.minisat.core.Propagatable;
import org.sat4j.minisat.core.UnitPropagationListener;
import org.sat4j.specs.IConstr;
import org.sat4j.specs.IVecInt;

public interface Constr
extends Propagatable,
IConstr {
    public void remove(UnitPropagationListener var1);

    public boolean simplify();

    public void calcReason(int var1, IVecInt var2);

    public void incActivity(double var1);

    @Deprecated
    public void forwardActivity(double var1);

    public boolean locked();

    public void setLearnt();

    public void register();

    public void rescaleBy(double var1);

    public void assertConstraint(UnitPropagationListener var1);
}

