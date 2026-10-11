/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.sat4j.core.VecInt
 *  org.sat4j.specs.ContradictionException
 *  org.sat4j.specs.IVecInt
 */
package org.sat4j.pb;

import org.sat4j.core.VecInt;
import org.sat4j.pb.IPBSolver;
import org.sat4j.pb.PseudoOptDecorator;
import org.sat4j.specs.ContradictionException;
import org.sat4j.specs.IVecInt;

public class PseudoIteratorDecorator
extends PseudoOptDecorator {
    private static final long serialVersionUID = 1L;

    public PseudoIteratorDecorator(IPBSolver iPBSolver) {
        super(iPBSolver);
    }

    public void discardCurrentSolution() throws ContradictionException {
        int[] nArray = super.model();
        VecInt vecInt = new VecInt(nArray.length);
        int[] nArray2 = nArray;
        int n = nArray2.length;
        for (int i = 0; i < n; ++i) {
            int n2 = nArray2[i];
            vecInt.push(-n2);
        }
        this.addClause((IVecInt)vecInt);
    }
}

