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
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar40.ecucparameterdef.impl;

import autosar40.ecucparameterdef.EcucDerivationSpecification;
import autosar40.ecucparameterdef.EcucParameterDef;
import autosar40.ecucparameterdef.EcucParameterDerivationFormula;
import autosar40.ecucparameterdef.EcucQuery;
import autosar40.ecucparameterdef.EcucparameterdefPackage;
import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.formula.MlFormula;
import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class EcucDerivationSpecificationImpl
extends ARObjectImpl
implements EcucDerivationSpecification {
    protected EcucParameterDerivationFormula calculationFormula;
    protected EList<EcucQuery> ecucQueries;
    protected MlFormula informalFormula;

    protected EcucDerivationSpecificationImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return EcucparameterdefPackage.Literals.ECUC_DERIVATION_SPECIFICATION;
    }

    @Override
    public EcucParameterDef getEcucParameterDef() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (EcucParameterDef)this.eContainer();
    }

    public NotificationChain basicSetEcucParameterDef(EcucParameterDef newEcucParameterDef, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newEcucParameterDef, 4, msgs);
        return msgs;
    }

    @Override
    public void setEcucParameterDef(EcucParameterDef newEcucParameterDef) {
        if (newEcucParameterDef != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newEcucParameterDef != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newEcucParameterDef)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newEcucParameterDef != null) {
                msgs = ((InternalEObject)newEcucParameterDef).eInverseAdd((InternalEObject)this, 27, EcucParameterDef.class, msgs);
            }
            if ((msgs = this.basicSetEcucParameterDef(newEcucParameterDef, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newEcucParameterDef, (Object)newEcucParameterDef));
        }
    }

    @Override
    public EcucParameterDerivationFormula getCalculationFormula() {
        return this.calculationFormula;
    }

    public NotificationChain basicSetCalculationFormula(EcucParameterDerivationFormula newCalculationFormula, NotificationChain msgs) {
        EcucParameterDerivationFormula oldCalculationFormula = this.calculationFormula;
        this.calculationFormula = newCalculationFormula;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldCalculationFormula, (Object)newCalculationFormula);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setCalculationFormula(EcucParameterDerivationFormula newCalculationFormula) {
        if (newCalculationFormula != this.calculationFormula) {
            NotificationChain msgs = null;
            if (this.calculationFormula != null) {
                msgs = ((InternalEObject)this.calculationFormula).eInverseRemove((InternalEObject)this, 5, EcucParameterDerivationFormula.class, msgs);
            }
            if (newCalculationFormula != null) {
                msgs = ((InternalEObject)newCalculationFormula).eInverseAdd((InternalEObject)this, 5, EcucParameterDerivationFormula.class, msgs);
            }
            if ((msgs = this.basicSetCalculationFormula(newCalculationFormula, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)newCalculationFormula, (Object)newCalculationFormula));
        }
    }

    @Override
    public EList<EcucQuery> getEcucQueries() {
        if (this.ecucQueries == null) {
            this.ecucQueries = new EObjectContainmentEList(EcucQuery.class, (InternalEObject)this, 6);
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
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldInformalFormula, (Object)newInformalFormula);
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
                msgs = ((InternalEObject)this.informalFormula).eInverseRemove((InternalEObject)this, -8, null, msgs);
            }
            if (newInformalFormula != null) {
                msgs = ((InternalEObject)newInformalFormula).eInverseAdd((InternalEObject)this, -8, null, msgs);
            }
            if ((msgs = this.basicSetInformalFormula(newInformalFormula, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)newInformalFormula, (Object)newInformalFormula));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetEcucParameterDef((EcucParameterDef)otherEnd, msgs);
            }
            case 5: {
                if (this.calculationFormula != null) {
                    msgs = ((InternalEObject)this.calculationFormula).eInverseRemove((InternalEObject)this, -6, null, msgs);
                }
                return this.basicSetCalculationFormula((EcucParameterDerivationFormula)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetEcucParameterDef(null, msgs);
            }
            case 5: {
                return this.basicSetCalculationFormula(null, msgs);
            }
            case 6: {
                return ((InternalEList)this.getEcucQueries()).basicRemove((Object)otherEnd, msgs);
            }
            case 7: {
                return this.basicSetInformalFormula(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 27, EcucParameterDef.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getEcucParameterDef();
            }
            case 5: {
                return this.getCalculationFormula();
            }
            case 6: {
                return this.getEcucQueries();
            }
            case 7: {
                return this.getInformalFormula();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setEcucParameterDef((EcucParameterDef)newValue);
                return;
            }
            case 5: {
                this.setCalculationFormula((EcucParameterDerivationFormula)newValue);
                return;
            }
            case 6: {
                this.getEcucQueries().clear();
                this.getEcucQueries().addAll((Collection)newValue);
                return;
            }
            case 7: {
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
                this.setEcucParameterDef(null);
                return;
            }
            case 5: {
                this.setCalculationFormula(null);
                return;
            }
            case 6: {
                this.getEcucQueries().clear();
                return;
            }
            case 7: {
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
                return this.getEcucParameterDef() != null;
            }
            case 5: {
                return this.calculationFormula != null;
            }
            case 6: {
                return this.ecucQueries != null && !this.ecucQueries.isEmpty();
            }
            case 7: {
                return this.informalFormula != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

