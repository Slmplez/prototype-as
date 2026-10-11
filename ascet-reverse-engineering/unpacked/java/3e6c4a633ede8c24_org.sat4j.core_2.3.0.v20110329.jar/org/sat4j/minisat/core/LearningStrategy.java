/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.minisat.core;

import java.io.Serializable;
import org.sat4j.minisat.core.Constr;
import org.sat4j.minisat.core.DataStructureFactory;
import org.sat4j.minisat.core.Solver;
import org.sat4j.minisat.core.VarActivityListener;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface LearningStrategy<D extends DataStructureFactory>
extends Serializable {
    public void init();

    public void learns(Constr var1);

    public void setVarActivityListener(VarActivityListener var1);

    public void setSolver(Solver<D> var1);
}

