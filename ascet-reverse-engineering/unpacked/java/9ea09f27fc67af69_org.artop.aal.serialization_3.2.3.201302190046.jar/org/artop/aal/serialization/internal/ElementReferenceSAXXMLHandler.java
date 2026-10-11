/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.resource.AutosarURIFactory
 *  org.artop.aal.common.util.IReferringClass
 *  org.artop.aal.common.util.IReferringEList
 *  org.eclipse.emf.common.util.URI
 *  org.eclipse.emf.ecore.EModelElement
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EStructuralFeature
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.util.EObjectResolvingEList
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.ecore.util.InternalEList
 *  org.eclipse.emf.ecore.xmi.XMIException
 *  org.eclipse.emf.ecore.xmi.XMLHelper
 *  org.eclipse.emf.ecore.xmi.XMLResource
 *  org.eclipse.emf.ecore.xml.type.AnyType
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.sphinx.emf.resource.XMLIntegrityException
 */
package org.artop.aal.serialization.internal;

import java.util.Collection;
import java.util.List;
import java.util.Map;
import org.artop.aal.common.resource.AutosarURIFactory;
import org.artop.aal.common.util.IReferringClass;
import org.artop.aal.common.util.IReferringEList;
import org.artop.aal.serialization.internal.TypeReferenceSAXXMLHandler;
import org.artop.aal.serialization.internal.messages.Messages;
import org.artop.aal.serialization.internal.util.AutosarPersistenceRules;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.EModelElement;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.util.EObjectResolvingEList;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.InternalEList;
import org.eclipse.emf.ecore.xmi.XMIException;
import org.eclipse.emf.ecore.xmi.XMLHelper;
import org.eclipse.emf.ecore.xmi.XMLResource;
import org.eclipse.emf.ecore.xml.type.AnyType;
import org.eclipse.osgi.util.NLS;
import org.eclipse.sphinx.emf.resource.XMLIntegrityException;
import org.xml.sax.Attributes;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ElementReferenceSAXXMLHandler
extends TypeReferenceSAXXMLHandler {
    public ElementReferenceSAXXMLHandler(XMLResource xmlResource, XMLHelper helper, Map<Object, Object> defaultLoadOptions, EStructuralFeature feature, Attributes attributes) {
        super(xmlResource, helper, defaultLoadOptions, feature, attributes);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @Override
    public void endElement(String uri, String localName, String name) {
        boolean shouldDecrement;
        block16: {
            String absoluteQualifiedName;
            block17: {
                URI proxyURI;
                block18: {
                    shouldDecrement = false;
                    absoluteQualifiedName = this.getReferenceFromContent(this.content);
                    if (absoluteQualifiedName.length() <= 0) break block17;
                    proxyURI = AutosarURIFactory.createAutosarURI((String)absoluteQualifiedName, (String)this.typeName);
                    if (this.typeValue == null) break block18;
                    if (this.typeName != null && this.typeFeature != null) {
                        ((InternalEObject)this.typeValue).eSetProxyURI(proxyURI);
                        this.typeName = null;
                        try {
                            shouldDecrement = true;
                            if (this.typeFeature.isMany()) {
                                Object targetValue = this.parentObject.eGet(this.typeFeature);
                                if (targetValue == null || !(targetValue instanceof Collection)) break block16;
                                Collection targetCollection = (Collection)targetValue;
                                if (targetCollection instanceof EObjectResolvingEList) {
                                    if (this.parentContentHandler.contains((EObjectResolvingEList)targetCollection, proxyURI.toString())) break block16;
                                    ((InternalEList)targetCollection).addUnique((Object)this.typeValue);
                                    if (targetCollection instanceof IReferringEList) {
                                        ((IReferringEList)targetCollection).setReferringDest(targetCollection.size() - 1, this.typeOfDestination);
                                    }
                                    break block16;
                                }
                                try {
                                    targetCollection.add(this.typeValue);
                                    if (targetCollection instanceof IReferringEList) {
                                        ((IReferringEList)targetCollection).setReferringDest(targetCollection.size() - 1, this.typeOfDestination);
                                    }
                                    break block16;
                                }
                                catch (ArrayStoreException arrayStoreException) {
                                    if (!AutosarPersistenceRules.isCompositePropertyRepresentation0012(this.typeFeature)) break block16;
                                    shouldDecrement = false;
                                    List<EStructuralFeature> features = this.parentContentHandler.createFeatureFromSkippedElement(name, this.parentObject);
                                    if (features != null && features.size() == 2) {
                                        EObject msrInstance;
                                        EStructuralFeature grandParentFeature = this.typeFeature;
                                        EStructuralFeature eStructuralFeatureForSkiped = features.get(1);
                                        if (grandParentFeature.isMany()) {
                                            List values = (List)this.parentObject.eGet(grandParentFeature);
                                            msrInstance = (EObject)values.get(values.size() - 1);
                                        } else {
                                            msrInstance = (EObject)this.parentObject.eGet(grandParentFeature);
                                        }
                                        msrInstance.eSet(eStructuralFeatureForSkiped, (Object)this.typeValue);
                                    }
                                    break block16;
                                }
                            }
                            this.parentObject.eSet(this.typeFeature, (Object)this.typeValue);
                            if (this.parentObject instanceof IReferringClass) {
                                ((IReferringClass)this.parentObject).eSetReferringDest(this.typeFeature.getFeatureID(), this.typeOfDestination);
                            }
                            break block16;
                        }
                        catch (Exception ex) {
                            if (this.parentObject instanceof AnyType) {
                                this.error((XMIException)new XMLIntegrityException(NLS.bind((String)Messages.error_UnableToRecordUnknownElementReference, (Object)this.typeFeature.getName()), this.getLocation(), this.getLineNumber(), this.getColumnNumber()));
                                break block16;
                            }
                            this.error(new XMIException(ex, this.getLocation(), this.getLineNumber(), this.getColumnNumber()));
                        }
                    }
                    break block16;
                }
                this.error((XMIException)new XMLIntegrityException(NLS.bind((String)Messages.error_ElementRefElementNotLoaded, (Object)name, (Object)proxyURI), this.getLocation(), this.getLineNumber(), this.getColumnNumber()));
                shouldDecrement = true;
                break block16;
            }
            if (this.isInstanceReferenceElement() || !this.containsInstanceReferenceElement()) {
                this.error((XMIException)new XMLIntegrityException(NLS.bind((String)Messages.error_ElementRefElementNotLoaded, (Object)name, (Object)absoluteQualifiedName), this.getLocation(), this.getLineNumber(), this.getColumnNumber()));
                shouldDecrement = true;
            }
        }
        if (shouldDecrement) {
            this.restoreParentHandler();
        }
    }

    private boolean containsInstanceReferenceElement() {
        return this.instanceReferenceHandler != null;
    }

    private boolean isInstanceReferenceElement() {
        if (this.typeFeature != null) {
            String stereotype = EcoreUtil.getAnnotation((EModelElement)this.typeFeature.getEType(), (String)"Stereotype", (String)"Stereotype");
            return "instanceRef".equalsIgnoreCase(stereotype);
        }
        return false;
    }
}

