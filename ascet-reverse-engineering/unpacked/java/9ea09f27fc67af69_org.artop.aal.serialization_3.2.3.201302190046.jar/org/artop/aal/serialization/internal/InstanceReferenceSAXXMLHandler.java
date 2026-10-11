/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.apache.xerces.util.XMLAttributesImpl
 *  org.apache.xerces.xni.QName
 *  org.artop.aal.common.resource.AutosarURIFactory
 *  org.artop.aal.common.util.IReferringClass
 *  org.artop.aal.common.util.IReferringEList
 *  org.eclipse.emf.common.util.URI
 *  org.eclipse.emf.ecore.EAnnotation
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EClassifier
 *  org.eclipse.emf.ecore.EFactory
 *  org.eclipse.emf.ecore.EModelElement
 *  org.eclipse.emf.ecore.ENamedElement
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EStructuralFeature
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.util.EObjectResolvingEList
 *  org.eclipse.emf.ecore.util.ExtendedMetaData
 *  org.eclipse.emf.ecore.xmi.ClassNotFoundException
 *  org.eclipse.emf.ecore.xmi.XMIException
 *  org.eclipse.emf.ecore.xmi.XMLHelper
 *  org.eclipse.emf.ecore.xmi.XMLResource
 *  org.eclipse.emf.ecore.xml.type.AnyType
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.sphinx.emf.resource.XMLIntegrityException
 */
package org.artop.aal.serialization.internal;

