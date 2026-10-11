/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.common.util.URI
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.resource.Resource
 *  org.eclipse.emf.ecore.resource.URIConverter
 *  org.eclipse.emf.ecore.util.FeatureMap
 *  org.eclipse.emf.ecore.util.FeatureMap$Entry
 *  org.eclipse.emf.ecore.xmi.XMLHelper
 *  org.eclipse.emf.ecore.xmi.XMLResource
 *  org.eclipse.emf.ecore.xmi.impl.SAXXMIHandler
 *  org.eclipse.emf.ecore.xml.type.XMLTypePackage$Literals
 *  org.eclipse.emf.ecore.xml.type.util.XMLTypeUtil
 */
package org.eclipse.sphinx.emf.resource;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.Map;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.resource.URIConverter;
import org.eclipse.emf.ecore.util.FeatureMap;
import org.eclipse.emf.ecore.xmi.XMLHelper;
import org.eclipse.emf.ecore.xmi.XMLResource;
import org.eclipse.emf.ecore.xmi.impl.SAXXMIHandler;
import org.eclipse.emf.ecore.xml.type.XMLTypePackage;
import org.eclipse.emf.ecore.xml.type.util.XMLTypeUtil;
import org.eclipse.sphinx.emf.metamodel.IMetaModelDescriptor;
import org.eclipse.sphinx.emf.util.EcoreResourceUtil;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.SAXParseException;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ExtendedSAXXMIHandler
extends SAXXMIHandler {
    protected IMetaModelDescriptor resourceVersion = null;

    public ExtendedSAXXMIHandler(XMLResource xmiResource, XMLHelper helper, Map<?, ?> options) {
        super(xmiResource, helper, options);
        Object value = options.get("RESOURCE_VERSION_DESCRIPTOR");
        if (value instanceof IMetaModelDescriptor) {
            this.resourceVersion = (IMetaModelDescriptor)value;
        }
        this.notFeatures.add("version");
    }

    public InputSource resolveEntity(String publicId, String systemId) throws SAXException {
        try {
            return super.resolveEntity(publicId, systemId);
        }
        catch (SAXException sAXException) {
            String lastSegment = URI.createURI((String)systemId).lastSegment();
            if (lastSegment != null) {
                try {
                    URI uri = URI.createURI((String)lastSegment);
                    uri = this.helper.resolve(uri, this.resourceURI);
                    InputStream inputStream = this.getURIConverter().createInputStream(uri, null);
                    InputSource result = new InputSource(inputStream);
                    result.setPublicId(publicId);
                    result.setSystemId(systemId);
                    return result;
                }
                catch (Exception exception) {}
            }
            String resourceNamespace = null;
            resourceNamespace = this.resourceVersion != null ? this.resourceVersion.getNamespace() : EcoreResourceUtil.readModelNamespace((Resource)this.xmlResource);
            if (resourceNamespace != null) {
                try {
                    URI uri = URI.createURI((String)resourceNamespace);
                    uri = this.helper.resolve(uri, this.resourceURI);
                    InputStream inputStream = this.getURIConverter().createInputStream(uri, null);
                    InputSource result = new InputSource(inputStream);
                    result.setPublicId(publicId);
                    result.setSystemId(systemId);
                    return result;
                }
                catch (Exception exception) {}
            }
            return null;
        }
    }

    protected URIConverter getURIConverter() {
        return EcoreResourceUtil.getURIConverter(this.resourceSet);
    }

    public void fatalError(SAXParseException e) throws SAXException {
        try {
            super.fatalError(e);
        }
        catch (SAXException sAXException) {}
    }

    protected void processTopObject(EObject object) {
        if (object != null) {
            if (this.deferredExtent != null) {
                this.deferredExtent.add(object);
            } else {
                this.extent.addUnique((Object)object);
            }
            if (this.extendedMetaData != null && !this.mixedTargets.isEmpty()) {
                FeatureMap featureMap = (FeatureMap)this.mixedTargets.pop();
                EAttribute target = null;
                EList allAttributes = object.eClass().getEAllAttributes();
                for (Object element : allAttributes) {
                    EAttribute attribute = (EAttribute)element;
                    if (!"mixedOuterContent".equals(attribute.getName())) continue;
                    target = attribute;
                    break;
                }
                if (target == null) {
                    target = this.extendedMetaData.getMixedFeature(object.eClass());
                }
                if (target != null) {
                    FeatureMap otherFeatureMap = (FeatureMap)object.eGet(target);
                    for (FeatureMap.Entry entry : new ArrayList(featureMap)) {
                        if (entry.getEStructuralFeature() == XMLTypePackage.Literals.XML_TYPE_DOCUMENT_ROOT__TEXT && "".equals(XMLTypeUtil.normalize((String)entry.getValue().toString(), (boolean)true))) continue;
                        otherFeatureMap.add(entry.getEStructuralFeature(), entry.getValue());
                    }
                }
                this.text = null;
            }
        }
        this.processObject(object);
    }
}

