/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.sat4j.core.Vec
 *  org.sat4j.core.VecInt
 *  org.sat4j.minisat.constraints.AbstractDataStructureFactory
 *  org.sat4j.minisat.constraints.cnf.Clauses
 *  org.sat4j.minisat.constraints.cnf.LearntBinaryClause
 *  org.sat4j.minisat.constraints.cnf.LearntHTClause
 *  org.sat4j.minisat.constraints.cnf.Lits
 *  org.sat4j.minisat.constraints.cnf.OriginalBinaryClause
 *  org.sat4j.minisat.constraints.cnf.OriginalHTClause
 *  org.sat4j.minisat.constraints.cnf.UnitClause
 *  org.sat4j.minisat.core.Constr
 *  org.sat4j.minisat.core.ILits
 *  org.sat4j.minisat.core.UnitPropagationListener
 *  org.sat4j.specs.ContradictionException
 *  org.sat4j.specs.IVec
 *  org.sat4j.specs.IVecInt
 */
package org.sat4j.pb.constraints;

import java.lang.reflect.Field;
import java.math.BigInteger;
import org.sat4j.core.Vec;
import org.sat4j.core.VecInt;
import org.sat4j.minisat.constraints.AbstractDataStructureFactory;
import org.sat4j.minisat.constraints.cnf.Clauses;
import org.sat4j.minisat.constraints.cnf.LearntBinaryClause;
import org.sat4j.minisat.constraints.cnf.LearntHTClause;
import org.sat4j.minisat.constraints.cnf.Lits;
import org.sat4j.minisat.constraints.cnf.OriginalBinaryClause;
import org.sat4j.minisat.constraints.cnf.OriginalHTClause;
import org.sat4j.minisat.constraints.cnf.UnitClause;
import org.sat4j.minisat.core.Constr;
import org.sat4j.minisat.core.ILits;
import org.sat4j.minisat.core.UnitPropagationListener;
import org.sat4j.pb.constraints.PBContainer;
import org.sat4j.pb.constraints.pb.AtLeastPB;
import org.sat4j.pb.constraints.pb.IDataStructurePB;
import org.sat4j.pb.constraints.pb.Pseudos;
import org.sat4j.pb.core.PBDataStructureFactory;
import org.sat4j.specs.ContradictionException;
import org.sat4j.specs.IVec;
import org.sat4j.specs.IVecInt;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class AbstractPBDataStructureFactory
extends AbstractDataStructureFactory
implements PBDataStructureFactory {
    public static final INormalizer FOR_COMPETITION = new INormalizer(){
        private static final long serialVersionUID = 1L;

        @Override
        public PBContainer nice(IVecInt iVecInt, IVec<BigInteger> iVec, boolean bl, BigInteger bigInteger, ILits iLits) throws ContradictionException {
            if (iVecInt.size() != iVec.size()) {
                throw new IllegalArgumentException("Number of coeff and literals are different!!!");
            }
            VecInt vecInt = new VecInt(iVecInt.size());
            iVecInt.copyTo((IVecInt)vecInt);
            Vec vec = new Vec(iVecInt.size());
            iVec.copyTo((IVec)vec);
            int n = 0;
            while (n < vecInt.size()) {
                if (((BigInteger)vec.get(n)).equals(BigInteger.ZERO)) {
                    vecInt.delete(n);
                    vec.delete(n);
                    continue;
                }
                ++n;
            }
            int[] nArray = new int[vecInt.size()];
            vecInt.copyTo(nArray);
            Object[] objectArray = new BigInteger[vec.size()];
            vec.copyTo(objectArray);
            BigInteger bigInteger2 = Pseudos.niceParametersForCompetition(nArray, (BigInteger[])objectArray, bl, bigInteger);
            return new PBContainer(nArray, (BigInteger[])objectArray, bigInteger2);
        }
    };
    public static final INormalizer NO_COMPETITION = new INormalizer(){
        private static final long serialVersionUID = 1L;

        @Override
        public PBContainer nice(IVecInt iVecInt, IVec<BigInteger> iVec, boolean bl, BigInteger bigInteger, ILits iLits) throws ContradictionException {
            IDataStructurePB iDataStructurePB = Pseudos.niceParameters(iVecInt, iVec, bl, bigInteger, iLits);
            int n = iDataStructurePB.size();
            int[] nArray = new int[n];
            BigInteger[] bigIntegerArray = new BigInteger[n];
            iDataStructurePB.buildConstraintFromMapPb(nArray, bigIntegerArray);
            BigInteger bigInteger2 = iDataStructurePB.getDegree();
            return new PBContainer(nArray, bigIntegerArray, bigInteger2);
        }
    };
    private INormalizer norm = FOR_COMPETITION;
    private static final long serialVersionUID = 1L;
    static /* synthetic */ Class class$org$sat4j$pb$constraints$AbstractPBDataStructureFactory;

    protected INormalizer getNormalizer() {
        return this.norm;
    }

    public void setNormalizer(String string) {
        try {
            Field field = (class$org$sat4j$pb$constraints$AbstractPBDataStructureFactory == null ? (class$org$sat4j$pb$constraints$AbstractPBDataStructureFactory = AbstractPBDataStructureFactory.class$("org.sat4j.pb.constraints.AbstractPBDataStructureFactory")) : class$org$sat4j$pb$constraints$AbstractPBDataStructureFactory).getDeclaredField(string);
            this.norm = (INormalizer)field.get(this);
        }
        catch (Exception exception) {
            exception.printStackTrace();
            this.norm = FOR_COMPETITION;
        }
    }

    public void setNormalizer(INormalizer iNormalizer) {
        this.norm = iNormalizer;
    }

    public Constr createClause(IVecInt iVecInt) throws ContradictionException {
        IVecInt iVecInt2 = Clauses.sanityCheck((IVecInt)iVecInt, (ILits)this.getVocabulary(), (UnitPropagationListener)this.solver);
        if (iVecInt2 == null) {
            return null;
        }
        if (iVecInt2.size() == 2) {
            return OriginalBinaryClause.brandNewClause((UnitPropagationListener)this.solver, (ILits)this.getVocabulary(), (IVecInt)iVecInt2);
        }
        return OriginalHTClause.brandNewClause((UnitPropagationListener)this.solver, (ILits)this.getVocabulary(), (IVecInt)iVecInt2);
    }

    public Constr createUnregisteredClause(IVecInt iVecInt) {
        if (iVecInt.size() == 1) {
            return new UnitClause(iVecInt.last());
        }
        if (iVecInt.size() == 2) {
            return new LearntBinaryClause(iVecInt, this.getVocabulary());
        }
        return new LearntHTClause(iVecInt, this.getVocabulary());
    }

    public Constr createCardinalityConstraint(IVecInt iVecInt, int n) throws ContradictionException {
        return AtLeastPB.atLeastNew(this.solver, this.getVocabulary(), iVecInt, n);
    }

    @Override
    public Constr createPseudoBooleanConstraint(IVecInt iVecInt, IVec<BigInteger> iVec, boolean bl, BigInteger bigInteger) throws ContradictionException {
        PBContainer pBContainer = this.getNormalizer().nice(iVecInt, iVec, bl, bigInteger, this.getVocabulary());
        return this.constraintFactory(pBContainer.lits, pBContainer.coefs, pBContainer.degree);
    }

    @Override
    public Constr createUnregisteredPseudoBooleanConstraint(IDataStructurePB iDataStructurePB) {
        return this.learntConstraintFactory(iDataStructurePB);
    }

    protected abstract Constr constraintFactory(int[] var1, BigInteger[] var2, BigInteger var3) throws ContradictionException;

    protected abstract Constr learntConstraintFactory(IDataStructurePB var1);

    protected ILits createLits() {
        return new Lits();
    }

    static /* synthetic */ Class class$(String string) {
        try {
            return Class.forName(string);
        }
        catch (ClassNotFoundException classNotFoundException) {
            throw new NoClassDefFoundError().initCause(classNotFoundException);
        }
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    static interface INormalizer {
        public PBContainer nice(IVecInt var1, IVec<BigInteger> var2, boolean var3, BigInteger var4, ILits var5) throws ContradictionException;
    }
}

