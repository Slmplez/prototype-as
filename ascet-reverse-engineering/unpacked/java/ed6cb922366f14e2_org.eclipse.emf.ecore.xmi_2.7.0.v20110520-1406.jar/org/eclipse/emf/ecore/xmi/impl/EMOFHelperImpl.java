/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.TreeIterator
 *  org.eclipse.emf.ecore.EAnnotation
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EClassifier
 *  org.eclipse.emf.ecore.EDataType
 *  org.eclipse.emf.ecore.EFactory
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EOperation
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EParameter
 *  org.eclipse.emf.ecore.EReference
 *  org.eclipse.emf.ecore.EStructuralFeature
 *  org.eclipse.emf.ecore.ETypedElement
 *  org.eclipse.emf.ecore.EcoreFactory
 *  org.eclipse.emf.ecore.EcorePackage
 *  org.eclipse.emf.ecore.EcorePackage$Literals
 *  org.eclipse.emf.ecore.util.ECrossReferenceEList$FeatureIteratorImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.ecore.util.EcoreUtil$Copier
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package org.eclipse.emf.ecore.xmi.impl;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.eclipse.emf.common.util.TreeIterator;
import org.eclipse.emf.ecore.EAnnotation;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EClassifier;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EFactory;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EOperation;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EParameter;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.ETypedElement;
import org.eclipse.emf.ecore.EcoreFactory;
import org.eclipse.emf.ecore.EcorePackage;
import org.eclipse.emf.ecore.util.ECrossReferenceEList;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.InternalEList;
import org.eclipse.emf.ecore.xmi.XMLResource;
import org.eclipse.emf.ecore.xmi.impl.EMOFExtendedMetaData;
import org.eclipse.emf.ecore.xmi.impl.EMOFHandler;
import org.eclipse.emf.ecore.xmi.impl.XMLHelperImpl;

