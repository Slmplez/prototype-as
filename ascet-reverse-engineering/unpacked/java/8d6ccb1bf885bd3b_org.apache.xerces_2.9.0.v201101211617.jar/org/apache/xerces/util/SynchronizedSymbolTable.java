/*
 * Decompiled with CFR 0.152.
 */
package org.apache.xerces.util;

import org.apache.xerces.util.SymbolTable;

public final class SynchronizedSymbolTable
extends SymbolTable {
    protected SymbolTable fSymbolTable;

    public SynchronizedSymbolTable(SymbolTable symbolTable) {
        this.fSymbolTable = symbolTable;
    }

    public SynchronizedSymbolTable() {
        this.fSymbolTable = new SymbolTable();
    }

    public SynchronizedSymbolTable(int n) {
        this.fSymbolTable = new SymbolTable(n);
    }

    public String addSymbol(String string) {
        SymbolTable symbolTable = this.fSymbolTable;
        synchronized (symbolTable) {
            String string2 = this.fSymbolTable.addSymbol(string);
            return string2;
        }
    }

    public String addSymbol(char[] cArray, int n, int n2) {
        SymbolTable symbolTable = this.fSymbolTable;
        synchronized (symbolTable) {
            String string = this.fSymbolTable.addSymbol(cArray, n, n2);
            return string;
        }
    }

    public boolean containsSymbol(String string) {
        SymbolTable symbolTable = this.fSymbolTable;
        synchronized (symbolTable) {
            boolean bl = this.fSymbolTable.containsSymbol(string);
            return bl;
        }
    }

    public boolean containsSymbol(char[] cArray, int n, int n2) {
        SymbolTable symbolTable = this.fSymbolTable;
        synchronized (symbolTable) {
            boolean bl = this.fSymbolTable.containsSymbol(cArray, n, n2);
            return bl;
        }
    }
}

