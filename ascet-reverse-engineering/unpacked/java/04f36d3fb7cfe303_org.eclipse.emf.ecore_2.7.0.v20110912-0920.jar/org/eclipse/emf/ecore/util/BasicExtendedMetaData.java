/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.common.util.EMap
 *  org.eclipse.emf.common.util.UniqueEList
 */
package org.eclipse.emf.ecore.util;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.common.util.EMap;
import org.eclipse.emf.common.util.UniqueEList;
import org.eclipse.emf.ecore.EAnnotation;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EClassifier;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EModelElement;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.EcoreFactory;
import org.eclipse.emf.ecore.EcorePackage;
import org.eclipse.emf.ecore.impl.EPackageRegistryImpl;
import org.eclipse.emf.ecore.util.ExtendedMetaData;
import org.eclipse.emf.ecore.util.FeatureMapUtil;
import org.eclipse.emf.ecore.xml.type.XMLTypePackage;
import org.eclipse.emf.ecore.xml.type.util.XMLTypeUtil;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class BasicExtendedMetaData
implements ExtendedMetaData {
    protected String annotationURI;
    protected EPackage.Registry registry;
    protected EPackage.Registry demandRegistry;
    protected Map<EModelElement, Object> extendedMetaDataHolderCache;
    protected Map<EModelElement, EAnnotation> annotationMap;
    protected static final String UNINITIALIZED_STRING = "uninitialized";
    protected static final int UNINITIALIZED_INT = -2;
    protected static final EDataType UNINITIALIZED_EDATA_TYPE = EcoreFactory.eINSTANCE.createEDataType();
    protected static final EStructuralFeature UNINITIALIZED_ESTRUCTURAL_FEATURE = EcoreFactory.eINSTANCE.createEAttribute();

    public BasicExtendedMetaData() {
        this("http:///org/eclipse/emf/ecore/util/ExtendedMetaData", EPackage.Registry.INSTANCE);
    }

    public BasicExtendedMetaData(EPackage.Registry registry) {
        this("http:///org/eclipse/emf/ecore/util/ExtendedMetaData", registry);
    }

    public BasicExtendedMetaData(String annotationURI, EPackage.Registry registry) {
        this(annotationURI, registry, null);
    }

    public BasicExtendedMetaData(String annotationURI, EPackage.Registry registry, Map<EModelElement, EAnnotation> annotationMap) {
        this.annotationURI = annotationURI.intern();
        this.registry = registry;
        this.demandRegistry = new EPackageRegistryImpl();
        this.annotationMap = annotationMap;
        if (annotationURI != "http:///org/eclipse/emf/ecore/util/ExtendedMetaData") {
            this.extendedMetaDataHolderCache = new HashMap<EModelElement, Object>();
        }
    }

    protected EAnnotation getAnnotation(EModelElement eModelElement, boolean demandCreate) {
        if (this.annotationMap != null) {
            EAnnotation result = this.annotationMap.get(eModelElement);
            if (result == null && demandCreate) {
                result = EcoreFactory.eINSTANCE.createEAnnotation();
                result.setSource(this.annotationURI);
                this.annotationMap.put(eModelElement, result);
            }
            return result;
        }
        EAnnotation result = eModelElement.getEAnnotation(this.annotationURI);
        if (result == null && demandCreate) {
            result = EcoreFactory.eINSTANCE.createEAnnotation();
            result.setSource(this.annotationURI);
            eModelElement.getEAnnotations().add((Object)result);
        }
        return result;
    }

    @Override
    public EClassifier getType(EPackage ePackage, String name) {
        return this.getExtendedMetaData(ePackage).getType(name);
    }

    @Override
    public EPackage getPackage(String namespace) {
        EPackage ePackage = this.registry.getEPackage(namespace);
        return ePackage;
    }

    @Override
    public void putPackage(String namespace, EPackage ePackage) {
        this.registry.put(namespace, ePackage);
    }

    @Override
    public EClass getDocumentRoot(EPackage ePackage) {
        return (EClass)this.getType(ePackage, "");
    }

    @Override
    public void setDocumentRoot(EClass eClass) {
        this.setName(eClass, "");
        this.setContentKind(eClass, 3);
    }

    @Override
    public boolean isDocumentRoot(EClass eClass) {
        return "".equals(this.getName(eClass));
    }

    @Override
    public EReference getXMLNSPrefixMapFeature(EClass eClass) {
        if (this.getContentKind(eClass) == 3) {
            EList<EReference> eAllReferences = eClass.getEAllReferences();
            int i = 0;
            int size = eAllReferences.size();
            while (i < size) {
                EReference eReference = (EReference)eAllReferences.get(i);
                if ("xmlns:prefix".equals(this.getName(eReference))) {
                    return eReference;
                }
                ++i;
            }
        }
        return null;
    }

    @Override
    public EReference getXSISchemaLocationMapFeature(EClass eClass) {
        if (this.getContentKind(eClass) == 3) {
            EList<EReference> eAllReferences = eClass.getEAllReferences();
            int i = 0;
            int size = eAllReferences.size();
            while (i < size) {
                EReference eReference = (EReference)eAllReferences.get(i);
                if ("xsi:schemaLocation".equals(this.getName(eReference))) {
                    return eReference;
                }
                ++i;
            }
        }
        return null;
    }

    @Override
    public boolean isQualified(EPackage ePackage) {
        return this.getExtendedMetaData(ePackage).isQualified();
    }

    protected boolean basicIsQualified(EPackage ePackage) {
        EAnnotation eAnnotation = this.getAnnotation(ePackage, false);
        return eAnnotation == null || !"false".equals(eAnnotation.getDetails().get((Object)"qualified"));
    }

    @Override
    public void setQualified(EPackage ePackage, boolean isQualified) {
        if (!isQualified) {
            EAnnotation eAnnotation = this.getAnnotation(ePackage, true);
            eAnnotation.getDetails().put((Object)"qualified", (Object)"false");
        } else {
            EAnnotation eAnnotation = this.getAnnotation(ePackage, false);
            if (eAnnotation != null) {
                eAnnotation.getDetails().remove((Object)"qualified");
            }
        }
        this.getExtendedMetaData(ePackage).setQualified(isQualified);
    }

    @Override
    public String getNamespace(EPackage ePackage) {
        if (this.isQualified(ePackage)) {
            return ePackage.getNsURI();
        }
        return null;
    }

    @Override
    public String getNamespace(EClassifier eClassifier) {
        return this.getNamespace(eClassifier.getEPackage());
    }

    @Override
    public String getNamespace(EStructuralFeature eStructuralFeature) {
        return this.getExtendedMetaData(eStructuralFeature).getNamespace();
    }

    public String basicGetNamespace(EStructuralFeature eStructuralFeature) {
        EAnnotation eAnnotation = this.getAnnotation(eStructuralFeature, false);
        if (eAnnotation == null) {
            return null;
        }
        String result = (String)eAnnotation.getDetails().get((Object)"namespace");
        if ("##targetNamespace".equals(result)) {
            return this.getNamespace(eStructuralFeature.getEContainingClass().getEPackage());
        }
        return result;
    }

    @Override
    public void setNamespace(EStructuralFeature eStructuralFeature, String namespace) {
        String packageNamespace = this.getNamespace(eStructuralFeature.getEContainingClass().getEPackage());
        String convertedNamespace = namespace;
        if (namespace == null ? packageNamespace == null : namespace.equals(packageNamespace)) {
            convertedNamespace = "##targetNamespace";
        }
        if (convertedNamespace != null) {
            EAnnotation eAnnotation = this.getAnnotation(eStructuralFeature, true);
            eAnnotation.getDetails().put((Object)"namespace", (Object)convertedNamespace);
        } else {
            EAnnotation eAnnotation = this.getAnnotation(eStructuralFeature, false);
            if (eAnnotation != null) {
                eAnnotation.getDetails().remove((Object)"namespace");
            }
        }
        this.getExtendedMetaData(eStructuralFeature).setNamespace(namespace);
    }

    @Override
    public String getName(EClassifier eClassifier) {
        return this.getExtendedMetaData(eClassifier).getName();
    }

    protected String basicGetName(EClassifier eClassifier) {
        String result;
        EAnnotation eAnnotation = this.getAnnotation(eClassifier, false);
        if (eAnnotation != null && (result = (String)eAnnotation.getDetails().get((Object)"name")) != null) {
            return result;
        }
        return eClassifier.getName();
    }

    @Override
    public void setName(EClassifier eClassifier, String name) {
        EAnnotation eAnnotation = this.getAnnotation(eClassifier, true);
        eAnnotation.getDetails().put((Object)"name", (Object)name);
        this.getExtendedMetaData(eClassifier).setName(name);
        EPackage ePackage = eClassifier.getEPackage();
        if (ePackage != null) {
            this.getExtendedMetaData(ePackage).rename(eClassifier, name);
        }
    }

    @Override
    public boolean isAnonymous(EClassifier eClassifier) {
        String name = this.getExtendedMetaData(eClassifier).getName();
        return name.length() == 0 || name.indexOf("_._") != -1;
    }

    @Override
    public String getName(EStructuralFeature eStructuralFeature) {
        return this.getExtendedMetaData(eStructuralFeature).getName();
    }

    protected String basicGetName(EStructuralFeature eStructuralFeature) {
        String result;
        EAnnotation eAnnotation = this.getAnnotation(eStructuralFeature, false);
        if (eAnnotation != null && (result = (String)eAnnotation.getDetails().get((Object)"name")) != null) {
            return result;
        }
        return eStructuralFeature.getName();
    }

    @Override
    public void setName(EStructuralFeature eStructuralFeature, String name) {
        EAnnotation eAnnotation = this.getAnnotation(eStructuralFeature, true);
        eAnnotation.getDetails().put((Object)"name", (Object)name);
        this.getExtendedMetaData(eStructuralFeature).setName(name);
    }

    protected String getQualifiedName(String defaultNamespace, EClassifier eClassifier) {
        String namespace = this.getNamespace(eClassifier);
        String name = this.getName(eClassifier);
        if (namespace == null) {
            return namespace == defaultNamespace ? name : "#" + name;
        }
        return namespace.equals(defaultNamespace) ? name : String.valueOf(namespace) + "#" + name;
    }

    protected String getQualifiedName(String defaultNamespace, EStructuralFeature eStructuralFeature) {
        String namespace = this.getNamespace(eStructuralFeature);
        String name = this.getName(eStructuralFeature);
        if (namespace == null) {
            return namespace == defaultNamespace ? name : "#" + name;
        }
        return namespace.equals(defaultNamespace) ? name : String.valueOf(namespace) + "#" + name;
    }

    @Override
    public EClassifier getType(String namespace, String name) {
        EPackage ePackage = this.getPackage(namespace);
        return ePackage == null ? null : this.getType(ePackage, name);
    }

    @Override
    public EStructuralFeature getAttribute(String namespace, String name) {
        EClass documentRoot;
        EPackage ePackage = this.getPackage(namespace);
        if (ePackage != null && (documentRoot = this.getDocumentRoot(ePackage)) != null) {
            return this.getLocalAttribute(documentRoot, namespace, name);
        }
        return null;
    }

    @Override
    public EStructuralFeature getElement(String namespace, String name) {
        EClass documentRoot;
        EPackage ePackage = this.getPackage(namespace);
        if (ePackage != null && (documentRoot = this.getDocumentRoot(ePackage)) != null) {
            return this.getLocalElement(documentRoot, namespace, name);
        }
        return null;
    }

    @Override
    public int getFeatureKind(EStructuralFeature eStructuralFeature) {
        return this.getExtendedMetaData(eStructuralFeature).getFeatureKind();
    }

    protected int basicGetFeatureKind(EStructuralFeature eStructuralFeature) {
        Object kind;
        EAnnotation eAnnotation = this.getAnnotation(eStructuralFeature, false);
        if (eAnnotation != null && (kind = eAnnotation.getDetails().get((Object)"kind")) != null) {
            int i = 1;
            while (i < FEATURE_KINDS.length) {
                if (FEATURE_KINDS[i].equals(kind)) {
                    return i;
                }
                ++i;
            }
        }
        return 0;
    }

    @Override
    public void setFeatureKind(EStructuralFeature eStructuralFeature, int kind) {
        if (kind > 0 && kind < FEATURE_KINDS.length) {
            EAnnotation eAnnotation = this.getAnnotation(eStructuralFeature, true);
            eAnnotation.getDetails().put((Object)"kind", (Object)FEATURE_KINDS[kind]);
        } else {
            EAnnotation eAnnotation = this.getAnnotation(eStructuralFeature, false);
            if (eAnnotation != null) {
                eAnnotation.getDetails().remove((Object)"kind");
            }
        }
        this.getExtendedMetaData(eStructuralFeature).setFeatureKind(kind);
    }

    @Override
    public int getContentKind(EClass eClass) {
        return this.getExtendedMetaData(eClass).getContentKind();
    }

    protected int basicGetContentKind(EClass eClass) {
        Object kind;
        EAnnotation eAnnotation = this.getAnnotation(eClass, false);
        if (eAnnotation != null && (kind = eAnnotation.getDetails().get((Object)"kind")) != null) {
            int i = 1;
            while (i < CONTENT_KINDS.length) {
                if (CONTENT_KINDS[i].equals(kind)) {
                    return i;
                }
                ++i;
            }
        }
        return 0;
    }

    @Override
    public void setContentKind(EClass eClass, int kind) {
        if (kind > 0 && kind < CONTENT_KINDS.length) {
            EAnnotation eAnnotation = this.getAnnotation(eClass, true);
            eAnnotation.getDetails().put((Object)"kind", (Object)CONTENT_KINDS[kind]);
        } else {
            EAnnotation eAnnotation = this.getAnnotation(eClass, false);
            if (eAnnotation != null) {
                eAnnotation.getDetails().remove((Object)"kind");
            }
        }
        this.getExtendedMetaData(eClass).setContentKind(kind);
    }

    @Override
    public int getDerivationKind(EDataType eDataType) {
        return this.getExtendedMetaData(eDataType).getDerivationKind();
    }

    protected int basicGetDerivationKind(EClassifier eClassifier) {
        EAnnotation eAnnotation = this.getAnnotation(eClassifier, false);
        if (eAnnotation != null) {
            EMap<String, String> details = eAnnotation.getDetails();
            Object kind = details.get((Object)"restriction");
            if (kind != null) {
                return 1;
            }
            kind = details.get((Object)"list");
            if (kind != null) {
                return 2;
            }
            kind = details.get((Object)"union");
            if (kind != null) {
                return 3;
            }
        }
        return 0;
    }

    @Override
    public EDataType getBaseType(EDataType eDataType) {
        return this.getExtendedMetaData(eDataType).getBaseType();
    }

    public EDataType basicGetBaseType(EDataType eDataType) {
        EMap<String, String> details;
        String baseType;
        EAnnotation eAnnotation = this.getAnnotation(eDataType, false);
        if (eAnnotation != null && (baseType = (String)(details = eAnnotation.getDetails()).get((Object)"baseType")) != null) {
            EClassifier type;
            int index = baseType.lastIndexOf("#");
            EClassifier eClassifier = index == -1 ? this.getType(eDataType.getEPackage(), baseType) : (type = index == 0 ? this.getType((String)null, baseType.substring(1)) : this.getType(baseType.substring(0, index), baseType.substring(index + 1)));
            if (type instanceof EDataType) {
                return (EDataType)type;
            }
        }
        return null;
    }

    @Override
    public void setBaseType(EDataType eDataType, EDataType baseType) {
        if (baseType == null) {
            EAnnotation eAnnotation = this.getAnnotation(eDataType, false);
            if (eAnnotation != null) {
                eAnnotation.getDetails().remove((Object)"baseType");
            }
        } else {
            EAnnotation eAnnotation = this.getAnnotation(eDataType, true);
            eAnnotation.getDetails().put((Object)"baseType", (Object)this.getQualifiedName(this.getNamespace(eDataType), baseType));
        }
        this.getExtendedMetaData(eDataType).setBaseType(baseType);
    }

    @Override
    public EDataType getItemType(EDataType eDataType) {
        return this.getExtendedMetaData(eDataType).getItemType();
    }

    protected EDataType basicGetItemType(EDataType eDataType) {
        EMap<String, String> details;
        String itemType;
        EAnnotation eAnnotation = this.getAnnotation(eDataType, false);
        if (eAnnotation != null && (itemType = (String)(details = eAnnotation.getDetails()).get((Object)"itemType")) != null) {
            EClassifier type;
            int index = itemType.lastIndexOf("#");
            EClassifier eClassifier = index == -1 ? this.getType(eDataType.getEPackage(), itemType) : (type = index == 0 ? this.getType((String)null, itemType.substring(1)) : this.getType(itemType.substring(0, index), itemType.substring(index + 1)));
            if (type instanceof EDataType) {
                return (EDataType)type;
            }
        }
        return null;
    }

    @Override
    public void setItemType(EDataType eDataType, EDataType itemType) {
        if (itemType == null) {
            EAnnotation eAnnotation = this.getAnnotation(eDataType, false);
            if (eAnnotation != null) {
                eAnnotation.getDetails().remove((Object)"itemType");
            }
        } else {
            EAnnotation eAnnotation = this.getAnnotation(eDataType, true);
            eAnnotation.getDetails().put((Object)"itemType", (Object)this.getQualifiedName(this.getNamespace(eDataType), itemType));
        }
        this.getExtendedMetaData(eDataType).setItemType(itemType);
    }

    @Override
    public List<EDataType> getMemberTypes(EDataType eDataType) {
        return this.getExtendedMetaData(eDataType).getMemberTypes();
    }

    protected List<EDataType> basicGetMemberTypes(EDataType eDataType) {
        String memberTypes;
        EAnnotation eAnnotation = this.getAnnotation(eDataType, false);
        if (eAnnotation != null && (memberTypes = (String)eAnnotation.getDetails().get((Object)"memberTypes")) != null) {
            ArrayList<EDataType> result = new ArrayList<EDataType>();
            StringTokenizer stringTokenizer = new StringTokenizer(memberTypes);
            while (stringTokenizer.hasMoreTokens()) {
                EClassifier type;
                String member = stringTokenizer.nextToken();
                int index = member.lastIndexOf("#");
                EClassifier eClassifier = index == -1 ? this.getType(eDataType.getEPackage(), member) : (type = index == 0 ? this.getType((String)null, member.substring(1)) : this.getType(member.substring(0, index), member.substring(index + 1)));
                if (!(type instanceof EDataType)) continue;
                result.add((EDataType)type);
            }
            return result;
        }
        return Collections.emptyList();
    }

    @Override
    public void setMemberTypes(EDataType eDataType, List<EDataType> memberTypes) {
        if (memberTypes.isEmpty()) {
            EAnnotation eAnnotation = this.getAnnotation(eDataType, false);
            if (eAnnotation != null) {
                eAnnotation.getDetails().remove((Object)"memberTypes");
            }
        } else {
            EAnnotation eAnnotation = this.getAnnotation(eDataType, true);
            String namespace = this.getNamespace(eDataType);
            StringBuffer result = new StringBuffer();
            int i = 0;
            int size = memberTypes.size();
            while (i < size) {
                result.append(this.getQualifiedName(namespace, memberTypes.get(i)));
                result.append(' ');
                ++i;
            }
            eAnnotation.getDetails().put((Object)"memberTypes", (Object)result.substring(0, result.length() - 1));
        }
        this.getExtendedMetaData(eDataType).setMemberTypes(memberTypes);
    }

    protected boolean isFeatureKindSpecific() {
        return true;
    }

    protected boolean isFeatureNamespaceMatchingLax() {
        return false;
    }

    public EStructuralFeature getLocalAttribute(EClass eClass, String namespace, String name) {
        EStructuralFeature result = null;
        if (this.isFeatureKindSpecific()) {
            List<EStructuralFeature> allAttributes = this.getAllAttributes(eClass);
            int i = 0;
            int size = allAttributes.size();
            while (i < size) {
                EStructuralFeature eStructuralFeature = allAttributes.get(i);
                if (name.equals(this.getName(eStructuralFeature))) {
                    String featureNamespace = this.getNamespace(eStructuralFeature);
                    if (namespace == null) {
                        if (featureNamespace == null) {
                            return eStructuralFeature;
                        }
                        if (result == null) {
                            result = eStructuralFeature;
                        }
                    } else {
                        if (namespace.equals(featureNamespace)) {
                            return eStructuralFeature;
                        }
                        if (featureNamespace == null && result == null) {
                            result = eStructuralFeature;
                        }
                    }
                }
                ++i;
            }
        } else {
            int i = 0;
            int size = eClass.getFeatureCount();
            while (i < size) {
                EStructuralFeature eStructuralFeature = eClass.getEStructuralFeature(i);
                switch (this.getFeatureKind(eStructuralFeature)) {
                    case 0: 
                    case 2: {
                        if (!name.equals(this.getName(eStructuralFeature))) break;
                        String featureNamespace = this.getNamespace(eStructuralFeature);
                        if (namespace == null) {
                            if (featureNamespace == null) {
                                return eStructuralFeature;
                            }
                            if (result != null) break;
                            result = eStructuralFeature;
                            break;
                        }
                        if (namespace.equals(featureNamespace)) {
                            return eStructuralFeature;
                        }
                        if (featureNamespace != null || result != null) break;
                        result = eStructuralFeature;
                    }
                }
                ++i;
            }
        }
        return this.isFeatureNamespaceMatchingLax() ? result : null;
    }

    @Override
    public EStructuralFeature getAttribute(EClass eClass, String namespace, String name) {
        EStructuralFeature result = this.getLocalAttribute(eClass, namespace, name);
        if (result == null && (result = this.getAttribute(namespace, name)) != null && this.getAffiliation(eClass, result) == null) {
            return null;
        }
        return result;
    }

    protected EStructuralFeature getLocalElement(EClass eClass, String namespace, String name) {
        EStructuralFeature result = null;
        if (this.isFeatureKindSpecific()) {
            List<EStructuralFeature> allElements = this.getAllElements(eClass);
            int i = 0;
            int size = allElements.size();
            while (i < size) {
                EStructuralFeature eStructuralFeature = allElements.get(i);
                if (name.equals(this.getName(eStructuralFeature))) {
                    String featureNamespace = this.getNamespace(eStructuralFeature);
                    if (namespace == null) {
                        if (featureNamespace == null) {
                            return eStructuralFeature;
                        }
                        if (result == null) {
                            result = eStructuralFeature;
                        }
                    } else {
                        if (namespace.equals(featureNamespace)) {
                            return eStructuralFeature;
                        }
                        if (featureNamespace == null && result == null) {
                            result = eStructuralFeature;
                        }
                    }
                }
                ++i;
            }
        } else {
            int i = 0;
            int size = eClass.getFeatureCount();
            while (i < size) {
                EStructuralFeature eStructuralFeature = eClass.getEStructuralFeature(i);
                switch (this.getFeatureKind(eStructuralFeature)) {
                    case 0: 
                    case 4: {
                        if (!name.equals(this.getName(eStructuralFeature))) break;
                        String featureNamespace = this.getNamespace(eStructuralFeature);
                        if (namespace == null) {
                            if (featureNamespace == null) {
                                return eStructuralFeature;
                            }
                            if (result != null) break;
                            result = eStructuralFeature;
                            break;
                        }
                        if (namespace.equals(featureNamespace)) {
                            return eStructuralFeature;
                        }
                        if (featureNamespace != null || result != null) break;
                        result = eStructuralFeature;
                    }
                }
                ++i;
            }
        }
        return this.isFeatureNamespaceMatchingLax() ? result : null;
    }

    @Override
    public EStructuralFeature getElement(EClass eClass, String namespace, String name) {
        EStructuralFeature result = this.getLocalElement(eClass, namespace, name);
        if (result == null && (result = this.getElement(namespace, name)) != null && this.getAffiliation(eClass, result) == null) {
            return null;
        }
        return result;
    }

    @Override
    public List<EStructuralFeature> getAllAttributes(EClass eClass) {
        EList<EClass> superTypes = eClass.getESuperTypes();
        UniqueEList result = null;
        boolean changeable = false;
        int i = 0;
        int size = superTypes.size();
        while (i < size) {
            EClass eSuperType = (EClass)superTypes.get(i);
            UniqueEList allAttributes = this.getAllAttributes(eSuperType);
            if (!allAttributes.isEmpty()) {
                if (result == null) {
                    result = allAttributes;
                } else {
                    if (!changeable) {
                        changeable = true;
                        result = new UniqueEList(result);
                    }
                    result.addAll(allAttributes);
                }
            }
            ++i;
        }
        List<EStructuralFeature> attributes = this.getAttributes(eClass);
        if (!attributes.isEmpty()) {
            if (result == null) {
                return attributes;
            }
            if (!changeable) {
                result = new UniqueEList((Collection)result);
            }
            result.addAll(attributes);
            return result;
        }
        return result == null ? Collections.emptyList() : result;
    }

    @Override
    public List<EStructuralFeature> getAllElements(EClass eClass) {
        EList<EClass> superTypes = eClass.getESuperTypes();
        UniqueEList result = null;
        boolean changeable = false;
        int i = 0;
        int size = superTypes.size();
        while (i < size) {
            EClass eSuperType = (EClass)superTypes.get(i);
            UniqueEList allElements = this.getAllElements(eSuperType);
            if (!allElements.isEmpty()) {
                if (result == null) {
                    result = allElements;
                } else {
                    if (!changeable) {
                        changeable = true;
                        result = new UniqueEList(result);
                    }
                    result.addAll(allElements);
                }
            }
            ++i;
        }
        List<EStructuralFeature> elements = this.getElements(eClass);
        if (!elements.isEmpty()) {
            if (result == null) {
                return elements;
            }
            if (!changeable) {
                result = new UniqueEList((Collection)result);
            }
            result.addAll(elements);
            return result;
        }
        return result == null ? Collections.emptyList() : result;
    }

    @Override
    public List<EStructuralFeature> getAttributes(EClass eClass) {
        EList<EStructuralFeature> eStructuralFeatures = eClass.getEStructuralFeatures();
        ArrayList<EStructuralFeature> result = null;
        int i = 0;
        int size = eStructuralFeatures.size();
        while (i < size) {
            EStructuralFeature eStructuralFeature = (EStructuralFeature)eStructuralFeatures.get(i);
            switch (this.getFeatureKind(eStructuralFeature)) {
                case 2: 
                case 3: {
                    if (result == null) {
                        result = new ArrayList<EStructuralFeature>();
                    }
                    result.add(eStructuralFeature);
                }
            }
            ++i;
        }
        return result == null ? Collections.emptyList() : result;
    }

    @Override
    public List<EStructuralFeature> getElements(EClass eClass) {
        EList<EStructuralFeature> eStructuralFeatures = eClass.getEStructuralFeatures();
        ArrayList<EStructuralFeature> result = null;
        int i = 0;
        int size = eStructuralFeatures.size();
        while (i < size) {
            EStructuralFeature eStructuralFeature = (EStructuralFeature)eStructuralFeatures.get(i);
            switch (this.getFeatureKind(eStructuralFeature)) {
                case 4: 
                case 5: 
                case 6: {
                    if (result == null) {
                        result = new ArrayList<EStructuralFeature>();
                    }
                    result.add(eStructuralFeature);
                }
            }
            ++i;
        }
        return result == null ? Collections.emptyList() : result;
    }

    @Override
    public EStructuralFeature getSimpleFeature(EClass eClass) {
        if (this.getContentKind(eClass) == 2) {
            int i = 0;
            int size = eClass.getFeatureCount();
            while (i < size) {
                EStructuralFeature eStructuralFeature = eClass.getEStructuralFeature(i);
                if (this.getFeatureKind(eStructuralFeature) == 1) {
                    return eStructuralFeature;
                }
                ++i;
            }
        }
        return null;
    }

    @Override
    public EAttribute getMixedFeature(EClass eClass) {
        switch (this.getContentKind(eClass)) {
            case 2: 
            case 3: {
                EList<EAttribute> eAllAttributes = eClass.getEAllAttributes();
                int i = 0;
                int size = eAllAttributes.size();
                while (i < size) {
                    EAttribute eAttribute = (EAttribute)eAllAttributes.get(i);
                    if (this.getFeatureKind(eAttribute) == 5) {
                        return eAttribute;
                    }
                    ++i;
                }
                break;
            }
        }
        return null;
    }

    @Override
    public List<String> getWildcards(EStructuralFeature eStructuralFeature) {
        return this.getExtendedMetaData(eStructuralFeature).getWildcards();
    }

    protected List<String> basicGetWildcards(EStructuralFeature eStructuralFeature) {
        String wildcards;
        EAnnotation eAnnotation = this.getAnnotation(eStructuralFeature, false);
        if (eAnnotation != null && (wildcards = (String)eAnnotation.getDetails().get((Object)"wildcards")) != null) {
            ArrayList<String> result = new ArrayList<String>();
            StringTokenizer stringTokenizer = new StringTokenizer(wildcards);
            while (stringTokenizer.hasMoreTokens()) {
                String wildcard = stringTokenizer.nextToken();
                if (wildcard.equals("##other")) {
                    result.add("!##" + this.getNamespace(eStructuralFeature.getEContainingClass().getEPackage()));
                    continue;
                }
                if (wildcard.equals("##local")) {
                    result.add(null);
                    continue;
                }
                if (wildcard.equals("##targetNamespace")) {
                    result.add(this.getNamespace(eStructuralFeature.getEContainingClass().getEPackage()));
                    continue;
                }
                result.add(wildcard);
            }
            return result;
        }
        return Collections.emptyList();
    }

    @Override
    public void setWildcards(EStructuralFeature eStructuralFeature, List<String> wildcards) {
        if (wildcards.isEmpty()) {
            EAnnotation eAnnotation = this.getAnnotation(eStructuralFeature, false);
            if (eAnnotation != null) {
                eAnnotation.getDetails().remove((Object)"wildcards");
                eAnnotation.getDetails().remove((Object)"name");
            }
        } else {
            String namespace = this.getNamespace(eStructuralFeature.getEContainingClass().getEPackage());
            EAnnotation eAnnotation = this.getAnnotation(eStructuralFeature, true);
            eAnnotation.getDetails().put((Object)"wildcards", (Object)BasicExtendedMetaData.getEncodedWildcards(namespace, wildcards));
            eAnnotation.getDetails().put((Object)"name", (Object)"");
        }
        this.getExtendedMetaData(eStructuralFeature).setWildcards(wildcards);
    }

    public static String getEncodedWildcards(String namespace, List<String> wildcards) {
        if (wildcards.isEmpty()) {
            return "";
        }
        StringBuffer value = new StringBuffer();
        int i = 0;
        int size = wildcards.size();
        while (i < size) {
            String wildcard = wildcards.get(i);
            if (wildcard == null) {
                if (namespace == null) {
                    value.append("##targetNamespace");
                } else {
                    value.append("##local");
                }
            } else if (wildcard.startsWith("!##")) {
                if (namespace == null ? wildcard.length() == 3 : wildcard.endsWith(namespace) && wildcard.length() == namespace.length() + 3) {
                    value.append("##other");
                } else {
                    value.append(wildcard);
                }
            } else if (wildcard.equals(namespace)) {
                value.append("##targetNamespace");
            } else {
                value.append(wildcard);
            }
            if (++i >= size) continue;
            value.append(' ');
        }
        return value.toString();
    }

    @Override
    public int getProcessingKind(EStructuralFeature eStructuralFeature) {
        return this.getExtendedMetaData(eStructuralFeature).getProcessingKind();
    }

    protected int basicGetProcessingKind(EStructuralFeature eStructuralFeature) {
        Object kind;
        EAnnotation eAnnotation = this.getAnnotation(eStructuralFeature, false);
        if (eAnnotation != null && (kind = eAnnotation.getDetails().get((Object)"processing")) != null) {
            int i = 1;
            while (i < PROCESSING_KINDS.length) {
                if (PROCESSING_KINDS[i].equals(kind)) {
                    return i;
                }
                ++i;
            }
        }
        return 0;
    }

    @Override
    public void setProcessingKind(EStructuralFeature eStructuralFeature, int kind) {
        if (kind > 0 && kind < PROCESSING_KINDS.length) {
            EAnnotation eAnnotation = this.getAnnotation(eStructuralFeature, true);
            eAnnotation.getDetails().put((Object)"processing", (Object)PROCESSING_KINDS[kind]);
        } else {
            EAnnotation eAnnotation = this.getAnnotation(eStructuralFeature, false);
            if (eAnnotation != null) {
                eAnnotation.getDetails().remove((Object)"processing");
            }
        }
        this.getExtendedMetaData(eStructuralFeature).setProcessingKind(kind);
    }

    @Override
    public EStructuralFeature getGroup(EStructuralFeature eStructuralFeature) {
        return this.getExtendedMetaData(eStructuralFeature).getGroup();
    }

    protected EStructuralFeature basicGetGroup(EStructuralFeature eStructuralFeature) {
        String qualifiedName;
        EAnnotation eAnnotation = this.getAnnotation(eStructuralFeature, false);
        if (eAnnotation != null && (qualifiedName = (String)eAnnotation.getDetails().get((Object)"group")) != null) {
            int fragmentIndex = qualifiedName.lastIndexOf(35);
            if (fragmentIndex == -1) {
                return this.getElement(eStructuralFeature.getEContainingClass(), this.getNamespace(eStructuralFeature.getEContainingClass().getEPackage()), qualifiedName);
            }
            if (fragmentIndex == 0) {
                return this.getElement(eStructuralFeature.getEContainingClass(), null, qualifiedName.substring(1));
            }
            return this.getElement(eStructuralFeature.getEContainingClass(), qualifiedName.substring(0, fragmentIndex), qualifiedName.substring(fragmentIndex + 1));
        }
        return null;
    }

    @Override
    public void setGroup(EStructuralFeature eStructuralFeature, EStructuralFeature group) {
        if (group == null) {
            EAnnotation eAnnotation = this.getAnnotation(eStructuralFeature, false);
            if (eAnnotation != null) {
                eAnnotation.getDetails().remove((Object)"group");
            }
        } else {
            EAnnotation eAnnotation = this.getAnnotation(eStructuralFeature, true);
            eAnnotation.getDetails().put((Object)"group", (Object)this.getQualifiedName(this.getNamespace(eStructuralFeature.getEContainingClass().getEPackage()), group));
        }
        this.getExtendedMetaData(eStructuralFeature).setGroup(group);
    }

    @Override
    public EStructuralFeature getAffiliation(EStructuralFeature eStructuralFeature) {
        return this.getExtendedMetaData(eStructuralFeature).getAffiliation();
    }

    protected EStructuralFeature basicGetAffiliation(EStructuralFeature eStructuralFeature) {
        String qualifiedName;
        EAnnotation eAnnotation = this.getAnnotation(eStructuralFeature, false);
        if (eAnnotation != null && (qualifiedName = (String)eAnnotation.getDetails().get((Object)"affiliation")) != null) {
            int fragmentIndex = qualifiedName.lastIndexOf(35);
            if (fragmentIndex == -1) {
                return this.getElement(this.getNamespace(eStructuralFeature.getEContainingClass().getEPackage()), qualifiedName);
            }
            if (fragmentIndex == 0) {
                return this.getElement(null, qualifiedName.substring(1));
            }
            return this.getElement(qualifiedName.substring(0, fragmentIndex), qualifiedName.substring(fragmentIndex + 1));
        }
        return null;
    }

    @Override
    public void setAffiliation(EStructuralFeature eStructuralFeature, EStructuralFeature affiliation) {
        if (affiliation == null) {
            EAnnotation eAnnotation = this.getAnnotation(eStructuralFeature, false);
            if (eAnnotation != null) {
                eAnnotation.getDetails().remove((Object)"affiliation");
            }
        } else {
            EAnnotation eAnnotation = this.getAnnotation(eStructuralFeature, true);
            eAnnotation.getDetails().put((Object)"affiliation", (Object)this.getQualifiedName(this.getNamespace(eStructuralFeature.getEContainingClass().getEPackage()), affiliation));
        }
        this.getExtendedMetaData(eStructuralFeature).setAffiliation(affiliation);
    }

    @Override
    public EStructuralFeature getAffiliation(EClass eClass, EStructuralFeature eStructuralFeature) {
        if (eClass.getFeatureID(eStructuralFeature) >= 0) {
            return eStructuralFeature;
        }
        switch (this.getFeatureKind(eStructuralFeature)) {
            case 2: {
                if (this.isDocumentRoot(eStructuralFeature.getEContainingClass())) {
                    String name;
                    String namespace = this.getNamespace(eStructuralFeature);
                    EStructuralFeature result = this.getLocalAttribute(eClass, namespace, name = this.getName(eStructuralFeature));
                    if (result != null) {
                        return result;
                    }
                    List<EStructuralFeature> allAttributes = this.getAllAttributes(eClass);
                    int i = 0;
                    int size = allAttributes.size();
                    while (i < size) {
                        result = allAttributes.get(i);
                        if (this.matches(this.getWildcards(result), namespace)) {
                            return result;
                        }
                        ++i;
                    }
                }
                return null;
            }
            case 4: {
                if (this.isDocumentRoot(eStructuralFeature.getEContainingClass())) {
                    EStructuralFeature affiliation = eStructuralFeature;
                    while (affiliation != null) {
                        String name;
                        String namespace = this.getNamespace(affiliation);
                        EStructuralFeature result = this.getLocalElement(eClass, namespace, name = this.getName(affiliation));
                        if (result != null) {
                            return result;
                        }
                        affiliation = this.getAffiliation(affiliation);
                    }
                    String namespace = this.getNamespace(eStructuralFeature);
                    if ("http://www.eclipse.org/emf/2003/XMLType".equals(namespace)) {
                        return this.getMixedFeature(eClass);
                    }
                    List<EStructuralFeature> allElements = this.getAllElements(eClass);
                    int i = 0;
                    int size = allElements.size();
                    while (i < size) {
                        EStructuralFeature result = allElements.get(i);
                        if (this.matches(this.getWildcards(result), namespace)) {
                            return result;
                        }
                        ++i;
                    }
                }
                return null;
            }
        }
        return null;
    }

    @Override
    public EStructuralFeature getAttributeWildcardAffiliation(EClass eClass, String namespace, String name) {
        List<EStructuralFeature> allAttributes = this.getAllAttributes(eClass);
        int i = 0;
        int size = allAttributes.size();
        while (i < size) {
            EStructuralFeature result = allAttributes.get(i);
            if (this.matches(this.getWildcards(result), namespace)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    @Override
    public EStructuralFeature getElementWildcardAffiliation(EClass eClass, String namespace, String name) {
        List<EStructuralFeature> allElements = this.getAllElements(eClass);
        int i = 0;
        int size = allElements.size();
        while (i < size) {
            EStructuralFeature result = allElements.get(i);
            if (this.matches(this.getWildcards(result), namespace)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    @Override
    public boolean matches(List<String> wildcards, String namespace) {
        if (!wildcards.isEmpty()) {
            int i = 0;
            int size = wildcards.size();
            while (i < size) {
                String wildcard = wildcards.get(i);
                if (this.matches(wildcard, namespace)) {
                    return true;
                }
                ++i;
            }
        }
        return false;
    }

    @Override
    public boolean matches(String wildcard, String namespace) {
        return wildcard == null ? namespace == null : (wildcard.startsWith("!##") ? !(namespace == null || wildcard.endsWith(namespace) && wildcard.length() == namespace.length() + 3 || "http://www.eclipse.org/emf/2003/XMLType".equals(namespace)) : wildcard.equals("##any") && !"http://www.eclipse.org/emf/2003/XMLType".equals(namespace) || wildcard.equals(namespace));
    }

    @Override
    public int getWhiteSpaceFacet(EDataType eDataType) {
        return this.getExtendedMetaData(eDataType).getWhiteSpaceFacet();
    }

    protected int basicGetWhiteSpaceFacet(EDataType eDataType) {
        EAnnotation eAnnotation = this.getAnnotation(eDataType, false);
        if (eAnnotation != null) {
            String whiteSpaceLiteral = (String)eAnnotation.getDetails().get((Object)"whiteSpace");
            int i = 1;
            while (i < WHITE_SPACE_KINDS.length) {
                if (WHITE_SPACE_KINDS[i].equals(whiteSpaceLiteral)) {
                    return i;
                }
                ++i;
            }
        }
        return 0;
    }

    @Override
    public void setWhiteSpaceFacet(EDataType eDataType, int whiteSpace) {
        if (whiteSpace == 0) {
            EAnnotation eAnnotation = this.getAnnotation(eDataType, false);
            if (eAnnotation != null) {
                eAnnotation.getDetails().remove((Object)"whiteSpace");
            }
        } else {
            EAnnotation eAnnotation = this.getAnnotation(eDataType, true);
            eAnnotation.getDetails().put((Object)"whiteSpace", (Object)WHITE_SPACE_KINDS[whiteSpace]);
        }
        this.getExtendedMetaData(eDataType).setWhiteSpaceFacet(whiteSpace);
    }

    @Override
    public List<String> getEnumerationFacet(EDataType eDataType) {
        return this.getExtendedMetaData(eDataType).getEnumerationFacet();
    }

    protected List<String> basicGetEnumerationFacet(EDataType eDataType) {
        String enumerationLiteral;
        EAnnotation eAnnotation = this.getAnnotation(eDataType, false);
        if (eAnnotation != null && (enumerationLiteral = (String)eAnnotation.getDetails().get((Object)"enumeration")) != null) {
            ArrayList<String> result = new ArrayList<String>();
            StringTokenizer stringTokenizer = new StringTokenizer(enumerationLiteral, " ");
            while (stringTokenizer.hasMoreTokens()) {
                String enumeration = BasicExtendedMetaData.replace(BasicExtendedMetaData.replace(stringTokenizer.nextToken(), "%20", " "), "%25", "%");
                result.add(enumeration);
            }
            return result;
        }
        return Collections.emptyList();
    }

    @Override
    public void setEnumerationFacet(EDataType eDataType, List<String> literals) {
        if (literals.isEmpty()) {
            EAnnotation eAnnotation = this.getAnnotation(eDataType, false);
            if (eAnnotation != null) {
                eAnnotation.getDetails().remove((Object)"enumeration");
            }
        } else {
            EAnnotation eAnnotation = this.getAnnotation(eDataType, true);
            StringBuffer result = new StringBuffer();
            int i = 0;
            int size = literals.size();
            while (i < size) {
                result.append(BasicExtendedMetaData.replace(BasicExtendedMetaData.replace(literals.get(i), "%", "%25"), " ", "%20"));
                result.append(' ');
                ++i;
            }
            eAnnotation.getDetails().put((Object)"enumeration", (Object)result.substring(0, result.length() - 1));
        }
        this.getExtendedMetaData(eDataType).setEnumerationFacet(literals);
    }

    @Override
    public List<String> getPatternFacet(EDataType eDataType) {
        return this.getExtendedMetaData(eDataType).getPatternFacet();
    }

    protected List<String> basicGetPatternFacet(EDataType eDataType) {
        String patternLiteral;
        EAnnotation eAnnotation = this.getAnnotation(eDataType, false);
        if (eAnnotation != null && (patternLiteral = (String)eAnnotation.getDetails().get((Object)"pattern")) != null) {
            ArrayList<String> result = new ArrayList<String>();
            StringTokenizer stringTokenizer = new StringTokenizer(patternLiteral, " ");
            while (stringTokenizer.hasMoreTokens()) {
                String pattern = BasicExtendedMetaData.replace(BasicExtendedMetaData.replace(stringTokenizer.nextToken(), "%20", " "), "%25", "%");
                result.add(pattern);
            }
            return result;
        }
        return Collections.emptyList();
    }

    @Override
    public void setPatternFacet(EDataType eDataType, List<String> pattern) {
        if (pattern.isEmpty()) {
            EAnnotation eAnnotation = this.getAnnotation(eDataType, false);
            if (eAnnotation != null) {
                eAnnotation.getDetails().remove((Object)"pattern");
            }
        } else {
            EAnnotation eAnnotation = this.getAnnotation(eDataType, true);
            StringBuffer result = new StringBuffer();
            int i = 0;
            int size = pattern.size();
            while (i < size) {
                result.append(BasicExtendedMetaData.replace(BasicExtendedMetaData.replace(pattern.get(i), "%", "%25"), " ", "%20"));
                result.append(' ');
                ++i;
            }
            eAnnotation.getDetails().put((Object)"pattern", (Object)result.substring(0, result.length() - 1));
        }
        this.getExtendedMetaData(eDataType).setPatternFacet(pattern);
    }

    @Override
    public int getTotalDigitsFacet(EDataType eDataType) {
        return this.getExtendedMetaData(eDataType).getTotalDigitsFacet();
    }

    protected int basicGetTotalDigitsFacet(EDataType eDataType) {
        String totalDigitsLiteral;
        EAnnotation eAnnotation = this.getAnnotation(eDataType, false);
        if (eAnnotation != null && (totalDigitsLiteral = (String)eAnnotation.getDetails().get((Object)"totalDigits")) != null) {
            return Integer.parseInt(totalDigitsLiteral);
        }
        return -1;
    }

    @Override
    public void setTotalDigitsFacet(EDataType eDataType, int digits) {
        if (digits == -1) {
            EAnnotation eAnnotation = this.getAnnotation(eDataType, false);
            if (eAnnotation != null) {
                eAnnotation.getDetails().remove((Object)"totalDigits");
            }
        } else {
            EAnnotation eAnnotation = this.getAnnotation(eDataType, true);
            eAnnotation.getDetails().put((Object)"totalDigits", (Object)Integer.toString(digits));
        }
        this.getExtendedMetaData(eDataType).setTotalDigitsFacet(digits);
    }

    @Override
    public int getFractionDigitsFacet(EDataType eDataType) {
        return this.getExtendedMetaData(eDataType).getFractionDigitsFacet();
    }

    protected int basicGetFractionDigitsFacet(EDataType eDataType) {
        String fractionDigitsLiteral;
        EAnnotation eAnnotation = this.getAnnotation(eDataType, false);
        if (eAnnotation != null && (fractionDigitsLiteral = (String)eAnnotation.getDetails().get((Object)"fractionDigits")) != null) {
            return Integer.parseInt(fractionDigitsLiteral);
        }
        return -1;
    }

    @Override
    public void setFractionDigitsFacet(EDataType eDataType, int digits) {
        if (digits == -1) {
            EAnnotation eAnnotation = this.getAnnotation(eDataType, false);
            if (eAnnotation != null) {
                eAnnotation.getDetails().remove((Object)"fractionDigits");
            }
        } else {
            EAnnotation eAnnotation = this.getAnnotation(eDataType, true);
            eAnnotation.getDetails().put((Object)"fractionDigits", (Object)Integer.toString(digits));
        }
        this.getExtendedMetaData(eDataType).setFractionDigitsFacet(digits);
    }

    @Override
    public int getLengthFacet(EDataType eDataType) {
        return this.getExtendedMetaData(eDataType).getLengthFacet();
    }

    protected int basicGetLengthFacet(EDataType eDataType) {
        String lengthLiteral;
        EAnnotation eAnnotation = this.getAnnotation(eDataType, false);
        if (eAnnotation != null && (lengthLiteral = (String)eAnnotation.getDetails().get((Object)"length")) != null) {
            return Integer.parseInt(lengthLiteral);
        }
        return -1;
    }

    @Override
    public void setLengthFacet(EDataType eDataType, int length) {
        if (length == -1) {
            EAnnotation eAnnotation = this.getAnnotation(eDataType, false);
            if (eAnnotation != null) {
                eAnnotation.getDetails().remove((Object)"length");
            }
        } else {
            EAnnotation eAnnotation = this.getAnnotation(eDataType, true);
            eAnnotation.getDetails().put((Object)"length", (Object)Integer.toString(length));
        }
        this.getExtendedMetaData(eDataType).setLengthFacet(length);
    }

    @Override
    public int getMinLengthFacet(EDataType eDataType) {
        return this.getExtendedMetaData(eDataType).getMinLengthFacet();
    }

    protected int basicGetMinLengthFacet(EDataType eDataType) {
        String minLengthLiteral;
        EAnnotation eAnnotation = this.getAnnotation(eDataType, false);
        if (eAnnotation != null && (minLengthLiteral = (String)eAnnotation.getDetails().get((Object)"minLength")) != null) {
            return Integer.parseInt(minLengthLiteral);
        }
        return -1;
    }

    @Override
    public void setMinLengthFacet(EDataType eDataType, int length) {
        if (length == -1) {
            EAnnotation eAnnotation = this.getAnnotation(eDataType, false);
            if (eAnnotation != null) {
                eAnnotation.getDetails().remove((Object)"minLength");
            }
        } else {
            EAnnotation eAnnotation = this.getAnnotation(eDataType, true);
            eAnnotation.getDetails().put((Object)"minLength", (Object)Integer.toString(length));
        }
        this.getExtendedMetaData(eDataType).setMinLengthFacet(length);
    }

    @Override
    public int getMaxLengthFacet(EDataType eDataType) {
        return this.getExtendedMetaData(eDataType).getMaxLengthFacet();
    }

    protected int basicGetMaxLengthFacet(EDataType eDataType) {
        String maxLengthLiteral;
        EAnnotation eAnnotation = this.getAnnotation(eDataType, false);
        if (eAnnotation != null && (maxLengthLiteral = (String)eAnnotation.getDetails().get((Object)"maxLength")) != null) {
            return Integer.parseInt(maxLengthLiteral);
        }
        return -1;
    }

    @Override
    public void setMaxLengthFacet(EDataType eDataType, int length) {
        if (length == -1) {
            EAnnotation eAnnotation = this.getAnnotation(eDataType, false);
            if (eAnnotation != null) {
                eAnnotation.getDetails().remove((Object)"maxLength");
            }
        } else {
            EAnnotation eAnnotation = this.getAnnotation(eDataType, true);
            eAnnotation.getDetails().put((Object)"maxLength", (Object)Integer.toString(length));
        }
        this.getExtendedMetaData(eDataType).setMaxLengthFacet(length);
    }

    @Override
    public String getMinExclusiveFacet(EDataType eDataType) {
        return this.getExtendedMetaData(eDataType).getMinExclusiveFacet();
    }

    protected String basicGetMinExclusiveFacet(EDataType eDataType) {
        EAnnotation eAnnotation = this.getAnnotation(eDataType, false);
        return eAnnotation == null ? null : (String)eAnnotation.getDetails().get((Object)"minExclusive");
    }

    @Override
    public void setMinExclusiveFacet(EDataType eDataType, String literal) {
        if (literal == null) {
            EAnnotation eAnnotation = this.getAnnotation(eDataType, false);
            if (eAnnotation != null) {
                eAnnotation.getDetails().remove((Object)"minExclusive");
            }
        } else {
            EAnnotation eAnnotation = this.getAnnotation(eDataType, true);
            eAnnotation.getDetails().put((Object)"minExclusive", (Object)literal);
        }
        this.getExtendedMetaData(eDataType).setMinExclusiveFacet(literal);
    }

    @Override
    public String getMaxExclusiveFacet(EDataType eDataType) {
        return this.getExtendedMetaData(eDataType).getMaxExclusiveFacet();
    }

    protected String basicGetMaxExclusiveFacet(EDataType eDataType) {
        EAnnotation eAnnotation = this.getAnnotation(eDataType, false);
        return eAnnotation == null ? null : (String)eAnnotation.getDetails().get((Object)"maxExclusive");
    }

    @Override
    public void setMaxExclusiveFacet(EDataType eDataType, String literal) {
        if (literal == null) {
            EAnnotation eAnnotation = this.getAnnotation(eDataType, false);
            if (eAnnotation != null) {
                eAnnotation.getDetails().remove((Object)"maxExclusive");
            }
        } else {
            EAnnotation eAnnotation = this.getAnnotation(eDataType, true);
            eAnnotation.getDetails().put((Object)"maxExclusive", (Object)literal);
        }
        this.getExtendedMetaData(eDataType).setMaxExclusiveFacet(literal);
    }

    @Override
    public String getMinInclusiveFacet(EDataType eDataType) {
        return this.getExtendedMetaData(eDataType).getMinInclusiveFacet();
    }

    protected String basicGetMinInclusiveFacet(EDataType eDataType) {
        EAnnotation eAnnotation = this.getAnnotation(eDataType, false);
        return eAnnotation == null ? null : (String)eAnnotation.getDetails().get((Object)"minInclusive");
    }

    @Override
    public void setMinInclusiveFacet(EDataType eDataType, String literal) {
        if (literal == null) {
            EAnnotation eAnnotation = this.getAnnotation(eDataType, false);
            if (eAnnotation != null) {
                eAnnotation.getDetails().remove((Object)"minInclusive");
            }
        } else {
            EAnnotation eAnnotation = this.getAnnotation(eDataType, true);
            eAnnotation.getDetails().put((Object)"minInclusive", (Object)literal);
        }
        this.getExtendedMetaData(eDataType).setMinInclusiveFacet(literal);
    }

    @Override
    public String getMaxInclusiveFacet(EDataType eDataType) {
        return this.getExtendedMetaData(eDataType).getMaxInclusiveFacet();
    }

    protected String basicGetMaxInclusiveFacet(EDataType eDataType) {
        EAnnotation eAnnotation = this.getAnnotation(eDataType, false);
        return eAnnotation == null ? null : (String)eAnnotation.getDetails().get((Object)"maxInclusive");
    }

    @Override
    public void setMaxInclusiveFacet(EDataType eDataType, String literal) {
        if (literal == null) {
            EAnnotation eAnnotation = this.getAnnotation(eDataType, false);
            if (eAnnotation != null) {
                eAnnotation.getDetails().remove((Object)"maxInclusive");
            }
        } else {
            EAnnotation eAnnotation = this.getAnnotation(eDataType, true);
            eAnnotation.getDetails().put((Object)"maxInclusive", (Object)literal);
        }
        this.getExtendedMetaData(eDataType).setMaxInclusiveFacet(literal);
    }

    @Override
    public EPackage demandPackage(String namespace) {
        EPackage ePackage = this.demandRegistry.getEPackage(namespace);
        if (ePackage == null) {
            ePackage = EcoreFactory.eINSTANCE.createEPackage();
            ePackage.setNsURI(namespace);
            this.setQualified(ePackage, namespace != null);
            if (namespace != null) {
                ePackage.setNsPrefix(namespace.equals("http://www.w3.org/2000/xmlns/") ? (namespace.equals("http://www.w3.org/XML/1998/namespace") ? "xml" : "xmlns") : this.computePrefix(namespace));
            }
            this.demandRegistry.put(namespace, ePackage);
            EClass documentRootEClass = EcoreFactory.eINSTANCE.createEClass();
            documentRootEClass.getESuperTypes().add((Object)XMLTypePackage.eINSTANCE.getXMLTypeDocumentRoot());
            documentRootEClass.setName("DocumentRoot");
            ePackage.getEClassifiers().add((Object)documentRootEClass);
            this.setDocumentRoot(documentRootEClass);
        }
        return ePackage;
    }

    protected String computePrefix(String namespace) {
        int length;
        char character;
        int index = namespace.length();
        boolean containsLetter = false;
        StringBuffer prefix = new StringBuffer(index);
        while (--index >= 0) {
            character = namespace.charAt(index);
            if (!XMLTypeUtil.isNCNamePart(character)) continue;
            prefix.append(character);
            containsLetter = Character.isLetter(character);
            break;
        }
        while (--index >= 0) {
            character = namespace.charAt(index);
            if (XMLTypeUtil.isNCNamePart(character)) {
                prefix.append(character);
                if (containsLetter) continue;
                containsLetter = Character.isLetter(character);
                continue;
            }
            if (containsLetter) break;
            prefix.append('_');
        }
        if ((length = prefix.length()) == 0 || !XMLTypeUtil.isNCNameStart(prefix.charAt(length - 1))) {
            prefix.append('_');
        }
        return prefix.reverse().toString();
    }

    @Override
    public EClassifier demandType(String namespace, String name) {
        EPackage ePackage = this.demandPackage(namespace);
        EClassifier eClassifier = this.getType(ePackage, name);
        if (eClassifier != null) {
            return eClassifier;
        }
        EClass eClass = EcoreFactory.eINSTANCE.createEClass();
        eClass.setName(name);
        eClass.getESuperTypes().add((Object)XMLTypePackage.eINSTANCE.getAnyType());
        this.setContentKind(eClass, 3);
        ePackage.getEClassifiers().add((Object)eClass);
        return eClass;
    }

    @Override
    public EStructuralFeature demandFeature(String namespace, String name, boolean isElement) {
        return this.demandFeature(namespace, name, isElement, isElement);
    }

    @Override
    public EStructuralFeature demandFeature(String namespace, String name, boolean isElement, boolean isReference) {
        EStructuralFeature eStructuralFeature;
        EPackage ePackage = this.demandPackage(namespace);
        EClass documentRootEClass = this.getDocumentRoot(ePackage);
        EStructuralFeature eStructuralFeature2 = eStructuralFeature = isElement ? this.getLocalElement(documentRootEClass, namespace, name) : this.getLocalAttribute(documentRootEClass, namespace, name);
        if (eStructuralFeature != null) {
            return eStructuralFeature;
        }
        if (isReference) {
            EReference eReference = EcoreFactory.eINSTANCE.createEReference();
            if (isElement) {
                eReference.setContainment(true);
                eReference.setResolveProxies(false);
            }
            eReference.setEType(EcorePackage.Literals.EOBJECT);
            eReference.setName(name);
            eReference.setDerived(true);
            eReference.setTransient(true);
            eReference.setVolatile(true);
            documentRootEClass.getEStructuralFeatures().add((Object)eReference);
            this.setFeatureKind(eReference, isElement ? 4 : 2);
            this.setNamespace(eReference, namespace);
            if (isElement) {
                eReference.setUpperBound(-2);
            }
            return eReference;
        }
        EAttribute eAttribute = EcoreFactory.eINSTANCE.createEAttribute();
        eAttribute.setName(name);
        eAttribute.setEType(XMLTypePackage.eINSTANCE.getAnySimpleType());
        eAttribute.setDerived(true);
        eAttribute.setTransient(true);
        eAttribute.setVolatile(true);
        documentRootEClass.getEStructuralFeatures().add((Object)eAttribute);
        this.setFeatureKind(eAttribute, isElement ? 4 : 2);
        this.setNamespace(eAttribute, namespace);
        if (isElement) {
            eAttribute.setUpperBound(-2);
        }
        return eAttribute;
    }

    @Override
    public Collection<EPackage> demandedPackages() {
        return this.demandRegistry.values();
    }

    protected EPackageExtendedMetaData getExtendedMetaData(EPackage ePackage) {
        if (this.extendedMetaDataHolderCache != null) {
            EPackageExtendedMetaData result = (EPackageExtendedMetaData)this.extendedMetaDataHolderCache.get(ePackage);
            if (result == null) {
                result = this.createEPackageExtendedMetaData(ePackage);
                this.extendedMetaDataHolderCache.put(ePackage, result);
            }
            return result;
        }
        EPackageExtendedMetaData.Holder holder = (EPackageExtendedMetaData.Holder)((Object)ePackage);
        EPackageExtendedMetaData result = holder.getExtendedMetaData();
        if (result == null) {
            result = this.createEPackageExtendedMetaData(ePackage);
            holder.setExtendedMetaData(result);
        }
        return result;
    }

    protected EPackageExtendedMetaData createEPackageExtendedMetaData(EPackage ePackage) {
        return new EPackageExtendedMetaDataImpl(ePackage);
    }

    protected EClassifierExtendedMetaData getExtendedMetaData(EClassifier eClassifier) {
        if (this.extendedMetaDataHolderCache != null) {
            EClassifierExtendedMetaData result = (EClassifierExtendedMetaData)this.extendedMetaDataHolderCache.get(eClassifier);
            if (result == null) {
                result = this.createEClassifierExtendedMetaData(eClassifier);
                this.extendedMetaDataHolderCache.put(eClassifier, result);
            }
            return result;
        }
        EClassifierExtendedMetaData.Holder holder = (EClassifierExtendedMetaData.Holder)((Object)eClassifier);
        EClassifierExtendedMetaData result = holder.getExtendedMetaData();
        if (result == null) {
            result = this.createEClassifierExtendedMetaData(eClassifier);
            holder.setExtendedMetaData(result);
        }
        return result;
    }

    protected EClassifierExtendedMetaData createEClassifierExtendedMetaData(EClassifier eClassifier) {
        if (eClassifier instanceof EClass) {
            return new EClassExtendedMetaDataImpl((EClass)eClassifier);
        }
        return new EDataTypeExtendedMetaDataImpl((EDataType)eClassifier);
    }

    protected EStructuralFeatureExtendedMetaData getExtendedMetaData(EStructuralFeature eStructuralFeature) {
        if (this.extendedMetaDataHolderCache != null) {
            EStructuralFeatureExtendedMetaData result = (EStructuralFeatureExtendedMetaData)this.extendedMetaDataHolderCache.get(eStructuralFeature);
            if (result == null) {
                result = this.createEStructuralFeatureExtendedMetaData(eStructuralFeature);
                this.extendedMetaDataHolderCache.put(eStructuralFeature, result);
            }
            return result;
        }
        EStructuralFeatureExtendedMetaData.Holder holder = (EStructuralFeatureExtendedMetaData.Holder)((Object)eStructuralFeature);
        EStructuralFeatureExtendedMetaData result = holder.getExtendedMetaData();
        if (result == null) {
            result = this.createEStructuralFeatureExtendedMetaData(eStructuralFeature);
            holder.setExtendedMetaData(result);
        }
        return result;
    }

    protected EStructuralFeatureExtendedMetaData createEStructuralFeatureExtendedMetaData(EStructuralFeature eStructuralFeature) {
        return new EStructuralFeatureExtendedMetaDataImpl(eStructuralFeature);
    }

    private static String replace(String in, String oldString, String newString) {
        if (in == null || oldString == null) {
            return in;
        }
        int oldStringLength = oldString.length();
        if (oldStringLength == 0) {
            return in;
        }
        if (newString == null) {
            newString = "";
        }
        int newStringLength = newString.length();
        int index = -newStringLength;
        StringBuffer result = new StringBuffer(in);
        while ((index = BasicExtendedMetaData.indexOf(result, oldString, index + newStringLength)) >= 0) {
            result.replace(index, index + oldStringLength, newString);
        }
        return result.toString();
    }

    private static int indexOf(StringBuffer in, String str, int fromIndex) {
        int lengthStr;
        int lengthIn;
        if (in == null) {
            return -1;
        }
        if (str == null) {
            str = "";
        }
        if ((lengthIn = in.length()) < (lengthStr = str.length())) {
            return -1;
        }
        if (fromIndex > lengthIn) {
            if (lengthIn == 0 && fromIndex == 0 && lengthStr == 0) {
                return 0;
            }
            return -1;
        }
        if (fromIndex < 0) {
            fromIndex = 0;
        }
        if (lengthStr == 0) {
            return fromIndex;
        }
        int strPos = 0;
        int i = fromIndex;
        while (i < lengthIn) {
            if (in.charAt(i) == str.charAt(strPos)) {
                if (++strPos == lengthStr) {
                    return i - lengthStr + 1;
                }
            } else {
                strPos = 0;
            }
            ++i;
        }
        return -1;
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public class EClassExtendedMetaDataImpl
    implements EClassifierExtendedMetaData {
        protected EClass eClass;
        protected String name = "uninitialized";
        protected int contentKind = -2;

        public EClassExtendedMetaDataImpl(EClass eClass) {
            this.eClass = eClass;
        }

        @Override
        public String getName() {
            if (this.name == BasicExtendedMetaData.UNINITIALIZED_STRING) {
                this.setName(BasicExtendedMetaData.this.basicGetName(this.eClass));
            }
            return this.name;
        }

        @Override
        public void setName(String name) {
            this.name = name;
        }

        @Override
        public int getContentKind() {
            if (this.contentKind == -2) {
                this.setContentKind(BasicExtendedMetaData.this.basicGetContentKind(this.eClass));
            }
            return this.contentKind;
        }

        @Override
        public void setContentKind(int kind) {
            this.contentKind = kind;
        }

        @Override
        public int getDerivationKind() {
            return 0;
        }

        @Override
        public EDataType getBaseType() {
            return null;
        }

        @Override
        public void setBaseType(EDataType baseType) {
            throw new UnsupportedOperationException("Can't set the base type of an EClass");
        }

        @Override
        public EDataType getItemType() {
            return null;
        }

        @Override
        public void setItemType(EDataType itemType) {
            throw new UnsupportedOperationException("Can't set the item type of an EClass");
        }

        @Override
        public List<EDataType> getMemberTypes() {
            return Collections.emptyList();
        }

        @Override
        public void setMemberTypes(List<EDataType> memberTypes) {
            throw new UnsupportedOperationException("Can't set the member types of an EClass");
        }

        @Override
        public int getWhiteSpaceFacet() {
            return 0;
        }

        @Override
        public void setWhiteSpaceFacet(int whiteSpace) {
            throw new UnsupportedOperationException("Can't set the white space of an EClass");
        }

        @Override
        public List<String> getEnumerationFacet() {
            return Collections.emptyList();
        }

        @Override
        public void setEnumerationFacet(List<String> literals) {
            throw new UnsupportedOperationException("Can't set the enumeration of an EClass");
        }

        @Override
        public List<String> getPatternFacet() {
            return Collections.emptyList();
        }

        @Override
        public void setPatternFacet(List<String> pattern) {
            throw new UnsupportedOperationException("Can't set the pattern of an EClass");
        }

        @Override
        public int getTotalDigitsFacet() {
            return -1;
        }

        @Override
        public void setTotalDigitsFacet(int digits) {
            throw new UnsupportedOperationException("Can't set the total digits of an EClass");
        }

        @Override
        public int getFractionDigitsFacet() {
            return -1;
        }

        @Override
        public void setFractionDigitsFacet(int digits) {
            throw new UnsupportedOperationException("Can't set the fraction digits of an EClass");
        }

        @Override
        public int getLengthFacet() {
            return -1;
        }

        @Override
        public void setLengthFacet(int length) {
            throw new UnsupportedOperationException("Can't set the length of an EClass");
        }

        @Override
        public int getMinLengthFacet() {
            return -1;
        }

        @Override
        public void setMinLengthFacet(int minLength) {
            throw new UnsupportedOperationException("Can't set the min length of an EClass");
        }

        @Override
        public int getMaxLengthFacet() {
            return -1;
        }

        @Override
        public void setMaxLengthFacet(int maxLength) {
            throw new UnsupportedOperationException("Can't set the max length of an EClass");
        }

        @Override
        public String getMinExclusiveFacet() {
            return null;
        }

        @Override
        public void setMinExclusiveFacet(String literal) {
            throw new UnsupportedOperationException("Can't set the min exclusive of an EClass");
        }

        @Override
        public String getMaxExclusiveFacet() {
            return null;
        }

        @Override
        public void setMaxExclusiveFacet(String literal) {
            throw new UnsupportedOperationException("Can't set the max exclusive of an EClass");
        }

        @Override
        public String getMinInclusiveFacet() {
            return null;
        }

        @Override
        public void setMinInclusiveFacet(String literal) {
            throw new UnsupportedOperationException("Can't set the min inclusive of an EClass");
        }

        @Override
        public String getMaxInclusiveFacet() {
            return null;
        }

        @Override
        public void setMaxInclusiveFacet(String literal) {
            throw new UnsupportedOperationException("Can't set the max inclusive of an EClass");
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static interface EClassifierExtendedMetaData {
        public String getName();

        public void setName(String var1);

        public int getContentKind();

        public void setContentKind(int var1);

        public int getDerivationKind();

        public EDataType getBaseType();

        public void setBaseType(EDataType var1);

        public EDataType getItemType();

        public void setItemType(EDataType var1);

        public List<EDataType> getMemberTypes();

        public void setMemberTypes(List<EDataType> var1);

        public int getWhiteSpaceFacet();

        public void setWhiteSpaceFacet(int var1);

        public List<String> getEnumerationFacet();

        public void setEnumerationFacet(List<String> var1);

        public List<String> getPatternFacet();

        public void setPatternFacet(List<String> var1);

        public int getTotalDigitsFacet();

        public void setTotalDigitsFacet(int var1);

        public int getFractionDigitsFacet();

        public void setFractionDigitsFacet(int var1);

        public int getLengthFacet();

        public void setLengthFacet(int var1);

        public int getMinLengthFacet();

        public void setMinLengthFacet(int var1);

        public int getMaxLengthFacet();

        public void setMaxLengthFacet(int var1);

        public String getMinExclusiveFacet();

        public void setMinExclusiveFacet(String var1);

        public String getMaxExclusiveFacet();

        public void setMaxExclusiveFacet(String var1);

        public String getMinInclusiveFacet();

        public void setMinInclusiveFacet(String var1);

        public String getMaxInclusiveFacet();

        public void setMaxInclusiveFacet(String var1);

        public static interface Holder {
            public EClassifierExtendedMetaData getExtendedMetaData();

            public void setExtendedMetaData(EClassifierExtendedMetaData var1);
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public class EDataTypeExtendedMetaDataImpl
    implements EClassifierExtendedMetaData {
        protected EDataType eDataType;
        protected String name = "uninitialized";
        protected EDataType baseType = UNINITIALIZED_EDATA_TYPE;
        protected EDataType itemType = UNINITIALIZED_EDATA_TYPE;
        protected List<EDataType> memberTypes;
        protected int derivationKind = -2;
        protected int whiteSpace = -2;
        protected List<String> enumerationLiterals;
        protected List<String> pattern;
        int totalDigits = -2;
        int fractionDigits = -2;
        int length = -2;
        int minLength = -2;
        int maxLength = -2;
        String minExclusive = "uninitialized";
        String maxExclusive = "uninitialized";
        String minInclusive = "uninitialized";
        String maxInclusive = "uninitialized";

        public EDataTypeExtendedMetaDataImpl(EDataType eDataType) {
            this.eDataType = eDataType;
        }

        @Override
        public String getName() {
            if (this.name == BasicExtendedMetaData.UNINITIALIZED_STRING) {
                this.setName(BasicExtendedMetaData.this.basicGetName(this.eDataType));
            }
            return this.name;
        }

        @Override
        public void setName(String name) {
            this.name = name;
        }

        @Override
        public int getContentKind() {
            return 0;
        }

        @Override
        public void setContentKind(int kind) {
            throw new UnsupportedOperationException("Can't set the content kind of an EDataType");
        }

        @Override
        public int getDerivationKind() {
            if (this.derivationKind == -2) {
                this.derivationKind = this.getBaseType() != null ? 1 : (this.getItemType() != null ? 2 : (!this.getMemberTypes().isEmpty() ? 3 : 0));
            }
            return this.derivationKind;
        }

        @Override
        public EDataType getBaseType() {
            if (this.baseType == UNINITIALIZED_EDATA_TYPE) {
                this.setBaseType(BasicExtendedMetaData.this.basicGetBaseType(this.eDataType));
            }
            return this.baseType;
        }

        @Override
        public void setBaseType(EDataType baseType) {
            this.baseType = baseType;
            this.derivationKind = -2;
        }

        @Override
        public EDataType getItemType() {
            if (this.itemType == UNINITIALIZED_EDATA_TYPE) {
                this.setItemType(BasicExtendedMetaData.this.basicGetItemType(this.eDataType));
            }
            return this.itemType;
        }

        @Override
        public void setItemType(EDataType itemType) {
            this.itemType = itemType;
            this.derivationKind = -2;
        }

        @Override
        public List<EDataType> getMemberTypes() {
            if (this.memberTypes == null) {
                this.setMemberTypes(BasicExtendedMetaData.this.basicGetMemberTypes(this.eDataType));
            }
            return this.memberTypes;
        }

        @Override
        public void setMemberTypes(List<EDataType> memberTypes) {
            this.memberTypes = memberTypes;
            this.derivationKind = -2;
        }

        @Override
        public int getWhiteSpaceFacet() {
            if (this.whiteSpace == -2) {
                this.setWhiteSpaceFacet(BasicExtendedMetaData.this.basicGetWhiteSpaceFacet(this.eDataType));
            }
            return this.whiteSpace;
        }

        @Override
        public void setWhiteSpaceFacet(int whiteSpace) {
            this.whiteSpace = whiteSpace;
        }

        @Override
        public List<String> getEnumerationFacet() {
            if (this.enumerationLiterals == null) {
                this.setEnumerationFacet(BasicExtendedMetaData.this.basicGetEnumerationFacet(this.eDataType));
            }
            return this.enumerationLiterals;
        }

        @Override
        public void setEnumerationFacet(List<String> literals) {
            this.enumerationLiterals = literals;
        }

        @Override
        public List<String> getPatternFacet() {
            if (this.pattern == null) {
                this.setPatternFacet(BasicExtendedMetaData.this.basicGetPatternFacet(this.eDataType));
            }
            return this.pattern;
        }

        @Override
        public void setPatternFacet(List<String> pattern) {
            this.pattern = pattern;
        }

        @Override
        public int getTotalDigitsFacet() {
            if (this.totalDigits == -2) {
                this.setTotalDigitsFacet(BasicExtendedMetaData.this.basicGetTotalDigitsFacet(this.eDataType));
            }
            return this.totalDigits;
        }

        @Override
        public void setTotalDigitsFacet(int digits) {
            this.totalDigits = digits;
        }

        @Override
        public int getFractionDigitsFacet() {
            if (this.fractionDigits == -2) {
                this.setFractionDigitsFacet(BasicExtendedMetaData.this.basicGetFractionDigitsFacet(this.eDataType));
            }
            return this.fractionDigits;
        }

        @Override
        public void setFractionDigitsFacet(int digits) {
            this.fractionDigits = digits;
        }

        @Override
        public int getLengthFacet() {
            if (this.length == -2) {
                this.setLengthFacet(BasicExtendedMetaData.this.basicGetLengthFacet(this.eDataType));
            }
            return this.length;
        }

        @Override
        public void setLengthFacet(int length) {
            this.length = length;
        }

        @Override
        public int getMinLengthFacet() {
            if (this.minLength == -2) {
                this.setMinLengthFacet(BasicExtendedMetaData.this.basicGetMinLengthFacet(this.eDataType));
            }
            return this.minLength;
        }

        @Override
        public void setMinLengthFacet(int minLength) {
            this.minLength = minLength;
        }

        @Override
        public int getMaxLengthFacet() {
            if (this.maxLength == -2) {
                this.setMaxLengthFacet(BasicExtendedMetaData.this.basicGetMaxLengthFacet(this.eDataType));
            }
            return this.maxLength;
        }

        @Override
        public void setMaxLengthFacet(int maxLength) {
            this.maxLength = maxLength;
        }

        @Override
        public String getMinExclusiveFacet() {
            if (this.minExclusive == BasicExtendedMetaData.UNINITIALIZED_STRING) {
                this.setMinExclusiveFacet(BasicExtendedMetaData.this.basicGetMinExclusiveFacet(this.eDataType));
            }
            return this.minExclusive;
        }

        @Override
        public void setMinExclusiveFacet(String literal) {
            this.minExclusive = literal;
        }

        @Override
        public String getMaxExclusiveFacet() {
            if (this.maxExclusive == BasicExtendedMetaData.UNINITIALIZED_STRING) {
                this.setMaxExclusiveFacet(BasicExtendedMetaData.this.basicGetMaxExclusiveFacet(this.eDataType));
            }
            return this.maxExclusive;
        }

        @Override
        public void setMaxExclusiveFacet(String literal) {
            this.maxExclusive = literal;
        }

        @Override
        public String getMinInclusiveFacet() {
            if (this.minInclusive == BasicExtendedMetaData.UNINITIALIZED_STRING) {
                this.setMinInclusiveFacet(BasicExtendedMetaData.this.basicGetMinInclusiveFacet(this.eDataType));
            }
            return this.minInclusive;
        }

        @Override
        public void setMinInclusiveFacet(String literal) {
            this.minInclusive = literal;
        }

        @Override
        public String getMaxInclusiveFacet() {
            if (this.maxInclusive == BasicExtendedMetaData.UNINITIALIZED_STRING) {
                this.setMaxInclusiveFacet(BasicExtendedMetaData.this.basicGetMaxInclusiveFacet(this.eDataType));
            }
            return this.maxInclusive;
        }

        @Override
        public void setMaxInclusiveFacet(String literal) {
            this.maxInclusive = literal;
        }
    }

    public static interface EPackageExtendedMetaData {
        public boolean isQualified();

        public void setQualified(boolean var1);

        public EClassifier getType(String var1);

        public void rename(EClassifier var1, String var2);

        public static interface Holder {
            public EPackageExtendedMetaData getExtendedMetaData();

            public void setExtendedMetaData(EPackageExtendedMetaData var1);
        }
    }

    public class EPackageExtendedMetaDataImpl
    implements EPackageExtendedMetaData {
        protected EPackage ePackage;
        protected boolean isInitialized;
        protected boolean isQualified;
        protected Map<String, EClassifier> nameToClassifierMap;

        public EPackageExtendedMetaDataImpl(EPackage ePackage) {
            this.ePackage = ePackage;
        }

        public boolean isQualified() {
            if (!this.isInitialized) {
                this.setQualified(BasicExtendedMetaData.this.basicIsQualified(this.ePackage));
            }
            return this.isQualified;
        }

        public void setQualified(boolean isQualified) {
            this.isQualified = isQualified;
            this.isInitialized = true;
        }

        public EClassifier getType(String name) {
            EClassifier result = null;
            if (this.nameToClassifierMap != null) {
                result = this.nameToClassifierMap.get(name);
            }
            if (result == null) {
                EList<EClassifier> eClassifiers = this.ePackage.getEClassifiers();
                int size = eClassifiers.size();
                if (this.nameToClassifierMap == null || this.nameToClassifierMap.size() != size) {
                    EClassifier conflictingEClassifier;
                    String eClassifierName;
                    EClassifier eClassifier;
                    int originalMapSize;
                    HashMap<String, EClassifier> nameToClassifierMap = new HashMap<String, EClassifier>();
                    if (this.nameToClassifierMap != null) {
                        nameToClassifierMap.putAll(this.nameToClassifierMap);
                    }
                    int i = originalMapSize = nameToClassifierMap.size();
                    while (i < size) {
                        eClassifier = (EClassifier)eClassifiers.get(i);
                        eClassifierName = BasicExtendedMetaData.this.getName(eClassifier);
                        conflictingEClassifier = nameToClassifierMap.put(eClassifierName, eClassifier);
                        if (conflictingEClassifier != null && conflictingEClassifier != eClassifier) {
                            nameToClassifierMap.put(eClassifierName, conflictingEClassifier);
                        }
                        ++i;
                    }
                    if (nameToClassifierMap.size() != size) {
                        i = 0;
                        while (i < originalMapSize) {
                            eClassifier = (EClassifier)eClassifiers.get(i);
                            eClassifierName = BasicExtendedMetaData.this.getName(eClassifier);
                            conflictingEClassifier = nameToClassifierMap.put(eClassifierName, eClassifier);
                            if (conflictingEClassifier != null && conflictingEClassifier != eClassifier) {
                                nameToClassifierMap.put(eClassifierName, conflictingEClassifier);
                            }
                            ++i;
                        }
                    }
                    result = (EClassifier)nameToClassifierMap.get(name);
                    this.nameToClassifierMap = nameToClassifierMap;
                }
            }
            return result;
        }

        public void rename(EClassifier eClassifier, String newName) {
            if (this.nameToClassifierMap != null) {
                this.nameToClassifierMap.values().remove(eClassifier);
                this.nameToClassifierMap.put(newName, eClassifier);
            }
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static interface EStructuralFeatureExtendedMetaData {
        public String getName();

        public void setName(String var1);

        public String getNamespace();

        public void setNamespace(String var1);

        public int getFeatureKind();

        public void setFeatureKind(int var1);

        public List<String> getWildcards();

        public void setWildcards(List<String> var1);

        public int getProcessingKind();

        public void setProcessingKind(int var1);

        public EStructuralFeature getGroup();

        public void setGroup(EStructuralFeature var1);

        public EStructuralFeature getAffiliation();

        public void setAffiliation(EStructuralFeature var1);

        public Map<EClass, FeatureMapUtil.Validator> getValidatorMap();

        public static interface Holder {
            public EStructuralFeatureExtendedMetaData getExtendedMetaData();

            public void setExtendedMetaData(EStructuralFeatureExtendedMetaData var1);
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public class EStructuralFeatureExtendedMetaDataImpl
    implements EStructuralFeatureExtendedMetaData {
        protected EStructuralFeature eStructuralFeature;
        protected String name = "uninitialized";
        protected String namespace = "uninitialized";
        protected int featureKind = -2;
        protected List<String> wildcards;
        protected int processingKind = -2;
        protected EStructuralFeature group = UNINITIALIZED_ESTRUCTURAL_FEATURE;
        protected EStructuralFeature affiliation = UNINITIALIZED_ESTRUCTURAL_FEATURE;
        protected Map<EClass, FeatureMapUtil.Validator> validatorMap;

        public EStructuralFeatureExtendedMetaDataImpl(EStructuralFeature eStructuralFeature) {
            this.eStructuralFeature = eStructuralFeature;
        }

        @Override
        public Map<EClass, FeatureMapUtil.Validator> getValidatorMap() {
            if (this.validatorMap == null) {
                this.validatorMap = new Hashtable<EClass, FeatureMapUtil.Validator>();
            }
            return this.validatorMap;
        }

        @Override
        public String getName() {
            if (this.name == BasicExtendedMetaData.UNINITIALIZED_STRING) {
                this.setName(BasicExtendedMetaData.this.basicGetName(this.eStructuralFeature));
            }
            return this.name;
        }

        @Override
        public void setName(String name) {
            this.name = name;
        }

        @Override
        public String getNamespace() {
            if (this.namespace == BasicExtendedMetaData.UNINITIALIZED_STRING) {
                this.setNamespace(BasicExtendedMetaData.this.basicGetNamespace(this.eStructuralFeature));
            }
            return this.namespace;
        }

        @Override
        public void setNamespace(String namespace) {
            this.namespace = namespace;
        }

        @Override
        public int getFeatureKind() {
            if (this.featureKind == -2) {
                this.setFeatureKind(BasicExtendedMetaData.this.basicGetFeatureKind(this.eStructuralFeature));
            }
            return this.featureKind;
        }

        @Override
        public void setFeatureKind(int kind) {
            this.featureKind = kind;
        }

        @Override
        public List<String> getWildcards() {
            if (this.wildcards == null) {
                this.setWildcards(BasicExtendedMetaData.this.basicGetWildcards(this.eStructuralFeature));
            }
            return this.wildcards;
        }

        @Override
        public void setWildcards(List<String> wildcards) {
            this.wildcards = wildcards;
        }

        @Override
        public int getProcessingKind() {
            if (this.processingKind == -2) {
                this.setProcessingKind(BasicExtendedMetaData.this.basicGetProcessingKind(this.eStructuralFeature));
            }
            return this.processingKind;
        }

        @Override
        public void setProcessingKind(int kind) {
            this.processingKind = kind;
        }

        @Override
        public EStructuralFeature getGroup() {
            if (this.group == UNINITIALIZED_ESTRUCTURAL_FEATURE) {
                this.setGroup(BasicExtendedMetaData.this.basicGetGroup(this.eStructuralFeature));
            }
            return this.group;
        }

        @Override
        public void setGroup(EStructuralFeature group) {
            this.group = group;
        }

        @Override
        public EStructuralFeature getAffiliation() {
            if (this.affiliation == UNINITIALIZED_ESTRUCTURAL_FEATURE) {
                this.setAffiliation(BasicExtendedMetaData.this.basicGetAffiliation(this.eStructuralFeature));
            }
            return this.affiliation;
        }

        @Override
        public void setAffiliation(EStructuralFeature affiliation) {
            this.affiliation = affiliation;
        }
    }
}

