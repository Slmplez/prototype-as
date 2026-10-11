/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.ENamedElement
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EStructuralFeature
 *  org.eclipse.emf.ecore.InternalEObject
 */
package org.eclipse.emf.ecore.xmi.impl;

import java.util.Map;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.ENamedElement;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.xmi.XMLHelper;
import org.eclipse.emf.ecore.xmi.XMLResource;
import org.eclipse.emf.ecore.xmi.impl.XMLHandler;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class SAXXMLHandler
extends XMLHandler {
    public SAXXMLHandler(XMLResource xmiResource, XMLHelper helper, Map<?, ?> options) {
        super(xmiResource, helper, options);
    }

    @Override
    protected String getXSIType() {
        return this.isNamespaceAware ? this.attribs.getValue("http://www.w3.org/2001/XMLSchema-instance", "type") : this.attribs.getValue("xsi:type");
    }

    @Override
    protected void handleObjectAttribs(EObject obj) {
        if (this.attribs != null) {
            InternalEObject internalEObject = (InternalEObject)obj;
            int i = 0;
            int size = this.attribs.getLength();
            while (i < size) {
                String name = this.attribs.getQName(i);
                if (name.equals(this.idAttribute)) {
                    this.xmlResource.setID((EObject)internalEObject, this.attribs.getValue(i));
                } else if (name.equals(this.hrefAttribute) && (!this.recordUnknownFeature || this.types.peek() != "unknownFeature" || obj.eClass() != this.anyType)) {
                    this.handleProxy(internalEObject, this.attribs.getValue(i));
                } else if (this.isNamespaceAware) {
                    String namespace = this.attribs.getURI(i);
                    if (!"http://www.w3.org/2001/XMLSchema-instance".equals(namespace)) {
                        this.setAttribValue(obj, name, this.attribs.getValue(i));
                    }
                } else if (!name.startsWith("xmlns") && !this.notFeatures.contains(name)) {
                    this.setAttribValue(obj, name, this.attribs.getValue(i));
                }
                ++i;
            }
        }
    }

    @Override
    protected void processObject(EObject object) {
        EStructuralFeature valueFeature;
        if (object != null && (valueFeature = this.getContentFeature(object)) != null) {
            this.text = new StringBuffer();
            this.objects.push(object);
            this.types.push(valueFeature);
            return;
        }
        super.processObject(object);
    }

    protected EStructuralFeature getContentFeature(EObject object) {
        EAttribute eAttribute;
        XMLResource.XMLInfo info;
        EList eAttributes;
        if (this.xmlMap != null && (eAttributes = object.eClass().getEAllAttributes()).size() >= 1 && (info = this.xmlMap.getInfo((ENamedElement)(eAttribute = (EAttribute)eAttributes.get(0)))) != null && info.getXMLRepresentation() == 2) {
            return eAttribute;
        }
        return null;
    }
}

