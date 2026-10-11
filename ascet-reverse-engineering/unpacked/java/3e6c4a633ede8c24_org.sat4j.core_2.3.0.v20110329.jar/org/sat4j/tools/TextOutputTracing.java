/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.tools;

import java.util.Map;
import org.sat4j.specs.IConstr;
import org.sat4j.specs.Lbool;
import org.sat4j.specs.SearchListener;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class TextOutputTracing<T>
implements SearchListener {
    private static final long serialVersionUID = 1L;
    private final Map<Integer, T> mapping;

    public TextOutputTracing(Map<Integer, T> map) {
        this.mapping = map;
    }

    private String node(int n) {
        int n2;
        T t;
        if (this.mapping != null && (t = this.mapping.get(new Integer(n2 = Math.abs(n)))) != null) {
            if (n > 0) {
                return t.toString();
            }
            return new StringBuffer().append("-").append(t.toString()).toString();
        }
        return Integer.toString(n);
    }

    @Override
    public void assuming(int n) {
        System.out.println(new StringBuffer().append("assuming ").append(this.node(n)).toString());
    }

    @Override
    public void propagating(int n, IConstr iConstr) {
        System.out.println(new StringBuffer().append("propagating ").append(this.node(n)).toString());
    }

    @Override
    public void backtracking(int n) {
        System.out.println(new StringBuffer().append("backtracking ").append(this.node(n)).toString());
    }

    @Override
    public void adding(int n) {
        System.out.println(new StringBuffer().append("adding ").append(this.node(n)).toString());
    }

    @Override
    public void learn(IConstr iConstr) {
        System.out.println(new StringBuffer().append("learning ").append(iConstr).toString());
    }

    @Override
    public void delete(int[] nArray) {
    }

    @Override
    public void conflictFound(IConstr iConstr, int n, int n2) {
        System.out.println("conflict ");
    }

    @Override
    public void conflictFound(int n) {
        System.out.println("conflict during propagation");
    }

    @Override
    public void solutionFound() {
        System.out.println("solution found ");
    }

    @Override
    public void beginLoop() {
    }

    @Override
    public void start() {
    }

    @Override
    public void end(Lbool lbool) {
    }

    @Override
    public void restarting() {
        System.out.println("restarting ");
    }

    @Override
    public void backjump(int n) {
        System.out.println(new StringBuffer().append("backjumping to decision level ").append(n).toString());
    }
}

