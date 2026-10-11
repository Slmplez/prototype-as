/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.specs;

import java.io.Serializable;
import org.sat4j.specs.IConstr;
import org.sat4j.specs.Lbool;

public interface SearchListener
extends Serializable {
    public void assuming(int var1);

    public void propagating(int var1, IConstr var2);

    public void backtracking(int var1);

    public void adding(int var1);

    public void learn(IConstr var1);

    public void delete(int[] var1);

    public void conflictFound(IConstr var1, int var2, int var3);

    public void conflictFound(int var1);

    public void solutionFound();

    public void beginLoop();

    public void start();

    public void end(Lbool var1);

    public void restarting();

    public void backjump(int var1);
}

