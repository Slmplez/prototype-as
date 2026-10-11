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
package autosar40.swcomponent.swcinternalbehavior.portapioptions.impl;

import autosar40.commonstructure.constants.ValueSpecification;
import autosar40.commonstructure.implementationdatatypes.ImplementationDataType;
import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.swcomponent.swcinternalbehavior.portapioptions.PortAPIOption;
import autosar40.swcomponent.swcinternalbehavior.portapioptions.PortDefinedArgumentValue;
import autosar40.swcomponent.swcinternalbehavior.portapioptions.PortapioptionsPackage;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class PortDefinedArgumentValueImpl
extends ARObjectImpl
implements PortDefinedArgumentValue,
IReferringClass {
    protected ValueSpecification value;
    protected ImplementationDataType valueType;

    protected PortDefinedArgumentValueImpl() {
    }

    protected EClass eStaticClass() {
        return PortapioptionsPackage.Literals.PORT_DEFINED_ARGUMENT_VALUE;
    }

    public PortAPIOption getPortAPIOption() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (PortAPIOption)this.eContainer();
    }

    public NotificationChain basicSetPortAPIOption(PortAPIOption newPortAPIOption, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newPortAPIOption, 4, msgs);
        return msgs;
    }

    public void setPortAPIOption(PortAPIOption newPortAPIOption) {
        if (newPortAPIOption != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newPortAPIOption != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newPortAPIOption)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newPortAPIOption != null) {
                msgs = ((InternalEObject)newPortAPIOption).eInverseAdd((InternalEObject)this, 7, PortAPIOption.class, msgs);
            }
            if ((msgs = this.basicSetPortAPIOption(newPortAPIOption, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newPortAPIOption, (Object)newPortAPIOption));
        }
    }

    public ValueSpecification getValue() {
        return this.value;
    }

    public NotificationChain basicSetValue(ValueSpecification newValue, NotificationChain msgs) {
        ValueSpecification oldValue = this.value;
        this.value = newValue;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldValue, (Object)newValue);
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
                msgs = ((InternalEObject)this.value).eInverseRemove((InternalEObject)this, -6, null, msgs);
            }
            if (newValue != null) {
                msgs = ((InternalEObject)newValue).eInverseAdd((InternalEObject)this, -6, null, msgs);
            }
            if ((msgs = this.basicSetValue(newValue, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)newValue, (Object)newValue));
        }
    }

    public ImplementationDataType getValueType() {
        if (this.valueType != null && this.valueType.eIsProxy()) {
            InternalEObject oldValueType = (InternalEObject)this.valueType;
            this.valueType = (ImplementationDataType)this.eResolveProxy(oldValueType);
            if (this.valueType != oldValueType && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 6, (Object)oldValueType, (Object)this.valueType));
            }
        }
        return this.valueType;
    }

    public ImplementationDataType basicGetValueType() {
        return this.valueType;
    }

    public void setValueType(ImplementationDataType newValueType) {
        ImplementationDataType oldValueType = this.valueType;
        this.valueType = newValueType;
        AutosarObjectUtil.setDest((EObject)this, (int)6, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldValueType, (Object)this.valueType));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetPortAPIOption((PortAPIOption)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetPortAPIOption(null, msgs);
            }
            case 5: {
                return this.basicSetValue(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 7, PortAPIOption.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getPortAPIOption();
            }
            case 5: {
                return this.getValue();
            }
            case 6: {
                if (resolve) {
                    return this.getValueType();
                }
                return this.basicGetValueType();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setPortAPIOption((PortAPIOption)newValue);
                return;
            }
            case 5: {
                this.setValue((ValueSpecification)newValue);
                return;
            }
            case 6: {
                this.setValueType((ImplementationDataType)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setPortAPIOption(null);
                return;
            }
            case 5: {
                this.setValue(null);
                return;
            }
            case 6: {
                this.setValueType(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getPortAPIOption() != null;
            }
            case 5: {
                return this.value != null;
            }
            case 6: {
                return this.valueType != null;
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

