/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.tools;

import org.sat4j.core.VecInt;
import org.sat4j.specs.ContradictionException;
import org.sat4j.specs.ISolver;
import org.sat4j.tools.DimacsArrayReader;
import org.sat4j.tools.GateTranslator;

public class ExtendedDimacsArrayReader
extends DimacsArrayReader {
    public static final int FALSE = 1;
    public static final int TRUE = 2;
    public static final int NOT = 3;
    public static final int AND = 4;
    public static final int NAND = 5;
    public static final int OR = 6;
    public static final int NOR = 7;
    public static final int XOR = 8;
    public static final int XNOR = 9;
    public static final int IMPLIES = 10;
    public static final int IFF = 11;
    public static final int IFTHENELSE = 12;
    public static final int ATLEAST = 13;
    public static final int ATMOST = 14;
    public static final int COUNT = 15;
    private static final long serialVersionUID = 1L;
    private final GateTranslator gater;
    static final /* synthetic */ boolean $assertionsDisabled;

    public ExtendedDimacsArrayReader(ISolver iSolver) {
        super(iSolver);
        this.gater = new GateTranslator(iSolver);
    }

    protected boolean handleConstr(int n, int n2, int[] nArray) throws ContradictionException {
        switch (n) {
            case 1: {
                if (!$assertionsDisabled && nArray.length != 0) {
                    throw new AssertionError();
                }
                this.gater.gateFalse(n2);
                break;
            }
            case 2: {
                if (!$assertionsDisabled && nArray.length != 0) {
                    throw new AssertionError();
                }
                this.gater.gateTrue(n2);
                break;
            }
            case 6: {
                VecInt vecInt = new VecInt(nArray);
                this.gater.or(n2, vecInt);
                break;
            }
            case 3: {
                if (!$assertionsDisabled && nArray.length != 1) {
                    throw new AssertionError();
                }
                this.gater.not(n2, nArray[0]);
                break;
            }
            case 4: {
                VecInt vecInt = new VecInt(nArray);
                this.gater.and(n2, vecInt);
                break;
            }
            case 8: {
                VecInt vecInt = new VecInt(nArray);
                this.gater.xor(n2, vecInt);
                break;
            }
            case 11: {
                VecInt vecInt = new VecInt(nArray);
                this.gater.iff(n2, vecInt);
                break;
            }
            case 12: {
                if (!$assertionsDisabled && nArray.length != 3) {
                    throw new AssertionError();
                }
                this.gater.ite(n2, nArray[0], nArray[1], nArray[2]);
                break;
            }
            default: {
                throw new UnsupportedOperationException("Gate type " + n + " not handled yet");
            }
        }
        return true;
    }

    static {
        $assertionsDisabled = !ExtendedDimacsArrayReader.class.desiredAssertionStatus();
    }
}