public class EMOFHelperImpl
extends XMLHelperImpl
implements EMOFHandler.Helper {
    protected EClass propertyClass = null;
    protected List<EObject> propertyFeatureList = null;
    protected Set<EObject> objectsWithGenericTypeList = new HashSet<EObject>();
    private static final Integer ONE = 1;

    public EMOFHelperImpl(XMLResource resource) {
        super(resource);
        this.packages.put(EcorePackage.eINSTANCE, "emof");
    }

    public Object getValue(EObject object, EStructuralFeature feature) {
        if (feature == EcorePackage.Literals.ESTRUCTURAL_FEATURE__CHANGEABLE) {
            return ((EStructuralFeature)object).isChangeable() ? Boolean.FALSE : Boolean.TRUE;
        }
        return super.getValue(object, feature);
    }

    public void setValue(EObject object, EStructuralFeature feature, Object value, int position) {
        if (feature == EcorePackage.Literals.ESTRUCTURAL_FEATURE__CHANGEABLE) {
            ((EStructuralFeature)object).setChangeable(Boolean.FALSE.toString().equals(value));
        } else if (feature == EcorePackage.Literals.ETYPED_ELEMENT__UPPER_BOUND && "*".equals(value)) {
            ((ETypedElement)object).setUpperBound(-1);
        } else if (feature == EcorePackage.Literals.ETYPED_ELEMENT__ETYPE) {
            if (((ETypedElement)object).getEType() == null) {
                super.setValue(object, feature, value, position);
            }
        } else if (feature == EcorePackage.Literals.ECLASS__ESUPER_TYPES || feature == EcorePackage.Literals.EOPERATION__EEXCEPTIONS) {
            if (!this.objectsWithGenericTypeList.contains(object)) {
                super.setValue(object, feature, value, position);
            }
        } else if (feature == EcorePackage.Literals.ECLASS__EGENERIC_SUPER_TYPES || feature == EcorePackage.Literals.EOPERATION__EGENERIC_EXCEPTIONS) {
            if (this.objectsWithGenericTypeList.add(object)) {
                ((InternalEList)object.eGet(feature)).clear();
            }
            super.setValue(object, feature, value, position);
        } else {
            super.setValue(object, feature, value, position);
        }
    }

    public String getHREF(EObject obj) {
        String href = super.getHREF(obj);
        if (href != null && href.startsWith("http://www.eclipse.org/emf/2002/Ecore#//")) {
            String dataType = href.substring("http://www.eclipse.org/emf/2002/Ecore#//".length());
            int i = 0;
            while (i < EMOFExtendedMetaData.MAPPED_ECORE_EDATATYPES.length) {
                if (dataType.equals(EMOFExtendedMetaData.MAPPED_ECORE_EDATATYPES[i])) {
                    return "http://schema.omg.org/spec/MOF/2.0/emof.xml#" + EMOFExtendedMetaData.MAPPED_EMOF_EDATATYPES[i];
                }
                ++i;
            }
            return "http://www.eclipse.org/emf/2002/Ecore.emof#ecore." + dataType;
        }
        return href;
    }

    public EStructuralFeature getFeature(EClass eClass, String namespaceURI, String name, boolean isElement) {
        if (eClass == EcorePackage.Literals.EANNOTATION && "element".equals(name)) {
            return EcorePackage.Literals.EANNOTATION__REFERENCES;
        }
        if (EcorePackage.Literals.EMODEL_ELEMENT.isSuperTypeOf(eClass) && "ownedComment".equals(name)) {
            return EcorePackage.Literals.EMODEL_ELEMENT__EANNOTATIONS;
        }
        int i = 0;
        int size = eClass.getFeatureCount();
        while (i < size) {
            EStructuralFeature eStructuralFeature = eClass.getEStructuralFeature(i);
            if (name.equals(this.extendedMetaData.getName(eStructuralFeature)) && (namespaceURI == null ? this.extendedMetaData.getNamespace(eStructuralFeature) == null : namespaceURI.equals(this.extendedMetaData.getNamespace(eStructuralFeature)))) {
                this.computeFeatureKind(eStructuralFeature);
                return eStructuralFeature;
            }
            ++i;
        }
        return null;
    }

    public EClassifier getType(EFactory eFactory, String typeName) {
        EPackage ePackage = eFactory.getEPackage();
        if (ePackage == EcorePackage.eINSTANCE) {
            if (EcorePackage.Literals.ESTRUCTURAL_FEATURE.getName().equals(typeName) || "Property".equals(typeName)) {
                if (this.propertyClass == null) {
                    this.propertyClass = EcoreFactory.eINSTANCE.createEClass();
                    this.propertyClass.getESuperTypes().add((Object)EcorePackage.Literals.EREFERENCE);
                    this.propertyClass.getESuperTypes().add((Object)EcorePackage.Literals.EATTRIBUTE);
                    this.propertyClass.setName("EMOFProperty");
                    EPackage propertyPackage = EcoreFactory.eINSTANCE.createEPackage();
                    propertyPackage.getEClassifiers().add((Object)this.propertyClass);
                    this.propertyFeatureList = new ArrayList<EObject>();
                }
                return this.propertyClass;
            }
            if ("Tag".equals(typeName)) {
                return EcorePackage.Literals.EANNOTATION;
            }
        }
        return super.getType(eFactory, typeName);
    }

    public EObject createObject(EFactory eFactory, EClassifier type) {
        if (type == this.propertyClass && this.propertyClass != null) {
            EObject property = this.propertyClass.getEPackage().getEFactoryInstance().create(this.propertyClass);
            property.eSet((EStructuralFeature)EcorePackage.Literals.ETYPED_ELEMENT__LOWER_BOUND, (Object)ONE);
            property.eSet((EStructuralFeature)EcorePackage.Literals.ETYPED_ELEMENT__ORDERED, (Object)Boolean.FALSE);
            this.propertyFeatureList.add(property);
            return property;
        }
        if (EcorePackage.Literals.EANNOTATION == type) {
            EAnnotation annotation = EcoreFactory.eINSTANCE.createEAnnotation();
            annotation.setSource("http://schema.omg.org/spec/MOF/2.0/emof.xml");
            return annotation;
        }
        if (EcorePackage.Literals.EOPERATION == type) {
            EOperation eOperation = EcoreFactory.eINSTANCE.createEOperation();
            eOperation.setLowerBound(1);
            eOperation.setOrdered(false);
            return eOperation;
        }
        if (EcorePackage.Literals.EPARAMETER == type) {
            EParameter eParameter = EcoreFactory.eINSTANCE.createEParameter();
            eParameter.setLowerBound(1);
            eParameter.setOrdered(false);
            return eParameter;
        }
        return super.createObject(eFactory, type);
    }

    public void convertPropertyFeatures() {
        if (this.propertyFeatureList != null) {
            EcoreUtil.Copier copier = new EcoreUtil.Copier(false){
                private static final long serialVersionUID = 1L;

                protected EObject createCopy(EObject eObject) {
                    EClass eClass = ((EStructuralFeature)eObject).getEType() instanceof EDataType ? EcorePackage.Literals.EATTRIBUTE : EcorePackage.Literals.EREFERENCE;
                    return EcoreUtil.create((EClass)eClass);
                }

                protected void copyContainment(EReference eReference, EObject eObject, EObject copyEObject) {
                    if (eReference == EcorePackage.Literals.ETYPED_ELEMENT__EGENERIC_TYPE) {
                        ((ETypedElement)copyEObject).setEGenericType(((ETypedElement)eObject).getEGenericType());
                    } else {
                        ((EStructuralFeature)copyEObject).getEAnnotations().addAll((Collection)((EStructuralFeature)eObject).getEAnnotations());
                    }
                }

                protected void copyAttribute(EAttribute eAttribute, EObject eObject, EObject copyEObject) {
                    if (copyEObject.eClass().getEAllStructuralFeatures().contains((Object)eAttribute)) {
                        super.copyAttribute(eAttribute, eObject, copyEObject);
                    }
                }
            };
            copier.copyAll(this.propertyFeatureList);
            copier.copyReferences();
            for (Map.Entry entry : copier.entrySet()) {
                EStructuralFeature emofFeature = (EStructuralFeature)entry.getKey();
                EStructuralFeature ecoreFeature = (EStructuralFeature)entry.getValue();
                this.resource.setID((EObject)ecoreFeature, this.resource.getID((EObject)emofFeature));
                EObject eObject = emofFeature.eContainer();
                List list = (List)eObject.eGet((EStructuralFeature)emofFeature.eContainmentFeature());
                list.set(list.indexOf(emofFeature), ecoreFeature);
            }
            TreeIterator contents = EcoreUtil.getAllContents((Collection)this.resource.getContents(), (boolean)false);
            while (contents.hasNext()) {
                EObject eObject = (EObject)contents.next();
                ECrossReferenceEList.FeatureIteratorImpl<EObject> featureIterator = new ECrossReferenceEList.FeatureIteratorImpl<EObject>(eObject){

                    protected boolean isIncluded(EStructuralFeature eStructuralFeature) {
                        return !eStructuralFeature.isDerived() && super.isIncluded(eStructuralFeature);
                    }
                };
                while (featureIterator.hasNext()) {
                    EObject targetEObject = (EObject)featureIterator.next();
                    EObject copyEObject = (EObject)copier.get((Object)targetEObject);
                    if (copyEObject == null) continue;
                    EReference eReference = (EReference)featureIterator.feature();
                    if (eReference.isMany()) {
                        List list = (List)eObject.eGet((EStructuralFeature)eReference);
                        list.set(list.indexOf(targetEObject), copyEObject);
                        continue;
                    }
                    eObject.eSet((EStructuralFeature)eReference, (Object)copyEObject);
                }
            }
        }
    }
}

