/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  org.artop.aal.common.datatypes.AbstractNumericalDatatype
 *  org.artop.aal.common.datatypes.ToPrimitiveEList
 *  org.artop.aal.common.metamodel.AutosarMetaModelVersionData
 *  org.artop.aal.common.metamodel.AutosarReleaseDescriptor
 *  org.artop.aal.common.resource.AutosarURIFactory
 *  org.artop.eel.serialization.AbstractAutosarXMLSaveImpl
 *  org.eclipse.core.runtime.Plugin
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.common.util.EMap
 *  org.eclipse.emf.common.util.URI
 *  org.eclipse.emf.ecore.EAnnotation
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EClassifier
 *  org.eclipse.emf.ecore.EModelElement
 *  org.eclipse.emf.ecore.ENamedElement
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EReference
 *  org.eclipse.emf.ecore.EStructuralFeature
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.resource.Resource
 *  org.eclipse.emf.ecore.util.InternalEList
 *  org.eclipse.emf.ecore.xmi.XMLHelper
 *  org.eclipse.emf.ecore.xmi.XMLResource
 *  org.eclipse.emf.ecore.xmi.impl.XMLString
 *  org.eclipse.sphinx.emf.metamodel.IMetaModelDescriptor
 *  org.eclipse.sphinx.emf.metamodel.MetaModelDescriptorRegistry
 *  org.eclipse.sphinx.emf.resource.IModelConverter
 *  org.eclipse.sphinx.platform.util.PlatformLogUtil
 */
package org.artop.aal.serialization.internal;

