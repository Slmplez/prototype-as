/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.minisat.core;

import org.sat4j.specs.IConstr;
import org.sat4j.specs.Lbool;
import org.sat4j.specs.SearchListener;

final class VoidTracing
implements SearchListener {
    private static final long serialVersionUID = 1L;

    VoidTracing() {
    }

    public void assuming(int n) {
    }

    public void propagating(int n, IConstr iConstr) {
    }

    public void backtracking(int n) {
    }

    public void adding(int n) {
    }

    public void learn(IConstr iConstr) {
    }

    public void delete(int[] nArray) {
    }

    public void conflictFound(IConstr iConstr, int n, int n2) {
    }

    public void conflictFound(int n) {
    }

    public void solutionFound() {
    }

    public void beginLoop() {
    }

    public void start() {
    }

    public void end(Lbool lbool) {
    }

    public void restarting() {
    }

    public void backjump(int n) {
    }
}

