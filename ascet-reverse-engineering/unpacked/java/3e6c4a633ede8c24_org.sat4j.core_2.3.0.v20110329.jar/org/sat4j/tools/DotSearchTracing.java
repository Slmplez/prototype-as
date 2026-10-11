/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.tools;

import java.io.FileWriter;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.PrintWriter;
import java.io.Writer;
import java.util.Map;
import org.sat4j.core.Vec;
import org.sat4j.specs.IConstr;
import org.sat4j.specs.Lbool;
import org.sat4j.specs.SearchListener;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class DotSearchTracing<T>
implements SearchListener {
    private static final long serialVersionUID = 1L;
    private final Vec<String> pile = new Vec();
    private String currentNodeName = null;
    private transient Writer out;
    private boolean estOrange = false;
    private final Map<Integer, T> mapping;

    public DotSearchTracing(String string, Map<Integer, T> map) {
        this.mapping = map;
        try {
            this.out = new FileWriter(string);
        }
        catch (IOException iOException) {
            System.err.println("Problem when created file.");
        }
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
    public final void assuming(int n) {
        String string;
        int n2 = Math.abs(n);
        if (this.currentNodeName == null) {
            string = new StringBuffer().append("").append(n2).toString();
            this.pile.push(string);
            this.saveLine(this.lineTab(new StringBuffer().append("\"").append(string).append("\"").append("[label=\"").append(this.node(n)).append("\", shape=circle, color=blue, style=filled]").toString()));
        } else {
            string = this.currentNodeName;
            this.pile.push(string);
            this.saveLine(this.lineTab(new StringBuffer().append("\"").append(string).append("\"").append("[label=\"").append(this.node(n)).append("\", shape=circle, color=blue, style=filled]").toString()));
        }
        this.currentNodeName = string;
    }

    @Override
    public final void propagating(int n, IConstr iConstr) {
        String string = new StringBuffer().append(this.currentNodeName).append(".").append(n).toString();
        if (this.currentNodeName == null) {
            this.saveLine(this.lineTab("\"null\" [label=\"\", shape=point]"));
        }
        String string2 = this.estOrange ? "orange" : "green";
        this.saveLine(this.lineTab(new StringBuffer().append("\"").append(string).append("\"").append("[label=\"").append(this.node(n)).append("\",shape=point, color=black]").toString()));
        this.saveLine(this.lineTab(new StringBuffer().append("\"").append(this.currentNodeName).append("\"").append(" -- ").append("\"").append(string).append("\"").append("[label=").append("\" ").append(this.node(n)).append("\", fontcolor =").append(string2).append(", color = ").append(string2).append(", style = bold]").toString()));
        this.currentNodeName = string;
        this.estOrange = false;
    }

    @Override
    public final void backtracking(int n) {
        String string = this.pile.last();
        this.pile.pop();
        this.saveLine(new StringBuffer().append("\"").append(string).append("\"").append("--").append("\"").append(this.currentNodeName).append("\"").append("[label=\"\", color=red, style=dotted]").toString());
        this.currentNodeName = string;
    }

    @Override
    public final void adding(int n) {
        this.estOrange = true;
    }

    @Override
    public final void learn(IConstr iConstr) {
    }

    @Override
    public final void delete(int[] nArray) {
    }

    @Override
    public final void conflictFound(IConstr iConstr, int n, int n2) {
        this.saveLine(this.lineTab(new StringBuffer().append("\"").append(this.currentNodeName).append("\" [label=\"\", shape=box, color=\"red\", style=filled]").toString()));
    }

    @Override
    public final void conflictFound(int n) {
        this.saveLine(this.lineTab(new StringBuffer().append("\"").append(this.currentNodeName).append("\" [label=\"\", shape=box, color=\"red\", style=filled]").toString()));
    }

    @Override
    public final void solutionFound() {
        this.saveLine(this.lineTab(new StringBuffer().append("\"").append(this.currentNodeName).append("\" [label=\"\", shape=box, color=\"green\", style=filled]").toString()));
    }

    @Override
    public final void beginLoop() {
    }

    @Override
    public final void start() {
        this.saveLine("graph G {");
    }

    @Override
    public final void end(Lbool lbool) {
        this.saveLine("}");
    }

    private final String lineTab(String string) {
        return new StringBuffer().append("\t").append(string).toString();
    }

    private final void saveLine(String string) {
        try {
            this.out.write(new StringBuffer().append(string).append('\n').toString());
            if ("}".equals(string)) {
                this.out.close();
            }
        }
        catch (IOException iOException) {
            iOException.printStackTrace();
        }
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        this.out = new PrintWriter(System.out);
    }

    @Override
    public void restarting() {
    }

    @Override
    public void backjump(int n) {
    }
}

