/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar40.standardization.blueprintdedicated.portprotoypeblueprint.impl;

import autosar40.commonstructure.constants.ValueSpecification;
import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.standardization.blueprintdedicated.portprotoypeblueprint.PortPrototypeBlueprint;
import autosar40.standardization.blueprintdedicated.portprotoypeblueprint.PortPrototypeBlueprintInitValue;
import autosar40.standardization.blueprintdedicated.portprotoypeblueprint.PortprotoypeblueprintPackage;
import autosar40.swcomponent.datatype.dataprototypes.AutosarDataPrototype;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class PortPrototypeBlueprintInitValueImpl
extends ARObjectImpl
implements PortPrototypeBlueprintInitValue,
IReferringClass {
    protected AutosarDataPrototype dataPrototype;
    protected ValueSpecification value;

    protected PortPrototypeBlueprintInitValueImpl() {
    }

    protected EClass eStaticClass() {
        return PortprotoypeblueprintPackage.Literals.PORT_PROTOTYPE_BLUEPRINT_INIT_VALUE;
    }

    public PortPrototypeBlueprint getPortPrototypeBlueprint() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (PortPrototypeBlueprint)this.eContainer();
    }

    public NotificationChain basicSetPortPrototypeBlueprint(PortPrototypeBlueprint newPortPrototypeBlueprint, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newPortPrototypeBlueprint, 4, msgs);
        return msgs;
    }

    public void setPortPrototypeBlueprint(PortPrototypeBlueprint newPortPrototypeBlueprint) {
        if (newPortPrototypeBlueprint != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newPortPrototypeBlueprint != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newPortPrototypeBlueprint)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newPortPrototypeBlueprint != null) {
                msgs = ((InternalEObject)newPortPrototypeBlueprint).eInverseAdd((InternalEObject)this, 23, PortPrototypeBlueprint.class, msgs);
            }
            if ((msgs = this.basicSetPortPrototypeBlueprint(newPortPrototypeBlueprint, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newPortPrototypeBlueprint, (Object)newPortPrototypeBlueprint));
        }
    }

    public AutosarDataPrototype getDataPrototype() {
        if (this.dataPrototype != null && this.dataPrototype.eIsProxy()) {
            InternalEObject oldDataPrototype = (InternalEObject)this.dataPrototype;
            this.dataPrototype = (AutosarDataPrototype)this.eResolveProxy(oldDataPrototype);
            if (this.dataPrototype != oldDataPrototype && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 5, (Object)oldDataPrototype, (Object)this.dataPrototype));
            }
        }
        return this.dataPrototype;
    }

    public AutosarDataPrototype basicGetDataPrototype() {
        return this.dataPrototype;
    }

    public void setDataPrototype(AutosarDataPrototype newDataPrototype) {
        AutosarDataPrototype oldDataPrototype = this.dataPrototype;
        this.dataPrototype = newDataPrototype;
        AutosarObjectUtil.setDest((EObject)this, (int)5, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldDataPrototype, (Object)this.dataPrototype));
        }
    }

    public ValueSpecification getValue() {
        return this.value;
    }

    public NotificationChain basicSetValue(ValueSpecification newValue, NotificationChain msgs) {
        ValueSpecification oldValue = this.value;
        this.value = newValue;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldValue, (Object)newValue);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setValue(ValueSpecification newValue) {
        if (newValue != this.value) {
            NotificationChain msgs = null;
            if (this.value != null) {
                msgs = ((InternalEObject)this.value).eInverseRemove((InternalEObject)this, -7, null, msgs);
            }
            if (newValue != null) {
                msgs = ((InternalEObject)newValue).eInverseAdd((InternalEObject)this, -7, null, msgs);
            }
            if ((msgs = this.basicSetValue(newValue, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)newValue, (Object)newValue));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetPortPrototypeBlueprint((PortPrototypeBlueprint)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetPortPrototypeBlueprint(null, msgs);
            }
            case 6: {
                return this.basicSetValue(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 23, PortPrototypeBlueprint.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getPortPrototypeBlueprint();
            }
            case 5: {
                if (resolve) {
                    return this.getDataPrototype();
                }
                return this.basicGetDataPrototype();
            }
            case 6: {
                return this.getValue();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setPortPrototypeBlueprint((PortPrototypeBlueprint)newValue);
                return;
            }
            case 5: {
                this.setDataPrototype((AutosarDataPrototype)newValue);
                return;
            }
            case 6: {
                this.setValue((ValueSpecification)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setPortPrototypeBlueprint(null);
                return;
            }
            case 5: {
                this.setDataPrototype(null);
                return;
            }
            case 6: {
                this.setValue(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getPortPrototypeBlueprint() != null;
            }
            case 5: {
                return this.dataPrototype != null;
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

