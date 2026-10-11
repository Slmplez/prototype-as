/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.impl.EObjectImpl
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package org.eclipse.emf.validation.internal.modeled.model.validation.impl;

import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.EObjectImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.InternalEList;
import org.eclipse.emf.validation.internal.modeled.ValidationModelOperationsImpl;
import org.eclipse.emf.validation.internal.modeled.model.validation.Category;
import org.eclipse.emf.validation.internal.modeled.model.validation.ValidationPackage;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class CategoryImpl
extends EObjectImpl
implements Category {
    protected EList<Category> subCategories;
    protected static final String ID_EDEFAULT = null;
    protected String id = ID_EDEFAULT;
    protected static final boolean MANDATORY_EDEFAULT = false;
    protected boolean mandatory = false;
    protected static final String NAME_EDEFAULT = null;
    protected String name = NAME_EDEFAULT;

    protected CategoryImpl() {
    }

    protected EClass eStaticClass() {
        return ValidationPackage.Literals.CATEGORY;
    }

    @Override
    public EList<Category> getSubCategories() {
        if (this.subCategories == null) {
            this.subCategories = new EObjectContainmentWithInverseEList(Category.class, (InternalEObject)this, 0, 4);
        }
        return this.subCategories;
    }

    @Override
    public String getId() {
        return this.id;
    }

    @Override
    public void setId(String newId) {
        String oldId = this.id;
        this.id = newId;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, (Object)oldId, (Object)this.id));
        }
    }

    @Override
    public boolean isMandatory() {
        return this.mandatory;
    }

    @Override
    public void setMandatory(boolean newMandatory) {
        boolean oldMandatory = this.mandatory;
        this.mandatory = newMandatory;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 2, oldMandatory, this.mandatory));
        }
    }

    @Override
    public String getName() {
        return this.name;
    }

    @Override
    public void setName(String newName) {
        String oldName = this.name;
        this.name = newName;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 3, (Object)oldName, (Object)this.name));
        }
    }

    @Override
    public Category getParentCategory() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (Category)this.eContainer();
    }

    public NotificationChain basicSetParentCategory(Category newParentCategory, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newParentCategory, 4, msgs);
        return msgs;
    }

    @Override
    public void setParentCategory(Category newParentCategory) {
        if (newParentCategory != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newParentCategory != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newParentCategory)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newParentCategory != null) {
                msgs = ((InternalEObject)newParentCategory).eInverseAdd((InternalEObject)this, 0, Category.class, msgs);
            }
            if ((msgs = this.basicSetParentCategory(newParentCategory, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newParentCategory, (Object)newParentCategory));
        }
    }

    @Override
    public String getPath() {
        return ValidationModelOperationsImpl.categoryGetPath(this);
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return ((InternalEList)this.getSubCategories()).basicAdd((Object)otherEnd, msgs);
            }
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetParentCategory((Category)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return ((InternalEList)this.getSubCategories()).basicRemove((Object)otherEnd, msgs);
            }
            case 4: {
                return this.basicSetParentCategory(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 0, Category.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getSubCategories();
            }
            case 1: {
                return this.getId();
            }
            case 2: {
                return this.isMandatory();
            }
            case 3: {
                return this.getName();
            }
            case 4: {
                return this.getParentCategory();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.getSubCategories().clear();
                this.getSubCategories().addAll((Collection)newValue);
                return;
            }
            case 1: {
                this.setId((String)newValue);
                return;
            }
            case 2: {
                this.setMandatory((Boolean)newValue);
                return;
            }
            case 3: {
                this.setName((String)newValue);
                return;
            }
            case 4: {
                this.setParentCategory((Category)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.getSubCategories().clear();
                return;
            }
            case 1: {
                this.setId(ID_EDEFAULT);
                return;
            }
            case 2: {
                this.setMandatory(false);
                return;
            }
            case 3: {
                this.setName(NAME_EDEFAULT);
                return;
            }
            case 4: {
                this.setParentCategory(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.subCategories != null && !this.subCategories.isEmpty();
            }
            case 1: {
                return ID_EDEFAULT == null ? this.id != null : !ID_EDEFAULT.equals(this.id);
            }
            case 2: {
                return this.mandatory;
            }
            case 3: {
                return NAME_EDEFAULT == null ? this.name != null : !NAME_EDEFAULT.equals(this.name);
            }
            case 4: {
                return this.getParentCategory() != null;
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (id: ");
        result.append(this.id);
        result.append(", mandatory: ");
        result.append(this.mandatory);
        result.append(", name: ");
        result.append(this.name);
        result.append(')');
        return result.toString();
    }
}

