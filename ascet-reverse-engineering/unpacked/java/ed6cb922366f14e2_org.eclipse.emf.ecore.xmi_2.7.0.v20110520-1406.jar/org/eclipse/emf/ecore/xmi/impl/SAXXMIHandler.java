/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 */
package org.eclipse.emf.ecore.xmi.impl;

import java.util.Map;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.xmi.XMLHelper;
import org.eclipse.emf.ecore.xmi.XMLResource;
import org.eclipse.emf.ecore.xmi.impl.XMIHandler;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class SAXXMIHandler
extends XMIHandler {
    public SAXXMIHandler(XMLResource xmiResource, XMLHelper helper, Map<?, ?> options) {
        super(xmiResource, helper, options);
    }

    @Override
    protected String getXSIType() {
        String xsiType;
        String string = xsiType = this.isNamespaceAware ? this.attribs.getValue("http://www.w3.org/2001/XMLSchema-instance", "type") : this.attribs.getValue("xsi:type");
        if (xsiType == null) {
            xsiType = this.attribs.getValue("xmi:type");
        }
        return xsiType;
    }

    @Override
    protected void handleObjectAttribs(EObject obj) {
        if (this.attribs != null) {
            InternalEObject internalEObject = (InternalEObject)obj;
            int i = 0;
            int size = this.attribs.getLength();
            while (i < size) {
                String name = this.attribs.getQName(i);
                if (name.equals("xmi:id")) {
                    this.xmlResource.setID((EObject)internalEObject, this.attribs.getValue(i));
                } else if (name.equals(this.hrefAttribute) && (!this.recordUnknownFeature || this.types.peek() != "unknownFeature" || obj.eClass() != this.anyType)) {
                    this.handleProxy(internalEObject, this.attribs.getValue(i));
                } else if (this.isNamespaceAware) {
                    String namespace = this.attribs.getURI(i);
                    if (!"http://www.w3.org/2001/XMLSchema-instance".equals(namespace) && !this.notFeatures.contains(name)) {
                        this.setAttribValue(obj, name, this.attribs.getValue(i));
                    }
                } else if (!name.startsWith("xmlns") && !this.notFeatures.contains(name)) {
                    this.setAttribValue(obj, name, this.attribs.getValue(i));
                }
                ++i;
            }
        }
    }
}

