/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.tools;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.PrintStream;
import org.sat4j.specs.IConstr;
import org.sat4j.specs.Lbool;
import org.sat4j.specs.SearchListener;

public class LearnedClauseSizeTracing
implements SearchListener {
    private static final long serialVersionUID = 1L;
    private final String filename;
    private PrintStream out;

    public LearnedClauseSizeTracing(String string) {
        this.filename = string;
        this.updateWriter();
    }

    private void updateWriter() {
        try {
            this.out = new PrintStream(new FileOutputStream(this.filename + ".dat"));
        }
        catch (FileNotFoundException fileNotFoundException) {
            this.out = System.out;
        }
    }

    public void adding(int n) {
    }

    public void assuming(int n) {
    }

    public void backtracking(int n) {
    }

    public void beginLoop() {
    }

    public void conflictFound(IConstr iConstr, int n, int n2) {
        this.out.println(iConstr.size());
    }

    public void conflictFound(int n) {
    }

    public void delete(int[] nArray) {
    }

    public void end(Lbool lbool) {
        this.out.close();
    }

    public void learn(IConstr iConstr) {
    }

    public void propagating(int n, IConstr iConstr) {
    }

    public void solutionFound() {
    }

    public void start() {
    }

    public void restarting() {
    }

    public void backjump(int n) {
    }
}

