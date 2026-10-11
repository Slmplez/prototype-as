/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.ecore.xmi;

import java.util.Map;
import org.eclipse.emf.ecore.xmi.XMLHelper;
import org.eclipse.emf.ecore.xmi.XMLResource;
import org.xml.sax.ContentHandler;
import org.xml.sax.DTDHandler;
import org.xml.sax.EntityResolver;
import org.xml.sax.ErrorHandler;
import org.xml.sax.ext.LexicalHandler;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface XMLDefaultHandler
extends ContentHandler,
EntityResolver,
DTDHandler,
ErrorHandler,
LexicalHandler {
    public void reset();

    public void prepare(XMLResource var1, XMLHelper var2, Map<?, ?> var3);
}

