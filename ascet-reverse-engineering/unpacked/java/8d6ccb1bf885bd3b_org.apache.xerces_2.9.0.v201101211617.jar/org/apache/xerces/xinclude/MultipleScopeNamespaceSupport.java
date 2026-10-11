/*
 * Decompiled with CFR 0.152.
 */
package org.apache.xerces.xinclude;

import java.util.Enumeration;
import org.apache.xerces.util.NamespaceSupport;
import org.apache.xerces.util.XMLSymbols;
import org.apache.xerces.xni.NamespaceContext;

public class MultipleScopeNamespaceSupport
extends NamespaceSupport {
    protected int[] fScope = new int[8];
    protected int fCurrentScope = 0;

    public MultipleScopeNamespaceSupport() {
        this.fScope[0] = 0;
    }

    public MultipleScopeNamespaceSupport(NamespaceContext namespaceContext) {
        super(namespaceContext);
        this.fScope[0] = 0;
    }

    public Enumeration getAllPrefixes() {
        Object object;
        int n = 0;
        if (this.fPrefixes.length < this.fNamespace.length / 2) {
            object = new String[this.fNamespaceSize];
            this.fPrefixes = object;
        }
        object = null;
        boolean bl = true;
        int n2 = this.fContext[this.fScope[this.fCurrentScope]];
        while (n2 <= this.fNamespaceSize - 2) {
            object = this.fNamespace[n2];
            int n3 = 0;
            while (n3 < n) {
                if (this.fPrefixes[n3] == object) {
                    bl = false;
                    break;
                }
                ++n3;
            }
            if (bl) {
                this.fPrefixes[n++] = object;
            }
            bl = true;
            n2 += 2;
        }
        return new NamespaceSupport.Prefixes(this.fPrefixes, n);
    }

    public int getScopeForContext(int n) {
        int n2 = this.fCurrentScope;
        while (n < this.fScope[n2]) {
            --n2;
        }
        return n2;
    }

    public String getPrefix(String string) {
        return this.getPrefix(string, this.fNamespaceSize, this.fContext[this.fScope[this.fCurrentScope]]);
    }

    public String getURI(String string) {
        return this.getURI(string, this.fNamespaceSize, this.fContext[this.fScope[this.fCurrentScope]]);
    }

    public String getPrefix(String string, int n) {
        return this.getPrefix(string, this.fContext[n + 1], this.fContext[this.fScope[this.getScopeForContext(n)]]);
    }

    public String getURI(String string, int n) {
        return this.getURI(string, this.fContext[n + 1], this.fContext[this.fScope[this.getScopeForContext(n)]]);
    }

    public String getPrefix(String string, int n, int n2) {
        if (string == NamespaceContext.XML_URI) {
            return XMLSymbols.PREFIX_XML;
        }
        if (string == NamespaceContext.XMLNS_URI) {
            return XMLSymbols.PREFIX_XMLNS;
        }
        int n3 = n;
        while (n3 > n2) {
            if (this.fNamespace[n3 - 1] == string && this.getURI(this.fNamespace[n3 - 2]) == string) {
                return this.fNamespace[n3 - 2];
            }
            n3 -= 2;
        }
        return null;
    }

    public String getURI(String string, int n, int n2) {
        if (string == XMLSymbols.PREFIX_XML) {
            return NamespaceContext.XML_URI;
        }
        if (string == XMLSymbols.PREFIX_XMLNS) {
            return NamespaceContext.XMLNS_URI;
        }
        int n3 = n;
        while (n3 > n2) {
            if (this.fNamespace[n3 - 2] == string) {
                return this.fNamespace[n3 - 1];
            }
            n3 -= 2;
        }
        return null;
    }

    public void reset() {
        this.fCurrentContext = this.fScope[this.fCurrentScope];
        this.fNamespaceSize = this.fContext[this.fCurrentContext];
    }

    public void pushScope() {
        if (this.fCurrentScope + 1 == this.fScope.length) {
            int[] nArray = new int[this.fScope.length * 2];
            System.arraycopy(this.fScope, 0, nArray, 0, this.fScope.length);
            this.fScope = nArray;
        }
        this.pushContext();
        this.fScope[++this.fCurrentScope] = this.fCurrentContext;
    }

    public void popScope() {
        this.fCurrentContext = this.fScope[this.fCurrentScope--];
        this.popContext();
    }
}

