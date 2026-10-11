/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.specs;

import java.io.PrintWriter;
import org.sat4j.specs.IVecInt;
import org.sat4j.specs.TimeoutException;

public interface IProblem {
    public int[] model();

    public boolean model(int var1);

    public int[] primeImplicant();

    public boolean isSatisfiable() throws TimeoutException;

    public boolean isSatisfiable(IVecInt var1, boolean var2) throws TimeoutException;

    public boolean isSatisfiable(boolean var1) throws TimeoutException;

    public boolean isSatisfiable(IVecInt var1) throws TimeoutException;

    public int[] findModel() throws TimeoutException;

    public int[] findModel(IVecInt var1) throws TimeoutException;

    public int nConstraints();

    public int nVars();

    public void printInfos(PrintWriter var1, String var2);
}

