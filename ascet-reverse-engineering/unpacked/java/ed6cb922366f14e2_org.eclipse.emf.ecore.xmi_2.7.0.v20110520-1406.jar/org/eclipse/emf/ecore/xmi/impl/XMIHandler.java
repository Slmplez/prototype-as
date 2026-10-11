/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EClassifier
 *  org.eclipse.emf.ecore.EFactory
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EReference
 *  org.eclipse.emf.ecore.EStructuralFeature
 */
package org.eclipse.emf.ecore.xmi.impl;

import java.util.Map;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EClassifier;
import org.eclipse.emf.ecore.EFactory;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.xmi.XMIResource;
import org.eclipse.emf.ecore.xmi.XMLHelper;
import org.eclipse.emf.ecore.xmi.XMLResource;
import org.eclipse.emf.ecore.xmi.impl.XMLHandler;
import org.xml.sax.Attributes;
import org.xml.sax.SAXException;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class XMIHandler
extends XMLHandler {
    protected static final String XMI_ELEMENT_TYPE = "xmi";
    protected static final String XMI_UUID = "uuid";
    protected static final String XMI_EXTENSION = "Extension";
    protected static final String XMI_TYPE_ATTRIB = "xmi:type";
    protected static final String ID_ATTRIB = "xmi:id";
    protected static final String VERSION_ATTRIB = "xmi:version";
    protected static final String UUID_ATTRIB = "xmi:uuid";
    protected static final String XMI_ELEMENT_NAME = "xmi:XMI";

    public XMIHandler(XMLResource xmiResource, XMLHelper helper, Map<?, ?> options) {
        super(xmiResource, helper, options);
        this.hrefAttribute = "href";
        this.notFeatures.add(VERSION_ATTRIB);
        this.notFeatures.add(XMI_TYPE_ATTRIB);
        this.notFeatures.add(UUID_ATTRIB);
    }

    @Override
    protected void processElement(String name, String prefix, String localName) {
        if (localName.equals("XMI")) {
            this.types.push(XMI_ELEMENT_TYPE);
            String namespace = this.helper.getURI(XMI_ELEMENT_TYPE);
            if (namespace != null && namespace.startsWith("http://schema.omg.org/spec/XMI/")) {
                ((XMIResource)this.xmlResource).setXMIVersion(namespace.substring("http://schema.omg.org/spec/XMI/".length()));
            }
            this.isRoot = false;
        } else if (this.isRoot) {
            String namespace = this.helper.getURI(XMI_ELEMENT_TYPE);
            if (namespace != null && namespace.startsWith("http://schema.omg.org/spec/XMI/")) {
                ((XMIResource)this.xmlResource).setXMIVersion(namespace.substring("http://schema.omg.org/spec/XMI/".length()));
            }
            super.processElement(name, prefix, localName);
        } else {
            super.processElement(name, prefix, localName);
        }
    }

    @Override
    protected boolean isTextFeatureValue(Object type) {
        return super.isTextFeatureValue(type) && type != XMI_ELEMENT_TYPE;
    }

    @Override
    protected EObject createDocumentRoot(String prefix, String uri, String name, EFactory eFactory, boolean top) {
        if (this.extendedMetaData != null && eFactory != null && this.extendedMetaData.demandedPackages().contains(eFactory.getEPackage())) {
            EClass eClass = (EClass)this.extendedMetaData.demandType(uri, name);
            EObject newObject = this.useNewMethods ? this.createObject(eFactory, (EClassifier)eClass, true) : this.helper.createObject(eFactory, name);
            this.validateCreateObjectFromFactory(eFactory, name, newObject);
            this.handleObjectAttribs(newObject);
            if (top) {
                this.processTopObject(newObject);
            }
            return newObject;
        }
        return super.createDocumentRoot(prefix, uri, name, eFactory, top);
    }

    @Override
    protected void createObject(EObject peekObject, EStructuralFeature feature) {
        EReference eReference;
        String id = this.attribs.getValue("xmi:idref");
        if (id != null && !(eReference = (EReference)feature).isContainment()) {
            this.setValueFromId(peekObject, eReference, id);
            this.objects.push(null);
            this.mixedTargets.push(null);
            this.types.push("object");
            return;
        }
        super.createObject(peekObject, feature);
    }

    @Override
    protected void handleUnknownFeature(String prefix, String name, boolean isElement, EObject peekObject, String value) {
        if (XMI_EXTENSION.equals(name) && "http://www.omg.org/XMI".equals(this.helper.getURI(prefix))) {
            if (this.extendedMetaData == null) {
                this.setExtendedMetaDataOption(Boolean.TRUE);
            }
            this.recordUnknownFeature(prefix, name, isElement, peekObject, value);
        } else {
            super.handleUnknownFeature(prefix, name, isElement, peekObject, value);
        }
    }

    @Override
    public void startElement(String uri, String localName, String name, Attributes attributes) throws SAXException {
        EObject eObject;
        if (this.documentRoot != null && (eObject = this.objects.peekEObject()) == this.documentRoot && (this.extendedMetaData == null || this.extendedMetaData.isDocumentRoot(eObject.eClass()))) {
            this.types.pop();
            this.objects.pop();
            this.mixedTargets.pop();
            this.documentRoot = null;
        }
        super.startElement(uri, localName, name, attributes);
    }
}

