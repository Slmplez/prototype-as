/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.ecore.xmi;

import java.io.IOException;
import java.io.InputStream;
import java.util.Map;
import org.eclipse.emf.ecore.xmi.XMLDefaultHandler;
import org.eclipse.emf.ecore.xmi.XMLResource;
import org.w3c.dom.Node;
import org.xml.sax.InputSource;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface XMLLoad {
    public void load(XMLResource var1, InputStream var2, Map<?, ?> var3) throws IOException;

    public void load(XMLResource var1, InputSource var2, Map<?, ?> var3) throws IOException;

    public void load(XMLResource var1, Node var2, Map<?, ?> var3) throws IOException;

    public XMLDefaultHandler createDefaultHandler();
}

