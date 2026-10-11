/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.minisat.learning;

import org.sat4j.minisat.core.Constr;
import org.sat4j.minisat.core.DataStructureFactory;
import org.sat4j.minisat.core.LearningStrategy;
import org.sat4j.minisat.core.Solver;
import org.sat4j.minisat.core.VarActivityListener;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
abstract class AbstractLearning<D extends DataStructureFactory>
implements LearningStrategy<D> {
    private static final long serialVersionUID = 1L;
    private VarActivityListener val;
    static final /* synthetic */ boolean $assertionsDisabled;
    static /* synthetic */ Class class$org$sat4j$minisat$learning$AbstractLearning;

    AbstractLearning() {
    }

    @Override
    public void setVarActivityListener(VarActivityListener varActivityListener) {
        this.val = varActivityListener;
    }

    @Override
    public void setSolver(Solver<D> solver) {
        this.val = solver;
    }

    public final void claBumpActivity(Constr constr) {
        for (int i = 0; i < constr.size(); ++i) {
            int n = constr.get(i);
            if (!$assertionsDisabled && n <= 1) {
                throw new AssertionError();
            }
            this.val.varBumpActivity(n);
        }
    }

    @Override
    public void init() {
    }

    static /* synthetic */ Class class$(String string) {
        try {
            return Class.forName(string);
        }
        catch (ClassNotFoundException classNotFoundException) {
            throw new NoClassDefFoundError().initCause(classNotFoundException);
        }
    }

    static {
        $assertionsDisabled = !(class$org$sat4j$minisat$learning$AbstractLearning == null ? (class$org$sat4j$minisat$learning$AbstractLearning = AbstractLearning.class$("org.sat4j.minisat.learning.AbstractLearning")) : class$org$sat4j$minisat$learning$AbstractLearning).desiredAssertionStatus();
    }
}

