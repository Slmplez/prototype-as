/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.sat4j.specs.IConstr
 *  org.sat4j.specs.Lbool
 *  org.sat4j.specs.SearchListener
 */
package org.sat4j.pb.tools;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.PrintStream;
import org.sat4j.pb.constraints.pb.PBConstr;
import org.sat4j.specs.IConstr;
import org.sat4j.specs.Lbool;
import org.sat4j.specs.SearchListener;

public class ConflictTracing
implements SearchListener {
    private static final long serialVersionUID = 1L;
    private final String filename;
    private PrintStream out;
    private long index = 1L;

    public ConflictTracing(String string) {
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

    public void backjump(int n) {
    }

    public void backtracking(int n) {
    }

    public void beginLoop() {
    }

    public void conflictFound(IConstr iConstr, int n, int n2) {
    }

    public void conflictFound(int n) {
    }

    public void delete(int[] nArray) {
    }

    public void end(Lbool lbool) {
        this.out.close();
    }

    public void learn(IConstr iConstr) {
        PBConstr pBConstr = (PBConstr)iConstr;
        if (pBConstr.size() > 0) {
            this.out.printf("%d %d %d\n", new Long(this.index++), pBConstr.getCoef(0), new Integer(pBConstr.size()));
        }
    }

    public void propagating(int n, IConstr iConstr) {
    }

    public void restarting() {
    }

    public void solutionFound() {
    }

    public void start() {
    }
}

