/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.minisat.core;

import java.io.Serializable;
import java.lang.reflect.Field;

public class SearchParams
implements Serializable {
    private static final long serialVersionUID = 1L;
    private double claDecay;
    private double varDecay;
    private double conflictBoundIncFactor;
    private int initConflictBound;

    public SearchParams() {
        this(0.95, 0.999, 1.5, 100);
    }

    public SearchParams(int n) {
        this(0.95, 0.999, 1.5, n);
    }

    public SearchParams(double d, int n) {
        this(0.95, 0.999, d, n);
    }

    public SearchParams(double d, double d2, double d3, int n) {
        this.varDecay = d;
        this.claDecay = d2;
        this.conflictBoundIncFactor = d3;
        this.initConflictBound = n;
    }

    public double getClaDecay() {
        return this.claDecay;
    }

    public double getVarDecay() {
        return this.varDecay;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        Field[] fieldArray = SearchParams.class.getDeclaredFields();
        int n = fieldArray.length;
        for (int i = 0; i < n; ++i) {
            Field field = fieldArray[i];
            if (field.getName().startsWith("serial") || field.getName().startsWith("class")) continue;
            stringBuffer.append(field.getName());
            stringBuffer.append("=");
            try {
                stringBuffer.append(field.get(this));
            }
            catch (IllegalArgumentException illegalArgumentException) {
                illegalArgumentException.printStackTrace();
            }
            catch (IllegalAccessException illegalAccessException) {
                illegalAccessException.printStackTrace();
            }
            stringBuffer.append(" ");
        }
        return stringBuffer.toString();
    }

    public void setConflictBoundIncFactor(double d) {
        this.conflictBoundIncFactor = d;
    }

    public void setInitConflictBound(int n) {
        this.initConflictBound = n;
    }

    public double getConflictBoundIncFactor() {
        return this.conflictBoundIncFactor;
    }

    public int getInitConflictBound() {
        return this.initConflictBound;
    }

    public void setClaDecay(double d) {
        this.claDecay = d;
    }

    public void setVarDecay(double d) {
        this.varDecay = d;
    }
}

