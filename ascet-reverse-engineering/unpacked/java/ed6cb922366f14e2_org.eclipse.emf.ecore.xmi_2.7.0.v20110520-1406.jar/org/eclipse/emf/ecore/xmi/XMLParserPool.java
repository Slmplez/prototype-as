/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.ecore.xmi;

import java.util.Map;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParser;
import org.eclipse.emf.ecore.xmi.XMLDefaultHandler;
import org.eclipse.emf.ecore.xmi.XMLHelper;
import org.eclipse.emf.ecore.xmi.XMLLoad;
import org.eclipse.emf.ecore.xmi.XMLResource;
import org.xml.sax.SAXException;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface XMLParserPool {
    public SAXParser get(Map<String, Boolean> var1, Map<String, ?> var2, boolean var3) throws ParserConfigurationException, SAXException;

    public void release(SAXParser var1, Map<String, Boolean> var2, Map<String, ?> var3, boolean var4);

    public XMLDefaultHandler getDefaultHandler(XMLResource var1, XMLLoad var2, XMLHelper var3, Map<?, ?> var4);

    public void releaseDefaultHandler(XMLDefaultHandler var1, Map<?, ?> var2);
}

