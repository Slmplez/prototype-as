/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.parser;

import java.util.HashSet;
import java.util.Set;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.Statement;
import org.eclipse.jdt.internal.compiler.parser.RecoveredElement;

public class RecoveredStatement
extends RecoveredElement {
    public Statement statement;

    public RecoveredStatement(Statement statement, RecoveredElement parent, int bracketBalance) {
        super(parent, bracketBalance);
        this.statement = statement;
    }

    public ASTNode parseTree() {
        return this.statement;
    }

    public int sourceEnd() {
        return this.statement.sourceEnd;
    }

    public String toString(int tab) {
        return String.valueOf(this.tabString(tab)) + "Recovered statement:\n" + this.statement.print(tab + 1, new StringBuffer(10));
    }

    public Statement updatedStatement(int depth, Set knownTypes) {
        return this.statement;
    }

    public void updateParseTree() {
        this.updatedStatement(0, new HashSet());
    }

    public void updateSourceEndIfNecessary(int bodyStart, int bodyEnd) {
        if (this.statement.sourceEnd == 0) {
            this.statement.sourceEnd = bodyEnd;
        }
    }

    public RecoveredElement updateOnClosingBrace(int braceStart, int braceEnd) {
        if (--this.bracketBalance <= 0 && this.parent != null) {
            this.updateSourceEndIfNecessary(braceStart, braceEnd);
            return this.parent.updateOnClosingBrace(braceStart, braceEnd);
        }
        return this;
    }
}

