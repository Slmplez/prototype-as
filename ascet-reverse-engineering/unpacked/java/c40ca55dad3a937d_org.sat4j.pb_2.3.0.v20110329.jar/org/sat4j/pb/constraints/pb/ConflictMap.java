/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.sat4j.core.VecInt
 *  org.sat4j.minisat.constraints.cnf.Lits
 *  org.sat4j.minisat.core.ILits
 *  org.sat4j.minisat.core.VarActivityListener
 *  org.sat4j.specs.IteratorInt
 */
package org.sat4j.pb.constraints.pb;

import java.math.BigInteger;
import org.sat4j.core.VecInt;
import org.sat4j.minisat.constraints.cnf.Lits;
import org.sat4j.minisat.core.ILits;
import org.sat4j.minisat.core.VarActivityListener;
import org.sat4j.pb.constraints.pb.IConflict;
import org.sat4j.pb.constraints.pb.IWatchPb;
import org.sat4j.pb.constraints.pb.MapPb;
import org.sat4j.pb.constraints.pb.PBConstr;
import org.sat4j.specs.IteratorInt;

public class ConflictMap
extends MapPb
implements IConflict {
    private final ILits voc;
    protected boolean hasBeenReduced = false;
    protected long numberOfReductions = 0L;
    protected BigInteger currentSlack;
    protected int currentLevel;
    protected VecInt[] byLevel;
    protected BigInteger coefMult = BigInteger.ZERO;
    protected BigInteger coefMultCons = BigInteger.ZERO;
    static final /* synthetic */ boolean $assertionsDisabled;

    public static IConflict createConflict(PBConstr pBConstr, int n) {
        return new ConflictMap(pBConstr, n);
    }

    ConflictMap(PBConstr pBConstr, int n) {
        super(pBConstr);
        this.voc = pBConstr.getVocabulary();
        this.currentLevel = n;
        this.initStructures();
    }

    private void initStructures() {
        this.currentSlack = BigInteger.ZERO;
        this.byLevel = new VecInt[ConflictMap.levelToIndex(this.currentLevel) + 1];
        for (int i = 0; i < this.size(); ++i) {
            int n;
            int n2 = this.weightedLits.getLit(i);
            int n3 = this.voc.getLevel(n2);
            BigInteger bigInteger = this.weightedLits.getCoef(i);
            if (!(bigInteger.signum() <= 0 || this.voc.isFalsified(n2) && n3 != this.currentLevel)) {
                this.currentSlack = this.currentSlack.add(bigInteger);
            }
            if (this.byLevel[n = ConflictMap.levelToIndex(n3)] == null) {
                this.byLevel[n] = new VecInt();
            }
            this.byLevel[n].push(n2);
        }
    }

    private static final int levelToIndex(int n) {
        return n + 1;
    }

    private static final int indexToLevel(int n) {
        return n - 1;
    }

    public BigInteger resolve(PBConstr pBConstr, int n, VarActivityListener varActivityListener) {
        if (!$assertionsDisabled && n <= 1) {
            throw new AssertionError();
        }
        int n2 = n ^ 1;
        if (pBConstr == null || !this.weightedLits.containsKey(n2)) {
            int n3 = ConflictMap.levelToIndex(this.voc.getLevel(n));
            int n4 = 0;
            if (this.byLevel[n3] != null) {
                if (this.byLevel[n3].contains(n)) {
                    n4 = n;
                    if (!$assertionsDisabled && !this.weightedLits.containsKey(n)) {
                        throw new AssertionError();
                    }
                } else if (this.byLevel[n3].contains(n2)) {
                    n4 = n2;
                    if (!$assertionsDisabled && !this.weightedLits.containsKey(n2)) {
                        throw new AssertionError();
                    }
                }
            }
            if (n4 > 0) {
                this.byLevel[n3].remove(n4);
                if (this.byLevel[0] == null) {
                    this.byLevel[0] = new VecInt();
                }
                this.byLevel[0].push(n4);
            }
            return this.degree;
        }
        if (!$assertionsDisabled && this.slackConflict().signum() > 0) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && this.degree.signum() < 0) {
            throw new AssertionError();
        }
        BigInteger[] bigIntegerArray = null;
        BigInteger bigInteger = pBConstr.getDegree();
        int n5 = 0;
        while (pBConstr.get(n5) != n) {
            ++n5;
        }
        if (!$assertionsDisabled && pBConstr.get(n5) != n) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && pBConstr.getCoef(n5) == BigInteger.ZERO) {
            throw new AssertionError();
        }
        if (pBConstr.getCoef(n5).equals(BigInteger.ONE)) {
            this.coefMultCons = this.weightedLits.get(n2);
            this.coefMult = BigInteger.ONE;
            bigInteger = bigInteger.multiply(this.coefMultCons);
        } else {
            if (this.weightedLits.get(n2).equals(BigInteger.ONE)) {
                this.coefMult = pBConstr.getCoef(n5);
                this.coefMultCons = BigInteger.ONE;
                this.degree = this.degree.multiply(this.coefMult);
            } else {
                IWatchPb iWatchPb = (IWatchPb)pBConstr;
                bigIntegerArray = iWatchPb.getCoefs();
                if (!$assertionsDisabled && !ConflictMap.positiveCoefs(bigIntegerArray)) {
                    throw new AssertionError();
                }
                bigInteger = this.reduceUntilConflict(n, n5, bigIntegerArray, iWatchPb);
                bigInteger = bigInteger.multiply(this.coefMultCons);
                this.degree = this.degree.multiply(this.coefMult);
            }
            if (!this.coefMult.equals(BigInteger.ONE)) {
                for (int i = 0; i < this.size(); ++i) {
                    this.changeCoef(i, this.weightedLits.getCoef(i).multiply(this.coefMult));
                }
            }
        }
        if (!$assertionsDisabled && this.slackConflict().signum() > 0) {
            throw new AssertionError();
        }
        this.degree = this.cuttingPlane(pBConstr, bigInteger, bigIntegerArray, this.coefMultCons, varActivityListener);
        if (!$assertionsDisabled && this.weightedLits.containsKey(n)) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && this.weightedLits.containsKey(n2)) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && this.getLevelByLevel(n) != -1) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && this.getLevelByLevel(n2) != -1) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && this.degree.signum() <= 0) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && this.slackConflict().signum() > 0) {
            throw new AssertionError();
        }
        this.degree = this.saturation();
        if (!$assertionsDisabled && this.slackConflict().signum() > 0) {
            throw new AssertionError();
        }
        return this.degree;
    }

    protected BigInteger reduceUntilConflict(int n, int n2, BigInteger[] bigIntegerArray, IWatchPb iWatchPb) {
        BigInteger bigInteger;
        BigInteger bigInteger2 = BigInteger.ONE.negate();
        BigInteger bigInteger3 = BigInteger.ZERO;
        BigInteger bigInteger4 = this.slackConflict();
        BigInteger bigInteger5 = iWatchPb.getDegree();
        BigInteger bigInteger6 = BigInteger.ZERO;
        BigInteger bigInteger7 = this.weightedLits.get(n ^ 1);
        do {
            if (bigInteger2.signum() >= 0) {
                if (!$assertionsDisabled && bigInteger3.signum() <= 0) {
                    throw new AssertionError();
                }
                BigInteger bigInteger8 = this.reduceInConstraint(iWatchPb, bigIntegerArray, n2, bigInteger5);
                if (!($assertionsDisabled || bigInteger8.compareTo(bigInteger5) < 0 && bigInteger8.compareTo(BigInteger.ONE) >= 0)) {
                    throw new AssertionError();
                }
                bigInteger5 = bigInteger8;
            }
            if (!$assertionsDisabled && this.weightedLits.get(n ^ 1).signum() <= 0) {
                throw new AssertionError();
            }
            if (!$assertionsDisabled && bigIntegerArray[n2].signum() <= 0) {
                throw new AssertionError();
            }
            if (!bigIntegerArray[n2].equals(bigInteger6)) {
                if (!$assertionsDisabled && !bigInteger7.equals(this.weightedLits.get(n ^ 1))) {
                    throw new AssertionError();
                }
                BigInteger bigInteger9 = ConflictMap.ppcm(bigIntegerArray[n2], bigInteger7);
                if (!$assertionsDisabled && bigInteger9.signum() <= 0) {
                    throw new AssertionError();
                }
                this.coefMult = bigInteger9.divide(bigInteger7);
                this.coefMultCons = bigInteger9.divide(bigIntegerArray[n2]);
                if (!$assertionsDisabled && this.coefMultCons.signum() <= 0) {
                    throw new AssertionError();
                }
                if (!$assertionsDisabled && this.coefMult.signum() <= 0) {
                    throw new AssertionError();
                }
                if (!$assertionsDisabled && !this.coefMult.multiply(bigInteger7).equals(this.coefMultCons.multiply(bigIntegerArray[n2]))) {
                    throw new AssertionError();
                }
                bigInteger6 = bigIntegerArray[n2];
            }
            bigInteger3 = iWatchPb.slackConstraint(bigIntegerArray, bigInteger5).multiply(this.coefMultCons);
            if (!$assertionsDisabled && !bigInteger4.equals(this.slackConflict())) {
                throw new AssertionError();
            }
            bigInteger = bigInteger4.multiply(this.coefMult);
            if (!$assertionsDisabled && bigInteger.signum() > 0) {
                throw new AssertionError();
            }
        } while ((bigInteger2 = bigInteger3.add(bigInteger)).signum() >= 0);
        if (!$assertionsDisabled && !this.coefMult.multiply(this.weightedLits.get(n ^ 1)).equals(this.coefMultCons.multiply(bigIntegerArray[n2]))) {
            throw new AssertionError();
        }
        return bigInteger5;
    }

    public BigInteger slackConflict() {
        BigInteger bigInteger = BigInteger.ZERO;
        for (int i = 0; i < this.size(); ++i) {
            BigInteger bigInteger2 = this.weightedLits.getCoef(i);
            if (bigInteger2.signum() == 0 || this.voc.isFalsified(this.weightedLits.getLit(i))) continue;
            if (!$assertionsDisabled && bigInteger2.signum() <= 0) {
                throw new AssertionError();
            }
            bigInteger = bigInteger.add(bigInteger2);
        }
        return bigInteger.subtract(this.degree);
    }

    public boolean oldIsAssertive(int n) {
        BigInteger bigInteger = this.computeSlack(n).subtract(this.degree);
        if (bigInteger.signum() < 0) {
            return false;
        }
        for (int i = 0; i < this.size(); ++i) {
            BigInteger bigInteger2 = this.weightedLits.getCoef(i);
            int n2 = this.weightedLits.getLit(i);
            if (bigInteger2.signum() <= 0 || !this.voc.isUnassigned(n2) && this.voc.getLevel(n2) < n || bigInteger.compareTo(bigInteger2) >= 0) continue;
            return true;
        }
        return false;
    }

    private BigInteger computeSlack(int n) {
        BigInteger bigInteger = BigInteger.ZERO;
        for (int i = 0; i < this.size(); ++i) {
            BigInteger bigInteger2 = this.weightedLits.getCoef(i);
            int n2 = this.weightedLits.getLit(i);
            if (bigInteger2.signum() <= 0 || this.voc.isFalsified(n2) && this.voc.getLevel(n2) < n) continue;
            bigInteger = bigInteger.add(bigInteger2);
        }
        return bigInteger;
    }

    public boolean isAssertive(int n) {
        if (!$assertionsDisabled && n > this.currentLevel) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && n > this.currentLevel) {
            throw new AssertionError();
        }
        this.currentLevel = n;
        BigInteger bigInteger = this.currentSlack.subtract(this.degree);
        if (bigInteger.signum() < 0) {
            return false;
        }
        return this.isImplyingLiteral(bigInteger);
    }

    private boolean isImplyingLiteral(BigInteger bigInteger) {
        int n;
        int n2;
        Object object;
        int n3 = ConflictMap.levelToIndex(-1);
        if (this.byLevel[n3] != null) {
            object = this.byLevel[n3].iterator();
            while (object.hasNext()) {
                n2 = object.next();
                if (bigInteger.compareTo(this.weightedLits.get(n2)) >= 0) continue;
                this.assertiveLiteral = this.weightedLits.allLits.get(n2);
                return true;
            }
        }
        if (this.byLevel[n = ConflictMap.levelToIndex(this.currentLevel)] != null) {
            IteratorInt iteratorInt = this.byLevel[n].iterator();
            while (iteratorInt.hasNext()) {
                n2 = iteratorInt.next();
                object = this.weightedLits.get(n2);
                if (object == null || bigInteger.compareTo((BigInteger)object) >= 0) continue;
                this.assertiveLiteral = this.weightedLits.allLits.get(n2);
                return true;
            }
        }
        return false;
    }

    private boolean isImplyingLiteralOrdered(int n, BigInteger bigInteger) {
        for (int i = 0; i < this.size(); ++i) {
            int n2 = this.weightedLits.getLit(i);
            int n3 = this.voc.getLevel(n2);
            if (n3 < n && !this.voc.isUnassigned(n2) || bigInteger.compareTo(this.weightedLits.getCoef(i)) >= 0) continue;
            return true;
        }
        return false;
    }

    protected static BigInteger ppcm(BigInteger bigInteger, BigInteger bigInteger2) {
        return bigInteger.divide(bigInteger.gcd(bigInteger2)).multiply(bigInteger2);
    }

    public BigInteger reduceInConstraint(IWatchPb iWatchPb, BigInteger[] bigIntegerArray, int n, BigInteger bigInteger) {
        int n2;
        if (!$assertionsDisabled && bigInteger.compareTo(BigInteger.ONE) <= 0) {
            throw new AssertionError();
        }
        int n3 = -1;
        for (n2 = 0; n2 < iWatchPb.size() && n3 == -1; ++n2) {
            if (bigIntegerArray[n2].signum() == 0 || !this.voc.isUnassigned(iWatchPb.get(n2))) continue;
            if (!$assertionsDisabled && bigIntegerArray[n2].compareTo(bigInteger) >= 0) {
                throw new AssertionError();
            }
            n3 = n2;
        }
        if (n3 == -1) {
            for (n2 = 0; n2 < iWatchPb.size() && n3 == -1; ++n2) {
                if (bigIntegerArray[n2].signum() == 0 || !this.voc.isSatisfied(iWatchPb.get(n2)) || n2 == n) continue;
                n3 = n2;
            }
        }
        if (!$assertionsDisabled && n3 == -1) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && n3 == n) {
            throw new AssertionError();
        }
        BigInteger bigInteger2 = bigInteger.subtract(bigIntegerArray[n3]);
        bigIntegerArray[n3] = BigInteger.ZERO;
        bigInteger2 = ConflictMap.saturation(bigIntegerArray, bigInteger2);
        if (!$assertionsDisabled && bigIntegerArray[n].signum() <= 0) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && bigInteger.compareTo(bigInteger2) <= 0) {
            throw new AssertionError();
        }
        return bigInteger2;
    }

    static BigInteger saturation(BigInteger[] bigIntegerArray, BigInteger bigInteger) {
        int n;
        if (!$assertionsDisabled && bigInteger.signum() <= 0) {
            throw new AssertionError();
        }
        BigInteger bigInteger2 = bigInteger;
        for (n = 0; n < bigIntegerArray.length; ++n) {
            if (bigIntegerArray[n].signum() > 0) {
                bigInteger2 = bigInteger2.min(bigIntegerArray[n]);
            }
            bigIntegerArray[n] = bigInteger.min(bigIntegerArray[n]);
        }
        if (bigInteger2.equals(bigInteger) && !bigInteger.equals(BigInteger.ONE)) {
            bigInteger = BigInteger.ONE;
            for (n = 0; n < bigIntegerArray.length; ++n) {
                if (bigIntegerArray[n].signum() <= 0) continue;
                bigIntegerArray[n] = bigInteger;
            }
        }
        return bigInteger;
    }

    private static boolean positiveCoefs(BigInteger[] bigIntegerArray) {
        for (int i = 0; i < bigIntegerArray.length; ++i) {
            if (bigIntegerArray[i].signum() > 0) continue;
            return false;
        }
        return true;
    }

    public int getBacktrackLevel(int n) {
        int n2 = ConflictMap.levelToIndex(n) - 1;
        int n3 = ConflictMap.levelToIndex(0);
        BigInteger bigInteger = this.computeSlack(0).subtract(this.degree);
        int n4 = 0;
        for (int i = n3; i <= n2; ++i) {
            if (this.byLevel[i] == null) continue;
            int n5 = ConflictMap.indexToLevel(i);
            if (!$assertionsDisabled && !this.computeSlack(n5).subtract(this.degree).equals(bigInteger)) {
                throw new AssertionError();
            }
            if (this.isImplyingLiteralOrdered(n5, bigInteger)) break;
            VecInt vecInt = this.byLevel[i];
            IteratorInt iteratorInt = vecInt.iterator();
            while (iteratorInt.hasNext()) {
                int n6 = iteratorInt.next();
                if (!this.voc.isFalsified(n6) || this.voc.getLevel(n6) != ConflictMap.indexToLevel(i)) continue;
                bigInteger = bigInteger.subtract(this.weightedLits.get(n6));
            }
            if (vecInt.isEmpty()) continue;
            n4 = n5;
        }
        if (!$assertionsDisabled && n4 != this.oldGetBacktrackLevel(n)) {
            throw new AssertionError();
        }
        return n4;
    }

    public int oldGetBacktrackLevel(int n) {
        int n2;
        int n3;
        int n4 = n;
        if (!$assertionsDisabled && !this.oldIsAssertive(n4)) {
            throw new AssertionError();
        }
        int n5 = -1;
        for (n3 = 0; n3 < this.size(); ++n3) {
            n2 = this.voc.getLevel(this.weightedLits.getLit(n3));
            if (n2 >= n4 || n2 <= n5 || !this.oldIsAssertive(n2)) continue;
            n4 = n2;
        }
        n3 = 0;
        for (int i = 0; i < this.size(); ++i) {
            n2 = this.voc.getLevel(this.weightedLits.getLit(i));
            if (n2 <= n3 || n2 >= n4) continue;
            n3 = n2;
        }
        return n3;
    }

    public void updateSlack(int n) {
        int n2 = ConflictMap.levelToIndex(n);
        if (this.byLevel[n2] != null) {
            IteratorInt iteratorInt = this.byLevel[n2].iterator();
            while (iteratorInt.hasNext()) {
                int n3 = iteratorInt.next();
                if (!this.voc.isFalsified(n3)) continue;
                this.currentSlack = this.currentSlack.add(this.weightedLits.get(n3));
            }
        }
    }

    void increaseCoef(int n, BigInteger bigInteger) {
        if (!this.voc.isFalsified(n) || this.voc.getLevel(n) == this.currentLevel) {
            this.currentSlack = this.currentSlack.add(bigInteger);
        }
        if (!$assertionsDisabled && !this.byLevel[ConflictMap.levelToIndex(this.voc.getLevel(n))].contains(n)) {
            throw new AssertionError();
        }
        super.increaseCoef(n, bigInteger);
    }

    void decreaseCoef(int n, BigInteger bigInteger) {
        if (!this.voc.isFalsified(n) || this.voc.getLevel(n) == this.currentLevel) {
            this.currentSlack = this.currentSlack.subtract(bigInteger);
        }
        if (!$assertionsDisabled && !this.byLevel[ConflictMap.levelToIndex(this.voc.getLevel(n))].contains(n)) {
            throw new AssertionError();
        }
        super.decreaseCoef(n, bigInteger);
    }

    void setCoef(int n, BigInteger bigInteger) {
        int n2 = this.voc.getLevel(n);
        if (!this.voc.isFalsified(n) || n2 == this.currentLevel) {
            if (this.weightedLits.containsKey(n)) {
                this.currentSlack = this.currentSlack.subtract(this.weightedLits.get(n));
            }
            this.currentSlack = this.currentSlack.add(bigInteger);
        }
        int n3 = ConflictMap.levelToIndex(n2);
        if (!this.weightedLits.containsKey(n)) {
            if (this.byLevel[n3] == null) {
                this.byLevel[n3] = new VecInt();
            }
            this.byLevel[n3].push(n);
        }
        if (!$assertionsDisabled && this.byLevel[n3] == null) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && !this.byLevel[n3].contains(n)) {
            throw new AssertionError();
        }
        super.setCoef(n, bigInteger);
    }

    void changeCoef(int n, BigInteger bigInteger) {
        int n2 = this.weightedLits.getLit(n);
        int n3 = this.voc.getLevel(n2);
        if (!this.voc.isFalsified(n2) || n3 == this.currentLevel) {
            if (this.weightedLits.containsKey(n2)) {
                this.currentSlack = this.currentSlack.subtract(this.weightedLits.get(n2));
            }
            this.currentSlack = this.currentSlack.add(bigInteger);
        }
        int n4 = ConflictMap.levelToIndex(n3);
        if (!$assertionsDisabled && !this.weightedLits.containsKey(n2)) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && this.byLevel[n4] == null) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && !this.byLevel[n4].contains(n2)) {
            throw new AssertionError();
        }
        super.changeCoef(n, bigInteger);
    }

    void removeCoef(int n) {
        int n2 = this.voc.getLevel(n);
        if (!this.voc.isFalsified(n) || n2 == this.currentLevel) {
            this.currentSlack = this.currentSlack.subtract(this.weightedLits.get(n));
        }
        int n3 = ConflictMap.levelToIndex(n2);
        if (!$assertionsDisabled && n3 >= this.byLevel.length) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && this.byLevel[n3] == null) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && !this.byLevel[n3].contains(n)) {
            throw new AssertionError();
        }
        this.byLevel[n3].remove(n);
        super.removeCoef(n);
    }

    private int getLevelByLevel(int n) {
        for (int i = 0; i < this.byLevel.length; ++i) {
            if (this.byLevel[i] == null || !this.byLevel[i].contains(n)) continue;
            return i;
        }
        return -1;
    }

    public boolean slackIsCorrect(int n) {
        return this.currentSlack.equals(this.computeSlack(n));
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < this.size(); ++i) {
            int n = this.weightedLits.getLit(i);
            stringBuffer.append(this.weightedLits.getCoef(i));
            stringBuffer.append(".");
            stringBuffer.append(Lits.toString((int)n));
            stringBuffer.append(" ");
            stringBuffer.append("[");
            stringBuffer.append(this.voc.valueToString(n));
            stringBuffer.append("@");
            stringBuffer.append(this.voc.getLevel(n));
            stringBuffer.append("]");
        }
        return stringBuffer.toString() + " >= " + this.degree;
    }

    public boolean hasBeenReduced() {
        return this.hasBeenReduced;
    }

    public long getNumberOfReductions() {
        return this.numberOfReductions;
    }

    static {
        $assertionsDisabled = !ConflictMap.class.desiredAssertionStatus();
    }
}