import java.util.Collection;
import java.util.List;
import java.util.Map;
import org.apache.xerces.util.XMLAttributesImpl;
import org.apache.xerces.xni.QName;
import org.artop.aal.common.resource.AutosarURIFactory;
import org.artop.aal.common.util.IReferringClass;
import org.artop.aal.common.util.IReferringEList;
import org.artop.aal.serialization.internal.AutosarReferenceHelper;
import org.artop.aal.serialization.internal.IDelegatingXMLDefaultHandler;
import org.artop.aal.serialization.internal.IndexedReferenceSAXXMLHandler;
import org.artop.aal.serialization.internal.ReferenceSAXXMLHandler;
import org.artop.aal.serialization.internal.messages.Messages;
import org.artop.aal.serialization.internal.util.AutosarTaggedValues;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.EAnnotation;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EClassifier;
import org.eclipse.emf.ecore.EFactory;
import org.eclipse.emf.ecore.EModelElement;
import org.eclipse.emf.ecore.ENamedElement;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.util.EObjectResolvingEList;
import org.eclipse.emf.ecore.util.ExtendedMetaData;
import org.eclipse.emf.ecore.xmi.ClassNotFoundException;
import org.eclipse.emf.ecore.xmi.XMIException;
import org.eclipse.emf.ecore.xmi.XMLHelper;
import org.eclipse.emf.ecore.xmi.XMLResource;
import org.eclipse.emf.ecore.xml.type.AnyType;
import org.eclipse.osgi.util.NLS;
import org.eclipse.sphinx.emf.resource.XMLIntegrityException;
import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.XMLReader;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class InstanceReferenceSAXXMLHandler
extends ReferenceSAXXMLHandler
implements IDelegatingXMLDefaultHandler {
    protected EStructuralFeature eStructuralFeature = null;
    protected EObject instanceReference = null;
    protected EStructuralFeature parentFeature = null;
    protected String typeOfDestination = "";
    protected EObject currentFeatureValue = null;
    private String instanceReferenceQName;
    private String typeName = null;
    private XMLAttributesImpl instanceReferenceAttributes;

    public InstanceReferenceSAXXMLHandler(XMLResource xmiResource, XMLHelper helper, Map<?, ?> options, EStructuralFeature feature, Attributes attributes) {
        super(xmiResource, helper, options, attributes);
        this.parentFeature = feature;
        this.cacheInstanceReferenceAttribs(attributes);
    }

    @Override
    public void init(XMLReader reader, IDelegatingXMLDefaultHandler parentHandler, EObject parentObject, ExtendedMetaData extendedMetaData, String enclosingElementName) {
        super.init(reader, parentHandler, parentObject, extendedMetaData, enclosingElementName);
        this.createInstanceReference(enclosingElementName);
    }

    public void startElement(String namespaceURI, String localName, String qName, Attributes attributes) throws SAXException {
        List<EStructuralFeature> features;
        int index = qName.indexOf(58, 0);
        if (index != -1) {
            qName = qName.substring(index + 1);
        }
        if (this.instanceReference == null) {
            this.createInstanceReference(qName);
        }
        this.content.reset();
        if (this.instanceReference != null) {
            this.handleInstanceRefrenceAttribs(this.instanceReference);
            this.eStructuralFeature = this.extendedMetaData.getElement(this.instanceReference.eClass(), namespaceURI, qName);
        }
        if ((this.instanceReference == null || this.eStructuralFeature == null) && (features = this.parentContentHandler.createFeatureFromSkippedElement(this.enclosingElementName, this.parentObject)) != null && features.size() == 2) {
            this.eStructuralFeature = features.get(1);
            EStructuralFeature grandParentFeature = features.get(0);
            if (grandParentFeature.isMany()) {
                List values = (List)this.parentObject.eGet(grandParentFeature);
                this.parentObject = (EObject)values.get(values.size() - 1);
            } else {
                this.parentObject = (EObject)this.parentObject.eGet(grandParentFeature);
            }
            EClass instanceReferenceClass = (EClass)this.eStructuralFeature.getEType();
            this.instanceReference = instanceReferenceClass.getEPackage().getEFactoryInstance().create(instanceReferenceClass);
            this.handleInstanceRefrenceAttribs(this.instanceReference);
            this.parentObject.eSet(this.eStructuralFeature, (Object)this.instanceReference);
            this.eStructuralFeature = this.extendedMetaData.getElement(this.instanceReference.eClass(), namespaceURI, qName);
        }
        if (this.eStructuralFeature != null) {
            EClassifier classifier;
            String stereotype;
            boolean hasInstantiatedCurrentFeatureValue = false;
            EFactory factory = this.parentContentHandler.getEFactory();
            EAnnotation annotation = this.eStructuralFeature.getEType().getEAnnotation("Stereotype");
            String string = stereotype = annotation != null && annotation.getDetails() != null ? (String)annotation.getDetails().get((Object)"Stereotype") : null;
            if ("indexedRef".equalsIgnoreCase(stereotype)) {
                this.currentFeatureValue = factory.create((EClass)this.eStructuralFeature.getEType());
                this.typeName = this.eStructuralFeature.getEType().getName();
                hasInstantiatedCurrentFeatureValue = true;
                IndexedReferenceSAXXMLHandler indexedReferenceSAXXMLHandler = new IndexedReferenceSAXXMLHandler(this.xmlResource, this.helper, this.xmlResource.getDefaultLoadOptions(), attributes);
                this.handleObjectAttribs(this.currentFeatureValue);
                indexedReferenceSAXXMLHandler.init(this.parser, this, annotation, this.extendedMetaData, qName, this.currentFeatureValue, qName, this.instanceReference, this.eStructuralFeature);
            } else {
                int attributeIndex = 0;
                while (attributeIndex < attributes.getLength()) {
                    String attributeQName = attributes.getQName(attributeIndex);
                    if ("DEST".equals(attributeQName)) {
                        EClass destType;
                        EClass featType;
                        String xmlNameOfTypeToInstantiate;
                        this.currentFeatureValue = null;
                        this.typeName = null;
                        this.typeOfDestination = xmlNameOfTypeToInstantiate = attributes.getValue(attributeIndex);
                        EClassifier destClassifier = this.helper.getType(factory, xmlNameOfTypeToInstantiate);
                        if (destClassifier instanceof EClass) {
                            this.typeOfDestination = this.helper.getName((ENamedElement)destClassifier);
                        }
                        EClassifier featClassifier = this.eStructuralFeature.getEType();
                        boolean areDestAndFeatTypesCompatible = false;
                        if (featClassifier instanceof EClass && destClassifier instanceof EClass && !(areDestAndFeatTypesCompatible = (featType = (EClass)featClassifier).isSuperTypeOf(destType = (EClass)destClassifier))) {
                            this.warning((XMIException)new XMLIntegrityException(NLS.bind((String)Messages.warn_DestAndFeatureTypesNotCompatible, (Object[])new Object[]{destType.getName(), this.eStructuralFeature.getName(), featType.getName()}), this.getLocation(), this.getLineNumber(), this.getColumnNumber()));
                        }
                        if (destClassifier instanceof EClass && !AutosarReferenceHelper.isAbstract((EClass)destClassifier)) {
                            if (areDestAndFeatTypesCompatible) {
                                this.currentFeatureValue = factory.create((EClass)destClassifier);
                                hasInstantiatedCurrentFeatureValue = true;
                                this.typeName = destClassifier.getName();
                                if (((EClass)destClassifier).isAbstract() && !this.isSupportingAbstractDest((EClass)destClassifier)) {
                                    String msg = NLS.bind((String)Messages.error_NoSupportForAbstractDest, (Object[])new String[]{this.eStructuralFeature.getEContainingClass().getName(), this.eStructuralFeature.getName(), xmlNameOfTypeToInstantiate});
                                    this.error((XMIException)new XMLIntegrityException(msg, this.getLocation(), this.getLineNumber(), this.getColumnNumber()));
                                }
                            }
                        } else {
                            this.error((XMIException)new ClassNotFoundException(xmlNameOfTypeToInstantiate, factory, this.getLocation(), this.getLineNumber(), this.getColumnNumber()));
                        }
                    } else if ("BASE".equals(attributeQName)) {
                        this.baseName = this.attribs.getValue(attributeIndex);
                    }
                    ++attributeIndex;
                }
            }
            if (!hasInstantiatedCurrentFeatureValue && (classifier = this.eStructuralFeature.getEType()) instanceof EClass && !AutosarReferenceHelper.isAbstract((EClass)classifier)) {
                this.currentFeatureValue = factory.create((EClass)classifier);
                hasInstantiatedCurrentFeatureValue = true;
                this.typeName = classifier.getName();
                if (((EClass)classifier).isAbstract() && !this.isSupportingAbstractDest((EClass)classifier)) {
                    String msg = NLS.bind((String)Messages.error_NoSupportForAbstractDest, (Object[])new String[]{this.eStructuralFeature.getEContainingClass().getName(), this.eStructuralFeature.getName(), ((EClass)classifier).getName()});
                    this.error((XMIException)new XMLIntegrityException(msg, this.getLocation(), this.getLineNumber(), this.getColumnNumber()));
                }
            }
            if (this.currentFeatureValue == null) {
                this.eStructuralFeature = null;
                return;
            }
            if (this.instanceReferenceQName != null && this.instanceReferenceQName.equals(this.helper.getName((ENamedElement)this.eStructuralFeature))) {
                this.instanceReferenceQName = this.helper.getQName(this.parentFeature);
            }
        } else {
            this.currentFeatureValue = null;
        }
    }

    public void endElement(String uri, String localName, String name) {
        int index = name.indexOf(58, 0);
        if (index != -1) {
            name = name.substring(index + 1);
        }
        if (this.eStructuralFeature != null) {
            String absoluteQualifiedName = this.getReferenceFromContent(this.content);
            if (absoluteQualifiedName.length() > 0) {
                URI proxyUri = AutosarURIFactory.createAutosarURI((String)absoluteQualifiedName, (String)this.typeName);
                ((InternalEObject)this.currentFeatureValue).eSetProxyURI(proxyUri);
                this.typeName = null;
                if (this.eStructuralFeature.isMany()) {
                    if (this.instanceReference.eGet(this.eStructuralFeature) instanceof List) {
                        Collection values = (Collection)this.instanceReference.eGet(this.eStructuralFeature);
                        values.add(this.currentFeatureValue);
                        if (values instanceof IReferringEList) {
                            ((IReferringEList)values).setReferringDest(values.size() - 1, this.typeOfDestination);
                        }
                    }
                } else {
                    this.instanceReference.eSet(this.eStructuralFeature, (Object)this.currentFeatureValue);
                    if (this.instanceReference instanceof IReferringClass) {
                        ((IReferringClass)this.instanceReference).eSetReferringDest(this.eStructuralFeature.getFeatureID(), this.typeOfDestination);
                    }
                }
            }
            this.eStructuralFeature = null;
        }
        if (this.instanceReference != null && this.instanceReferenceQName.equals(name)) {
            try {
                if (this.parentFeature.isMany()) {
                    if (this.parentObject.eGet(this.parentFeature) instanceof List) {
                        Collection values = (Collection)this.parentObject.eGet(this.parentFeature);
                        values.add(this.instanceReference);
                    }
                } else {
                    this.parentObject.eSet(this.parentFeature, (Object)this.instanceReference);
                }
            }
            catch (Exception ex) {
                if (this.parentObject instanceof AnyType) {
                    this.error((XMIException)new XMLIntegrityException(NLS.bind((String)Messages.error_UnableToRecordUnknownInstanceReference, (Object)this.parentFeature.getName()), this.getLocation(), this.getLineNumber(), this.getColumnNumber()));
                }
                this.error(new XMIException(ex, this.getLocation(), this.getLineNumber(), this.getColumnNumber()));
            }
            this.instanceReference = null;
        }
        if (this.enclosingElementName.endsWith(name)) {
            this.restoreParentHandler();
        }
    }

    protected void createInstanceReference(String typeName) {
        EFactory factory;
        EClassifier classifier;
        EClass eClass = (EClass)this.parentFeature.getEType();
        if (eClass.isAbstract() && (classifier = this.helper.getType(factory = this.parentContentHandler.getEFactory(), typeName)) instanceof EClass) {
            eClass = (EClass)classifier;
        }
        try {
            this.instanceReference = eClass.getEPackage().getEFactoryInstance().create(eClass);
        }
        catch (IllegalArgumentException illegalArgumentException) {}
        this.instanceReferenceQName = AutosarTaggedValues.get((EModelElement)this.parentFeature).xmlName;
        if (this.instanceReferenceQName == null) {
            this.instanceReferenceQName = this.helper.getQName(this.parentFeature);
        }
    }

    private void cacheInstanceReferenceAttribs(Attributes attributes) {
        this.instanceReferenceAttributes = new XMLAttributesImpl();
        int i = 0;
        int size = attributes.getLength();
        while (i < size) {
            this.instanceReferenceAttributes.addAttribute(new QName(null, attributes.getQName(i), attributes.getQName(i), attributes.getURI(i)), attributes.getType(i), attributes.getValue(i));
            ++i;
        }
    }

    private void handleInstanceRefrenceAttribs(EObject obj) {
        if (this.instanceReferenceAttributes != null) {
            InternalEObject internalEObject = (InternalEObject)obj;
            int i = 0;
            int size = this.instanceReferenceAttributes.getLength();
            while (i < size) {
                String name = this.instanceReferenceAttributes.getQName(i);
                if (name.equals("xmi:id")) {
                    this.xmlResource.setID((EObject)internalEObject, this.instanceReferenceAttributes.getValue(i));
                } else if (name.equals(this.hrefAttribute) && (!this.recordUnknownFeature || this.types.peek() != "unknownFeature" || obj.eClass() != this.anyType)) {
                    this.handleProxy(internalEObject, this.instanceReferenceAttributes.getValue(i));
                } else if (this.isNamespaceAware) {
                    String namespace = this.instanceReferenceAttributes.getURI(i);
                    if (!"http://www.w3.org/2001/XMLSchema-instance".equals(namespace) && !this.notFeatures.contains(name)) {
                        this.setAttribValue(obj, name, this.instanceReferenceAttributes.getValue(i));
                    }
                } else if (!name.startsWith("xmlns") && !this.notFeatures.contains(name)) {
                    this.setAttribValue(obj, name, this.instanceReferenceAttributes.getValue(i));
                }
                ++i;
            }
        }
    }

    @Override
    public EFactory getEFactory() {
        return this.parentContentHandler.getEFactory();
    }

    @Override
    public void decrementLevel() {
    }

    @Override
    public boolean contains(EObjectResolvingEList<?> currentReferenceList, String proxyURI) {
        return false;
    }

    @Override
    public List<EStructuralFeature> createFeatureFromSkippedElement(String localName, EObject grandParent) {
        return null;
    }
}

