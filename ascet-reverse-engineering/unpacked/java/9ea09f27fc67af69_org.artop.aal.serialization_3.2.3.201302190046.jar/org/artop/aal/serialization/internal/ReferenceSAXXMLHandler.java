/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.util.ExtendedMetaData
 *  org.eclipse.emf.ecore.xmi.XMLHelper
 *  org.eclipse.emf.ecore.xmi.XMLResource
 *  org.eclipse.emf.ecore.xmi.impl.SAXXMIHandler
 */
package org.artop.aal.serialization.internal;

import java.io.CharArrayWriter;
import java.util.Map;
import org.artop.aal.serialization.internal.AutosarReferenceHelper;
import org.artop.aal.serialization.internal.IDelegatingXMLDefaultHandler;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.util.ExtendedMetaData;
import org.eclipse.emf.ecore.xmi.XMLHelper;
import org.eclipse.emf.ecore.xmi.XMLResource;
import org.eclipse.emf.ecore.xmi.impl.SAXXMIHandler;
import org.xml.sax.Attributes;
import org.xml.sax.ContentHandler;
import org.xml.sax.XMLReader;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class ReferenceSAXXMLHandler
extends SAXXMIHandler {
    protected XMLReader parser;
    protected IDelegatingXMLDefaultHandler parentContentHandler;
    protected EObject parentObject;
    protected ExtendedMetaData extendedMetaData = null;
    protected CharArrayWriter content = new CharArrayWriter();
    protected String enclosingElementName;
    private Boolean supportAbstractDest;
    protected String baseName = null;

    public ReferenceSAXXMLHandler(XMLResource xmiResource, XMLHelper helper, Map<?, ?> options, Attributes attributes) {
        super(xmiResource, helper, options);
        this.setAttributes(attributes);
    }

    public String getLocation() {
        if (this.parentContentHandler != null) {
            return this.parentContentHandler.getLocation();
        }
        return super.getLocation();
    }

    public int getLineNumber() {
        if (this.parentContentHandler != null) {
            return this.parentContentHandler.getLineNumber();
        }
        return super.getLineNumber();
    }

    public void init(XMLReader reader, IDelegatingXMLDefaultHandler parentHandler, EObject parentObject, ExtendedMetaData extendedMetaData, String enclosingElementName) {
        this.parser = reader;
        this.parentContentHandler = parentHandler;
        this.parentObject = parentObject;
        this.extendedMetaData = extendedMetaData;
        this.enclosingElementName = enclosingElementName;
        this.parser.setContentHandler((ContentHandler)((Object)this));
    }

    protected void restoreParentHandler() {
        this.parser.setContentHandler((ContentHandler)((Object)this.parentContentHandler));
        this.parentContentHandler.decrementLevel();
    }

    public int getColumnNumber() {
        if (this.parentContentHandler != null) {
            return this.parentContentHandler.getColumnNumber();
        }
        return super.getColumnNumber();
    }

    public void characters(char[] ch, int start, int length) {
        this.content.write(ch, start, length);
    }

    protected String getReferenceFromContent(CharArrayWriter contents) {
        if (contents != null) {
            String contentsString = contents.toString();
            contentsString = contentsString.replaceAll("\\n", "");
            if (!(contentsString = contentsString.replaceAll("\\s", "")).startsWith("/")) {
                String absoluteReference = AutosarReferenceHelper.convertRelativeReferenceToAbsoluteReference(contentsString, this.baseName, this.parentObject);
                String string = contentsString = absoluteReference == null ? contentsString : absoluteReference;
            }
            if (contentsString != null && contentsString.length() > 0) {
                return contentsString;
            }
        }
        return "";
    }

    protected boolean isSupportingAbstractDest(EClass clz) {
        if (this.supportAbstractDest == null) {
            String nsURI = clz.getEPackage().getNsURI();
            this.supportAbstractDest = nsURI != null && nsURI.startsWith("http://autosar.org/schema/r4.") ? Boolean.TRUE : Boolean.FALSE;
        }
        return this.supportAbstractDest;
    }
}

