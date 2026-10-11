/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.EObjectResolvingReferringEList
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar3x.ecucdescription.instanceref.impl;

import autosar3x.ecucdescription.InstanceReferenceValue;
import autosar3x.ecucdescription.instanceref.InstanceReferenceValueValue;
import autosar3x.ecucdescription.instanceref.InstancerefPackage;
import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import autosar3x.genericstructure.infrastructure.impl.ARObjectImpl;
import java.util.Collection;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.EObjectResolvingReferringEList;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class InstanceReferenceValueValueImpl
extends ARObjectImpl
implements InstanceReferenceValueValue,
IReferringClass {
    protected EList<Identifiable> contexts;
    protected Identifiable value;

    protected InstanceReferenceValueValueImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return InstancerefPackage.Literals.INSTANCE_REFERENCE_VALUE_VALUE;
    }

    @Override
    public InstanceReferenceValue getInstanceReferenceValue() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (InstanceReferenceValue)this.eContainer();
    }

    public NotificationChain basicSetInstanceReferenceValue(InstanceReferenceValue newInstanceReferenceValue, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newInstanceReferenceValue, 4, msgs);
        return msgs;
    }

    @Override
    public void setInstanceReferenceValue(InstanceReferenceValue newInstanceReferenceValue) {
        if (newInstanceReferenceValue != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newInstanceReferenceValue != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newInstanceReferenceValue)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newInstanceReferenceValue != null) {
                msgs = ((InternalEObject)newInstanceReferenceValue).eInverseAdd((InternalEObject)this, 6, InstanceReferenceValue.class, msgs);
            }
            if ((msgs = this.basicSetInstanceReferenceValue(newInstanceReferenceValue, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newInstanceReferenceValue, (Object)newInstanceReferenceValue));
        }
    }

    @Override
    public EList<Identifiable> getContexts() {
        if (this.contexts == null) {
            this.contexts = new EObjectResolvingReferringEList(Identifiable.class, (InternalEObject)this, 5);
        }
        return this.contexts;
    }

    @Override
    public Identifiable getValue() {
        if (this.value != null && this.value.eIsProxy()) {
            InternalEObject oldValue = (InternalEObject)this.value;
            this.value = (Identifiable)this.eResolveProxy(oldValue);
            if (this.value != oldValue && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 6, (Object)oldValue, (Object)this.value));
            }
        }
        return this.value;
    }

    public Identifiable basicGetValue() {
        return this.value;
    }

    @Override
    public void setValue(Identifiable newValue) {
        Identifiable oldValue = this.value;
        this.value = newValue;
        AutosarObjectUtil.setDest((EObject)this, (int)6, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldValue, (Object)this.value));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetInstanceReferenceValue((InstanceReferenceValue)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetInstanceReferenceValue(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 6, InstanceReferenceValue.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getInstanceReferenceValue();
            }
            case 5: {
                return this.getContexts();
            }
            case 6: {
                if (resolve) {
                    return this.getValue();
                }
                return this.basicGetValue();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setInstanceReferenceValue((InstanceReferenceValue)newValue);
                return;
            }
            case 5: {
                this.getContexts().clear();
                this.getContexts().addAll((Collection)newValue);
                return;
            }
            case 6: {
                this.setValue((Identifiable)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setInstanceReferenceValue(null);
                return;
            }
            case 5: {
                this.getContexts().clear();
                return;
            }
            case 6: {
                this.setValue(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getInstanceReferenceValue() != null;
            }
            case 5: {
                return this.contexts != null && !this.contexts.isEmpty();
            }
            case 6: {
                return this.value != null;
            }
        }
        return super.eIsSet(featureID);
    }

    public void eSetReferringDest(int featureID, String dest) {
        AutosarObjectUtil.setDest((EObject)this, (int)featureID, (int)-1, (String)dest);
    }

    public void eSetReferringDest(int featureID, int index, String dest) {
        AutosarObjectUtil.setDest((EObject)this, (int)featureID, (int)index, (String)dest);
    }

    public String eGetReferringDest(int featureID) {
        return AutosarObjectUtil.getDest((EObject)this, (int)featureID, (int)-1);
    }

    public String eGetReferringDest(int featureID, int index) {
        return AutosarObjectUtil.getDest((EObject)this, (int)featureID, (int)index);
    }
}

