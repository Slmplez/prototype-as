/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar40.ecucparameterdef.impl;

import autosar40.ecucparameterdef.EcucConditionFormula;
import autosar40.ecucparameterdef.EcucConditionSpecification;
import autosar40.ecucparameterdef.EcucQuery;
import autosar40.ecucparameterdef.EcucparameterdefPackage;
import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.formula.MlFormula;
import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class EcucConditionSpecificationImpl
extends ARObjectImpl
implements EcucConditionSpecification {
    protected EcucConditionFormula conditionFormula;
    protected EList<EcucQuery> ecucQueries;
    protected MlFormula informalFormula;

    protected EcucConditionSpecificationImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return EcucparameterdefPackage.Literals.ECUC_CONDITION_SPECIFICATION;
    }

    @Override
    public EcucConditionFormula getConditionFormula() {
        return this.conditionFormula;
    }

    public NotificationChain basicSetConditionFormula(EcucConditionFormula newConditionFormula, NotificationChain msgs) {
        EcucConditionFormula oldConditionFormula = this.conditionFormula;
        this.conditionFormula = newConditionFormula;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldConditionFormula, (Object)newConditionFormula);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setConditionFormula(EcucConditionFormula newConditionFormula) {
        if (newConditionFormula != this.conditionFormula) {
            NotificationChain msgs = null;
            if (this.conditionFormula != null) {
                msgs = ((InternalEObject)this.conditionFormula).eInverseRemove((InternalEObject)this, 5, EcucConditionFormula.class, msgs);
            }
            if (newConditionFormula != null) {
                msgs = ((InternalEObject)newConditionFormula).eInverseAdd((InternalEObject)this, 5, EcucConditionFormula.class, msgs);
            }
            if ((msgs = this.basicSetConditionFormula(newConditionFormula, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newConditionFormula, (Object)newConditionFormula));
        }
    }

    @Override
    public EList<EcucQuery> getEcucQueries() {
        if (this.ecucQueries == null) {
            this.ecucQueries = new EObjectContainmentEList(EcucQuery.class, (InternalEObject)this, 5);
        }
        return this.ecucQueries;
    }

    @Override
    public MlFormula getInformalFormula() {
        return this.informalFormula;
    }

    public NotificationChain basicSetInformalFormula(MlFormula newInformalFormula, NotificationChain msgs) {
        MlFormula oldInformalFormula = this.informalFormula;
        this.informalFormula = newInformalFormula;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldInformalFormula, (Object)newInformalFormula);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setInformalFormula(MlFormula newInformalFormula) {
        if (newInformalFormula != this.informalFormula) {
            NotificationChain msgs = null;
            if (this.informalFormula != null) {
                msgs = ((InternalEObject)this.informalFormula).eInverseRemove((InternalEObject)this, -7, null, msgs);
            }
            if (newInformalFormula != null) {
                msgs = ((InternalEObject)newInformalFormula).eInverseAdd((InternalEObject)this, -7, null, msgs);
            }
            if ((msgs = this.basicSetInformalFormula(newInformalFormula, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)newInformalFormula, (Object)newInformalFormula));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.conditionFormula != null) {
                    msgs = ((InternalEObject)this.conditionFormula).eInverseRemove((InternalEObject)this, -5, null, msgs);
                }
                return this.basicSetConditionFormula((EcucConditionFormula)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetConditionFormula(null, msgs);
            }
            case 5: {
                return ((InternalEList)this.getEcucQueries()).basicRemove((Object)otherEnd, msgs);
            }
            case 6: {
                return this.basicSetInformalFormula(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getConditionFormula();
            }
            case 5: {
                return this.getEcucQueries();
            }
            case 6: {
                return this.getInformalFormula();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setConditionFormula((EcucConditionFormula)newValue);
                return;
            }
            case 5: {
                this.getEcucQueries().clear();
                this.getEcucQueries().addAll((Collection)newValue);
                return;
            }
            case 6: {
                this.setInformalFormula((MlFormula)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setConditionFormula(null);
                return;
            }
            case 5: {
                this.getEcucQueries().clear();
                return;
            }
            case 6: {
                this.setInformalFormula(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.conditionFormula != null;
            }
            case 5: {
                return this.ecucQueries != null && !this.ecucQueries.isEmpty();
            }
            case 6: {
                return this.informalFormula != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

