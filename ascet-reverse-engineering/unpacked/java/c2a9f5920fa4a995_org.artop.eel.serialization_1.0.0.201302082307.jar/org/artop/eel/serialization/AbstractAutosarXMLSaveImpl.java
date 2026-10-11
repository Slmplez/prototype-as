/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EClassifier
 *  org.eclipse.emf.ecore.EDataType
 *  org.eclipse.emf.ecore.ENamedElement
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EReference
 *  org.eclipse.emf.ecore.EStructuralFeature
 *  org.eclipse.emf.ecore.EcorePackage$Literals
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.util.FeatureMap
 *  org.eclipse.emf.ecore.util.FeatureMap$Entry
 *  org.eclipse.emf.ecore.xmi.XMLHelper
 *  org.eclipse.emf.ecore.xmi.XMLResource$XMLInfo
 *  org.eclipse.emf.ecore.xml.type.AnyType
 *  org.eclipse.emf.ecore.xml.type.ProcessingInstruction
 *  org.eclipse.emf.ecore.xml.type.SimpleAnyType
 *  org.eclipse.emf.ecore.xml.type.XMLTypePackage$Literals
 *  org.eclipse.sphinx.emf.resource.ExtendedXMLSaveImpl
 */
package org.artop.eel.serialization;

import java.util.HashSet;
import java.util.List;
import java.util.Map;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EClassifier;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.ENamedElement;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.EcorePackage;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.util.FeatureMap;
import org.eclipse.emf.ecore.xmi.XMLHelper;
import org.eclipse.emf.ecore.xmi.XMLResource;
import org.eclipse.emf.ecore.xml.type.AnyType;
import org.eclipse.emf.ecore.xml.type.ProcessingInstruction;
import org.eclipse.emf.ecore.xml.type.SimpleAnyType;
import org.eclipse.emf.ecore.xml.type.XMLTypePackage;
import org.eclipse.sphinx.emf.resource.ExtendedXMLSaveImpl;
import org.w3c.dom.CDATASection;
import org.w3c.dom.Node;
import org.w3c.dom.Text;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class AbstractAutosarXMLSaveImpl
extends ExtendedXMLSaveImpl {
    protected abstract boolean saveCompositePropertyRepresentation0012(EObject var1, EStructuralFeature var2);

    protected abstract boolean saveCompositePropertyRepresentation0015(EObject var1, EStructuralFeature var2);

    protected abstract boolean saveCompositePropertyRepresentation0016(EObject var1, EStructuralFeature var2);

    protected abstract void saveFeatureMapElementReference(EObject var1, EReference var2, EObject var3);

    protected abstract String getFeatureName(EObject var1, EStructuralFeature var2);

    protected abstract boolean isRoleWrapperElement(EStructuralFeature var1);

    public AbstractAutosarXMLSaveImpl(XMLHelper helper) {
        super(helper);
    }

    public AbstractAutosarXMLSaveImpl(Map<?, ?> options, XMLHelper helper, String encoding) {
        super(options, helper, encoding);
    }

    public AbstractAutosarXMLSaveImpl(Map<?, ?> options, XMLHelper helper, String encoding, String xmlVersion) {
        super(options, helper, encoding, xmlVersion);
    }

    protected void saveElement(EObject object, EStructuralFeature feature) {
        XMLResource.XMLInfo info;
        String name;
        EClass eClass = object.eClass();
        EClassifier eType = feature.getEType();
        boolean isETypeAbstarct = false;
        if (eType instanceof EClass) {
            isETypeAbstarct = ((EClass)eType).isAbstract();
        }
        if (this.extendedMetaData != null && eClass != eType && !isETypeAbstarct && (name = this.extendedMetaData.getName((EClassifier)eClass)).endsWith("_._type")) {
            String elementName = name.substring(0, name.indexOf("_._"));
            String prefix = this.helper.getPrefix(eClass.getEPackage());
            if (!"".equals(prefix)) {
                elementName = String.valueOf(prefix) + ":" + elementName;
            }
            if (!this.toDOM) {
                this.doc.startElement(elementName);
            } else {
                this.currentNode = this.currentNode.appendChild(this.document.createElementNS(this.helper.getNamespaceURI(prefix), elementName));
                this.handler.recordValues(this.currentNode, object.eContainer(), feature, (Object)object);
            }
            this.saveElementID(object);
            return;
        }
        if (this.saveCompositePropertyRepresentation0015(object, feature)) {
            return;
        }
        if (this.saveCompositePropertyRepresentation0016(object, feature)) {
            return;
        }
        if (this.map != null && (info = this.map.getInfo((ENamedElement)eClass)) != null && info.getXMLRepresentation() == 0) {
            if (!this.toDOM) {
                String elementName = this.helper.getQName(eClass);
                this.doc.startElement(elementName);
            } else {
                this.helper.populateNameInfo(this.nameInfo, eClass);
                if (this.currentNode == null) {
                    this.currentNode = this.document.createElementNS(this.nameInfo.getNamespaceURI(), this.nameInfo.getQualifiedName());
                    this.document.appendChild(this.currentNode);
                    this.handler.recordValues(this.currentNode, object.eContainer(), feature, (Object)object);
                } else {
                    this.currentNode = this.currentNode.appendChild(this.document.createElementNS(this.nameInfo.getNamespaceURI(), this.nameInfo.getQualifiedName()));
                    this.handler.recordValues(this.currentNode, object.eContainer(), feature, (Object)object);
                }
            }
            this.saveElementID(object);
            return;
        }
        boolean isAnyType = false;
        if (object instanceof AnyType) {
            isAnyType = true;
            this.helper.pushContext();
            for (FeatureMap.Entry entry : ((AnyType)object).getAnyAttribute()) {
                if (!"http://www.w3.org/2000/xmlns/".equals(this.extendedMetaData.getNamespace(entry.getEStructuralFeature()))) continue;
                String uri = (String)entry.getValue();
                this.helper.addPrefix(this.extendedMetaData.getName(entry.getEStructuralFeature()), uri == null ? "" : uri);
            }
        }
        if (!this.toDOM) {
            String featureName = this.getFeatureName(object, feature);
            this.doc.startElement(featureName);
        } else {
            this.helper.populateNameInfo(this.nameInfo, feature);
            if (this.currentNode == null) {
                this.currentNode = this.document.createElementNS(this.nameInfo.getNamespaceURI(), this.nameInfo.getQualifiedName());
                this.document.appendChild(this.currentNode);
                this.handler.recordValues(this.currentNode, object.eContainer(), feature, (Object)object);
            } else {
                this.currentNode = this.currentNode.appendChild(this.document.createElementNS(this.nameInfo.getNamespaceURI(), this.nameInfo.getQualifiedName()));
                this.handler.recordValues(this.currentNode, object.eContainer(), feature, (Object)object);
            }
        }
        if (this.saveTypeInfo ? this.xmlTypeInfo.shouldSaveType(eClass, eType, feature) : eClass != eType && (eClass != this.anyType || this.extendedMetaData == null || eType != EcorePackage.Literals.EOBJECT || this.extendedMetaData.getFeatureKind(feature) == 0)) {
            if (eClass == this.anySimpleType) {
                this.saveTypeAttribute(((SimpleAnyType)object).getInstanceType());
            } else {
                this.saveTypeAttribute(eClass);
            }
        }
        if (this.saveCompositePropertyRepresentation0012(object, feature)) {
            this.endSaveFeatures(object, 0, null);
        } else {
            this.saveElementID(object);
        }
        if (isAnyType) {
            this.helper.popContext();
        }
    }

    protected boolean saveElementFeatureMap(EObject object, EStructuralFeature feature) {
        EStructuralFeature entryFeature;
        FeatureMap.Entry entry;
        int i;
        List values = (List)this.helper.getValue(object, feature);
        int size = values.size();
        if (object == this.root && !this.toDOM) {
            boolean overrideMixed = true;
            i = 0;
            while (i < size) {
                entry = (FeatureMap.Entry)values.get(i);
                entryFeature = entry.getEStructuralFeature();
                if (entryFeature == XMLTypePackage.Literals.XML_TYPE_DOCUMENT_ROOT__PROCESSING_INSTRUCTION || entryFeature == XMLTypePackage.Literals.XML_TYPE_DOCUMENT_ROOT__TEXT || entryFeature == XMLTypePackage.Literals.XML_TYPE_DOCUMENT_ROOT__CDATA || entryFeature == XMLTypePackage.Literals.XML_TYPE_DOCUMENT_ROOT__COMMENT) {
                    overrideMixed = false;
                    break;
                }
                ++i;
            }
            if (overrideMixed) {
                this.doc.setMixed(false);
            }
        }
        HashSet<EStructuralFeature> savedRoleWrappedFeature = new HashSet<EStructuralFeature>();
        i = 0;
        while (i < size) {
            String stringValue;
            entry = (FeatureMap.Entry)values.get(i);
            entryFeature = entry.getEStructuralFeature();
            Object value = entry.getValue();
            if (entryFeature == XMLTypePackage.Literals.XML_TYPE_DOCUMENT_ROOT__PROCESSING_INSTRUCTION) {
                ProcessingInstruction pi = (ProcessingInstruction)value;
                String target = pi.getTarget();
                String data = pi.getData();
                if (this.escape != null && data != null) {
                    data = this.escape.convertLines(data);
                }
                if (!this.toDOM) {
                    this.doc.addProcessingInstruction(target, data);
                } else {
                    this.currentNode.appendChild(this.document.createProcessingInstruction(target, data));
                }
            } else if (entryFeature instanceof EReference) {
                if (!savedRoleWrappedFeature.contains(entryFeature)) {
                    if (this.isRoleWrapperElement(entryFeature)) {
                        FeatureMap featureMap = (FeatureMap)values;
                        EList wrappedValues = featureMap.list(entryFeature);
                        int wsize = wrappedValues.size();
                        String featureName = this.helper.getName((ENamedElement)entryFeature);
                        this.doc.startElement(featureName);
                        int wi = 0;
                        while (wi < wsize) {
                            InternalEObject wvalue = (InternalEObject)wrappedValues.get(wi);
                            if (wvalue != null) {
                                this.saveElement(wvalue, entryFeature);
                            }
                            ++wi;
                        }
                        this.doc.endElement();
                        savedRoleWrappedFeature.add(entryFeature);
                    } else if (value == null) {
                        this.saveNil(object, entryFeature);
                    } else {
                        EReference referenceEntryFeature = (EReference)entryFeature;
                        if (referenceEntryFeature.isContainment()) {
                            this.saveElement((InternalEObject)value, entryFeature);
                        } else if (referenceEntryFeature.isResolveProxies()) {
                            this.saveFeatureMapElementReference(object, referenceEntryFeature, (EObject)value);
                        } else {
                            this.saveElementIDRef(object, (EObject)value, entryFeature);
                        }
                    }
                }
            } else if (entryFeature == XMLTypePackage.Literals.XML_TYPE_DOCUMENT_ROOT__TEXT) {
                String svalue = value.toString();
                if (this.escape != null) {
                    svalue = this.escape.convertText(svalue);
                }
                if (!this.toDOM) {
                    this.doc.addText(svalue);
                } else {
                    Text text = this.document.createTextNode(svalue);
                    this.currentNode.appendChild(text);
                    this.handler.recordValues((Node)text, object, feature, (Object)entry);
                }
            } else if (entryFeature == XMLTypePackage.Literals.XML_TYPE_DOCUMENT_ROOT__CDATA) {
                stringValue = value.toString();
                if (this.escape != null) {
                    stringValue = this.escape.convertLines(stringValue);
                }
                if (!this.toDOM) {
                    this.doc.addCDATA(stringValue);
                } else {
                    CDATASection cdata = this.document.createCDATASection(stringValue);
                    this.currentNode.appendChild(cdata);
                    this.handler.recordValues((Node)cdata, object, feature, (Object)entry);
                }
            } else if (entryFeature == XMLTypePackage.Literals.XML_TYPE_DOCUMENT_ROOT__COMMENT) {
                stringValue = value.toString();
                if (this.escape != null) {
                    stringValue = this.escape.convertLines(stringValue);
                }
                if (!this.toDOM) {
                    this.doc.addComment(stringValue);
                } else {
                    this.currentNode.appendChild(this.document.createComment(stringValue));
                }
            } else {
                this.saveElement(object, value, entryFeature);
            }
            ++i;
        }
        return size > 0;
    }

    protected int featureKind(EStructuralFeature feature) {
        if (feature.isTransient()) {
            return 0;
        }
        boolean isMany = feature.isMany();
        boolean isUnsettable = feature.isUnsettable();
        if (feature instanceof EReference) {
            XMLResource.XMLInfo info;
            EReference r = (EReference)feature;
            if (r.isContainment()) {
                return isMany ? (isUnsettable ? 11 : 7) : (isUnsettable ? 10 : 6);
            }
            EReference opposite = r.getEOpposite();
            if (opposite != null && opposite.isContainment()) {
                return 0;
            }
            if (this.map != null && (info = this.map.getInfo((ENamedElement)feature)) != null && info.getXMLRepresentation() == 0) {
                return isMany ? 16 : (r.isUnsettable() ? 15 : 14);
            }
            if (this.extendedMetaData != null) {
                switch (this.extendedMetaData.getFeatureKind(feature)) {
                    case 2: {
                        return r.isResolveProxies() ? (isMany ? 23 : 22) : (isMany ? 25 : 24);
                    }
                    case 1: {
                        if (feature == XMLTypePackage.Literals.SIMPLE_ANY_TYPE__INSTANCE_TYPE) {
                            return 0;
                        }
                    }
                    case 4: {
                        return r.isResolveProxies() ? (isMany ? 16 : (r.isUnsettable() ? 15 : 14)) : (isMany ? 19 : (r.isUnsettable() ? 18 : 17));
                    }
                }
            }
            return isMany ? (isUnsettable ? 13 : 9) : (isUnsettable ? 12 : 8);
        }
        EDataType d = (EDataType)feature.getEType();
        if (!d.isSerializable() && d != EcorePackage.Literals.EFEATURE_MAP_ENTRY) {
            return 0;
        }
        if (d.getInstanceClass() == FeatureMap.Entry.class) {
            return this.extendedMetaData != null && this.extendedMetaData.getFeatureKind(feature) == 3 ? 20 : 21;
        }
        if (this.extendedMetaData != null) {
            switch (this.extendedMetaData.getFeatureKind(feature)) {
                case 1: {
                    return 2;
                }
                case 4: {
                    return feature.isMany() ? 5 : 2;
                }
                case 2: {
                    return feature.isMany() ? 26 : 1;
                }
            }
        }
        if (isMany) {
            return 5;
        }
        if (isUnsettable && this.map == null) {
            return 4;
        }
        if (this.map == null) {
            return 1;
        }
        XMLResource.XMLInfo info = this.map.getInfo((ENamedElement)feature);
        if (info != null && info.getXMLRepresentation() == 0) {
            return 2;
        }
        if (info != null && info.getXMLRepresentation() == 2) {
            return 3;
        }
        if (isUnsettable) {
            return 4;
        }
        return 1;
    }
}

