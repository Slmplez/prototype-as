/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.resource.AutosarURIFactory
 *  org.artop.eel.serialization.EStructuralFeatureDescriptor
 *  org.artop.eel.serialization.ExtendedSAXXMLHandler2
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.common.util.URI
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EClassifier
 *  org.eclipse.emf.ecore.EFactory
 *  org.eclipse.emf.ecore.EModelElement
 *  org.eclipse.emf.ecore.ENamedElement
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 *  org.eclipse.emf.ecore.EStructuralFeature
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.util.EObjectResolvingEList
 *  org.eclipse.emf.ecore.xmi.XMIException
 *  org.eclipse.emf.ecore.xmi.XMLHelper
 *  org.eclipse.emf.ecore.xmi.XMLResource
 *  org.eclipse.emf.ecore.xmi.impl.XMLHandler$MyStack
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.sphinx.emf.metamodel.IMetaModelDescriptor
 *  org.eclipse.sphinx.emf.metamodel.MetaModelDescriptorRegistry
 *  org.eclipse.sphinx.emf.resource.XMLIntegrityException
 *  org.eclipse.sphinx.emf.util.EObjectUtil
 */
package org.artop.aal.serialization.internal;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import javax.xml.parsers.SAXParser;
import org.artop.aal.common.resource.AutosarURIFactory;
import org.artop.aal.serialization.internal.ElementReferenceSAXXMLHandler;
import org.artop.aal.serialization.internal.IDelegatingXMLDefaultHandler;
import org.artop.aal.serialization.internal.InstanceReferenceSAXXMLHandler;
import org.artop.aal.serialization.internal.TypeReferenceSAXXMLHandler;
import org.artop.aal.serialization.internal.UnknownReferenceSAXXMLHandler;
import org.artop.aal.serialization.internal.messages.Messages;
import org.artop.aal.serialization.internal.util.AutosarPersistenceRules;
import org.artop.aal.serialization.internal.util.AutosarTaggedValues;
import org.artop.eel.serialization.EStructuralFeatureDescriptor;
import org.artop.eel.serialization.ExtendedSAXXMLHandler2;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EClassifier;
import org.eclipse.emf.ecore.EFactory;
import org.eclipse.emf.ecore.EModelElement;
import org.eclipse.emf.ecore.ENamedElement;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.util.EObjectResolvingEList;
import org.eclipse.emf.ecore.xmi.XMIException;
import org.eclipse.emf.ecore.xmi.XMLHelper;
import org.eclipse.emf.ecore.xmi.XMLResource;
import org.eclipse.emf.ecore.xmi.impl.XMLHandler;
import org.eclipse.osgi.util.NLS;
import org.eclipse.sphinx.emf.metamodel.IMetaModelDescriptor;
import org.eclipse.sphinx.emf.metamodel.MetaModelDescriptorRegistry;
import org.eclipse.sphinx.emf.resource.XMLIntegrityException;
import org.eclipse.sphinx.emf.util.EObjectUtil;
import org.xml.sax.Attributes;
import org.xml.sax.SAXException;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class AutosarSAXXMLHandler
extends ExtendedSAXXMLHandler2
implements IDelegatingXMLDefaultHandler {
    private static final String QNAME_SEPARATOR = ":";
    protected Map<EClass, List<EClass>> descendantsForClass = new HashMap<EClass, List<EClass>>();
    protected Map<EModelElement, AutosarTaggedValues> taggedValuesCache = new WeakHashMap<EModelElement, AutosarTaggedValues>();
    protected List<EReference> deferredReferences = new ArrayList<EReference>();
    protected List<Integer> deferredReferenceLevels = new ArrayList<Integer>();
    protected EAttribute deferredAttribute = null;
    protected String deferredAttributeName;
    protected int deferredAttributeLevel;
    protected int level = 0;
    protected InstanceReferenceSAXXMLHandler instanceReferenceHandler = null;
    protected TypeReferenceSAXXMLHandler typeReferenceHandler = null;
    protected ElementReferenceSAXXMLHandler elementReferenceHandler = null;
    protected UnknownReferenceSAXXMLHandler unknownReferenceHandler = null;
    protected SAXParser parser;
    protected EObjectResolvingEList<?> latestReferenceList = null;
    protected Set<String> containedURIs = new HashSet<String>();
    private EFactory factory;
    private Map<EObject, EObject> fLastUnserializedDescendants = new HashMap<EObject, EObject>();
    private boolean APPLY_RESOURCE_HANDLER_FLAG = false;

    public AutosarSAXXMLHandler(XMLResource xmiResource, XMLHelper helper, Map<?, ?> options) {
        super(xmiResource, helper, options);
    }

    @Override
    public boolean contains(EObjectResolvingEList<?> currentReferenceList, String proxyURI) {
        boolean result = false;
        if (currentReferenceList == this.latestReferenceList) {
            result = !this.containedURIs.add(proxyURI);
        } else {
            this.latestReferenceList = currentReferenceList;
            this.containedURIs.clear();
            this.containedURIs.add(proxyURI);
        }
        return result;
    }

    public void defineFactoryFromPackage(EPackage ePackage) {
        this.factory = ePackage.getEFactoryInstance();
    }

    @Override
    public EFactory getEFactory() {
        return this.factory;
    }

    @Override
    public String getLocation() {
        return super.getLocation();
    }

    @Override
    public int getLineNumber() {
        return super.getLineNumber();
    }

    @Override
    public int getColumnNumber() {
        return super.getColumnNumber();
    }

    public void startElement(String uri, String localName, String qName, Attributes attributes) throws SAXException {
        ++this.level;
        if (qName.equals("ADMIN-DATA") && !this.APPLY_RESOURCE_HANDLER_FLAG) {
            this.xmlResource.getDefaultLoadOptions().put("APPLY_RESOURCE_HANDLER", Boolean.TRUE);
            this.APPLY_RESOURCE_HANDLER_FLAG = true;
        }
        if (qName.endsWith("-IREFS")) {
            this.handleInstanceReferences(uri, qName, attributes);
        } else if (qName.endsWith("-IREF")) {
            this.handleInstanceReference(uri, qName, attributes);
        } else if (qName.endsWith("-TREF")) {
            this.handleTypeReference(uri, qName, attributes);
        } else if (qName.endsWith("-REF") && !"EOC-EXECUTABLE-ENTITY-REF".equals(qName)) {
            this.handleElementReference(uri, qName, attributes);
        } else {
            super.startElement(uri, localName, qName, attributes);
        }
        if (this.text != null && this.text.length() > 0) {
            if (this.mixedTargets.peek() != null) {
                this.handleMixedText();
            } else {
                this.text = null;
            }
        }
    }

    public void endElement(String uri, String localName, String name) {
        EObject eObject;
        EReference deferredReference;
        --this.level;
        if (this.deferredAttribute != null && name.equals(this.deferredAttributeName)) {
            if (this.deferredAttributeLevel > 0) {
                --this.deferredAttributeLevel;
            } else {
                this.deferredAttribute = null;
                this.deferredAttributeName = null;
                this.deferredAttributeLevel = 0;
            }
            return;
        }
        this.elements.pop();
        Object type = null;
        EReference eReference = deferredReference = this.deferredReferences.size() - 1 < 0 ? null : this.deferredReferences.get(this.deferredReferences.size() - 1);
        if (this.deferredReferences.size() > 0 && localName.equals(this.extendedMetaData.getName((EStructuralFeature)deferredReference))) {
            if (this.text != null && this.text.length() > 0 && this.mixedTargets.peek() != null) {
                this.handleMixedText();
            }
            this.deferredReferences.remove(this.deferredReferences.size() - 1);
            this.deferredReferenceLevels.remove(this.deferredReferenceLevels.size() - 1);
            this.mixedTargets.pop();
            type = this.types.peek();
            if (type instanceof EStructuralFeature && this.isTextFeatureValue(type)) {
                EStructuralFeature feature;
                EObject toPushBack = eObject = (EObject)this.objects.pop();
                if (eObject == null) {
                    eObject = (EObject)this.objects.peek();
                }
                if (!(feature = (EStructuralFeature)type).getContainerClass().isInstance(eObject)) {
                    eObject = this.fLastUnserializedDescendants.get(eObject);
                }
                this.setFeatureValue(eObject, (EStructuralFeature)type, this.text == null ? null : this.text.toString());
                this.objects.push((Object)toPushBack);
                this.text = null;
            }
            type = "error";
        } else {
            type = this.types.pop();
        }
        if (type == "object") {
            if (this.text == null) {
                eObject = (EObject)this.objects.pop();
                if (this.fLastUnserializedDescendants.containsValue(eObject)) {
                    this.objects.pop();
                }
                this.mixedTargets.pop();
            } else {
                EObject object = (EObject)this.objects.pop();
                if (this.mixedTargets.peek() != null && (object.eContainer() != null || this.suppressDocumentRoot || this.recordUnknownFeature && (this.eObjectToExtensionMap.containsValue(object) || ((InternalEObject)object).eDirectResource() != null))) {
                    this.handleMixedText();
                    this.mixedTargets.pop();
                } else {
                    if (this.text.length() != 0) {
                        this.handleProxy((InternalEObject)object, this.text.toString().trim());
                    }
                    this.mixedTargets.pop();
                    this.text = null;
                }
            }
        } else if (this.isIDREF) {
            this.objects.pop();
            this.mixedTargets.pop();
            if (this.text != null) {
                this.setValueFromId((EObject)this.objects.peek(), (EReference)type, this.text.toString());
                this.text = null;
            }
            this.isIDREF = false;
        } else if (this.isTextFeatureValue(type)) {
            EStructuralFeature feature;
            eObject = (EObject)this.objects.pop();
            this.mixedTargets.pop();
            if (eObject == null) {
                eObject = (EObject)this.objects.peek();
            }
            if ((feature = (EStructuralFeature)type) != null) {
                if (!feature.getContainerClass().isInstance(eObject)) {
                    eObject = this.fLastUnserializedDescendants.get(eObject);
                }
                if (!eObject.eIsSet(feature) || feature.isMany()) {
                    this.setFeatureValue(eObject, feature, this.text == null ? null : this.text.toString());
                }
            }
            this.text = null;
        }
        if (this.isSimpleFeature) {
            this.types.pop();
            this.objects.pop();
            this.mixedTargets.pop();
            this.isSimpleFeature = false;
        }
        this.helper.popContext(this.prefixesToFactories);
    }

    @Override
    public void decrementLevel() {
        --this.level;
    }

    public void setParser(SAXParser parser) {
        this.parser = parser;
    }

    @Override
    public List<EStructuralFeature> createFeatureFromSkippedElement(String localName, EObject grandParent) {
        if (localName == null) {
            return null;
        }
        EReference parentReference = null;
        EReference childReference = null;
        EList allGrandParentReferences = grandParent.eClass().getEAllReferences();
        int referenceIndex = allGrandParentReferences.size() - 1;
        while (referenceIndex >= 0) {
            EReference candidateParentReference = (EReference)allGrandParentReferences.get(referenceIndex);
            if (AutosarPersistenceRules.isCompositePropertyRepresentation0016(this.taggedValuesCache, (EStructuralFeature)candidateParentReference)) {
                for (EReference candidateChildReference : candidateParentReference.getEReferenceType().getEAllReferences()) {
                    if (!localName.equals(this.helper.getQName((EStructuralFeature)candidateChildReference))) continue;
                    childReference = candidateChildReference;
                    break;
                }
                if (childReference == null) {
                    for (EClass descendant : this.getDescendants(candidateParentReference.getEReferenceType())) {
                        for (EReference candidateChildReference : descendant.getEReferences()) {
                            if (!localName.equals(this.helper.getQName((EStructuralFeature)candidateChildReference))) continue;
                            childReference = candidateChildReference;
                            break;
                        }
                        if (childReference == null) {
                            continue;
                        }
                        break;
                    }
                }
            } else if (AutosarPersistenceRules.isCompositePropertyRepresentation0012(this.taggedValuesCache, (EStructuralFeature)candidateParentReference)) {
                for (EReference candidateChildReference : candidateParentReference.getEReferenceType().getEAllReferences()) {
                    if (!localName.equals(this.helper.getQName((EStructuralFeature)candidateChildReference))) continue;
                    childReference = candidateChildReference;
                    break;
                }
                if (childReference == null) {
                    for (EClass descendant : this.getDescendants(candidateParentReference.getEReferenceType())) {
                        for (EReference candidateChildReference : descendant.getEReferences()) {
                            if (!localName.equals(this.helper.getQName((EStructuralFeature)candidateChildReference))) continue;
                            childReference = candidateChildReference;
                            break;
                        }
                        if (childReference == null) {
                            continue;
                        }
                        break;
                    }
                }
            }
            if (childReference != null) {
                parentReference = candidateParentReference;
                break;
            }
            --referenceIndex;
        }
        if (parentReference == null || childReference == null) {
            return null;
        }
        Object parent = grandParent.eGet(parentReference);
        if (childReference.eContainer() instanceof EClass && parent == null || parent instanceof EList) {
            parent = this.getEFactory().create((EClass)childReference.eContainer());
        }
        if (parentReference.isMany()) {
            List objects = (List)grandParent.eGet((EStructuralFeature)parentReference);
            objects.add(parent);
        } else {
            grandParent.eSet((EStructuralFeature)parentReference, parent);
        }
        ArrayList<EStructuralFeature> result = new ArrayList<EStructuralFeature>();
        result.add((EStructuralFeature)parentReference);
        result.add((EStructuralFeature)childReference);
        return result;
    }

    protected EAttribute findAttributeFromRoleWrapperName(String name, EObject eObject) {
        if (eObject == null || name == null || name.length() == 0) {
            return null;
        }
        for (EAttribute attribute : eObject.eClass().getEAllAttributes()) {
            if (!attribute.isMany()) continue;
            AutosarTaggedValues taggedValues = AutosarTaggedValues.get(this.taggedValuesCache, (EModelElement)attribute);
            if (!taggedValues.isRoleWrapperElement || !name.equals(taggedValues.xmlNamePlural)) continue;
            return attribute;
        }
        return null;
    }

    protected List<EClass> getDescendants(EClass eClass) {
        List<EClass> descendants = this.descendantsForClass.get(eClass);
        if (descendants == null) {
            descendants = new ArrayList<EClass>();
            EPackage theAutosarPackage = this.getEFactory().getEPackage();
            for (EClassifier eClassifier : theAutosarPackage.getEClassifiers()) {
                if (!(eClassifier instanceof EClass) || eClassifier == eClass || !eClass.isSuperTypeOf((EClass)eClassifier)) continue;
                descendants.add((EClass)eClassifier);
            }
            this.descendantsForClass.put(eClass, descendants);
        }
        return descendants;
    }

    private String getTypeQName(EReference eReference, String prefix, String name) {
        AutosarTaggedValues eRefTaggedValues = AutosarTaggedValues.get(this.taggedValuesCache, (EModelElement)eReference);
        if (eRefTaggedValues.isRoleElement && eRefTaggedValues.xmlName.equals(name)) {
            return this.helper.getName((ENamedElement)eReference.getEType());
        }
        return prefix.length() > 0 ? String.valueOf(prefix) + QNAME_SEPARATOR + name : name;
    }

    protected void handleProxy(InternalEObject proxy, String uriLiteral) {
        URI proxyURI = AutosarURIFactory.createAutosarURI((String)uriLiteral, (String)proxy.eClass().getName());
        proxy.eSetProxyURI(proxyURI);
    }

    private void handleInstanceReferences(String uri, String qName, Attributes attributes) throws SAXException {
        EObject peekObject;
        EStructuralFeature feature;
        int index = qName.indexOf(58, 0);
        String localName = qName;
        String prefix = null;
        if (index != -1) {
            prefix = qName.substring(0, index);
            localName = qName.substring(index + 1);
        }
        if (prefix == null) {
            prefix = "";
        }
        if ((feature = this.getFeature(peekObject = (EObject)this.objects.peek(), prefix, localName, true)) == null) {
            this.unknownReferenceHandler = new UnknownReferenceSAXXMLHandler(this.xmlResource, this.helper, this.xmlResource.getDefaultLoadOptions(), attributes);
            this.unknownReferenceHandler.init(this.parser.getXMLReader(), this, peekObject, this.extendedMetaData, qName);
            this.unknownReferenceHandler.startElement(uri, localName, qName, attributes);
        } else {
            this.instanceReferenceHandler = new InstanceReferenceSAXXMLHandler(this.xmlResource, this.helper, this.xmlResource.getDefaultLoadOptions(), feature, attributes);
            this.instanceReferenceHandler.init(this.parser.getXMLReader(), this, peekObject, this.extendedMetaData, qName);
        }
    }

    private void handleInstanceReference(String uri, String qName, Attributes attributes) throws SAXException {
        int index = qName.indexOf(58, 0);
        String localName = qName;
        String prefix = null;
        if (index != -1) {
            prefix = qName.substring(0, index);
            localName = qName.substring(index + 1);
        }
        if (prefix == null) {
            prefix = "";
        }
        EObject peekObject = (EObject)this.objects.peek();
        EStructuralFeature feature = null;
        if (peekObject != null) {
            feature = this.getFeature(peekObject, prefix, localName, true);
        }
        if (feature == null && localName != null && peekObject != null) {
            for (EStructuralFeature childFeature : peekObject.eClass().getEStructuralFeatures()) {
                if (childFeature instanceof EReference && ((EReference)childFeature).isContainment()) {
                    EClass childFeatureType = (EClass)childFeature.getEType();
                    for (EClass childFeatureSubType : EObjectUtil.findESubTypesOf((EClass)childFeatureType, (boolean)false)) {
                        for (EStructuralFeature grandChildFeature : childFeatureSubType.getEStructuralFeatures()) {
                            if (!(grandChildFeature instanceof EReference) || ((EReference)grandChildFeature).isContainer() || !AutosarTaggedValues.get(this.taggedValuesCache, (EModelElement)grandChildFeature).xmlName.equals(localName)) continue;
                            feature = childFeature;
                            break;
                        }
                        if (feature != null) break;
                    }
                }
                if (feature != null) break;
            }
        }
        if (feature == null) {
            this.unknownReferenceHandler = new UnknownReferenceSAXXMLHandler(this.xmlResource, this.helper, this.xmlResource.getDefaultLoadOptions(), attributes);
            this.unknownReferenceHandler.init(this.parser.getXMLReader(), this, peekObject, this.extendedMetaData, qName);
            this.unknownReferenceHandler.startElement(uri, localName, qName, attributes);
        } else {
            this.instanceReferenceHandler = new InstanceReferenceSAXXMLHandler(this.xmlResource, this.helper, this.xmlResource.getDefaultLoadOptions(), feature, attributes);
            this.instanceReferenceHandler.init(this.parser.getXMLReader(), this, peekObject, this.extendedMetaData, qName);
        }
    }

    private void handleTypeReference(String uri, String qName, Attributes attributes) throws SAXException {
        EObject peekObject;
        EStructuralFeature feature;
        int index = qName.indexOf(58, 0);
        String localName = qName;
        String prefix = null;
        if (index != -1) {
            prefix = qName.substring(0, index);
            localName = qName.substring(index + 1);
        }
        if (prefix == null) {
            prefix = "";
        }
        if ((feature = this.getFeature(peekObject = (EObject)this.objects.peek(), prefix, localName, true)) == null) {
            this.unknownReferenceHandler = new UnknownReferenceSAXXMLHandler(this.xmlResource, this.helper, this.xmlResource.getDefaultLoadOptions(), attributes);
            this.unknownReferenceHandler.init(this.parser.getXMLReader(), this, peekObject, this.extendedMetaData, qName);
            this.unknownReferenceHandler.startElement(uri, localName, qName, attributes);
        } else {
            this.typeReferenceHandler = new TypeReferenceSAXXMLHandler(this.xmlResource, this.helper, this.xmlResource.getDefaultLoadOptions(), feature, attributes);
            this.typeReferenceHandler.init(this.parser.getXMLReader(), this, peekObject, this.extendedMetaData, qName);
            this.typeReferenceHandler.startElement(uri, localName, qName, attributes);
        }
    }

    private void handleElementReference(String uri, String qName, Attributes attributes) throws SAXException {
        List<EStructuralFeature> features;
        int index = qName.indexOf(58, 0);
        String localName = qName;
        String prefix = null;
        if (index != -1) {
            prefix = qName.substring(0, index);
            localName = qName.substring(index + 1);
        }
        if (prefix == null) {
            prefix = "";
        }
        EObject peekObject = (EObject)this.objects.peek();
        EReference lastDeferredReference = this.deferredReferences.get(this.deferredReferences.size() - 1);
        String deferredReferenceXMLName = AutosarTaggedValues.get(this.taggedValuesCache, (EModelElement)lastDeferredReference).xmlName;
        Object feature = null;
        feature = deferredReferenceXMLName != null && deferredReferenceXMLName.equals(localName) ? lastDeferredReference : this.getFeature(peekObject, prefix, localName, true);
        if ((feature == null || AutosarPersistenceRules.isCompositePropertyRepresentation0016(this.taggedValuesCache, (EStructuralFeature)feature)) && (features = this.createFeatureFromSkippedElement(localName, peekObject)) != null && features.size() == 2) {
            feature = features.get(1);
            EStructuralFeature parentFeature = features.get(0);
            if (parentFeature.isMany()) {
                List values = (List)peekObject.eGet(parentFeature);
                peekObject = (EObject)values.get(values.size() - 1);
            } else {
                peekObject = (EObject)peekObject.eGet(parentFeature);
            }
        }
        if (feature == null) {
            this.unknownReferenceHandler = new UnknownReferenceSAXXMLHandler(this.xmlResource, this.helper, this.xmlResource.getDefaultLoadOptions(), attributes);
            this.unknownReferenceHandler.init(this.parser.getXMLReader(), this, peekObject, this.extendedMetaData, qName);
            this.unknownReferenceHandler.startElement(uri, localName, qName, attributes);
        } else {
            this.elementReferenceHandler = new ElementReferenceSAXXMLHandler(this.xmlResource, this.helper, this.xmlResource.getDefaultLoadOptions(), (EStructuralFeature)feature, attributes);
            this.elementReferenceHandler.init(this.parser.getXMLReader(), this, peekObject, this.extendedMetaData, qName);
            this.elementReferenceHandler.startElement(uri, localName, qName, attributes);
        }
    }

    private XMLHandler.MyStack<EStructuralFeature> resolvePath(List<EReference> initialReferences, String localName) {
        if (initialReferences.isEmpty()) {
            return null;
        }
        ArrayList<EReference> references = new ArrayList<EReference>();
        ArrayList<EReference> cp0016References = new ArrayList<EReference>();
        for (EReference initialRef : initialReferences) {
            if (!AutosarPersistenceRules.isCompositePropertyRepresentation0016(this.taggedValuesCache, (EStructuralFeature)initialRef)) continue;
            cp0016References.add(initialRef);
            List<EClass> classes = this.getDescendants(initialRef.getEReferenceType());
            int i = -1;
            while (i < classes.size()) {
                EClass c = i == -1 ? initialRef.getEReferenceType() : classes.get(i);
                EList features = c.getEAllStructuralFeatures();
                for (EStructuralFeature feature : features) {
                    if (!localName.equals(this.helper.getQName(feature))) continue;
                    XMLHandler.MyStack refPath = new XMLHandler.MyStack();
                    refPath.push((Object)feature);
                    refPath.push((Object)initialRef);
                    return refPath;
                }
                references.addAll((Collection<EReference>)c.getEAllReferences());
                ++i;
            }
        }
        XMLHandler.MyStack<EStructuralFeature> refPath = this.resolvePath(references, localName);
        if (refPath != null) {
            EReference opposite = ((EReference)refPath.peek()).getEOpposite();
            EClass backRefTgtEClass = null;
            backRefTgtEClass = opposite == null ? (EClass)((EReference)refPath.peek()).eContainer() : opposite.getEReferenceType();
            for (EReference cp0016Reference : cp0016References) {
                EClass fwdRefTgtEClass = cp0016Reference.getEReferenceType();
                if (fwdRefTgtEClass != backRefTgtEClass && !this.getDescendants(fwdRefTgtEClass).contains(backRefTgtEClass)) continue;
                refPath.add((Object)cp0016Reference);
                return refPath;
            }
        }
        return null;
    }

    private EObject applyModelObjectPath(EObject tgtEObject, XMLHandler.MyStack<EStructuralFeature> refPath) {
        if (refPath.size() < 2) {
            return tgtEObject;
        }
        EStructuralFeature feature = (EStructuralFeature)refPath.pop();
        EObject value = null;
        if (tgtEObject.eIsSet(feature)) {
            value = (EObject)tgtEObject.eGet(feature);
        } else {
            value = this.getEFactory().create((EClass)((EStructuralFeature)refPath.peek()).eContainer());
            if (feature.isMany()) {
                ((List)tgtEObject.eGet(feature)).add(value);
            } else {
                tgtEObject.eSet(feature, (Object)value);
            }
        }
        return this.applyModelObjectPath(value, refPath);
    }

    protected EStructuralFeatureDescriptor extendedGetFeature(EObject peekObject, String prefix, String name) {
        int deferredReferenceIndex = this.deferredReferences.size() - 1;
        EReference deferredReference = deferredReferenceIndex < 0 ? null : this.deferredReferences.get(this.deferredReferences.size() - 1);
        Object feature = null;
        feature = deferredReference == null || this.deferredReferenceLevels.get(deferredReferenceIndex) != this.level - 1 ? this.getFeature(peekObject, prefix, name, true) : deferredReference;
        if (feature == null) {
            EAttribute roleWrapperAttribute;
            Set<EObject> keySet;
            XMLHandler.MyStack<EStructuralFeature> refPath = this.resolvePath((List<EReference>)peekObject.eClass().getEAllReferences(), name);
            if (refPath == null) {
                keySet = this.fLastUnserializedDescendants.keySet();
                for (EObject eObject : keySet) {
                    refPath = this.resolvePath((List<EReference>)eObject.eClass().getEAllReferences(), name);
                    if (refPath == null) continue;
                    peekObject = eObject;
                    Object stackTop = (EObject)this.objects.peek();
                    while (stackTop != null && stackTop != eObject) {
                        this.objects.pop();
                        stackTop = !this.objects.isEmpty() ? (EObject)this.objects.peek() : null;
                    }
                    break block0;
                }
            }
            if (refPath != null) {
                feature = (EStructuralFeature)refPath.get(0);
                EObject lastUnserializedDescendant = this.applyModelObjectPath(peekObject, refPath);
                this.fLastUnserializedDescendants.put(peekObject, lastUnserializedDescendant);
                peekObject = lastUnserializedDescendant;
                int kind = this.helper.getFeatureKind(feature);
                if (kind != 1 && kind != 2) {
                    this.objects.push((Object)peekObject);
                }
            } else {
                keySet = this.fLastUnserializedDescendants.keySet();
                if (keySet != null) {
                    for (EObject eObj : keySet) {
                        for (EReference childRef : eObj.eClass().getEAllReferences()) {
                            if (!name.equals(this.helper.getQName((EStructuralFeature)childRef))) continue;
                            feature = childRef;
                            peekObject = eObj;
                            break;
                        }
                        if (feature != null) break;
                    }
                }
            }
            if (feature == null) {
                EList features = peekObject.eClass().getEStructuralFeatures();
                for (EStructuralFeature feat : features) {
                    if (!AutosarPersistenceRules.isCompositePropertyRepresentation0015(this.taggedValuesCache, feat) || !(feat.getEType() instanceof EClass)) continue;
                    EClass featureType = (EClass)feat.getEType();
                    if (featureType.isAbstract()) {
                        String xmlName;
                        EClassifier foundType;
                        String namespace;
                        IMetaModelDescriptor descriptor = MetaModelDescriptorRegistry.INSTANCE.getDescriptor(peekObject);
                        if (descriptor == null || (namespace = descriptor.getNamespace()) == null || !((foundType = this.helper.getExtendedMetaData().getType(namespace, name)) instanceof EClass) || !featureType.isSuperTypeOf((EClass)foundType) || (xmlName = this.helper.getExtendedMetaData().getName(foundType)) == null || !xmlName.equals(name)) continue;
                        feature = feat;
                        break;
                    }
                    String xmlName = this.helper.getExtendedMetaData().getName((EClassifier)featureType);
                    if (xmlName == null || !xmlName.equals(name)) continue;
                    feature = feat;
                    break;
                }
            }
            if (feature == null && (roleWrapperAttribute = this.findAttributeFromRoleWrapperName(name, peekObject)) != null) {
                if (this.deferredAttribute == null) {
                    this.deferredAttribute = roleWrapperAttribute;
                    this.deferredAttributeName = AutosarTaggedValues.get(this.taggedValuesCache, (EModelElement)this.deferredAttribute).xmlNamePlural;
                    this.deferredAttributeLevel = 0;
                } else {
                    ++this.deferredAttributeLevel;
                    this.error((XMIException)new XMLIntegrityException(NLS.bind((String)Messages.error_MultipleNestedOccurrencesOfRoleWrapperElement, (Object)name), this.getLocation(), this.getLineNumber(), this.getColumnNumber()));
                }
                return SKIPPED_FEATURE;
            }
        }
        return new EStructuralFeatureDescriptor(peekObject, feature);
    }

    protected void handleContainmentOrProxyResolvingOrUnspecifiedFeature(EObject peekObject, EStructuralFeature feature, String prefix, String name) {
        boolean isCompositePropertyRepresentation;
        EReference eReference = (EReference)feature;
        boolean isRoleWrapperElement = AutosarTaggedValues.get(this.taggedValuesCache, (EModelElement)eReference).isRoleWrapperElement;
        int deferredReferenceIndex = this.deferredReferences.size() - 1;
        EReference deferredReference = deferredReferenceIndex < 0 ? null : this.deferredReferences.get(this.deferredReferences.size() - 1);
        boolean bl = isCompositePropertyRepresentation = AutosarPersistenceRules.isCompositePropertyRepresentation0012(this.taggedValuesCache, (EStructuralFeature)eReference) && name.equals(this.helper.getName((ENamedElement)feature));
        if (!isCompositePropertyRepresentation && (!isRoleWrapperElement || deferredReference != null && this.deferredReferenceLevels.get(deferredReferenceIndex) == this.level - 1)) {
            if (deferredReference != null && this.deferredReferenceLevels.get(deferredReferenceIndex) == this.level - 1) {
                String typeQName = this.getTypeQName(eReference, prefix, name);
                if (deferredReference.getContainerClass().isInstance(peekObject)) {
                    this.createObjectFromTypeName(peekObject, typeQName, feature);
                } else {
                    this.createObjectFromTypeName(this.fLastUnserializedDescendants.get(peekObject), typeQName, feature);
                }
            } else {
                try {
                    if (AutosarPersistenceRules.isCompositePropertyRepresentation0015(this.taggedValuesCache, feature)) {
                        this.createObjectFromTypeName(peekObject, name, feature);
                    } else {
                        this.createObject(peekObject, feature);
                    }
                }
                catch (IllegalArgumentException illegalArgumentException) {
                    this.objects.push(null);
                    this.mixedTargets.push(null);
                    this.types.push((Object)"object");
                }
            }
            EObject childObject = (EObject)this.objects.peek();
            this.doHandleContainmentOrProxyResolvingOrUnspecifiedFeature(childObject, eReference);
        } else {
            this.deferredReferences.add(eReference);
            this.deferredReferenceLevels.add(this.level);
            this.mixedTargets.push(null);
        }
    }

    protected EObject extendedPeekEObject() {
        EObject peekObject = (EObject)this.objects.peek();
        if (peekObject == null && this.deferredAttribute != null) {
            this.objects.pop();
            this.types.pop();
            this.mixedTargets.pop();
            peekObject = (EObject)this.objects.peek();
        }
        return peekObject;
    }
}

