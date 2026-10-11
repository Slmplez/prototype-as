/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EAnnotation
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EClassifier
 *  org.eclipse.emf.ecore.EDataType
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EReference
 *  org.eclipse.emf.ecore.EStructuralFeature
 *  org.eclipse.emf.ecore.EcoreFactory
 *  org.eclipse.emf.ecore.EcorePackage$Literals
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package org.eclipse.emf.ecore.xmi.impl;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EAnnotation;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EClassifier;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.EcoreFactory;
import org.eclipse.emf.ecore.EcorePackage;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.util.InternalEList;
import org.eclipse.emf.ecore.xmi.XMLHelper;
import org.eclipse.emf.ecore.xmi.XMLResource;
import org.eclipse.emf.ecore.xmi.XMLSave;
import org.eclipse.emf.ecore.xmi.impl.XMISaveImpl;
import org.eclipse.emf.ecore.xmi.impl.XMLSaveImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class EMOFSaveImpl
extends XMISaveImpl {
    private static final Integer ONE = 1;

    public EMOFSaveImpl(XMLHelper helper) {
        super(helper);
        this.idAttributeName = "xmi:id";
    }

    @Override
    protected void init(XMLResource resource, Map<?, ?> options) {
        super.init(resource, options);
        this.xmlTypeInfo = new EMOFXMLTypeInfoImpl(this.xmlTypeInfo);
        this.saveTypeInfo = true;
    }

    @Override
    protected boolean shouldSaveFeature(EObject o, EStructuralFeature f) {
        if (f == EcorePackage.Literals.ETYPED_ELEMENT__ETYPE) {
            return o.eGet(f) != null;
        }
        if (f == EcorePackage.Literals.EOPERATION__EEXCEPTIONS || f == EcorePackage.Literals.ECLASS__ESUPER_TYPES) {
            return !((EList)o.eGet(f)).isEmpty();
        }
        if (f == EcorePackage.Literals.ETYPED_ELEMENT__LOWER_BOUND) {
            return this.keepDefaults || !ONE.equals(o.eGet(f));
        }
        if (f == EcorePackage.Literals.ETYPED_ELEMENT__ORDERED) {
            return this.keepDefaults || !Boolean.FALSE.equals(o.eGet(f));
        }
        return super.shouldSaveFeature(o, f);
    }

    @Override
    protected void saveDataTypeElementSingle(EObject o, EStructuralFeature f) {
        if (f == EcorePackage.Literals.EPACKAGE__NS_PREFIX || f == EcorePackage.Literals.ESTRUCTURAL_FEATURE__UNSETTABLE || f == EcorePackage.Literals.ESTRUCTURAL_FEATURE__TRANSIENT || f == EcorePackage.Literals.ESTRUCTURAL_FEATURE__VOLATILE || f == EcorePackage.Literals.EENUM_LITERAL__VALUE || f == EcorePackage.Literals.EREFERENCE__RESOLVE_PROXIES || f == EcorePackage.Literals.ECLASSIFIER__INSTANCE_CLASS_NAME || f == EcorePackage.Literals.ECLASSIFIER__INSTANCE_TYPE_NAME || f == EcorePackage.Literals.EDATA_TYPE__SERIALIZABLE || f == EcorePackage.Literals.ECLASS__INTERFACE) {
            if (f == EcorePackage.Literals.ESTRUCTURAL_FEATURE__UNSETTABLE && o.eIsSet((EStructuralFeature)EcorePackage.Literals.ESTRUCTURAL_FEATURE__VOLATILE)) {
                return;
            }
            if (f == EcorePackage.Literals.ESTRUCTURAL_FEATURE__TRANSIENT && (o.eIsSet((EStructuralFeature)EcorePackage.Literals.ESTRUCTURAL_FEATURE__UNSETTABLE) || o.eIsSet((EStructuralFeature)EcorePackage.Literals.ESTRUCTURAL_FEATURE__VOLATILE))) {
                return;
            }
            if (f == EcorePackage.Literals.EREFERENCE__RESOLVE_PROXIES && (o.eIsSet((EStructuralFeature)EcorePackage.Literals.ESTRUCTURAL_FEATURE__TRANSIENT) || o.eIsSet((EStructuralFeature)EcorePackage.Literals.ESTRUCTURAL_FEATURE__UNSETTABLE) || o.eIsSet((EStructuralFeature)EcorePackage.Literals.ESTRUCTURAL_FEATURE__VOLATILE))) {
                return;
            }
            if (f == EcorePackage.Literals.EDATA_TYPE__SERIALIZABLE && (o.eIsSet((EStructuralFeature)EcorePackage.Literals.ECLASSIFIER__INSTANCE_CLASS_NAME) || o.eIsSet((EStructuralFeature)EcorePackage.Literals.ECLASSIFIER__INSTANCE_TYPE_NAME))) {
                return;
            }
            if (f == EcorePackage.Literals.ECLASS__INTERFACE && (o.eIsSet((EStructuralFeature)EcorePackage.Literals.ECLASSIFIER__INSTANCE_CLASS_NAME) || o.eIsSet((EStructuralFeature)EcorePackage.Literals.ECLASSIFIER__INSTANCE_TYPE_NAME))) {
                return;
            }
            this.doc.startElement("xmi:Extension");
            this.doc.addAttribute("extender", "http://www.eclipse.org/emf/2002/Ecore");
            this.saveExtensionFeature(o, f);
            if (f == EcorePackage.Literals.ECLASSIFIER__INSTANCE_CLASS_NAME || f == EcorePackage.Literals.ECLASSIFIER__INSTANCE_TYPE_NAME) {
                if (o instanceof EDataType) {
                    if (o.eIsSet((EStructuralFeature)EcorePackage.Literals.EDATA_TYPE__SERIALIZABLE)) {
                        this.saveExtensionFeature(o, (EStructuralFeature)EcorePackage.Literals.EDATA_TYPE__SERIALIZABLE);
                    }
                } else if (o instanceof EClass && o.eIsSet((EStructuralFeature)EcorePackage.Literals.ECLASS__INTERFACE)) {
                    this.saveExtensionFeature(o, (EStructuralFeature)EcorePackage.Literals.ECLASS__INTERFACE);
                }
            } else if (f == EcorePackage.Literals.ESTRUCTURAL_FEATURE__TRANSIENT) {
                if (o instanceof EReference && o.eIsSet((EStructuralFeature)EcorePackage.Literals.EREFERENCE__RESOLVE_PROXIES)) {
                    this.saveExtensionFeature(o, (EStructuralFeature)EcorePackage.Literals.EREFERENCE__RESOLVE_PROXIES);
                }
            } else if (f == EcorePackage.Literals.ESTRUCTURAL_FEATURE__UNSETTABLE) {
                if (o.eIsSet((EStructuralFeature)EcorePackage.Literals.ESTRUCTURAL_FEATURE__TRANSIENT)) {
                    this.saveExtensionFeature(o, (EStructuralFeature)EcorePackage.Literals.ESTRUCTURAL_FEATURE__TRANSIENT);
                }
                if (o instanceof EReference && o.eIsSet((EStructuralFeature)EcorePackage.Literals.EREFERENCE__RESOLVE_PROXIES)) {
                    this.saveExtensionFeature(o, (EStructuralFeature)EcorePackage.Literals.EREFERENCE__RESOLVE_PROXIES);
                }
            } else if (f == EcorePackage.Literals.ESTRUCTURAL_FEATURE__VOLATILE) {
                if (o.eIsSet((EStructuralFeature)EcorePackage.Literals.ESTRUCTURAL_FEATURE__UNSETTABLE)) {
                    this.saveExtensionFeature(o, (EStructuralFeature)EcorePackage.Literals.ESTRUCTURAL_FEATURE__UNSETTABLE);
                }
                if (o.eIsSet((EStructuralFeature)EcorePackage.Literals.ESTRUCTURAL_FEATURE__TRANSIENT)) {
                    this.saveExtensionFeature(o, (EStructuralFeature)EcorePackage.Literals.ESTRUCTURAL_FEATURE__TRANSIENT);
                }
                if (o instanceof EReference && o.eIsSet((EStructuralFeature)EcorePackage.Literals.EREFERENCE__RESOLVE_PROXIES)) {
                    this.saveExtensionFeature(o, (EStructuralFeature)EcorePackage.Literals.EREFERENCE__RESOLVE_PROXIES);
                }
            }
            this.doc.endElement();
        } else {
            super.saveDataTypeElementSingle(o, f);
        }
    }

    @Override
    protected String getDatatypeValue(Object value, EStructuralFeature f, boolean isAttribute) {
        String result = super.getDatatypeValue(value, f, isAttribute);
        if (f == EcorePackage.Literals.ETYPED_ELEMENT__UPPER_BOUND && "-1".equals(result)) {
            result = "*";
        }
        return result;
    }

    protected void saveExtensionFeature(EObject o, EStructuralFeature f) {
        this.doc.startElement(f.getName());
        EDataType eDataType = (EDataType)f.getEType();
        this.doc.endContentElement(EcoreFactory.eINSTANCE.convertToString(eDataType, o.eGet(f)));
    }

    @Override
    protected void saveContainedSingle(EObject o, EStructuralFeature f) {
        if (f == EcorePackage.Literals.ETYPED_ELEMENT__EGENERIC_TYPE) {
            this.doc.startElement("xmi:Extension");
            this.doc.addAttribute("extender", "http://www.eclipse.org/emf/2002/Ecore");
            super.saveContainedSingle(o, f);
            this.doc.endElement();
        } else {
            super.saveContainedSingle(o, f);
        }
    }

    @Override
    protected void saveContainedMany(EObject o, EStructuralFeature f) {
        if (f == EcorePackage.Literals.EMODEL_ELEMENT__EANNOTATIONS) {
            String source;
            EAnnotation eAnnotation;
            List eAnnotations = ((InternalEList)this.helper.getValue(o, f)).basicList();
            boolean saveExtension = false;
            int size = eAnnotations.size();
            int i = 0;
            while (i < size) {
                eAnnotation = (EAnnotation)eAnnotations.get(i);
                source = eAnnotation.getSource();
                if ("http://schema.omg.org/spec/MOF/2.0/emof.xml#Comment".equals(source)) {
                    this.doc.startElement("ownedComment");
                    this.doc.addAttribute("body", (String)eAnnotation.getDetails().get((Object)"body"));
                    this.doc.endElement();
                } else if (source.startsWith("http://schema.omg.org/spec/MOF/2.0/emof.xml")) {
                    this.doc.startElement("ownedComment");
                    this.doc.addAttribute("body", (String)eAnnotation.getDetails().get((Object)"body"));
                    this.doc.startElement("ownedComment");
                    this.doc.addAttribute("body", source);
                    this.doc.endElement();
                    this.doc.endElement();
                } else {
                    saveExtension = true;
                }
                ++i;
            }
            if (saveExtension) {
                this.doc.startElement("xmi:Extension");
                this.doc.addAttribute("extender", "http://www.eclipse.org/emf/2002/Ecore");
                i = 0;
                while (i < size) {
                    eAnnotation = (EAnnotation)eAnnotations.get(i);
                    source = eAnnotation.getSource();
                    if (!source.startsWith("http://schema.omg.org/spec/MOF/2.0/emof.xml")) {
                        this.saveElement((InternalEObject)eAnnotation, f);
                    }
                    ++i;
                }
                this.doc.endElement();
            }
        } else if (f == EcorePackage.Literals.ECLASS__EGENERIC_SUPER_TYPES || f == EcorePackage.Literals.EOPERATION__EGENERIC_EXCEPTIONS || f == EcorePackage.Literals.ECLASSIFIER__ETYPE_PARAMETERS || f == EcorePackage.Literals.EOPERATION__ETYPE_PARAMETERS) {
            this.doc.startElement("xmi:Extension");
            this.doc.addAttribute("extender", "http://www.eclipse.org/emf/2002/Ecore");
            super.saveContainedMany(o, f);
            this.doc.endElement();
        } else {
            super.saveContainedMany(o, f);
        }
    }

    @Override
    public Object writeTopObjects(List<? extends EObject> contents) {
        this.doc.startElement("xmi:XMI");
        Object mark = this.doc.mark();
        int i = 0;
        int size = contents.size();
        while (i < size) {
            EObject top = contents.get(i);
            EClass eClass = top.eClass();
            if (eClass == EcorePackage.Literals.EANNOTATION) {
                EAnnotation annotation = (EAnnotation)top;
                String source = annotation.getSource();
                if ("http://schema.omg.org/spec/mof/2.0/emof.xmi".equals(source) || "http://schema.omg.org/spec/MOF/2.0/emof.xml".equals(source)) {
                    this.doc.startElement("emof:Tag");
                    this.doc.addAttribute(this.idAttributeName, this.helper.getID((EObject)annotation));
                    this.doc.addAttribute("name", (String)annotation.getDetails().get((Object)"name"));
                    this.doc.addAttribute("value", (String)annotation.getDetails().get((Object)"value"));
                    InternalEList values = (InternalEList)annotation.getReferences();
                    if (!values.isEmpty()) {
                        if (this.sameDocMany((EObject)annotation, (EStructuralFeature)EcorePackage.Literals.EANNOTATION__REFERENCES) == 2) {
                            Iterator iter = values.basicIterator();
                            while (iter.hasNext()) {
                                EObject value = (EObject)iter.next();
                                String href = this.helper.getHREF(value);
                                if (href == null) continue;
                                this.doc.startElement("element");
                                this.doc.addAttribute("href", href);
                                this.doc.endEmptyElement();
                            }
                        } else {
                            StringBuffer ids = new StringBuffer();
                            boolean failed = true;
                            Iterator iter = values.basicIterator();
                            while (true) {
                                EObject value;
                                String idref;
                                if ((idref = this.helper.getIDREF(value = (EObject)iter.next())) == null) {
                                    failed = true;
                                    if (iter.hasNext()) continue;
                                    break;
                                }
                                ids.append(idref);
                                if (!iter.hasNext()) break;
                                ids.append(' ');
                            }
                            String idsString = ids.toString();
                            if (!failed || (idsString = idsString.trim()).length() != 0) {
                                this.doc.addAttribute("element", ids.toString());
                            }
                        }
                    }
                    this.doc.endElement();
                }
            } else {
                String name = this.helper.getQName(eClass);
                this.doc.startElement(name);
                this.saveElementID(top);
            }
            ++i;
        }
        this.doc.endElement();
        return mark;
    }

    protected class EMOFXMLTypeInfoImpl
    extends XMLSaveImpl.XMLTypeInfoImpl {
        protected XMLSave.XMLTypeInfo xmlTypeInfo;

        public EMOFXMLTypeInfoImpl(XMLSave.XMLTypeInfo xmlTypeInfo) {
            super(EMOFSaveImpl.this);
            this.xmlTypeInfo = xmlTypeInfo;
        }

        public boolean shouldSaveType(EClass objectType, EClassifier featureType, EStructuralFeature feature) {
            return feature != EcorePackage.Literals.ECLASS__ESTRUCTURAL_FEATURES && (this.xmlTypeInfo == null ? super.shouldSaveType(objectType, featureType, feature) : this.xmlTypeInfo.shouldSaveType(objectType, featureType, feature));
        }

        public boolean shouldSaveType(EClass objectType, EClass featureType, EStructuralFeature feature) {
            return feature != EcorePackage.Literals.ECLASS__ESTRUCTURAL_FEATURES && (this.xmlTypeInfo == null ? super.shouldSaveType(objectType, featureType, feature) : this.xmlTypeInfo.shouldSaveType(objectType, featureType, feature));
        }
    }
}

