/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EReference
 *  org.eclipse.emf.ecore.EStructuralFeature
 *  org.eclipse.emf.ecore.xmi.FeatureNotFoundException
 *  org.eclipse.emf.ecore.xmi.XMIException
 *  org.eclipse.emf.ecore.xmi.XMLHelper
 *  org.eclipse.emf.ecore.xmi.XMLResource
 *  org.eclipse.sphinx.emf.resource.ExtendedSAXXMLHandler
 */
package org.artop.eel.serialization;

import java.util.Map;
import org.artop.eel.serialization.EStructuralFeatureDescriptor;
import org.eclipse.emf.ecore.EFactory;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.xmi.FeatureNotFoundException;
import org.eclipse.emf.ecore.xmi.XMIException;
import org.eclipse.emf.ecore.xmi.XMLHelper;
import org.eclipse.emf.ecore.xmi.XMLResource;
import org.eclipse.sphinx.emf.resource.ExtendedSAXXMLHandler;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ExtendedSAXXMLHandler2
extends ExtendedSAXXMLHandler {
    public static final EStructuralFeatureDescriptor SKIPPED_FEATURE = new EStructuralFeatureDescriptor(null, null);

    public ExtendedSAXXMLHandler2(XMLResource xmiResource, XMLHelper helper, Map<?, ?> options) {
        super(xmiResource, helper, options);
    }

    protected void handleFeature(String prefix, String name) {
        EObject peekObject = this.extendedPeekEObject();
        if (peekObject == null) {
            this.types.push((Object)"error");
            this.error((XMIException)new FeatureNotFoundException(name, null, this.getLocation(), this.getLineNumber(), this.getColumnNumber()));
            return;
        }
        EStructuralFeatureDescriptor featureDescriptor = this.extendedGetFeature(peekObject, prefix, name);
        if (featureDescriptor != SKIPPED_FEATURE) {
            EStructuralFeature feature = featureDescriptor.getFeature();
            peekObject = featureDescriptor.getOwner();
            if (feature != null) {
                int kind = this.helper.getFeatureKind(feature);
                if (kind == 1 || kind == 2) {
                    this.objects.push(null);
                    this.mixedTargets.push(null);
                    this.types.push((Object)feature);
                    if (!this.isNull()) {
                        this.text = new StringBuffer();
                    }
                } else if (this.extendedMetaData != null) {
                    EReference eReference = (EReference)feature;
                    boolean isContainment = eReference.isContainment();
                    if (!isContainment && !eReference.isResolveProxies() && this.extendedMetaData.getFeatureKind(feature) != 0) {
                        this.isIDREF = true;
                        this.objects.push(null);
                        this.mixedTargets.push(null);
                        this.types.push((Object)feature);
                        this.text = new StringBuffer();
                    } else {
                        this.handleContainmentOrProxyResolvingOrUnspecifiedFeature(peekObject, feature, prefix, name);
                    }
                } else {
                    this.createObject(peekObject, feature);
                }
            } else if (this.xmlMap != null && (feature = this.getFeature(peekObject, null, "", true)) != null) {
                EFactory eFactory = this.getFactoryForPrefix(prefix);
                if (eFactory == null) {
                    eFactory = feature.getEContainingClass().getEPackage().getEFactoryInstance();
                }
                EObject newObject = null;
                newObject = this.useNewMethods ? this.createObject(eFactory, this.helper.getType(eFactory, name), false) : this.createObjectFromFactory(eFactory, name);
                if ((newObject = this.validateCreateObjectFromFactory(eFactory, name, newObject, feature)) != null) {
                    this.setFeatureValue(peekObject, feature, newObject);
                }
                this.processObject(newObject);
            } else {
                if (this.xmlMap != null) {
                    EFactory eFactory = this.getFactoryForPrefix(prefix);
                    EObject newObject = this.createObjectFromFactory(eFactory, name);
                    this.validateCreateObjectFromFactory(eFactory, name, newObject);
                    if (newObject != null) {
                        for (EReference eReference : peekObject.eClass().getEAllReferences()) {
                            if (!eReference.getEType().isInstance((Object)newObject)) continue;
                            this.setFeatureValue(peekObject, (EStructuralFeature)eReference, newObject);
                            this.processObject(newObject);
                            return;
                        }
                    }
                }
                this.handleUnknownFeature(prefix, name, true, peekObject, null);
            }
        }
    }

    protected EObject extendedPeekEObject() {
        return this.objects.peekEObject();
    }

    protected EStructuralFeatureDescriptor extendedGetFeature(EObject peekObject, String prefix, String name) {
        return new EStructuralFeatureDescriptor(peekObject, this.getFeature(peekObject, prefix, name, true));
    }

    protected void handleContainmentOrProxyResolvingOrUnspecifiedFeature(EObject peekObject, EStructuralFeature feature, String prefix, String name) {
        this.createObject(peekObject, feature);
        EObject childObject = this.objects.peekEObject();
        this.doHandleContainmentOrProxyResolvingOrUnspecifiedFeature(childObject, (EReference)feature);
    }

    protected void doHandleContainmentOrProxyResolvingOrUnspecifiedFeature(EObject childObject, EReference feature) {
        if (childObject != null && feature != null) {
            boolean isContainment = feature.isContainment();
            if (isContainment) {
                EStructuralFeature simpleFeature = this.extendedMetaData.getSimpleFeature(childObject.eClass());
                if (simpleFeature != null) {
                    this.isSimpleFeature = true;
                    this.isIDREF = simpleFeature instanceof EReference;
                    this.objects.push(null);
                    this.mixedTargets.push(null);
                    this.types.push((Object)simpleFeature);
                    this.text = new StringBuffer();
                }
            } else if (!childObject.eIsProxy()) {
                this.text = new StringBuffer();
            }
        }
    }
}

