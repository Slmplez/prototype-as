/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.sat4j.minisat.constraints.cnf.LearntHTClause
 *  org.sat4j.minisat.core.Constr
 *  org.sat4j.minisat.core.ILits
 *  org.sat4j.minisat.core.UnitPropagationListener
 *  org.sat4j.specs.IVecInt
 */
package org.sat4j.pb.constraints.pb;

import java.math.BigInteger;
import org.sat4j.minisat.constraints.cnf.LearntHTClause;
import org.sat4j.minisat.core.Constr;
import org.sat4j.minisat.core.ILits;
import org.sat4j.minisat.core.UnitPropagationListener;
import org.sat4j.pb.constraints.pb.PBConstr;
import org.sat4j.specs.IVecInt;

public final class LearntHTClausePB
extends LearntHTClause
implements PBConstr {
    private static final long serialVersionUID = 1L;

    public LearntHTClausePB(IVecInt iVecInt, ILits iLits) {
        super(iVecInt, iLits);
    }

    public void assertConstraint(UnitPropagationListener unitPropagationListener) {
        if (this.getVocabulary().isUnassigned(this.head)) {
            unitPropagationListener.enqueue(this.head, (Constr)this);
        } else if (this.getVocabulary().isUnassigned(this.tail)) {
            unitPropagationListener.enqueue(this.tail, (Constr)this);
        } else {
            for (int i = 0; i < this.middleLits.length; ++i) {
                if (!this.getVocabulary().isUnassigned(this.middleLits[i])) continue;
                int n = this.middleLits[i];
                this.middleLits[i] = this.head;
                this.head = n;
                unitPropagationListener.enqueue(n, (Constr)this);
                break;
            }
        }
    }

    public IVecInt computeAnImpliedClause() {
        return null;
    }

    public BigInteger getCoef(int n) {
        return BigInteger.ONE;
    }

    public BigInteger[] getCoefs() {
        BigInteger[] bigIntegerArray = new BigInteger[this.size()];
        for (int i = 0; i < bigIntegerArray.length; ++i) {
            bigIntegerArray[i] = BigInteger.ONE;
        }
        return bigIntegerArray;
    }

    public BigInteger getDegree() {
        return BigInteger.ONE;
    }
}

