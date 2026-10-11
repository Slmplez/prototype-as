/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.BasicEList
 *  org.eclipse.emf.common.util.BasicEMap$Entry
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.common.util.EMap
 */
package org.eclipse.emf.ecore.impl;

import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.BasicEList;
import org.eclipse.emf.common.util.BasicEMap;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.common.util.EMap;
import org.eclipse.emf.ecore.EAnnotation;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EModelElement;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.EcorePackage;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.EModelElementImpl;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.EStringToStringMapEntryImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.EObjectResolvingEList;
import org.eclipse.emf.ecore.util.EcoreEMap;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class EAnnotationImpl
extends EModelElementImpl
implements EAnnotation {
    protected static final String SOURCE_EDEFAULT = null;
    protected String source = SOURCE_EDEFAULT;
    protected EMap<String, String> details;
    protected EList<EObject> contents;
    protected EList<EObject> references;

    protected EAnnotationImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return EcorePackage.Literals.EANNOTATION;
    }

    @Override
    public String getSource() {
        return this.source;
    }

    public void setSourceGen(String newSource) {
        String oldSource = this.source;
        this.source = newSource;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, (Object)oldSource, (Object)this.source));
        }
    }

    @Override
    public void setSource(String newSource) {
        this.setSourceGen(newSource == null ? null : newSource.intern());
    }

    @Override
    public EMap<String, String> getDetails() {
        if (this.details == null) {
            this.details = new EcoreEMap<String, String>(EcorePackage.Literals.ESTRING_TO_STRING_MAP_ENTRY, EStringToStringMapEntryImpl.class, (InternalEObject)this, 2){
                private static final long serialVersionUID = 1L;

                protected void ensureEntryDataExists() {
                    if (this.entryData == null) {
                        BasicEList[] result = this.newEntryData(2 * this.size + 1);
                        for (BasicEMap.Entry entry : this.delegateEList) {
                            int hash = entry.getHash();
                            int index = (hash & Integer.MAX_VALUE) % result.length;
                            BasicEList eList = result[index];
                            if (eList == null) {
                                eList = result[index] = this.newList();
                            }
                            eList.add((Object)entry);
                        }
                        this.entryData = result;
                    }
                }
            };
        }
        return this.details;
    }

    @Override
    public EModelElement getEModelElement() {
        if (this.eContainerFeatureID() != 3) {
            return null;
        }
        return (EModelElement)this.eContainer();
    }

    public NotificationChain basicSetEModelElement(EModelElement newEModelElement, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)((Object)newEModelElement), 3, msgs);
        return msgs;
    }

    @Override
    public void setEModelElement(EModelElement newEModelElement) {
        if (newEModelElement != this.eInternalContainer() || this.eContainerFeatureID() != 3 && newEModelElement != null) {
            if (EcoreUtil.isAncestor(this, (EObject)newEModelElement)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newEModelElement != null) {
                msgs = ((InternalEObject)((Object)newEModelElement)).eInverseAdd(this, 0, EModelElement.class, msgs);
            }
            if ((msgs = this.basicSetEModelElement(newEModelElement, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 3, (Object)newEModelElement, (Object)newEModelElement));
        }
    }

    @Override
    public EList<EObject> getContents() {
        if (this.contents == null) {
            this.contents = new EObjectContainmentEList<EObject>(EObject.class, this, 4);
        }
        return this.contents;
    }

    @Override
    public EList<EObject> getReferences() {
        if (this.references == null) {
            this.references = new EObjectResolvingEList<EObject>(EObject.class, this, 5);
        }
        return this.references;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return ((InternalEList)this.getEAnnotations()).basicAdd(otherEnd, msgs);
            }
            case 3: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetEModelElement((EModelElement)((Object)otherEnd), msgs);
            }
        }
        return this.eDynamicInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return ((InternalEList)this.getEAnnotations()).basicRemove(otherEnd, msgs);
            }
            case 2: {
                return ((InternalEList)this.getDetails()).basicRemove(otherEnd, msgs);
            }
            case 3: {
                return this.basicSetEModelElement(null, msgs);
            }
            case 4: {
                return ((InternalEList)this.getContents()).basicRemove(otherEnd, msgs);
            }
        }
        return this.eDynamicInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 3: {
                return this.eInternalContainer().eInverseRemove(this, 0, EModelElement.class, msgs);
            }
        }
        return this.eDynamicBasicRemoveFromContainer(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getEAnnotations();
            }
            case 1: {
                return this.getSource();
            }
            case 2: {
                if (coreType) {
                    return this.getDetails();
                }
                return this.getDetails().map();
            }
            case 3: {
                return this.getEModelElement();
            }
            case 4: {
                return this.getContents();
            }
            case 5: {
                return this.getReferences();
            }
        }
        return this.eDynamicGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.getEAnnotations().clear();
                this.getEAnnotations().addAll((Collection)newValue);
                return;
            }
            case 1: {
                this.setSource((String)newValue);
                return;
            }
            case 2: {
                ((EStructuralFeature.Setting)this.getDetails()).set(newValue);
                return;
            }
            case 3: {
                this.setEModelElement((EModelElement)newValue);
                return;
            }
            case 4: {
                this.getContents().clear();
                this.getContents().addAll((Collection)newValue);
                return;
            }
            case 5: {
                this.getReferences().clear();
                this.getReferences().addAll((Collection)newValue);
                return;
            }
        }
        this.eDynamicSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.getEAnnotations().clear();
                return;
            }
            case 1: {
                this.setSource(SOURCE_EDEFAULT);
                return;
            }
            case 2: {
                this.getDetails().clear();
                return;
            }
            case 3: {
                this.setEModelElement(null);
                return;
            }
            case 4: {
                this.getContents().clear();
                return;
            }
            case 5: {
                this.getReferences().clear();
                return;
            }
        }
        this.eDynamicUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.eAnnotations != null && !this.eAnnotations.isEmpty();
            }
            case 1: {
                return SOURCE_EDEFAULT == null ? this.source != null : !SOURCE_EDEFAULT.equals(this.source);
            }
            case 2: {
                return this.details != null && !this.details.isEmpty();
            }
            case 3: {
                return this.getEModelElement() != null;
            }
            case 4: {
                return this.contents != null && !this.contents.isEmpty();
            }
            case 5: {
                return this.references != null && !this.references.isEmpty();
            }
        }
        return this.eDynamicIsSet(featureID);
    }

    @Override
    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (source: ");
        result.append(this.source);
        result.append(')');
        return result.toString();
    }
}

