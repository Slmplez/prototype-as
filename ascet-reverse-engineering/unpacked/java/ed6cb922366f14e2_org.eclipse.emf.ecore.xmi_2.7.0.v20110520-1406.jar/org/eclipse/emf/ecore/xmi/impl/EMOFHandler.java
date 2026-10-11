/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAnnotation
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 */
package org.eclipse.emf.ecore.xmi.impl;

import java.util.Map;
import org.eclipse.emf.ecore.EAnnotation;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.xmi.XMLHelper;
import org.eclipse.emf.ecore.xmi.XMLResource;
import org.eclipse.emf.ecore.xmi.impl.EMOFExtendedMetaData;
import org.eclipse.emf.ecore.xmi.impl.SAXXMIHandler;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class EMOFHandler
extends SAXXMIHandler {
    protected Helper emofHelper;
    protected static final String ECORE_EXTENSION_TYPE = "ecoreExtension";

    public EMOFHandler(XMLResource xmiResource, Helper helper, Map<?, ?> options) {
        super(xmiResource, helper, options);
        this.emofHelper = helper;
    }

    @Override
    protected void handleProxy(InternalEObject proxy, String uriLiteral) {
        if (uriLiteral.startsWith("http://schema.omg.org/spec/mof/2.0/emof.xmi#") || uriLiteral.startsWith("http://schema.omg.org/spec/MOF/2.0/emof.xml#")) {
            String dataType = uriLiteral.substring(uriLiteral.indexOf("#") + 1);
            int i = 0;
            while (i < EMOFExtendedMetaData.MAPPED_EMOF_EDATATYPES.length) {
                if (dataType.equals(EMOFExtendedMetaData.MAPPED_EMOF_EDATATYPES[i])) {
                    uriLiteral = "http://www.eclipse.org/emf/2002/Ecore#//" + EMOFExtendedMetaData.MAPPED_ECORE_EDATATYPES[i];
                    break;
                }
                ++i;
            }
        } else if (uriLiteral.startsWith("http://www.eclipse.org/emf/2002/Ecore.emof#ecore.")) {
            String dataType = uriLiteral.substring("http://www.eclipse.org/emf/2002/Ecore.emof#ecore.".length());
            uriLiteral = "http://www.eclipse.org/emf/2002/Ecore#//" + dataType;
        }
        super.handleProxy(proxy, uriLiteral);
    }

    @Override
    protected void handleForwardReferences(boolean isEndDocument) {
        super.handleForwardReferences(isEndDocument);
        if (isEndDocument) {
            this.emofHelper.convertPropertyFeatures();
        }
    }

    @Override
    protected void processElement(String name, String prefix, String localName) {
        if ("Extension".equals(localName) && "http://www.omg.org/XMI".equals(this.helper.getURI(prefix))) {
            if (this.attribs != null && "http://www.eclipse.org/emf/2002/Ecore".equals(this.attribs.getValue("extender"))) {
                this.types.push(ECORE_EXTENSION_TYPE);
            } else {
                this.types.push("error");
            }
        } else {
            super.processElement(name, prefix, localName);
        }
    }

    @Override
    public void endElement(String uri, String localName, String name) {
        if (this.types.peek() == ECORE_EXTENSION_TYPE) {
            this.elements.pop();
            this.types.pop();
            this.helper.popContext();
            this.mixedTargets.pop();
        } else {
            super.endElement(uri, localName, name);
        }
    }

    @Override
    protected void setAttribValue(EObject object, String name, String value) {
        if (object instanceof EAnnotation) {
            EAnnotation annotation = (EAnnotation)object;
            String source = annotation.getSource();
            if ("http://schema.omg.org/spec/mof/2.0/emof.xmi".equals(source) || "http://schema.omg.org/spec/MOF/2.0/emof.xml".equals(source)) {
                if ("name".equals(name) || "value".equals(name)) {
                    annotation.getDetails().put((Object)name, (Object)value);
                    return;
                }
                if ("body".equals(name)) {
                    annotation.setSource("http://schema.omg.org/spec/MOF/2.0/emof.xml#Comment");
                    annotation.getDetails().put((Object)name, (Object)value);
                    return;
                }
            } else if (source.startsWith("http://schema.omg.org/spec/MOF/2.0/emof.xml") && "body".equals(name)) {
                annotation.getDetails().put((Object)name, (Object)value);
                return;
            }
        }
        super.setAttribValue(object, name, value);
    }

    @Override
    protected void handleFeature(String prefix, String name) {
        EAnnotation annotation;
        EObject container;
        super.handleFeature(prefix, name);
        if ("ownedComment".equals(name) && this.objects.peekEObject() instanceof EAnnotation && (container = (annotation = (EAnnotation)this.objects.peekEObject()).eContainer()) instanceof EAnnotation) {
            EAnnotation parentAnnotation = (EAnnotation)container;
            parentAnnotation.setSource((String)annotation.getDetails().get((Object)"body"));
            parentAnnotation.getEAnnotations().remove((Object)annotation);
        }
    }

    public static interface Helper
    extends XMLHelper {
        public void convertPropertyFeatures();
    }
}

