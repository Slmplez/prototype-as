/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.minisat.constraints.cnf;

import java.io.Serializable;
import org.sat4j.core.LiteralsUtils;
import org.sat4j.core.Vec;
import org.sat4j.minisat.core.Constr;
import org.sat4j.minisat.core.ILits;
import org.sat4j.minisat.core.Propagatable;
import org.sat4j.minisat.core.Undoable;
import org.sat4j.specs.IVec;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public final class Lits
implements Serializable,
ILits {
    private static final int DEFAULT_INIT_SIZE = 128;
    private static final long serialVersionUID = 1L;
    private boolean[] pool = new boolean[1];
    private int realnVars = 0;
    private IVec<Propagatable>[] watches = new IVec[0];
    private int[] level = new int[0];
    private Constr[] reason = new Constr[0];
    private int maxvarid = 0;
    private IVec<Undoable>[] undos = new IVec[0];
    private boolean[] falsified = new boolean[0];
    static final /* synthetic */ boolean $assertionsDisabled;
    static /* synthetic */ Class class$org$sat4j$minisat$constraints$cnf$Lits;

    public Lits() {
        this.init(128);
    }

    @Override
    public final void init(int n) {
        if (n < this.pool.length) {
            return;
        }
        if (!$assertionsDisabled && n < 0) {
            throw new AssertionError();
        }
        int n2 = n + 1;
        boolean[] blArray = new boolean[n2];
        System.arraycopy(this.pool, 0, blArray, 0, this.pool.length);
        this.pool = blArray;
        int[] nArray = new int[n2];
        System.arraycopy(this.level, 0, nArray, 0, this.level.length);
        this.level = nArray;
        IVec[] iVecArray = new IVec[2 * n2];
        System.arraycopy(this.watches, 0, iVecArray, 0, this.watches.length);
        this.watches = iVecArray;
        IVec[] iVecArray2 = new IVec[n2];
        System.arraycopy(this.undos, 0, iVecArray2, 0, this.undos.length);
        this.undos = iVecArray2;
        Constr[] constrArray = new Constr[n2];
        System.arraycopy(this.reason, 0, constrArray, 0, this.reason.length);
        this.reason = constrArray;
        boolean[] blArray2 = new boolean[2 * n2];
        System.arraycopy(this.falsified, 0, blArray2, 0, this.falsified.length);
        this.falsified = blArray2;
    }

    @Override
    public int getFromPool(int n) {
        int n2 = Math.abs(n);
        if (n2 >= this.pool.length) {
            this.init(Math.max(n2, this.pool.length << 1));
        }
        if (!$assertionsDisabled && n2 >= this.pool.length) {
            throw new AssertionError();
        }
        if (n2 > this.maxvarid) {
            this.maxvarid = n2;
        }
        int n3 = LiteralsUtils.toInternal(n);
        if (!$assertionsDisabled && n3 <= 1) {
            throw new AssertionError();
        }
        if (!this.pool[n2]) {
            ++this.realnVars;
            this.pool[n2] = true;
            this.watches[n2 << 1] = new Vec<Propagatable>();
            this.watches[n2 << 1 | 1] = new Vec<Propagatable>();
            this.undos[n2] = new Vec<Undoable>();
            this.level[n2] = -1;
            this.falsified[n2 << 1] = false;
            this.falsified[n2 << 1 | 1] = false;
        }
        return n3;
    }

    @Override
    public boolean belongsToPool(int n) {
        if (!$assertionsDisabled && n <= 0) {
            throw new AssertionError();
        }
        if (n >= this.pool.length) {
            return false;
        }
        return this.pool[n];
    }

    @Override
    public void resetPool() {
        for (int i = 0; i < this.pool.length; ++i) {
            if (!this.pool[i]) continue;
            this.reset(i << 1);
        }
    }

    @Override
    public void ensurePool(int n) {
        if (n >= this.pool.length) {
            this.init(Math.max(n, this.pool.length << 1));
        }
        this.maxvarid = n;
    }

    @Override
    public void unassign(int n) {
        if (!($assertionsDisabled || this.falsified[n] || this.falsified[n ^ 1])) {
            throw new AssertionError();
        }
        this.falsified[n] = false;
        this.falsified[n ^ 1] = false;
    }

    @Override
    public void satisfies(int n) {
        if (!$assertionsDisabled && (this.falsified[n] || this.falsified[n ^ 1])) {
            throw new AssertionError();
        }
        this.falsified[n] = false;
        this.falsified[n ^ 1] = true;
    }

    @Override
    public boolean isSatisfied(int n) {
        return this.falsified[n ^ 1];
    }

    @Override
    public final boolean isFalsified(int n) {
        return this.falsified[n];
    }

    @Override
    public boolean isUnassigned(int n) {
        return !this.falsified[n] && !this.falsified[n ^ 1];
    }

    @Override
    public String valueToString(int n) {
        if (this.isUnassigned(n)) {
            return "?";
        }
        if (this.isSatisfied(n)) {
            return "T";
        }
        return "F";
    }

    @Override
    public int nVars() {
        return this.maxvarid;
    }

    @Override
    public int not(int n) {
        return n ^ 1;
    }

    public static String toString(int n) {
        return new StringBuffer().append((n & 1) == 0 ? "" : "-").append(n >> 1).toString();
    }

    @Override
    public void reset(int n) {
        this.watches[n].clear();
        this.watches[n ^ 1].clear();
        this.level[n >> 1] = -1;
        this.reason[n >> 1] = null;
        this.undos[n >> 1].clear();
        this.falsified[n] = false;
        this.falsified[n ^ 1] = false;
    }

    @Override
    public int getLevel(int n) {
        return this.level[n >> 1];
    }

    @Override
    public void setLevel(int n, int n2) {
        this.level[n >> 1] = n2;
    }

    @Override
    public Constr getReason(int n) {
        return this.reason[n >> 1];
    }

    @Override
    public void setReason(int n, Constr constr) {
        this.reason[n >> 1] = constr;
    }

    @Override
    public IVec<Undoable> undos(int n) {
        return this.undos[n >> 1];
    }

    @Override
    public void watch(int n, Propagatable propagatable) {
        this.watches[n].push(propagatable);
    }

    @Override
    public IVec<Propagatable> watches(int n) {
        return this.watches[n];
    }

    @Override
    public boolean isImplied(int n) {
        int n2 = n >> 1;
        if (!($assertionsDisabled || this.reason[n2] == null || this.falsified[n] || this.falsified[n ^ 1])) {
            throw new AssertionError();
        }
        return this.pool[n2] && (this.reason[n2] != null || this.level[n2] == 0);
    }

    @Override
    public int realnVars() {
        return this.realnVars;
    }

    protected int capacity() {
        return this.pool.length - 1;
    }

    @Override
    public int nextFreeVarId(boolean bl) {
        if (bl) {
            this.ensurePool(this.maxvarid + 1);
            return this.maxvarid;
        }
        return this.maxvarid + 1;
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
        $assertionsDisabled = !(class$org$sat4j$minisat$constraints$cnf$Lits == null ? (class$org$sat4j$minisat$constraints$cnf$Lits = Lits.class$("org.sat4j.minisat.constraints.cnf.Lits")) : class$org$sat4j$minisat$constraints$cnf$Lits).desiredAssertionStatus();
    }
}

