/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.minisat.core;

import java.io.PrintWriter;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Map;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class SolverStats
implements Serializable {
    private static final long serialVersionUID = 1L;
    public int starts;
    public long decisions;
    public long propagations;
    public long inspects;
    public long conflicts;
    public long learnedliterals;
    public long learnedbinaryclauses;
    public long learnedternaryclauses;
    public long learnedclauses;
    public long ignoredclauses;
    public long rootSimplifications;
    public long reducedliterals;
    public long changedreason;
    public int reduceddb;
    public int shortcuts;

    public void reset() {
        this.starts = 0;
        this.decisions = 0L;
        this.propagations = 0L;
        this.inspects = 0L;
        this.shortcuts = 0;
        this.conflicts = 0L;
        this.learnedliterals = 0L;
        this.learnedclauses = 0L;
        this.ignoredclauses = 0L;
        this.learnedbinaryclauses = 0L;
        this.learnedternaryclauses = 0L;
        this.rootSimplifications = 0L;
        this.reducedliterals = 0L;
        this.changedreason = 0L;
        this.reduceddb = 0;
    }

    public void printStat(PrintWriter printWriter, String string) {
        printWriter.println(new StringBuffer().append(string).append("starts\t\t: ").append(this.starts).toString());
        printWriter.println(new StringBuffer().append(string).append("conflicts\t\t: ").append(this.conflicts).toString());
        printWriter.println(new StringBuffer().append(string).append("decisions\t\t: ").append(this.decisions).toString());
        printWriter.println(new StringBuffer().append(string).append("propagations\t\t: ").append(this.propagations).toString());
        printWriter.println(new StringBuffer().append(string).append("inspects\t\t: ").append(this.inspects).toString());
        printWriter.println(new StringBuffer().append(string).append("shortcuts\t\t: ").append(this.shortcuts).toString());
        printWriter.println(new StringBuffer().append(string).append("learnt literals\t: ").append(this.learnedliterals).toString());
        printWriter.println(new StringBuffer().append(string).append("learnt binary clauses\t: ").append(this.learnedbinaryclauses).toString());
        printWriter.println(new StringBuffer().append(string).append("learnt ternary clauses\t: ").append(this.learnedternaryclauses).toString());
        printWriter.println(new StringBuffer().append(string).append("learnt constraints\t: ").append(this.learnedclauses).toString());
        printWriter.println(new StringBuffer().append(string).append("ignored constraints\t: ").append(this.ignoredclauses).toString());
        printWriter.println(new StringBuffer().append(string).append("root simplifications\t: ").append(this.rootSimplifications).toString());
        printWriter.println(new StringBuffer().append(string).append("removed literals (reason simplification)\t: ").append(this.reducedliterals).toString());
        printWriter.println(new StringBuffer().append(string).append("reason swapping (by a shorter reason)\t: ").append(this.changedreason).toString());
        printWriter.println(new StringBuffer().append(string).append("Calls to reduceDB\t: ").append(this.reduceddb).toString());
    }

    public Map<String, Number> toMap() {
        HashMap<String, Number> hashMap = new HashMap<String, Number>();
        for (Field field : this.getClass().getFields()) {
            try {
                hashMap.put(field.getName(), (Number)field.get(this));
            }
            catch (IllegalArgumentException illegalArgumentException) {
            }
            catch (IllegalAccessException illegalAccessException) {
                // empty catch block
            }
        }
        return hashMap;
    }
}

