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
 */
package autosar40.swcomponent.communication.impl;

import autosar40.commonstructure.constants.ValueSpecification;
import autosar40.swcomponent.communication.CommunicationPackage;
import autosar40.swcomponent.communication.NvProvideComSpec;
import autosar40.swcomponent.communication.impl.PPortComSpecImpl;
import autosar40.swcomponent.datatype.dataprototypes.VariableDataPrototype;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class NvProvideComSpecImpl
extends PPortComSpecImpl
implements NvProvideComSpec,
IReferringClass {
    protected ValueSpecification ramBlockInitValue;
    protected ValueSpecification romBlockInitValue;
    protected VariableDataPrototype variable;

    protected NvProvideComSpecImpl() {
    }

    protected EClass eStaticClass() {
        return CommunicationPackage.Literals.NV_PROVIDE_COM_SPEC;
    }

    public ValueSpecification getRamBlockInitValue() {
        return this.ramBlockInitValue;
    }

    public NotificationChain basicSetRamBlockInitValue(ValueSpecification newRamBlockInitValue, NotificationChain msgs) {
        ValueSpecification oldRamBlockInitValue = this.ramBlockInitValue;
        this.ramBlockInitValue = newRamBlockInitValue;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldRamBlockInitValue, (Object)newRamBlockInitValue);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setRamBlockInitValue(ValueSpecification newRamBlockInitValue) {
        if (newRamBlockInitValue != this.ramBlockInitValue) {
            NotificationChain msgs = null;
            if (this.ramBlockInitValue != null) {
                msgs = ((InternalEObject)this.ramBlockInitValue).eInverseRemove((InternalEObject)this, -6, null, msgs);
            }
            if (newRamBlockInitValue != null) {
                msgs = ((InternalEObject)newRamBlockInitValue).eInverseAdd((InternalEObject)this, -6, null, msgs);
            }
            if ((msgs = this.basicSetRamBlockInitValue(newRamBlockInitValue, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)newRamBlockInitValue, (Object)newRamBlockInitValue));
        }
    }

    public ValueSpecification getRomBlockInitValue() {
        return this.romBlockInitValue;
    }

    public NotificationChain basicSetRomBlockInitValue(ValueSpecification newRomBlockInitValue, NotificationChain msgs) {
        ValueSpecification oldRomBlockInitValue = this.romBlockInitValue;
        this.romBlockInitValue = newRomBlockInitValue;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldRomBlockInitValue, (Object)newRomBlockInitValue);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setRomBlockInitValue(ValueSpecification newRomBlockInitValue) {
        if (newRomBlockInitValue != this.romBlockInitValue) {
            NotificationChain msgs = null;
            if (this.romBlockInitValue != null) {
                msgs = ((InternalEObject)this.romBlockInitValue).eInverseRemove((InternalEObject)this, -7, null, msgs);
            }
            if (newRomBlockInitValue != null) {
                msgs = ((InternalEObject)newRomBlockInitValue).eInverseAdd((InternalEObject)this, -7, null, msgs);
            }
            if ((msgs = this.basicSetRomBlockInitValue(newRomBlockInitValue, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)newRomBlockInitValue, (Object)newRomBlockInitValue));
        }
    }

    public VariableDataPrototype getVariable() {
        if (this.variable != null && this.variable.eIsProxy()) {
            InternalEObject oldVariable = (InternalEObject)this.variable;
            this.variable = (VariableDataPrototype)this.eResolveProxy(oldVariable);
            if (this.variable != oldVariable && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 7, (Object)oldVariable, (Object)this.variable));
            }
        }
        return this.variable;
    }

    public VariableDataPrototype basicGetVariable() {
        return this.variable;
    }

    public void setVariable(VariableDataPrototype newVariable) {
        VariableDataPrototype oldVariable = this.variable;
        this.variable = newVariable;
        AutosarObjectUtil.setDest((EObject)this, (int)7, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldVariable, (Object)this.variable));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 5: {
                return this.basicSetRamBlockInitValue(null, msgs);
            }
            case 6: {
                return this.basicSetRomBlockInitValue(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 5: {
                return this.getRamBlockInitValue();
            }
            case 6: {
                return this.getRomBlockInitValue();
            }
            case 7: {
                if (resolve) {
                    return this.getVariable();
                }
                return this.basicGetVariable();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 5: {
                this.setRamBlockInitValue((ValueSpecification)newValue);
                return;
            }
            case 6: {
                this.setRomBlockInitValue((ValueSpecification)newValue);
                return;
            }
            case 7: {
                this.setVariable((VariableDataPrototype)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 5: {
                this.setRamBlockInitValue(null);
                return;
            }
            case 6: {
                this.setRomBlockInitValue(null);
                return;
            }
            case 7: {
                this.setVariable(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 5: {
                return this.ramBlockInitValue != null;
            }
            case 6: {
                return this.romBlockInitValue != null;
            }
            case 7: {
                return this.variable != null;
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

