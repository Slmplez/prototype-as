/*
 * Decompiled with CFR 0.152.
 */
package org.apache.xerces.util;

import java.util.Enumeration;
import java.util.List;
import org.apache.xerces.util.SymbolTable;
import org.apache.xerces.xni.NamespaceContext;

public final class JAXPNamespaceContextWrapper
implements NamespaceContext {
    private javax.xml.namespace.NamespaceContext fNamespaceContext;
    private SymbolTable fSymbolTable;
    private List fPrefixes;

    public JAXPNamespaceContextWrapper(SymbolTable symbolTable) {
        this.setSymbolTable(symbolTable);
    }

    public void setNamespaceContext(javax.xml.namespace.NamespaceContext namespaceContext) {
        this.fNamespaceContext = namespaceContext;
    }

    public javax.xml.namespace.NamespaceContext getNamespaceContext() {
        return this.fNamespaceContext;
    }

    public void setSymbolTable(SymbolTable symbolTable) {
        this.fSymbolTable = symbolTable;
    }

    public SymbolTable getSymbolTable() {
        return this.fSymbolTable;
    }

    public void setDeclaredPrefixes(List list) {
        this.fPrefixes = list;
    }

    public List getDeclaredPrefixes() {
        return this.fPrefixes;
    }

    public String getURI(String string) {
        String string2;
        if (this.fNamespaceContext != null && (string2 = this.fNamespaceContext.getNamespaceURI(string)) != null && !"".equals(string2)) {
            return this.fSymbolTable != null ? this.fSymbolTable.addSymbol(string2) : string2.intern();
        }
        return null;
    }

    public String getPrefix(String string) {
        if (this.fNamespaceContext != null) {
            String string2;
            if (string == null) {
                string = "";
            }
            if ((string2 = this.fNamespaceContext.getPrefix(string)) == null) {
                string2 = "";
            }
            return this.fSymbolTable != null ? this.fSymbolTable.addSymbol(string2) : string2.intern();
        }
        return null;
    }

    public Enumeration getAllPrefixes() {
        return new Enumeration(){

            public boolean hasMoreElements() {
                return false;
            }

            public Object nextElement() {
                return null;
            }
        };
    }

    public void pushContext() {
    }

    public void popContext() {
    }

    public boolean declarePrefix(String string, String string2) {
        return true;
    }

    public int getDeclaredPrefixCount() {
        return this.fPrefixes != null ? this.fPrefixes.size() : 0;
    }

    public String getDeclaredPrefixAt(int n) {
        return (String)this.fPrefixes.get(n);
    }

    public void reset() {
    }
}

