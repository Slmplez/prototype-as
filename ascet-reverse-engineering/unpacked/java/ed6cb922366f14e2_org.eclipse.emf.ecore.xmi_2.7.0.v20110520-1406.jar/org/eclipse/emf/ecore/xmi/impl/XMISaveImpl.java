/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EReference
 *  org.eclipse.emf.ecore.EStructuralFeature
 */
package org.eclipse.emf.ecore.xmi.impl;

import java.util.List;
import java.util.Map;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.xmi.XMIResource;
import org.eclipse.emf.ecore.xmi.XMLHelper;
import org.eclipse.emf.ecore.xmi.XMLResource;
import org.eclipse.emf.ecore.xmi.impl.XMLSaveImpl;
import org.w3c.dom.Element;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class XMISaveImpl
extends XMLSaveImpl {
    protected boolean xmiType;
    protected String xmiURI = "http://www.omg.org/XMI";
    protected static final String XMI_ID_NS = "xmi:id";
    protected static final String XMI_TAG_NS = "xmi:XMI";
    protected static final String XMI_TYPE_NS = "xmi:type";
    protected static final String XMI_VER_NS = "xmi:version";
    protected static final String XMI_XMLNS = "xmlns:xmi";

    public XMISaveImpl(XMLHelper helper) {
        super(helper);
        this.idAttributeName = XMI_ID_NS;
        this.idAttributeNS = "xmi";
    }

    public XMISaveImpl(Map<?, ?> options, XMLHelper helper, String encoding) {
        this(options, helper, encoding, "1.0");
    }

    public XMISaveImpl(Map<?, ?> options, XMLHelper helper, String encoding, String xmlVersion) {
        super(options, helper, encoding, xmlVersion);
        this.xmiType = Boolean.TRUE.equals(options.get("USE_XMI_TYPE"));
        this.idAttributeName = XMI_ID_NS;
        this.idAttributeNS = "xmi";
    }

    @Override
    protected void init(XMLResource resource, Map<?, ?> options) {
        super.init(resource, options);
        this.xmiType = Boolean.TRUE.equals(options.get("USE_XMI_TYPE"));
        this.xmiURI = this.xmlResource == null ? "http://www.omg.org/XMI" : ((XMIResource)this.xmlResource).getXMINamespace();
        this.helper.getPrefixToNamespaceMap().put((Object)"xmi", (Object)this.xmiURI);
    }

    @Override
    public Object writeTopObjects(List<? extends EObject> contents) {
        if (!this.toDOM) {
            this.doc.startElement(XMI_TAG_NS);
            Object mark = this.doc.mark();
            int i = 0;
            int size = contents.size();
            while (i < size) {
                EObject top = contents.get(i);
                EClass eClass = top.eClass();
                if (this.extendedMetaData == null || this.featureTable.getDocumentRoot(eClass.getEPackage()) != eClass) {
                    String name = this.helper.getQName(eClass);
                    this.doc.startElement(name);
                    this.root = top;
                    this.saveElementID(top);
                } else {
                    this.doc.startElement(null);
                    this.root = top;
                    this.saveFeatures(top);
                    this.doc.addLine();
                }
                ++i;
            }
            this.doc.endElement();
            return mark;
        }
        Element xmiRootElement = this.document.createElementNS("http://www.omg.org/XMI", XMI_TAG_NS);
        this.currentNode = this.document.appendChild(xmiRootElement);
        int i = 0;
        int size = contents.size();
        while (i < size) {
            EObject top = contents.get(i);
            EClass eClass = top.eClass();
            this.helper.populateNameInfo(this.nameInfo, eClass);
            if (this.extendedMetaData == null || this.extendedMetaData.getDocumentRoot(eClass.getEPackage()) != eClass) {
                this.currentNode = xmiRootElement.appendChild(this.document.createElementNS(this.nameInfo.getNamespaceURI(), this.nameInfo.getQualifiedName()));
                this.handler.recordValues(this.currentNode, null, null, top);
                this.root = top;
                this.saveElementID(top);
            } else {
                this.root = top;
                this.currentNode = xmiRootElement.appendChild(this.document.createElementNS(this.nameInfo.getNamespaceURI(), this.nameInfo.getQualifiedName()));
                this.saveFeatures(top);
            }
            ++i;
        }
        return null;
    }

    @Override
    protected void saveTypeAttribute(EClass eClass) {
        if (this.xmiType) {
            if (!this.toDOM) {
                this.doc.addAttribute(XMI_TYPE_NS, this.helper.getQName(eClass));
            } else {
                ((Element)this.currentNode).setAttributeNS("http://www.omg.org/XMI", XMI_TYPE_NS, this.helper.getQName(eClass));
            }
        } else {
            super.saveTypeAttribute(eClass);
        }
    }

    @Override
    public void addNamespaceDeclarations() {
        String version = "2.0";
        if (this.xmlResource != null) {
            version = ((XMIResource)this.xmlResource).getXMIVersion();
        }
        if (!this.toDOM) {
            this.doc.addAttribute(XMI_VER_NS, version);
            this.doc.addAttribute(XMI_XMLNS, this.xmiURI);
        } else {
            ((Element)this.currentNode).setAttributeNS("http://www.omg.org/XMI", XMI_VER_NS, version);
            ((Element)this.currentNode).setAttributeNS("http://www.w3.org/2000/xmlns/", XMI_XMLNS, this.xmiURI);
        }
        super.addNamespaceDeclarations();
    }

    @Override
    public boolean isDuplicateURI(String nsURI) {
        return this.xmiURI.equals(nsURI);
    }

    @Override
    protected void saveFeatureMapElementReference(EObject o, EReference f) {
        if (this.extendedMetaData == null || this.extendedMetaData.getFeatureKind((EStructuralFeature)f) != 4) {
            this.saveHref(o, (EStructuralFeature)f);
        } else {
            this.saveElementReference(o, (EStructuralFeature)f);
        }
    }
}

