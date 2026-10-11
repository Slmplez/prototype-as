/*
 * Decompiled with CFR 0.152.
 */
package org.apache.xerces.impl.xs;

import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Vector;
import org.apache.xerces.impl.xs.SchemaGrammar;

public class XSGrammarBucket {
    Hashtable fGrammarRegistry = new Hashtable();
    SchemaGrammar fNoNSGrammar = null;

    public SchemaGrammar getGrammar(String string) {
        if (string == null) {
            return this.fNoNSGrammar;
        }
        return (SchemaGrammar)this.fGrammarRegistry.get(string);
    }

    public void putGrammar(SchemaGrammar schemaGrammar) {
        if (schemaGrammar.getTargetNamespace() == null) {
            this.fNoNSGrammar = schemaGrammar;
        } else {
            this.fGrammarRegistry.put(schemaGrammar.getTargetNamespace(), schemaGrammar);
        }
    }

    public boolean putGrammar(SchemaGrammar schemaGrammar, boolean bl) {
        int n;
        SchemaGrammar schemaGrammar2 = this.getGrammar(schemaGrammar.fTargetNamespace);
        if (schemaGrammar2 != null) {
            return schemaGrammar2 == schemaGrammar;
        }
        if (!bl) {
            this.putGrammar(schemaGrammar);
            return true;
        }
        Vector vector = schemaGrammar.getImportedGrammars();
        if (vector == null) {
            this.putGrammar(schemaGrammar);
            return true;
        }
        Vector vector2 = (Vector)vector.clone();
        int n2 = 0;
        while (n2 < vector2.size()) {
            SchemaGrammar schemaGrammar3 = (SchemaGrammar)vector2.elementAt(n2);
            SchemaGrammar schemaGrammar4 = this.getGrammar(schemaGrammar3.fTargetNamespace);
            if (schemaGrammar4 == null) {
                Vector vector3 = schemaGrammar3.getImportedGrammars();
                if (vector3 != null) {
                    n = vector3.size() - 1;
                    while (n >= 0) {
                        schemaGrammar4 = (SchemaGrammar)vector3.elementAt(n);
                        if (!vector2.contains(schemaGrammar4)) {
                            vector2.addElement(schemaGrammar4);
                        }
                        --n;
                    }
                }
            } else if (schemaGrammar4 != schemaGrammar3) {
                return false;
            }
            ++n2;
        }
        this.putGrammar(schemaGrammar);
        n = vector2.size() - 1;
        while (n >= 0) {
            this.putGrammar((SchemaGrammar)vector2.elementAt(n));
            --n;
        }
        return true;
    }

    public SchemaGrammar[] getGrammars() {
        int n = this.fGrammarRegistry.size() + (this.fNoNSGrammar == null ? 0 : 1);
        SchemaGrammar[] schemaGrammarArray = new SchemaGrammar[n];
        Enumeration enumeration = this.fGrammarRegistry.elements();
        int n2 = 0;
        while (enumeration.hasMoreElements()) {
            schemaGrammarArray[n2++] = (SchemaGrammar)enumeration.nextElement();
        }
        if (this.fNoNSGrammar != null) {
            schemaGrammarArray[n - 1] = this.fNoNSGrammar;
        }
        return schemaGrammarArray;
    }

    public void reset() {
        this.fNoNSGrammar = null;
        this.fGrammarRegistry.clear();
    }
}

