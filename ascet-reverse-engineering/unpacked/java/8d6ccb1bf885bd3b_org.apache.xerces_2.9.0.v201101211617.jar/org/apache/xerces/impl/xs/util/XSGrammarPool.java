/*
 * Decompiled with CFR 0.152.
 */
package org.apache.xerces.impl.xs.util;

import java.util.ArrayList;
import org.apache.xerces.impl.xs.SchemaGrammar;
import org.apache.xerces.impl.xs.XSModelImpl;
import org.apache.xerces.util.XMLGrammarPoolImpl;
import org.apache.xerces.xni.grammars.Grammar;
import org.apache.xerces.xs.XSModel;

public class XSGrammarPool
extends XMLGrammarPoolImpl {
    public XSModel toXSModel() {
        ArrayList<Grammar> arrayList = new ArrayList<Grammar>();
        int n = 0;
        while (n < this.fGrammars.length) {
            XMLGrammarPoolImpl.Entry entry = this.fGrammars[n];
            while (entry != null) {
                if (entry.desc.getGrammarType().equals("http://www.w3.org/2001/XMLSchema")) {
                    arrayList.add(entry.grammar);
                }
                entry = entry.next;
            }
            ++n;
        }
        int n2 = arrayList.size();
        if (n2 == 0) {
            return null;
        }
        SchemaGrammar[] schemaGrammarArray = arrayList.toArray(new SchemaGrammar[n2]);
        return new XSModelImpl(schemaGrammarArray);
    }
}

