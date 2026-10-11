/*
 * Decompiled with CFR 0.152.
 */
package org.apache.xerces.parsers;

import org.apache.xerces.parsers.DOMParser;
import org.apache.xerces.parsers.SAXParser;
import org.apache.xerces.util.ShadowedSymbolTable;
import org.apache.xerces.util.SymbolTable;
import org.apache.xerces.util.SynchronizedSymbolTable;
import org.apache.xerces.util.XMLGrammarPoolImpl;
import org.apache.xerces.xni.grammars.Grammar;
import org.apache.xerces.xni.grammars.XMLGrammarDescription;
import org.apache.xerces.xni.grammars.XMLGrammarPool;

public class CachingParserPool {
    public static final boolean DEFAULT_SHADOW_SYMBOL_TABLE = false;
    public static final boolean DEFAULT_SHADOW_GRAMMAR_POOL = false;
    protected SymbolTable fSynchronizedSymbolTable;
    protected XMLGrammarPool fSynchronizedGrammarPool;
    protected boolean fShadowSymbolTable = false;
    protected boolean fShadowGrammarPool = false;

    public CachingParserPool() {
        this(new SymbolTable(), new XMLGrammarPoolImpl());
    }

    public CachingParserPool(SymbolTable symbolTable, XMLGrammarPool xMLGrammarPool) {
        this.fSynchronizedSymbolTable = new SynchronizedSymbolTable(symbolTable);
        this.fSynchronizedGrammarPool = new SynchronizedGrammarPool(xMLGrammarPool);
    }

    public SymbolTable getSymbolTable() {
        return this.fSynchronizedSymbolTable;
    }

    public XMLGrammarPool getXMLGrammarPool() {
        return this.fSynchronizedGrammarPool;
    }

    public void setShadowSymbolTable(boolean bl) {
        this.fShadowSymbolTable = bl;
    }

    public DOMParser createDOMParser() {
        SymbolTable symbolTable = this.fShadowSymbolTable ? new ShadowedSymbolTable(this.fSynchronizedSymbolTable) : this.fSynchronizedSymbolTable;
        XMLGrammarPool xMLGrammarPool = this.fShadowGrammarPool ? new ShadowedGrammarPool(this.fSynchronizedGrammarPool) : this.fSynchronizedGrammarPool;
        return new DOMParser(symbolTable, xMLGrammarPool);
    }

    public SAXParser createSAXParser() {
        SymbolTable symbolTable = this.fShadowSymbolTable ? new ShadowedSymbolTable(this.fSynchronizedSymbolTable) : this.fSynchronizedSymbolTable;
        XMLGrammarPool xMLGrammarPool = this.fShadowGrammarPool ? new ShadowedGrammarPool(this.fSynchronizedGrammarPool) : this.fSynchronizedGrammarPool;
        return new SAXParser(symbolTable, xMLGrammarPool);
    }

    public static final class ShadowedGrammarPool
    extends XMLGrammarPoolImpl {
        private XMLGrammarPool fGrammarPool;

        public ShadowedGrammarPool(XMLGrammarPool xMLGrammarPool) {
            this.fGrammarPool = xMLGrammarPool;
        }

        public Grammar[] retrieveInitialGrammarSet(String string) {
            Grammar[] grammarArray = super.retrieveInitialGrammarSet(string);
            if (grammarArray != null) {
                return grammarArray;
            }
            return this.fGrammarPool.retrieveInitialGrammarSet(string);
        }

        public Grammar retrieveGrammar(XMLGrammarDescription xMLGrammarDescription) {
            Grammar grammar = super.retrieveGrammar(xMLGrammarDescription);
            if (grammar != null) {
                return grammar;
            }
            return this.fGrammarPool.retrieveGrammar(xMLGrammarDescription);
        }

        public void cacheGrammars(String string, Grammar[] grammarArray) {
            super.cacheGrammars(string, grammarArray);
            this.fGrammarPool.cacheGrammars(string, grammarArray);
        }

        public Grammar getGrammar(XMLGrammarDescription xMLGrammarDescription) {
            if (super.containsGrammar(xMLGrammarDescription)) {
                return super.getGrammar(xMLGrammarDescription);
            }
            return null;
        }

        public boolean containsGrammar(XMLGrammarDescription xMLGrammarDescription) {
            return super.containsGrammar(xMLGrammarDescription);
        }
    }

    public static final class SynchronizedGrammarPool
    implements XMLGrammarPool {
        private XMLGrammarPool fGrammarPool;

        public SynchronizedGrammarPool(XMLGrammarPool xMLGrammarPool) {
            this.fGrammarPool = xMLGrammarPool;
        }

        public Grammar[] retrieveInitialGrammarSet(String string) {
            XMLGrammarPool xMLGrammarPool = this.fGrammarPool;
            synchronized (xMLGrammarPool) {
                Grammar[] grammarArray = this.fGrammarPool.retrieveInitialGrammarSet(string);
                return grammarArray;
            }
        }

        public Grammar retrieveGrammar(XMLGrammarDescription xMLGrammarDescription) {
            XMLGrammarPool xMLGrammarPool = this.fGrammarPool;
            synchronized (xMLGrammarPool) {
                Grammar grammar = this.fGrammarPool.retrieveGrammar(xMLGrammarDescription);
                return grammar;
            }
        }

        public void cacheGrammars(String string, Grammar[] grammarArray) {
            XMLGrammarPool xMLGrammarPool = this.fGrammarPool;
            synchronized (xMLGrammarPool) {
                this.fGrammarPool.cacheGrammars(string, grammarArray);
            }
        }

        public void lockPool() {
            XMLGrammarPool xMLGrammarPool = this.fGrammarPool;
            synchronized (xMLGrammarPool) {
                this.fGrammarPool.lockPool();
            }
        }

        public void clear() {
            XMLGrammarPool xMLGrammarPool = this.fGrammarPool;
            synchronized (xMLGrammarPool) {
                this.fGrammarPool.clear();
            }
        }

        public void unlockPool() {
            XMLGrammarPool xMLGrammarPool = this.fGrammarPool;
            synchronized (xMLGrammarPool) {
                this.fGrammarPool.unlockPool();
            }
        }
    }
}

