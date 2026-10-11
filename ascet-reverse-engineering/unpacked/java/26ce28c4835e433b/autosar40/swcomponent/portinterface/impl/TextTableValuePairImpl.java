/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar40.swcomponent.portinterface.impl;

import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.genericstructure.varianthandling.NumericalValueVariationPoint;
import autosar40.swcomponent.portinterface.PortinterfacePackage;
import autosar40.swcomponent.portinterface.TextTableMapping;
import autosar40.swcomponent.portinterface.TextTableValuePair;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class TextTableValuePairImpl
extends ARObjectImpl
implements TextTableValuePair {
    protected NumericalValueVariationPoint firstValue;
    protected NumericalValueVariationPoint secondValue;

    protected TextTableValuePairImpl() {
    }

    protected EClass eStaticClass() {
        return PortinterfacePackage.Literals.TEXT_TABLE_VALUE_PAIR;
    }

    public TextTableMapping getTextTableMapping() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (TextTableMapping)this.eContainer();
    }

    public NotificationChain basicSetTextTableMapping(TextTableMapping newTextTableMapping, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newTextTableMapping, 4, msgs);
        return msgs;
    }

    public void setTextTableMapping(TextTableMapping newTextTableMapping) {
        if (newTextTableMapping != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newTextTableMapping != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newTextTableMapping)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newTextTableMapping != null) {
                msgs = ((InternalEObject)newTextTableMapping).eInverseAdd((InternalEObject)this, 6, TextTableMapping.class, msgs);
            }
            if ((msgs = this.basicSetTextTableMapping(newTextTableMapping, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newTextTableMapping, (Object)newTextTableMapping));
        }
    }

    public NumericalValueVariationPoint getFirstValue() {
        return this.firstValue;
    }

    public NotificationChain basicSetFirstValue(NumericalValueVariationPoint newFirstValue, NotificationChain msgs) {
        NumericalValueVariationPoint oldFirstValue = this.firstValue;
        this.firstValue = newFirstValue;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldFirstValue, (Object)newFirstValue);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setFirstValue(NumericalValueVariationPoint newFirstValue) {
        if (newFirstValue != this.firstValue) {
            NotificationChain msgs = null;
            if (this.firstValue != null) {
                msgs = ((InternalEObject)this.firstValue).eInverseRemove((InternalEObject)this, -6, null, msgs);
            }
            if (newFirstValue != null) {
                msgs = ((InternalEObject)newFirstValue).eInverseAdd((InternalEObject)this, -6, null, msgs);
            }
            if ((msgs = this.basicSetFirstValue(newFirstValue, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)newFirstValue, (Object)newFirstValue));
        }
    }

    public NumericalValueVariationPoint getSecondValue() {
        return this.secondValue;
    }

    public NotificationChain basicSetSecondValue(NumericalValueVariationPoint newSecondValue, NotificationChain msgs) {
        NumericalValueVariationPoint oldSecondValue = this.secondValue;
        this.secondValue = newSecondValue;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldSecondValue, (Object)newSecondValue);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setSecondValue(NumericalValueVariationPoint newSecondValue) {
        if (newSecondValue != this.secondValue) {
            NotificationChain msgs = null;
            if (this.secondValue != null) {
                msgs = ((InternalEObject)this.secondValue).eInverseRemove((InternalEObject)this, -7, null, msgs);
            }
            if (newSecondValue != null) {
                msgs = ((InternalEObject)newSecondValue).eInverseAdd((InternalEObject)this, -7, null, msgs);
            }
            if ((msgs = this.basicSetSecondValue(newSecondValue, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)newSecondValue, (Object)newSecondValue));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetTextTableMapping((TextTableMapping)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetTextTableMapping(null, msgs);
            }
            case 5: {
                return this.basicSetFirstValue(null, msgs);
            }
            case 6: {
                return this.basicSetSecondValue(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 6, TextTableMapping.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getTextTableMapping();
            }
            case 5: {
                return this.getFirstValue();
            }
            case 6: {
                return this.getSecondValue();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setTextTableMapping((TextTableMapping)newValue);
                return;
            }
            case 5: {
                this.setFirstValue((NumericalValueVariationPoint)newValue);
                return;
            }
            case 6: {
                this.setSecondValue((NumericalValueVariationPoint)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setTextTableMapping(null);
                return;
            }
            case 5: {
                this.setFirstValue(null);
                return;
            }
            case 6: {
                this.setSecondValue(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getTextTableMapping() != null;
            }
            case 5: {
                return this.firstValue != null;
            }
            case 6: {
                return this.secondValue != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