import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Stack;
import java.util.WeakHashMap;
import org.artop.aal.common.datatypes.AbstractNumericalDatatype;
import org.artop.aal.common.datatypes.ToPrimitiveEList;
import org.artop.aal.common.metamodel.AutosarMetaModelVersionData;
import org.artop.aal.common.metamodel.AutosarReleaseDescriptor;
import org.artop.aal.common.resource.AutosarURIFactory;
import org.artop.aal.serialization.internal.Activator;
import org.artop.aal.serialization.internal.AutosarReferenceHelper;
import org.artop.aal.serialization.internal.ElementReferenceHelper;
import org.artop.aal.serialization.internal.InstanceReferenceHelper;
import org.artop.aal.serialization.internal.RelativeReference;
import org.artop.aal.serialization.internal.util.AutosarPersistenceRules;
import org.artop.aal.serialization.internal.util.AutosarTaggedValues;
import org.artop.eel.serialization.AbstractAutosarXMLSaveImpl;
import org.eclipse.core.runtime.Plugin;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.common.util.EMap;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.EAnnotation;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EClassifier;
import org.eclipse.emf.ecore.EModelElement;
import org.eclipse.emf.ecore.ENamedElement;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.util.InternalEList;
import org.eclipse.emf.ecore.xmi.XMLHelper;
import org.eclipse.emf.ecore.xmi.XMLResource;
import org.eclipse.emf.ecore.xmi.impl.XMLString;
import org.eclipse.sphinx.emf.metamodel.IMetaModelDescriptor;
import org.eclipse.sphinx.emf.metamodel.MetaModelDescriptorRegistry;
import org.eclipse.sphinx.emf.resource.IModelConverter;
import org.eclipse.sphinx.platform.util.PlatformLogUtil;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.Text;
import org.xml.sax.InputSource;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class AutosarXMLSaveImpl
extends AbstractAutosarXMLSaveImpl {
    protected Map<EModelElement, AutosarTaggedValues> taggedValuesCache = new WeakHashMap<EModelElement, AutosarTaggedValues>();
    protected Map<EStructuralFeature, Boolean> roleWrapperStructuralFeatures = new HashMap<EStructuralFeature, Boolean>();
    protected Boolean shouldSaveDestAttribute = null;
    protected Stack<EObject> skippedElements = new Stack();
    private static final String SCHEMA_BASE = "autosar";
    private static final String SCHEMA_EXTENSION = "xsd";

    public AutosarXMLSaveImpl(XMLHelper helper) {
        super(helper);
    }

    public AutosarXMLSaveImpl(Map<?, ?> options, XMLHelper helper, String encoding) {
        super(options, helper, encoding);
    }

    protected void saveElement(EObject object, EStructuralFeature feature) {
        String stereotype;
        EAnnotation annotation = feature.getEType().getEAnnotation("Stereotype");
        String string = stereotype = annotation != null && annotation.getDetails() != null ? (String)annotation.getDetails().get((Object)"Stereotype") : null;
        if ("instanceRef".equalsIgnoreCase(stereotype)) {
            this.saveInstanceReferenceElement(object, feature);
            return;
        }
        super.saveElement(object, feature);
    }

    protected void saveContainedSingle(EObject object, EStructuralFeature feature) {
        if (this.isRoleWrapperElement(feature)) {
            String featureName = this.helper.getName((ENamedElement)feature);
            this.doc.startElement(featureName);
            super.saveContainedSingle(object, feature);
            this.doc.endElement();
        } else {
            super.saveContainedSingle(object, feature);
        }
    }

    protected boolean isRoleWrapperElement(EStructuralFeature feature) {
        if (AutosarTaggedValues.get((EModelElement)feature).isRoleWrapperElement) {
            this.roleWrapperStructuralFeatures.put(feature, Boolean.TRUE);
            return true;
        }
        return false;
    }

    private EAnnotation getStereotypeAnnotation(EStructuralFeature feature) {
        return feature.getEAnnotation("Stereotype");
    }

    protected void saveContainedMany(EObject object, EStructuralFeature feature) {
        List values = ((InternalEList)this.helper.getValue(object, feature)).basicList();
        int size = values.size();
        if (this.isRoleWrapperElement(feature)) {
            String featureName = this.helper.getName((ENamedElement)feature);
            this.doc.startElement(featureName);
            int i = 0;
            while (i < size) {
                InternalEObject value = (InternalEObject)values.get(i);
                if (value != null) {
                    this.saveElement(value, feature);
                }
                ++i;
            }
            this.doc.endElement();
        } else {
            int i = 0;
            while (i < size) {
                InternalEObject value = (InternalEObject)values.get(i);
                if (value != null) {
                    this.saveElement(value, feature);
                }
                ++i;
            }
        }
    }

    protected void saveDataTypeMany(EObject object, EStructuralFeature feature) {
        List values;
        AutosarTaggedValues taggedValues = AutosarTaggedValues.get((EModelElement)feature);
        boolean isRoleWrapperElement = taggedValues.isRoleWrapperElement;
        if (isRoleWrapperElement) {
            this.roleWrapperStructuralFeatures.put(feature, Boolean.TRUE);
            String roleWrapperName = feature.getUpperBound() < 0 || feature.getUpperBound() > 1 ? taggedValues.xmlNamePlural : taggedValues.xmlName;
            this.doc.startElement(roleWrapperName);
        }
        if ((values = (List)this.helper.getValue(object, feature)) instanceof ToPrimitiveEList) {
            this.saveManyPrimitives(object, feature, (ToPrimitiveEList)values);
        } else {
            super.saveDataTypeMany(object, feature);
        }
        if (isRoleWrapperElement) {
            this.doc.endElement();
        }
    }

    private void saveManyPrimitives(EObject object, EStructuralFeature feature, ToPrimitiveEList<?, ? extends AbstractNumericalDatatype> values) {
        block4: {
            int size = values.size();
            if (size <= 0) break block4;
            if (!this.toDOM) {
                String name = this.helper.getQName(feature);
                int i = 0;
                while (i < size) {
                    String value = ((AbstractNumericalDatatype)values.getDelegationList().get(i)).encode();
                    this.doc.saveDataValueElement(name, value);
                    ++i;
                }
            } else {
                this.helper.populateNameInfo(this.nameInfo, feature);
                int i = 0;
                while (i < size) {
                    String value = ((AbstractNumericalDatatype)values.getDelegationList().get(i)).encode();
                    Element elem = this.document.createElementNS(this.nameInfo.getNamespaceURI(), this.nameInfo.getQualifiedName());
                    Text text = this.document.createTextNode(value);
                    elem.appendChild(text);
                    this.currentNode.appendChild(elem);
                    this.handler.recordValues((Node)elem, object, feature, (Object)value);
                    this.handler.recordValues((Node)text, object, feature, (Object)value);
                    ++i;
                }
            }
        }
    }

    protected void saveManyEmpty(EStructuralFeature feature) {
    }

    protected boolean shouldSaveFeature(EObject object, EStructuralFeature feature) {
        if (this.skippedElements != null && !this.skippedElements.isEmpty() && object == this.skippedElements.peek() && "ARObject".equals(feature.getEContainingClass().getName())) {
            return false;
        }
        return object.eIsSet(feature);
    }

    protected void saveTypeReferenceElement(EObject owner, EStructuralFeature structuralFeature, EObject objectToSave, int index) {
        if (structuralFeature instanceof EReference) {
            RelativeReference relativeReference;
            EReference reference = (EReference)structuralFeature;
            AutosarReferenceHelper typeReferenceHelper = new AutosarReferenceHelper(reference);
            this.doc.startElement(typeReferenceHelper.getReferenceName(reference));
            if (this.shouldSaveDestAttribute(structuralFeature).booleanValue()) {
                String dest = AutosarReferenceHelper.getDest(owner, reference, objectToSave, index);
                if (dest != null && dest.length() > 0) {
                    this.doc.addAttribute("DEST", dest);
                } else {
                    this.doc.addAttribute("DEST", this.extendedMetaData.getName((EClassifier)objectToSave.eClass()));
                }
            }
            if ((relativeReference = AutosarReferenceHelper.getRelativeReference(owner, objectToSave)) != null) {
                if (!relativeReference.getIsDefault().booleanValue()) {
                    this.doc.addAttribute("BASE", relativeReference.getBase());
                }
                this.doc.endContentElement(relativeReference.getValue());
            } else {
                this.doc.endContentElement(AutosarURIFactory.getAbsoluteQualifiedName((Object)objectToSave));
            }
        }
    }

    protected Boolean shouldSaveDestAttribute(EStructuralFeature feature) {
        if (this.shouldSaveDestAttribute == null) {
            String nsURI = feature.getEContainingClass().getEPackage().getNsURI();
            this.shouldSaveDestAttribute = nsURI != null && nsURI.startsWith("http://autosar.org/2.0.0") ? Boolean.FALSE : Boolean.TRUE;
        }
        return this.shouldSaveDestAttribute;
    }

    protected void saveInstanceReferenceElement(EObject object, EStructuralFeature feature) {
        int contentKind = this.extendedMetaData == null ? 0 : this.extendedMetaData.getContentKind(object.eClass());
        InstanceReferenceHelper instanceReferenceHelper = new InstanceReferenceHelper((EReference)feature, object.eClass());
        this.doc.startElement(instanceReferenceHelper.getInstanceReferenceName());
        if (instanceReferenceHelper.isSavedAsInstRefToAbstractClass()) {
            this.doc.startElement(instanceReferenceHelper.getReferedClassXMLName());
        }
        this.shouldSaveDestAttribute(feature);
        block29: for (EStructuralFeature f : object.eClass().getEAllStructuralFeatures()) {
            int kind;
            if (f instanceof EReference) {
                String referenceName;
                String stereotype;
                EReference reference = (EReference)f;
                EAnnotation annotation = reference.getEType().getEAnnotation("Stereotype");
                String string = stereotype = annotation != null && annotation.getDetails() != null ? (String)annotation.getDetails().get((Object)"Stereotype") : null;
                if ("indexedRef".equalsIgnoreCase(stereotype)) {
                    if (object.eGet((EStructuralFeature)reference) instanceof EObject) {
                        this.saveElement((EObject)object.eGet((EStructuralFeature)reference), (EStructuralFeature)reference);
                        continue;
                    }
                    if (!(object.eGet((EStructuralFeature)reference) instanceof List)) continue;
                    List l = (List)object.eGet((EStructuralFeature)reference);
                    for (Object o : l) {
                        if (!(o instanceof EObject)) continue;
                        this.saveElement((EObject)o, (EStructuralFeature)reference);
                    }
                    continue;
                }
                Object referenceValue = object.eGet((EStructuralFeature)reference);
                if (referenceValue == null || (referenceName = InstanceReferenceHelper.getReferenceName(reference)) == null) continue;
                if (referenceValue instanceof EObject) {
                    RelativeReference relativeReference;
                    this.doc.startElement(referenceName);
                    if (this.shouldSaveDestAttribute.booleanValue()) {
                        String dest = AutosarReferenceHelper.getDest(object, reference, (EObject)referenceValue, -1);
                        if (dest != null) {
                            this.doc.addAttribute("DEST", dest);
                        } else {
                            this.doc.addAttribute("DEST", this.extendedMetaData.getName((EClassifier)((EObject)referenceValue).eClass()));
                        }
                    }
                    if ((relativeReference = AutosarReferenceHelper.getRelativeReference(object, (EObject)referenceValue)) != null) {
                        if (!relativeReference.getIsDefault().booleanValue()) {
                            this.doc.addAttribute("BASE", relativeReference.getBase());
                        }
                        this.doc.endContentElement(relativeReference.getValue());
                        continue;
                    }
                    this.doc.endContentElement(AutosarURIFactory.getAbsoluteQualifiedName((Object)referenceValue));
                    continue;
                }
                if (!(referenceValue instanceof EList)) continue;
                EList objects = (EList)referenceValue;
                if (!this.shouldSaveDestAttribute.booleanValue()) {
                    this.doc.startElement("CONTEXT-REFS");
                }
                int i = 0;
                while (i < objects.size()) {
                    Object aValue = objects.get(i);
                    if (aValue instanceof EObject) {
                        RelativeReference relativeReference;
                        this.doc.startElement(referenceName);
                        if (this.shouldSaveDestAttribute.booleanValue()) {
                            String dest = AutosarReferenceHelper.getDest(object, reference, (EObject)aValue, i);
                            if (dest != null) {
                                this.doc.addAttribute("DEST", dest);
                            } else {
                                this.doc.addAttribute("DEST", this.extendedMetaData.getName((EClassifier)((EObject)aValue).eClass()));
                            }
                        }
                        if ((relativeReference = AutosarReferenceHelper.getRelativeReference(object, (EObject)aValue)) != null) {
                            if (!relativeReference.getIsDefault().booleanValue()) {
                                this.doc.addAttribute("BASE", relativeReference.getBase());
                            }
                            this.doc.endContentElement(relativeReference.getValue());
                        } else {
                            this.doc.endContentElement(AutosarURIFactory.getAbsoluteQualifiedName((Object)aValue));
                        }
                    }
                    ++i;
                }
                if (this.shouldSaveDestAttribute.booleanValue()) continue;
                this.doc.endElement();
                continue;
            }
            if (!(f instanceof EAttribute) || (kind = this.featureKind(f)) == 0 || !this.shouldSaveFeature(object, f)) continue;
            block0 : switch (kind) {
                case 2: {
                    if (contentKind != 2) break;
                    this.getDataTypeElementSingleSimple(object, f);
                    break;
                }
                case 1: {
                    this.saveDataTypeSingle(object, f);
                    break;
                }
                case 4: {
                    if (this.isNil(object, f)) break;
                    this.saveDataTypeSingle(object, f);
                    break;
                }
                case 22: {
                    this.saveEObjectSingle(object, f);
                    break;
                }
                case 23: {
                    this.saveEObjectMany(object, f);
                    break;
                }
                case 24: {
                    this.saveIDRefSingle(object, f);
                    break;
                }
                case 25: {
                    this.saveIDRefMany(object, f);
                    break;
                }
                case 12: {
                    if (this.isNil(object, f)) continue block29;
                }
                case 8: {
                    if (this.useEncodedAttributeStyle) {
                        this.saveEObjectSingle(object, f);
                        break;
                    }
                    switch (this.sameDocSingle(object, f)) {
                        case 1: {
                            this.saveIDRefSingle(object, f);
                            break block0;
                        }
                        case 2: {
                            break block0;
                        }
                    }
                    break;
                }
                case 13: {
                    if (this.isEmpty(object, f)) {
                        this.saveManyEmpty(object, f);
                        break;
                    }
                }
                case 9: {
                    if (this.useEncodedAttributeStyle) {
                        this.saveEObjectMany(object, f);
                        break;
                    }
                    switch (this.sameDocMany(object, f)) {
                        case 1: {
                            this.saveIDRefMany(object, f);
                            break block0;
                        }
                        case 2: {
                            break block0;
                        }
                    }
                    break;
                }
                case 14: 
                case 15: {
                    if (contentKind != 2) break;
                    this.getElementReferenceSingleSimple(object, f);
                    break;
                }
                case 16: {
                    if (contentKind != 2) break;
                    this.getElementReferenceManySimple(object, f);
                    break;
                }
                case 17: 
                case 18: {
                    if (contentKind != 2) break;
                    this.getElementIDRefSingleSimple(object, f);
                    break;
                }
                case 19: {
                    if (contentKind != 2) break;
                    this.getElementIDRefManySimple(object, f);
                    break;
                }
                case 26: {
                    break;
                }
                case 5: 
                case 11: {
                    if (!this.isEmpty(object, f)) break;
                    this.saveManyEmpty(object, f);
                    break;
                }
                case 6: 
                case 7: 
                case 10: 
                case 21: {
                    break;
                }
                case 20: {
                    this.saveAttributeFeatureMap(object, f);
                    break;
                }
            }
        }
        if (instanceReferenceHelper.isSavedAsInstRefToAbstractClass()) {
            this.doc.endElement();
        }
        this.doc.endElement();
    }

    protected void saveElement(EObject object, Object value, EStructuralFeature feature) {
        if (value == null) {
            this.saveNil(object, feature);
        } else {
            String svalue = this.getDatatypeValue(value, feature, false);
            if (!this.toDOM) {
                this.doc.saveDataValueElement(this.helper.getName((ENamedElement)feature), svalue);
            } else {
                this.helper.populateNameInfo(this.nameInfo, feature);
                Element elem = this.document.createElementNS(this.nameInfo.getNamespaceURI(), this.nameInfo.getQualifiedName());
                Text text = this.document.createTextNode(svalue);
                elem.appendChild(text);
                this.currentNode.appendChild(elem);
                this.handler.recordValues((Node)elem, object, feature, value);
                this.handler.recordValues((Node)text, object, feature, value);
            }
        }
    }

    protected void saveTypeAttribute(EClass eClass) {
        if (!eClass.getEPackage().getNsURI().startsWith("http://autosar.org")) {
            this.declareXSI = true;
            if (!this.toDOM) {
                this.doc.addAttribute("xsi:type", this.helper.getQName(eClass));
            } else {
                this.helper.populateNameInfo(this.nameInfo, eClass);
                ((Element)this.currentNode).setAttributeNS("http://www.w3.org/2001/XMLSchema-instance", "xsi:type", this.nameInfo.getQualifiedName());
            }
        }
    }

    protected void saveElementReferenceSingle(EObject object, EStructuralFeature feature) {
        EObject value = (EObject)this.helper.getValue(object, feature);
        if (value != null) {
            if (this.isRoleWrapperElement(feature)) {
                this.doc.startElement(this.helper.getName((ENamedElement)feature));
                this.saveElementReferenceSingle(object, feature, value);
                this.doc.endElement();
            } else {
                this.saveElementReferenceSingle(object, feature, value);
            }
        }
    }

    private void saveElementReferenceSingle(EObject object, EStructuralFeature feature, EObject value) {
        if (this.isTypeReference(feature)) {
            this.saveTypeReferenceElement(object, feature, value, -1);
        } else {
            this.saveElementReference(object, feature, value, -1);
        }
    }

    private boolean isTypeReference(EStructuralFeature feature) {
        return "isOfType".equalsIgnoreCase(this.getStereotype(feature));
    }

    private String getStereotype(EStructuralFeature feature) {
        EAnnotation annotation = this.getStereotypeAnnotation(feature);
        if (annotation == null) {
            return null;
        }
        EMap details = annotation.getDetails();
        if (details == null) {
            return null;
        }
        return (String)details.get((Object)"Stereotype");
    }

    protected void saveElementReferenceMany(EObject object, EStructuralFeature feature) {
        InternalEList values = (InternalEList)this.helper.getValue(object, feature);
        int size = values.size();
        if (AutosarTaggedValues.get((EModelElement)feature).isRoleWrapperElement) {
            this.roleWrapperStructuralFeatures.put(feature, Boolean.TRUE);
            String featureName = this.helper.getName((ENamedElement)feature);
            this.doc.startElement(featureName);
            int i = 0;
            while (i < size) {
                this.saveElementReference(object, feature, (EObject)values.basicGet(i), i);
                ++i;
            }
            this.endSaveFeatures(object, 0, null);
        } else {
            int i = 0;
            while (i < size) {
                this.saveElementReference(object, feature, (EObject)values.basicGet(i), i);
                ++i;
            }
        }
    }

    protected void saveFeatureMapElementReference(EObject owner, EReference feature, EObject object) {
        if (this.extendedMetaData == null || this.extendedMetaData.getFeatureKind((EStructuralFeature)feature) != 4) {
            this.saveHref(object, (EStructuralFeature)feature);
        } else {
            this.saveElementReference(owner, (EStructuralFeature)feature, object, -1);
        }
    }

    protected void saveElementReference(EObject owner, EStructuralFeature structuralFeature, EObject remote, int index) {
        if (structuralFeature instanceof EReference) {
            EReference reference = (EReference)structuralFeature;
            if (remote instanceof GReferrable) {
                String absoluteQualifiedName = AutosarURIFactory.getAbsoluteQualifiedName((Object)remote);
                if (absoluteQualifiedName.length() > 0) {
                    RelativeReference relativeReference;
                    ElementReferenceHelper typeReferenceHelper = new ElementReferenceHelper(reference);
                    this.doc.startElement(typeReferenceHelper.getReferenceName(reference));
                    if (this.shouldSaveDestAttribute(structuralFeature).booleanValue()) {
                        String dest = AutosarReferenceHelper.getDest(owner, reference, remote, index);
                        if (dest != null) {
                            this.doc.addAttribute("DEST", dest);
                        } else {
                            this.doc.addAttribute("DEST", this.extendedMetaData.getName((EClassifier)remote.eClass()));
                        }
                    }
                    if ((relativeReference = AutosarReferenceHelper.getRelativeReference(owner, remote)) != null) {
                        if (!relativeReference.getIsDefault().booleanValue()) {
                            this.doc.addAttribute("BASE", relativeReference.getBase());
                        }
                        this.doc.endContentElement(relativeReference.getValue());
                    } else {
                        this.doc.endContentElement(absoluteQualifiedName);
                    }
                } else {
                    PlatformLogUtil.logAsWarning((Plugin)Activator.getPlugin(), (Object)new RuntimeException("Cannot calculate absolute qualified name for element '" + remote.toString() + "'. This happens most probably when this element is deleted and others objects still referencing it."));
                }
            } else {
                PlatformLogUtil.logAsWarning((Plugin)Activator.getPlugin(), (Object)new RuntimeException("Cannot save reference to non Identifiable element '" + remote.toString() + "'. This happens most probably due to a bug in AUTOSAR meta model and/or XSD."));
            }
        }
    }

    protected void endSaveFeatures(EObject object, int elementType, String content) {
        EObject skippedElement;
        EObject eObject = skippedElement = this.skippedElements.empty() ? null : this.skippedElements.peek();
        if (object != skippedElement) {
            super.endSaveFeatures(object, elementType, content);
        }
    }

    protected void addNamespaceDeclarations() {
        IMetaModelDescriptor release = MetaModelDescriptorRegistry.INSTANCE.getDescriptor((Resource)this.helper.getResource());
        boolean isSingleNsReleaseResource = this.isSingleNsRelease((AutosarReleaseDescriptor)release);
        Map originalSchemaCatalog = (Map)this.getDefaultSaveOptions().get("SCHEMA_LOCATION_CATALOG");
        IModelConverter originalConverter = this.converter;
        if (isSingleNsReleaseResource) {
            if (this.converter != null) {
                if (this.converter.getResourceVersionDescriptor() != release) {
                    this.setSchemaLocationFromConverter();
                }
            } else {
                Map<String, String> schemaLocationMap = this.getSchemaLocationMap();
                if (!schemaLocationMap.isEmpty()) {
                    this.setSchemaCatalog(schemaLocationMap);
                    this.converter = new SingleNsReleaseConverter(release);
                }
            }
        }
        super.addNamespaceDeclarations();
        if (isSingleNsReleaseResource) {
            this.setSchemaCatalog(originalSchemaCatalog);
            this.converter = originalConverter;
        }
    }

    private Map<String, String> getSchemaLocationMap() {
        EObject schemaLocationRoot = this.getSchemaLocationRoot((EObject)this.helper.getResource().getContents().get(0));
        EReference xsiSchemaLocationMapFeature = this.extendedMetaData.getXSISchemaLocationMapFeature(schemaLocationRoot.eClass());
        if (xsiSchemaLocationMapFeature != null) {
            return ((EMap)schemaLocationRoot.eGet((EStructuralFeature)xsiSchemaLocationMapFeature)).map();
        }
        return null;
    }

    private void setSchemaLocationFromConverter() {
        AutosarReleaseDescriptor revision = (AutosarReleaseDescriptor)this.converter.getResourceVersionDescriptor();
        Map<String, String> converterSchemaCatalog = this.createSchemaCatalog(revision);
        this.setSchemaCatalog(converterSchemaCatalog);
        Map<String, String> schemaLocationMap = this.getSchemaLocationMap();
        schemaLocationMap.put(revision.getNamespace(), converterSchemaCatalog.get(revision.getNamespace()));
    }

    private void setSchemaCatalog(Map<String, String> schemaCatalog) {
        this.getDefaultSaveOptions().put("SCHEMA_LOCATION_CATALOG", schemaCatalog);
    }

    private boolean isSingleNsRelease(AutosarReleaseDescriptor release) {
        if (release == null) {
            return false;
        }
        List revisionUris = release.getCompatibleNamespaceURIs();
        if (revisionUris.isEmpty()) {
            return false;
        }
        for (java.net.URI revisionUri : revisionUris) {
            if (revisionUri.equals(release.getNamespaceURI())) continue;
            return false;
        }
        return true;
    }

    private Map<Object, Object> getDefaultSaveOptions() {
        return this.helper.getResource().getDefaultSaveOptions();
    }

    private Map<String, String> createSchemaCatalog(AutosarReleaseDescriptor revision) {
        HashMap<String, String> schemaCatalog = new HashMap<String, String>();
        schemaCatalog.put(revision.getNamespace(), this.getSchemaLocation(revision));
        return schemaCatalog;
    }

    public String getSchemaLocation(AutosarReleaseDescriptor revision) {
        return "autosar_" + this.getSchemaReleaseNumber(revision) + "." + SCHEMA_EXTENSION;
    }

    private String getSchemaReleaseNumber(AutosarReleaseDescriptor revision) {
        AutosarMetaModelVersionData avd = revision.getAutosarVersionData();
        return String.valueOf(avd.getMajor()) + "-" + avd.getMinor() + "-" + avd.getRevision();
    }

    protected String getFeatureName(EObject object, EStructuralFeature feature) {
        String featureName = null;
        if (object != null && feature != null) {
            if (this.roleWrapperStructuralFeatures != null && Boolean.TRUE == this.roleWrapperStructuralFeatures.get(feature)) {
                AutosarTaggedValues eRefTaggedValues = AutosarTaggedValues.get(this.taggedValuesCache, (EModelElement)feature);
                featureName = eRefTaggedValues.isRoleElement ? eRefTaggedValues.xmlName : this.helper.getQName(object.eClass());
            } else {
                featureName = this.helper.getName((ENamedElement)feature);
            }
        }
        return featureName;
    }

    protected boolean saveCompositePropertyRepresentation0012(EObject object, EStructuralFeature feature) {
        if (object != null && AutosarPersistenceRules.isCompositePropertyRepresentation0012(feature)) {
            String elementName = this.helper.getQName(object.eClass());
            this.doc.startElement(elementName);
            this.saveElementID(object);
            return true;
        }
        return false;
    }

    protected boolean saveCompositePropertyRepresentation0015(EObject object, EStructuralFeature feature) {
        if (object != null && AutosarPersistenceRules.isCompositePropertyRepresentation0015(feature)) {
            String typeName = this.extendedMetaData.getName((EClassifier)object.eClass());
            if (!this.toDOM) {
                this.doc.startElement(typeName);
                this.saveElementID(object);
                return true;
            }
        }
        return false;
    }

    protected boolean saveCompositePropertyRepresentation0016(EObject object, EStructuralFeature feature) {
        if (AutosarPersistenceRules.isCompositePropertyRepresentation0016(feature)) {
            this.skippedElements.push(object);
            this.saveFeatures(object);
            this.skippedElements.pop();
            return true;
        }
        return false;
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private class SingleNsReleaseConverter
    implements IModelConverter {
        private IMetaModelDescriptor fRelease;

        public SingleNsReleaseConverter(IMetaModelDescriptor release) {
            this.fRelease = release;
        }

        public IMetaModelDescriptor getMetaModelVersionDescriptor() {
            return this.fRelease;
        }

        public IMetaModelDescriptor getResourceVersionDescriptor() {
            return this.fRelease;
        }

        public boolean isLoadConverterFor(XMLResource resource, Map<?, ?> options) {
            return false;
        }

        public boolean isSaveConverterFor(XMLResource resource, Map<?, ?> options) {
            return false;
        }

        public InputSource convertLoad(XMLResource resource, InputStream inputStream, Map<?, ?> options) throws IOException {
            return null;
        }

        public void convertSave(XMLString xml, int flushThreshold, URI uri, OutputStream outputStream, String encoding, XMLHelper helper, Map<?, ?> options) throws IOException {
        }

        public void addExtraAttributesToSavedRootElement(XMLString rootElement, Map<?, ?> options) {
        }

        public void dispose() {
        }
    }
}

