/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.resource.AutosarURIFactory
 *  org.eclipse.emf.common.util.URI
 *  org.eclipse.emf.ecore.EAnnotation
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EClassifier
 *  org.eclipse.emf.ecore.EDataType
 *  org.eclipse.emf.ecore.EFactory
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EStructuralFeature
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.util.ExtendedMetaData
 *  org.eclipse.emf.ecore.xmi.ClassNotFoundException
 *  org.eclipse.emf.ecore.xmi.XMIException
 *  org.eclipse.emf.ecore.xmi.XMLHelper
 *  org.eclipse.emf.ecore.xmi.XMLResource
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.sphinx.emf.resource.XMLIntegrityException
 */
package org.artop.aal.serialization.internal;

import java.util.Collection;
import java.util.List;
import java.util.Map;
import org.artop.aal.common.resource.AutosarURIFactory;
import org.artop.aal.serialization.internal.InstanceReferenceSAXXMLHandler;
import org.artop.aal.serialization.internal.ReferenceSAXXMLHandler;
import org.artop.aal.serialization.internal.messages.Messages;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.EAnnotation;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EClassifier;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EFactory;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.util.ExtendedMetaData;
import org.eclipse.emf.ecore.xmi.ClassNotFoundException;
import org.eclipse.emf.ecore.xmi.XMIException;
import org.eclipse.emf.ecore.xmi.XMLHelper;
import org.eclipse.emf.ecore.xmi.XMLResource;
import org.eclipse.osgi.util.NLS;
import org.eclipse.sphinx.emf.resource.XMLIntegrityException;
import org.xml.sax.Attributes;
import org.xml.sax.ContentHandler;
import org.xml.sax.SAXException;
import org.xml.sax.XMLReader;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class IndexedReferenceSAXXMLHandler
extends ReferenceSAXXMLHandler {
    protected EStructuralFeature eStructuralFeature = null;
    protected String typeOfDestination = "";

    public IndexedReferenceSAXXMLHandler(XMLResource xmiResource, XMLHelper helper, Map<?, ?> options, Attributes attributes) {
        super(xmiResource, helper, options, attributes);
    }

    public void init(XMLReader xmlReader, InstanceReferenceSAXXMLHandler parentHandler, EAnnotation annotation, ExtendedMetaData extendedMetaData, String qName, EObject parentObject, String enclosingElementName, EObject container, EStructuralFeature containingEStructuralFeature) {
        this.parser = xmlReader;
        this.parentContentHandler = parentHandler;
        this.parentObject = parentObject;
        this.extendedMetaData = extendedMetaData;
        this.enclosingElementName = enclosingElementName;
        if (containingEStructuralFeature.isMany()) {
            Collection values = (Collection)container.eGet(containingEStructuralFeature);
            values.add(parentObject);
        } else {
            container.eSet(containingEStructuralFeature, (Object)parentObject);
        }
        this.parser.setContentHandler((ContentHandler)((Object)this));
    }

    public void startElement(String uri, String localName, String name, Attributes attributes) throws SAXException {
        this.eStructuralFeature = this.extendedMetaData.getElement(this.parentObject.eClass(), uri, name);
        this.content.reset();
    }

    public void endElement(String uri, String localName, String name) {
        if (this.eStructuralFeature != null) {
            if (this.eStructuralFeature.getEType() instanceof EDataType) {
                EFactory factory = this.eStructuralFeature.getEType().getEPackage().getEFactoryInstance();
                Object createFromString = factory.createFromString((EDataType)this.eStructuralFeature.getEType(), this.content.toString().trim());
                this.parentObject.eSet(this.eStructuralFeature, createFromString);
            } else {
                EFactory factory = this.parentContentHandler.getEFactory();
                EObject currentFeatureValue = null;
                String typeName = null;
                int attributeIndex = 0;
                while (attributeIndex < this.attribs.getLength()) {
                    String attributeQName = this.attribs.getQName(attributeIndex);
                    if ("DEST".equals(attributeQName)) {
                        String xmlNameOfTypeToInstantiate;
                        this.typeOfDestination = xmlNameOfTypeToInstantiate = this.attribs.getValue(attributeIndex);
                        EClassifier classifier = this.helper.getType(factory, xmlNameOfTypeToInstantiate);
                        if (classifier instanceof EClass && !((EClass)classifier).isAbstract()) {
                            currentFeatureValue = factory.create((EClass)classifier);
                            typeName = classifier.getName();
                            break;
                        }
                        this.error((XMIException)new ClassNotFoundException(xmlNameOfTypeToInstantiate, factory, this.getLocation(), this.getLineNumber(), this.getColumnNumber()));
                        break;
                    }
                    ++attributeIndex;
                }
                String absoluteQualifiedName = this.getReferenceFromContent(this.content);
                if (absoluteQualifiedName.length() > 0) {
                    URI proxyUri = AutosarURIFactory.createAutosarURI((String)absoluteQualifiedName, typeName);
                    ((InternalEObject)currentFeatureValue).eSetProxyURI(proxyUri);
                    typeName = null;
                    if (this.eStructuralFeature.isMany()) {
                        if (this.parentObject.eGet(this.eStructuralFeature) instanceof List) {
                            Collection values = (Collection)this.parentObject.eGet(this.eStructuralFeature);
                            values.add(currentFeatureValue);
                        }
                    } else {
                        this.parentObject.eSet(this.eStructuralFeature, currentFeatureValue);
                    }
                } else {
                    this.error((XMIException)new XMLIntegrityException(NLS.bind((String)Messages.error_TypeRefElementNotLoaded, (Object)name), this.getLocation(), this.getLineNumber(), this.getColumnNumber()));
                }
                this.eStructuralFeature = null;
            }
        }
        if (this.enclosingElementName.endsWith(name)) {
            this.restoreParentHandler();
        }
    }
}

