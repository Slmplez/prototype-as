/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.emf.ecore.EAnnotation
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EModelElement
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.EStructuralFeature
 *  org.eclipse.emf.ecore.util.BasicExtendedMetaData
 */
package org.eclipse.sphinx.emf.resource;

import java.net.URI;
import java.net.URISyntaxException;
import java.util.List;
import java.util.Map;
import org.eclipse.core.runtime.Assert;
import org.eclipse.emf.ecore.EAnnotation;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EModelElement;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.util.BasicExtendedMetaData;
import org.eclipse.sphinx.emf.metamodel.IMetaModelDescriptor;
import org.eclipse.sphinx.emf.metamodel.MetaModelDescriptorRegistry;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class BasicMigrationExtendedMetaData
extends BasicExtendedMetaData {
    public BasicMigrationExtendedMetaData() {
    }

    public BasicMigrationExtendedMetaData(EPackage.Registry registry) {
        super(registry);
    }

    public BasicMigrationExtendedMetaData(String annotationURI, EPackage.Registry registry, Map<EModelElement, EAnnotation> annotationMap) {
        super(annotationURI, registry, annotationMap);
    }

    public BasicMigrationExtendedMetaData(String annotationURI, EPackage.Registry registry) {
        super(annotationURI, registry);
    }

    protected EStructuralFeature getLocalElement(EClass eClass, String namespace, String name) {
        EStructuralFeature result = null;
        if (this.isFeatureKindSpecific()) {
            List allElements = this.getAllElements(eClass);
            int i = 0;
            int size = allElements.size();
            while (i < size) {
                EStructuralFeature eStructuralFeature = (EStructuralFeature)allElements.get(i);
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
                        if (this.isSameOrCompatibleNamespace(namespace, featureNamespace)) {
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

    protected boolean isSameOrCompatibleNamespace(String xmlNamespace, String featureNamespace) {
        Assert.isNotNull((Object)xmlNamespace);
        try {
            URI xmlNamespaceURI = new URI(xmlNamespace);
            IMetaModelDescriptor xmlMMDescriptor = MetaModelDescriptorRegistry.INSTANCE.getDescriptor(xmlNamespaceURI);
            if (xmlMMDescriptor != null) {
                return xmlMMDescriptor.getNamespace().equals(featureNamespace);
            }
        }
        catch (URISyntaxException uRISyntaxException) {}
        return xmlNamespace.equals(featureNamespace);
    }
}

