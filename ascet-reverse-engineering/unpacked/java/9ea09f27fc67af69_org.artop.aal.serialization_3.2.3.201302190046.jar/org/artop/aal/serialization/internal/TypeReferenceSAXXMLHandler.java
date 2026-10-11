/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.resource.AutosarURIFactory
 *  org.artop.aal.common.util.IReferringClass
 *  org.artop.aal.common.util.IReferringEList
 *  org.eclipse.emf.common.util.URI
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EClassifier
 *  org.eclipse.emf.ecore.EFactory
 *  org.eclipse.emf.ecore.EModelElement
 *  org.eclipse.emf.ecore.ENamedElement
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EReference
 *  org.eclipse.emf.ecore.EStructuralFeature
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.util.EObjectResolvingEList
 *  org.eclipse.emf.ecore.xmi.XMIException
 *  org.eclipse.emf.ecore.xmi.XMLHelper
 *  org.eclipse.emf.ecore.xmi.XMLResource
 *  org.eclipse.emf.ecore.xml.type.AnyType
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.sphinx.emf.resource.XMLIntegrityException
 *  org.eclipse.sphinx.emf.util.EObjectUtil
 */
package org.artop.aal.serialization.internal;

import java.util.Collection;
import java.util.List;
import java.util.Map;
import org.artop.aal.common.resource.AutosarURIFactory;
import org.artop.aal.common.util.IReferringClass;
import org.artop.aal.common.util.IReferringEList;
import org.artop.aal.serialization.internal.AutosarReferenceHelper;
import org.artop.aal.serialization.internal.AutosarSAXXMLHandler;
import org.artop.aal.serialization.internal.IDelegatingXMLDefaultHandler;
import org.artop.aal.serialization.internal.InstanceReferenceSAXXMLHandler;
import org.artop.aal.serialization.internal.ReferenceSAXXMLHandler;
import org.artop.aal.serialization.internal.messages.Messages;
import org.artop.aal.serialization.internal.util.AutosarPersistenceRules;
import org.artop.aal.serialization.internal.util.AutosarTaggedValues;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EClassifier;
import org.eclipse.emf.ecore.EFactory;
import org.eclipse.emf.ecore.EModelElement;
import org.eclipse.emf.ecore.ENamedElement;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.util.EObjectResolvingEList;
import org.eclipse.emf.ecore.xmi.XMIException;
import org.eclipse.emf.ecore.xmi.XMLHelper;
import org.eclipse.emf.ecore.xmi.XMLResource;
import org.eclipse.emf.ecore.xml.type.AnyType;
import org.eclipse.osgi.util.NLS;
import org.eclipse.sphinx.emf.resource.XMLIntegrityException;
import org.eclipse.sphinx.emf.util.EObjectUtil;
import org.xml.sax.Attributes;
import org.xml.sax.SAXException;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class TypeReferenceSAXXMLHandler
extends ReferenceSAXXMLHandler
implements IDelegatingXMLDefaultHandler {
    protected EObject typeValue;
    protected String typeName = null;
    protected EStructuralFeature typeFeature = null;
    protected String typeOfDestination = "";
    protected InstanceReferenceSAXXMLHandler instanceReferenceHandler = null;

    public TypeReferenceSAXXMLHandler(XMLResource xmlResource, XMLHelper helper, Map<Object, Object> defaultLoadOptions, EStructuralFeature feature, Attributes attributes) {
        super(xmlResource, helper, defaultLoadOptions, attributes);
        this.typeFeature = feature;
    }

    public void startElement(String uri, String localName, String name, Attributes attributes) throws SAXException {
        if (name.endsWith("-IREF")) {
            EStructuralFeature feature;
            int index = name.indexOf(58, 0);
            localName = name;
            String prefix = null;
            if (index != -1) {
                prefix = name.substring(0, index);
                localName = name.substring(index + 1);
            }
            if (prefix == null) {
                prefix = "";
            }
            if ((feature = this.getFeature(this.parentObject, prefix, localName, true)) == null && localName != null) {
                for (EStructuralFeature childFeature : this.parentObject.eClass().getEStructuralFeatures()) {
                    if (childFeature instanceof EReference && ((EReference)childFeature).isContainment()) {
                        EClass childFeatureType = (EClass)childFeature.getEType();
                        for (EClass childFeatureSubType : EObjectUtil.findESubTypesOf((EClass)childFeatureType, (boolean)false)) {
                            for (EStructuralFeature grandChildFeature : childFeatureSubType.getEStructuralFeatures()) {
                                if (!(grandChildFeature instanceof EReference) || ((EReference)grandChildFeature).isContainer() || !AutosarTaggedValues.get((EModelElement)grandChildFeature).xmlName.equals(localName)) continue;
                                feature = childFeature;
                                break;
                            }
                            if (feature != null) break;
                        }
                    }
                    if (feature != null) break;
                }
            }
            this.instanceReferenceHandler = new InstanceReferenceSAXXMLHandler(this.xmlResource, this.helper, this.xmlResource.getDefaultLoadOptions(), feature, attributes);
            this.instanceReferenceHandler.init(this.parser, this, this.parentObject, this.extendedMetaData, name);
        } else {
            super.startElement(uri, localName, name, attributes);
        }
    }

    public void startElement(String uri, String localName, String name) {
        boolean hasInstantiatedCurrentFeatureValue = false;
        String xmlNameOfTypeToInstantiate = null;
        int attributeIndex = 0;
        while (attributeIndex < this.attribs.getLength()) {
            String attributeQName = this.attribs.getQName(attributeIndex);
            if ("DEST".equals(attributeQName)) {
                this.typeOfDestination = xmlNameOfTypeToInstantiate = this.attribs.getValue(attributeIndex);
                EFactory factory = this.parentContentHandler.getEFactory();
                EClassifier destClassifier = this.helper.getType(factory, xmlNameOfTypeToInstantiate);
                if (destClassifier instanceof EClass) {
                    this.typeOfDestination = this.helper.getName((ENamedElement)destClassifier);
                    EClassifier featClassifier = this.typeFeature.getEType();
                    boolean areDestAndFeatTypesCompatible = false;
                    if (featClassifier instanceof EClass) {
                        EClass featType = (EClass)featClassifier;
                        EClass destType = (EClass)destClassifier;
                        areDestAndFeatTypesCompatible = featType.isSuperTypeOf(destType);
                        if (!areDestAndFeatTypesCompatible && this.typeFeature instanceof EReference && AutosarPersistenceRules.isCompositePropertyRepresentation0012(this.typeFeature)) {
                            EReference childReference = null;
                            for (EReference ref : ((EReference)this.typeFeature).getEReferenceType().getEAllReferences()) {
                                if (!localName.equals(this.helper.getQName((EStructuralFeature)ref))) continue;
                                childReference = ref;
                                if (!(ref.getEType() instanceof EClass)) break;
                                areDestAndFeatTypesCompatible = ((EClass)ref.getEType()).isSuperTypeOf(destType);
                                break;
                            }
                            if (childReference == null) {
                                for (EClass descendant : ((AutosarSAXXMLHandler)this.parentContentHandler).getDescendants(((EReference)this.typeFeature).getEReferenceType())) {
                                    for (EReference candidateChildReference : descendant.getEReferences()) {
                                        if (!localName.equals(this.helper.getQName((EStructuralFeature)candidateChildReference))) continue;
                                        childReference = candidateChildReference;
                                        EClassifier eType = childReference.getEType();
                                        if (!(eType instanceof EClass)) break;
                                        areDestAndFeatTypesCompatible = ((EClass)eType).isSuperTypeOf(destType);
                                        break;
                                    }
                                    if (childReference != null) break;
                                }
                            }
                        }
                        if (!areDestAndFeatTypesCompatible) {
                            this.warning((XMIException)new XMLIntegrityException(NLS.bind((String)Messages.warn_DestAndFeatureTypesNotCompatible, (Object[])new Object[]{destType.getName(), this.typeFeature.getName(), featType.getName()}), this.getLocation(), this.getLineNumber(), this.getColumnNumber()));
                        }
                    }
                    if (!AutosarReferenceHelper.isAbstract((EClass)destClassifier) && areDestAndFeatTypesCompatible) {
                        this.typeValue = factory.create((EClass)destClassifier);
                        hasInstantiatedCurrentFeatureValue = true;
                        this.typeName = destClassifier.getName();
                        if (((EClass)destClassifier).isAbstract() && !this.isSupportingAbstractDest((EClass)destClassifier)) {
                            String msg = NLS.bind((String)Messages.error_NoSupportForAbstractDest, (Object[])new String[]{this.typeFeature.getEContainingClass().getName(), this.typeFeature.getName(), xmlNameOfTypeToInstantiate});
                            this.error((XMIException)new XMLIntegrityException(msg, this.getLocation(), this.getLineNumber(), this.getColumnNumber()));
                        }
                    }
                }
            } else if ("BASE".equals(attributeQName)) {
                this.baseName = this.attribs.getValue(attributeIndex);
            }
            ++attributeIndex;
        }
        if (!hasInstantiatedCurrentFeatureValue) {
            String msg;
            EFactory factory = this.parentContentHandler.getEFactory();
            EClassifier classifier = this.typeFeature.getEType();
            if (classifier instanceof EClass && !AutosarReferenceHelper.isAbstract((EClass)classifier)) {
                this.typeValue = factory.create((EClass)classifier);
                hasInstantiatedCurrentFeatureValue = true;
                this.typeName = classifier.getName();
                if (((EClass)classifier).isAbstract() && !this.isSupportingAbstractDest((EClass)classifier)) {
                    msg = NLS.bind((String)Messages.error_NoSupportForAbstractDest, (Object[])new String[]{this.typeFeature.getEContainingClass().getName(), this.typeFeature.getName(), xmlNameOfTypeToInstantiate});
                    this.error((XMIException)new XMLIntegrityException(msg, this.getLocation(), this.getLineNumber(), this.getColumnNumber()));
                }
            } else if (!AutosarPersistenceRules.isCompositePropertyRepresentation0012(this.typeFeature)) {
                xmlNameOfTypeToInstantiate = xmlNameOfTypeToInstantiate != null ? xmlNameOfTypeToInstantiate : "No DEST";
                msg = NLS.bind((String)Messages.error_UnableToCreateValueFeature, (Object[])new String[]{xmlNameOfTypeToInstantiate, this.typeFeature.getEContainingClass().getName(), this.typeFeature.getName()});
                this.error((XMIException)new XMLIntegrityException(msg, this.getLocation(), this.getLineNumber(), this.getColumnNumber()));
            }
        }
    }

    public void endElement(String uri, String localName, String name) {
        block12: {
            this.instanceReferenceHandler = null;
            String absoluteQualifiedName = this.getReferenceFromContent(this.content);
            if (absoluteQualifiedName.length() > 0) {
                URI proxyUri = AutosarURIFactory.createAutosarURI((String)absoluteQualifiedName, (String)this.typeName);
                if (this.typeValue != null) {
                    ((InternalEObject)this.typeValue).eSetProxyURI(proxyUri);
                    this.typeName = null;
                    try {
                        if (this.typeFeature.isMany()) {
                            if (this.parentObject.eGet(this.typeFeature) instanceof List) {
                                Collection values = (Collection)this.parentObject.eGet(this.typeFeature);
                                values.add(this.typeValue);
                                if (values instanceof IReferringEList) {
                                    ((IReferringEList)values).setReferringDest(values.size() - 1, this.typeOfDestination);
                                }
                            }
                        } else {
                            this.parentObject.eSet(this.typeFeature, (Object)this.typeValue);
                            if (this.parentObject instanceof IReferringClass) {
                                ((IReferringClass)this.parentObject).eSetReferringDest(this.typeFeature.getFeatureID(), this.typeOfDestination);
                            }
                        }
                    }
                    catch (Exception ex) {
                        if (this.parentObject instanceof AnyType) {
                            this.error((XMIException)new XMLIntegrityException(NLS.bind((String)Messages.error_UnableToRecordUnknownTypeReference, (Object)this.typeFeature.getName()), this.getLocation(), this.getLineNumber(), this.getColumnNumber()));
                            break block12;
                        }
                        this.error(new XMIException(ex, this.getLocation(), this.getLineNumber(), this.getColumnNumber()));
                    }
                } else {
                    this.error((XMIException)new XMLIntegrityException(NLS.bind((String)Messages.error_TypeRefElementNotLoaded, (Object)name, (Object)proxyUri), this.getLocation(), this.getLineNumber(), this.getColumnNumber()));
                }
            } else {
                this.error((XMIException)new XMLIntegrityException(NLS.bind((String)Messages.error_TypeRefElementNotLoaded, (Object)name, (Object)absoluteQualifiedName), this.getLocation(), this.getLineNumber(), this.getColumnNumber()));
            }
        }
        this.restoreParentHandler();
    }

    @Override
    public void decrementLevel() {
    }

    @Override
    public EFactory getEFactory() {
        return this.parentContentHandler.getEFactory();
    }

    @Override
    public boolean contains(EObjectResolvingEList<?> currentReferenceList, String proxyURI) {
        return this.parentContentHandler.contains(currentReferenceList, proxyURI);
    }

    @Override
    public List<EStructuralFeature> createFeatureFromSkippedElement(String localName, EObject grandParent) {
        return this.parentContentHandler.createFeatureFromSkippedElement(localName, grandParent);
    }
}

