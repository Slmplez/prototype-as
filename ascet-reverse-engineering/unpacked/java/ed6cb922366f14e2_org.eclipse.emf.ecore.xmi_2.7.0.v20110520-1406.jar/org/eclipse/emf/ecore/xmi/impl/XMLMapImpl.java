/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.common.util.EMap
 *  org.eclipse.emf.common.util.UniqueEList
 *  org.eclipse.emf.ecore.EAnnotation
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EClassifier
 *  org.eclipse.emf.ecore.ENamedElement
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.EStructuralFeature
 */
package org.eclipse.emf.ecore.xmi.impl;

import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.StringTokenizer;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.common.util.EMap;
import org.eclipse.emf.common.util.UniqueEList;
import org.eclipse.emf.ecore.EAnnotation;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EClassifier;
import org.eclipse.emf.ecore.ENamedElement;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.xmi.XMLResource;
import org.eclipse.emf.ecore.xmi.impl.XMLInfoImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class XMLMapImpl
implements XMLResource.XMLMap {
    protected static final String XSD2ECORE = "http:///org/eclipse/emf/mapping/xsd2ecore/XSD2Ecore";
    protected Map<ENamedElement, XMLResource.XMLInfo> ecoreToXMLInfo;
    protected EPackage noNamespacePkg;
    protected String idAttributeName;
    protected Map<String, Map<String, EClassifier>> urisToNamesToClassifiers;
    protected Map<EClass, EList<EStructuralFeature>> eClassToFeatures;
    protected Set<EPackage> processedEPackages;
    protected EPackage.Registry packageRegistry = EPackage.Registry.INSTANCE;

    public XMLMapImpl() {
        this.ecoreToXMLInfo = new HashMap<ENamedElement, XMLResource.XMLInfo>();
        this.processedEPackages = new HashSet<EPackage>();
        this.eClassToFeatures = new HashMap<EClass, EList<EStructuralFeature>>();
    }

    @Override
    public void add(ENamedElement element, XMLResource.XMLInfo info) {
        this.ecoreToXMLInfo.put(element, info);
    }

    @Override
    public XMLResource.XMLInfo getInfo(ENamedElement element) {
        XMLResource.XMLInfo result = this.ecoreToXMLInfo.get(element);
        if (result == null) {
            for (EAnnotation eAnnotation : element.getEAnnotations()) {
                if (!XSD2ECORE.equals(eAnnotation.getSource())) continue;
                result = new XMLInfoImpl();
                EMap details = eAnnotation.getDetails();
                result.setName((String)details.get((Object)"name"));
                result.setTargetNamespace((String)details.get((Object)"targetNamespace"));
                String representation = (String)details.get((Object)"representation");
                if ("element".equals(representation)) {
                    result.setXMLRepresentation(0);
                    continue;
                }
                if ("attribute".equals(representation)) {
                    result.setXMLRepresentation(1);
                    continue;
                }
                if (!"simple-content".equals(representation)) continue;
                result.setXMLRepresentation(2);
            }
            if (result != null) {
                this.ecoreToXMLInfo.put(element, result);
            }
        }
        return result;
    }

    @Override
    public void setNoNamespacePackage(EPackage pkg) {
        this.noNamespacePkg = pkg;
    }

    @Override
    public EPackage getNoNamespacePackage() {
        return this.noNamespacePkg;
    }

    @Override
    public void setIDAttributeName(String name) {
        this.idAttributeName = name;
    }

    @Override
    public String getIDAttributeName() {
        return this.idAttributeName;
    }

    public void setPackageRegistry(EPackage.Registry packageRegistry) {
        this.packageRegistry = packageRegistry;
    }

    public EPackage.Registry getPackageRegistry() {
        return this.packageRegistry;
    }

    @Override
    public EClassifier getClassifier(String namespaceURI, String name) {
        EPackage ePackage = this.packageRegistry.getEPackage(namespaceURI);
        if (ePackage != null) {
            Map<String, EClassifier> namesToClassifiers;
            if (this.processedEPackages.add(ePackage)) {
                if (this.urisToNamesToClassifiers == null) {
                    this.urisToNamesToClassifiers = new HashMap<String, Map<String, EClassifier>>();
                }
                this.getInfoForClassifiers(ePackage);
                for (Map.Entry<ENamedElement, XMLResource.XMLInfo> entry : this.ecoreToXMLInfo.entrySet()) {
                    EClassifier eClassifier;
                    ENamedElement key = entry.getKey();
                    if (!(key instanceof EClassifier) || (eClassifier = (EClassifier)key).getEPackage() != ePackage) continue;
                    XMLResource.XMLInfo info = entry.getValue();
                    String uri = info.getTargetNamespace();
                    if (uri == null) {
                        uri = namespaceURI;
                    }
                    if (info.getName() == null) continue;
                    Map<String, EClassifier> namesToClassifiers2 = this.urisToNamesToClassifiers.get(uri);
                    if (namesToClassifiers2 == null) {
                        namesToClassifiers2 = new HashMap<String, EClassifier>();
                        this.urisToNamesToClassifiers.put(uri, namesToClassifiers2);
                    }
                    namesToClassifiers2.put(info.getName(), eClassifier);
                }
            }
            if ((namesToClassifiers = this.urisToNamesToClassifiers.get(namespaceURI)) != null) {
                return namesToClassifiers.get(name);
            }
        }
        return null;
    }

    private void getInfoForClassifiers(EPackage ePackage) {
        for (EClassifier eClassifier : ePackage.getEClassifiers()) {
            this.getInfo((ENamedElement)eClassifier);
        }
    }

    @Override
    public EStructuralFeature getFeature(EClass eClass, String namespaceURI, String name) {
        int i = 0;
        int size = eClass.getFeatureCount();
        while (i < size) {
            EStructuralFeature feature = eClass.getEStructuralFeature(i);
            XMLResource.XMLInfo info = this.getInfo((ENamedElement)feature);
            if (info != null) {
                String infoURI = info.getTargetNamespace();
                String infoName = info.getName();
                if (namespaceURI == null ? infoURI == null && (name.equals(infoName) || infoName == null && name.length() == 0) : namespaceURI.equals(infoURI) && name.equals(infoName)) {
                    return feature;
                }
            }
            ++i;
        }
        return null;
    }

    @Override
    public List<EStructuralFeature> getFeatures(EClass eClass) {
        UniqueEList result = this.eClassToFeatures.get(eClass);
        if (result == null) {
            String featureOrder;
            result = new UniqueEList();
            for (EClass eSuperType : eClass.getESuperTypes()) {
                result.addAll(this.getFeatures(eSuperType));
            }
            EList eAttributes = eClass.getEAttributes();
            result.addAll((Collection)eAttributes);
            EList eReferences = eClass.getEReferences();
            result.addAll((Collection)eReferences);
            EAnnotation eAnnotation = eClass.getEAnnotation(XSD2ECORE);
            if (eAnnotation != null && (featureOrder = (String)eAnnotation.getDetails().get((Object)"feature-order")) != null) {
                int size = result.size();
                int index = size - eReferences.size() - eAttributes.size();
                StringTokenizer stringTokenizer = new StringTokenizer(featureOrder);
                while (stringTokenizer.hasMoreTokens()) {
                    String featureName = stringTokenizer.nextToken();
                    int i = index;
                    while (i < size) {
                        EStructuralFeature eStructuralFeature = (EStructuralFeature)result.get(i);
                        if (featureName.equals(eStructuralFeature.getName())) {
                            result.move(index, (Object)eStructuralFeature);
                            break;
                        }
                        ++i;
                    }
                    ++index;
                }
            }
            this.eClassToFeatures.put(eClass, (EList<EStructuralFeature>)result);
        }
        return result;
    }
}

