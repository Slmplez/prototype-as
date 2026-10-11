/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.BasicEList
 *  org.eclipse.emf.common.util.ECollections
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.common.util.URI
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.impl.EObjectImpl
 *  org.eclipse.emf.ecore.resource.Resource
 *  org.eclipse.emf.ecore.resource.ResourceSet
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package org.eclipse.emf.ecore.change.impl;

import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.BasicEList;
import org.eclipse.emf.common.util.ECollections;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.change.ChangePackage;
import org.eclipse.emf.ecore.change.ListChange;
import org.eclipse.emf.ecore.change.ResourceChange;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.EObjectImpl;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.resource.ResourceSet;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ResourceChangeImpl
extends EObjectImpl
implements ResourceChange {
    protected static final String RESOURCE_URI_EDEFAULT = null;
    protected String resourceURI = RESOURCE_URI_EDEFAULT;
    protected static final Resource RESOURCE_EDEFAULT = null;
    protected Resource resource = RESOURCE_EDEFAULT;
    protected EList<ListChange> listChanges;
    protected EList<Object> valueField = null;
    protected EList<Object> newValue = null;

    protected ResourceChangeImpl() {
    }

    protected ResourceChangeImpl(Resource resource, EList<Object> value) {
        this();
        this.setResource(resource);
        this.setValue(value);
    }

    protected EClass eStaticClass() {
        return ChangePackage.Literals.RESOURCE_CHANGE;
    }

    @Override
    public String getResourceURI() {
        return this.resourceURI;
    }

    @Override
    public void setResourceURI(String newResourceURI) {
        String oldResourceURI = this.resourceURI;
        this.resourceURI = newResourceURI;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldResourceURI, (Object)this.resourceURI));
        }
    }

    @Override
    public Resource getResource() {
        ResourceSet resourceSet;
        Resource changeResource;
        if (this.resource == null && this.getResourceURI() != null && (changeResource = this.eResource()) != null && (resourceSet = changeResource.getResourceSet()) != null) {
            URI resourceURI = URI.createURI((String)this.getResourceURI());
            this.resource = resourceSet.getURIConverter().exists(resourceURI, resourceSet.getLoadOptions()) ? resourceSet.getResource(resourceURI, true) : resourceSet.createResource(resourceURI, "");
        }
        return this.resource;
    }

    public void setResourceGen(Resource newResource) {
        Resource oldResource = this.resource;
        this.resource = newResource;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, (Object)oldResource, (Object)this.resource));
        }
    }

    @Override
    public void setResource(Resource newResource) {
        this.setResourceGen(newResource);
        this.setResourceURI(newResource.getURI() == null ? null : newResource.getURI().toString());
    }

    public EList<Object> getValue() {
        if (this.valueField == null) {
            Resource resource = this.getResource();
            if (resource != null) {
                BasicEList changedList = new BasicEList((Collection)resource.getContents());
                this.apply((EList<Object>)changedList);
                this.valueField = changedList;
                return changedList;
            }
            return ECollections.emptyEList();
        }
        return this.valueField;
    }

    protected void setValue(EList<Object> value) {
        this.valueField = value;
    }

    @Override
    public EList<ListChange> getListChanges() {
        if (this.listChanges == null) {
            this.listChanges = new EObjectContainmentEList(ListChange.class, (InternalEObject)this, 3);
        }
        return this.listChanges;
    }

    public void preApply(boolean reverse) {
        if (this.resource != null && reverse) {
            this.newValue = new BasicEList((Collection)this.resource.getContents());
        }
    }

    @Override
    public void apply() {
        this.apply(false);
    }

    @Override
    public void applyAndReverse() {
        this.apply(true);
    }

    protected void apply(boolean reverse) {
        this.process(reverse, true);
    }

    @Override
    public void reverse() {
        this.process(true, false);
    }

    protected void process(boolean reverse, boolean apply) {
        Resource resource = this.getResource();
        if (resource != null && this.listChanges != null) {
            EList<Object> value = this.getValue();
            if (apply) {
                EList result = resource.getContents();
                ECollections.setEList((EList)result, value);
            }
            if (reverse) {
                ECollections.reverse(this.getListChanges());
                this.setValue(this.newValue);
            }
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 3: {
                return ((InternalEList)this.getListChanges()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    protected void apply(EList<Object> toList) {
        for (ListChange listChange : this.getListChanges()) {
            listChange.apply(toList);
        }
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getResourceURI();
            }
            case 1: {
                return this.getResource();
            }
            case 2: {
                return this.getValue();
            }
            case 3: {
                return this.getListChanges();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setResourceURI((String)newValue);
                return;
            }
            case 1: {
                this.setResource((Resource)newValue);
                return;
            }
            case 3: {
                this.getListChanges().clear();
                this.getListChanges().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setResourceURI(RESOURCE_URI_EDEFAULT);
                return;
            }
            case 1: {
                this.setResource(RESOURCE_EDEFAULT);
                return;
            }
            case 3: {
                this.getListChanges().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return RESOURCE_URI_EDEFAULT == null ? this.resourceURI != null : !RESOURCE_URI_EDEFAULT.equals(this.resourceURI);
            }
            case 1: {
                return RESOURCE_EDEFAULT == null ? this.resource != null : !RESOURCE_EDEFAULT.equals(this.resource);
            }
            case 2: {
                return this.getValue() != null;
            }
            case 3: {
                return this.listChanges != null && !this.listChanges.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (resourceURI: ");
        result.append(this.resourceURI);
        result.append(", resource: ");
        result.append(this.resource);
        result.append(')');
        return result.toString();
    }
}

