/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.ecucparameterdef.impl;

import autosar40.ecucparameterdef.EcucConditionSpecification;
import autosar40.ecucparameterdef.EcucDefinitionElement;
import autosar40.ecucparameterdef.EcucparameterdefPackage;
import autosar40.genericstructure.generaltemplateclasses.identifiable.impl.IdentifiableImpl;
import autosar40.genericstructure.varianthandling.BooleanValueVariationPoint;
import autosar40.genericstructure.varianthandling.PositiveIntegerValueVariationPoint;
import autosar40.genericstructure.varianthandling.VarianthandlingFactory;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public abstract class EcucDefinitionElementImpl
extends IdentifiableImpl
implements EcucDefinitionElement {
    protected EcucConditionSpecification ecucCond;
    protected PositiveIntegerValueVariationPoint lowerMultiplicity;
    protected PositiveIntegerValueVariationPoint upperMultiplicity;
    protected BooleanValueVariationPoint upperMultiplicityInfinite;

    protected EcucDefinitionElementImpl() {
    }

    protected EClass eStaticClass() {
        return EcucparameterdefPackage.Literals.ECUC_DEFINITION_ELEMENT;
    }

    public EcucConditionSpecification getEcucCond() {
        return this.ecucCond;
    }

    public NotificationChain basicSetEcucCond(EcucConditionSpecification newEcucCond, NotificationChain msgs) {
        EcucConditionSpecification oldEcucCond = this.ecucCond;
        this.ecucCond = newEcucCond;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 18, (Object)oldEcucCond, (Object)newEcucCond);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setEcucCond(EcucConditionSpecification newEcucCond) {
        if (newEcucCond != this.ecucCond) {
            NotificationChain msgs = null;
            if (this.ecucCond != null) {
                msgs = ((InternalEObject)this.ecucCond).eInverseRemove((InternalEObject)this, -19, null, msgs);
            }
            if (newEcucCond != null) {
                msgs = ((InternalEObject)newEcucCond).eInverseAdd((InternalEObject)this, -19, null, msgs);
            }
            if ((msgs = this.basicSetEcucCond(newEcucCond, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)newEcucCond, (Object)newEcucCond));
        }
    }

    public PositiveIntegerValueVariationPoint getLowerMultiplicity() {
        return this.lowerMultiplicity;
    }

    public NotificationChain basicSetLowerMultiplicity(PositiveIntegerValueVariationPoint newLowerMultiplicity, NotificationChain msgs) {
        PositiveIntegerValueVariationPoint oldLowerMultiplicity = this.lowerMultiplicity;
        this.lowerMultiplicity = newLowerMultiplicity;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldLowerMultiplicity, (Object)newLowerMultiplicity);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setLowerMultiplicity(PositiveIntegerValueVariationPoint newLowerMultiplicity) {
        if (newLowerMultiplicity != this.lowerMultiplicity) {
            NotificationChain msgs = null;
            if (this.lowerMultiplicity != null) {
                msgs = ((InternalEObject)this.lowerMultiplicity).eInverseRemove((InternalEObject)this, -20, null, msgs);
            }
            if (newLowerMultiplicity != null) {
                msgs = ((InternalEObject)newLowerMultiplicity).eInverseAdd((InternalEObject)this, -20, null, msgs);
            }
            if ((msgs = this.basicSetLowerMultiplicity(newLowerMultiplicity, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)newLowerMultiplicity, (Object)newLowerMultiplicity));
        }
    }

    public PositiveIntegerValueVariationPoint getUpperMultiplicity() {
        return this.upperMultiplicity;
    }

    public NotificationChain basicSetUpperMultiplicity(PositiveIntegerValueVariationPoint newUpperMultiplicity, NotificationChain msgs) {
        PositiveIntegerValueVariationPoint oldUpperMultiplicity = this.upperMultiplicity;
        this.upperMultiplicity = newUpperMultiplicity;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldUpperMultiplicity, (Object)newUpperMultiplicity);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setUpperMultiplicity(PositiveIntegerValueVariationPoint newUpperMultiplicity) {
        if (newUpperMultiplicity != this.upperMultiplicity) {
            NotificationChain msgs = null;
            if (this.upperMultiplicity != null) {
                msgs = ((InternalEObject)this.upperMultiplicity).eInverseRemove((InternalEObject)this, -21, null, msgs);
            }
            if (newUpperMultiplicity != null) {
                msgs = ((InternalEObject)newUpperMultiplicity).eInverseAdd((InternalEObject)this, -21, null, msgs);
            }
            if ((msgs = this.basicSetUpperMultiplicity(newUpperMultiplicity, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)newUpperMultiplicity, (Object)newUpperMultiplicity));
        }
    }

    public BooleanValueVariationPoint getUpperMultiplicityInfinite() {
        return this.upperMultiplicityInfinite;
    }

    public NotificationChain basicSetUpperMultiplicityInfinite(BooleanValueVariationPoint newUpperMultiplicityInfinite, NotificationChain msgs) {
        BooleanValueVariationPoint oldUpperMultiplicityInfinite = this.upperMultiplicityInfinite;
        this.upperMultiplicityInfinite = newUpperMultiplicityInfinite;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldUpperMultiplicityInfinite, (Object)newUpperMultiplicityInfinite);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setUpperMultiplicityInfinite(BooleanValueVariationPoint newUpperMultiplicityInfinite) {
        if (newUpperMultiplicityInfinite != this.upperMultiplicityInfinite) {
            NotificationChain msgs = null;
            if (this.upperMultiplicityInfinite != null) {
                msgs = ((InternalEObject)this.upperMultiplicityInfinite).eInverseRemove((InternalEObject)this, -22, null, msgs);
            }
            if (newUpperMultiplicityInfinite != null) {
                msgs = ((InternalEObject)newUpperMultiplicityInfinite).eInverseAdd((InternalEObject)this, -22, null, msgs);
            }
            if ((msgs = this.basicSetUpperMultiplicityInfinite(newUpperMultiplicityInfinite, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)newUpperMultiplicityInfinite, (Object)newUpperMultiplicityInfinite));
        }
    }

    public String gGetLowerMultiplicityAsString() {
        if (this.lowerMultiplicity == null) {
            return null;
        }
        return this.lowerMultiplicity.getMixedText();
    }

    public void gSetLowerMultiplicityAsString(String value) {
        if (this.lowerMultiplicity == null) {
            PositiveIntegerValueVariationPoint newLowerMultiplicity = VarianthandlingFactory.eINSTANCE.createPositiveIntegerValueVariationPoint();
            newLowerMultiplicity.setMixedText(value);
            this.setLowerMultiplicity(newLowerMultiplicity);
        } else {
            this.lowerMultiplicity.setMixedText(value);
        }
    }

    public String gGetUpperMultiplicityAsString() {
        if (this.upperMultiplicity == null) {
            return null;
        }
        return this.upperMultiplicity.getMixedText();
    }

    public void gSetUpperMultiplicityAsString(String value) {
        if (this.upperMultiplicity == null) {
            PositiveIntegerValueVariationPoint newUpperMultiplicity = VarianthandlingFactory.eINSTANCE.createPositiveIntegerValueVariationPoint();
            newUpperMultiplicity.setMixedText(value);
            this.setUpperMultiplicity(newUpperMultiplicity);
        } else {
            this.upperMultiplicity.setMixedText(value);
        }
    }

    public Boolean gGetUpperMultiplicityInfinite() {
        if (this.upperMultiplicityInfinite != null) {
            return Boolean.TRUE.toString().equals(this.upperMultiplicityInfinite.getMixedText());
        }
        return false;
    }

    public void gSetUpperMultiplicityInfinite(Boolean value) {
        if (this.upperMultiplicityInfinite == null) {
            BooleanValueVariationPoint newUpperMultiplicityInfinite = VarianthandlingFactory.eINSTANCE.createBooleanValueVariationPoint();
            newUpperMultiplicityInfinite.setMixedText(value.toString());
            this.setUpperMultiplicityInfinite(newUpperMultiplicityInfinite);
        } else {
            this.upperMultiplicityInfinite.setMixedText(value.toString());
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                return this.basicSetEcucCond(null, msgs);
            }
            case 19: {
                return this.basicSetLowerMultiplicity(null, msgs);
            }
            case 20: {
                return this.basicSetUpperMultiplicity(null, msgs);
            }
            case 21: {
                return this.basicSetUpperMultiplicityInfinite(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 18: {
                return this.getEcucCond();
            }
            case 19: {
                return this.getLowerMultiplicity();
            }
            case 20: {
                return this.getUpperMultiplicity();
            }
            case 21: {
                return this.getUpperMultiplicityInfinite();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 18: {
                this.setEcucCond((EcucConditionSpecification)newValue);
                return;
            }
            case 19: {
                this.setLowerMultiplicity((PositiveIntegerValueVariationPoint)newValue);
                return;
            }
            case 20: {
                this.setUpperMultiplicity((PositiveIntegerValueVariationPoint)newValue);
                return;
            }
            case 21: {
                this.setUpperMultiplicityInfinite((BooleanValueVariationPoint)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 18: {
                this.setEcucCond(null);
                return;
            }
            case 19: {
                this.setLowerMultiplicity(null);
                return;
            }
            case 20: {
                this.setUpperMultiplicity(null);
                return;
            }
            case 21: {
                this.setUpperMultiplicityInfinite(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 18: {
                return this.ecucCond != null;
            }
            case 19: {
                return this.lowerMultiplicity != null;
            }
            case 20: {
                return this.upperMultiplicity != null;
            }
            case 21: {
                return this.upperMultiplicityInfinite != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

