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
package autosar3x.commonstructure.globalconstraints.impl;

import autosar3x.commonstructure.globalconstraints.DataConstrRule;
import autosar3x.commonstructure.globalconstraints.GlobalconstraintsPackage;
import autosar3x.commonstructure.globalconstraints.InternalConstrs;
import autosar3x.commonstructure.globalconstraints.ScaleConstr;
import autosar3x.genericstructure.commonpatterns.enumerations.MonotonyEnum;
import autosar3x.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar3x.swcomponent.datatype.localconstraints.Limit;
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
public class InternalConstrsImpl
extends ARObjectImpl
implements InternalConstrs {
    protected Limit lowerLimit;
    protected Limit upperLimit;
    protected EList<ScaleConstr> scaleConstrs;
    protected static final String MAX_GRADIENT_EDEFAULT = "";
    protected String maxGradient = "";
    protected boolean maxGradientESet;
    protected static final String MAX_DIFF_EDEFAULT = "";
    protected String maxDiff = "";
    protected boolean maxDiffESet;
    protected static final MonotonyEnum MONOTONY_EDEFAULT = MonotonyEnum.INCREASING;
    protected MonotonyEnum monotony = MONOTONY_EDEFAULT;
    protected boolean monotonyESet;

    protected InternalConstrsImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return GlobalconstraintsPackage.Literals.INTERNAL_CONSTRS;
    }

    @Override
    public DataConstrRule getDataConstrRule() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (DataConstrRule)this.eContainer();
    }

    public NotificationChain basicSetDataConstrRule(DataConstrRule newDataConstrRule, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newDataConstrRule, 4, msgs);
        return msgs;
    }

    @Override
    public void setDataConstrRule(DataConstrRule newDataConstrRule) {
        if (newDataConstrRule != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newDataConstrRule != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newDataConstrRule)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newDataConstrRule != null) {
                msgs = ((InternalEObject)newDataConstrRule).eInverseAdd((InternalEObject)this, 6, DataConstrRule.class, msgs);
            }
            if ((msgs = this.basicSetDataConstrRule(newDataConstrRule, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newDataConstrRule, (Object)newDataConstrRule));
        }
    }

    @Override
    public Limit getLowerLimit() {
        return this.lowerLimit;
    }

    public NotificationChain basicSetLowerLimit(Limit newLowerLimit, NotificationChain msgs) {
        Limit oldLowerLimit = this.lowerLimit;
        this.lowerLimit = newLowerLimit;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldLowerLimit, (Object)newLowerLimit);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setLowerLimit(Limit newLowerLimit) {
        if (newLowerLimit != this.lowerLimit) {
            NotificationChain msgs = null;
            if (this.lowerLimit != null) {
                msgs = ((InternalEObject)this.lowerLimit).eInverseRemove((InternalEObject)this, -6, null, msgs);
            }
            if (newLowerLimit != null) {
                msgs = ((InternalEObject)newLowerLimit).eInverseAdd((InternalEObject)this, -6, null, msgs);
            }
            if ((msgs = this.basicSetLowerLimit(newLowerLimit, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)newLowerLimit, (Object)newLowerLimit));
        }
    }

    @Override
    public Limit getUpperLimit() {
        return this.upperLimit;
    }

    public NotificationChain basicSetUpperLimit(Limit newUpperLimit, NotificationChain msgs) {
        Limit oldUpperLimit = this.upperLimit;
        this.upperLimit = newUpperLimit;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldUpperLimit, (Object)newUpperLimit);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setUpperLimit(Limit newUpperLimit) {
        if (newUpperLimit != this.upperLimit) {
            NotificationChain msgs = null;
            if (this.upperLimit != null) {
                msgs = ((InternalEObject)this.upperLimit).eInverseRemove((InternalEObject)this, -7, null, msgs);
            }
            if (newUpperLimit != null) {
                msgs = ((InternalEObject)newUpperLimit).eInverseAdd((InternalEObject)this, -7, null, msgs);
            }
            if ((msgs = this.basicSetUpperLimit(newUpperLimit, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)newUpperLimit, (Object)newUpperLimit));
        }
    }

    @Override
    public EList<ScaleConstr> getScaleConstrs() {
        if (this.scaleConstrs == null) {
            this.scaleConstrs = new EObjectContainmentEList(ScaleConstr.class, (InternalEObject)this, 7);
        }
        return this.scaleConstrs;
    }

    @Override
    public String getMaxGradient() {
        return this.maxGradient;
    }

    @Override
    public void setMaxGradient(String newMaxGradient) {
        String oldMaxGradient = this.maxGradient;
        this.maxGradient = newMaxGradient;
        boolean oldMaxGradientESet = this.maxGradientESet;
        this.maxGradientESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldMaxGradient, (Object)this.maxGradient, !oldMaxGradientESet));
        }
    }

    @Override
    public void unsetMaxGradient() {
        String oldMaxGradient = this.maxGradient;
        boolean oldMaxGradientESet = this.maxGradientESet;
        this.maxGradient = "";
        this.maxGradientESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 8, (Object)oldMaxGradient, (Object)"", oldMaxGradientESet));
        }
    }

    @Override
    public boolean isSetMaxGradient() {
        return this.maxGradientESet;
    }

    @Override
    public String getMaxDiff() {
        return this.maxDiff;
    }

    @Override
    public void setMaxDiff(String newMaxDiff) {
        String oldMaxDiff = this.maxDiff;
        this.maxDiff = newMaxDiff;
        boolean oldMaxDiffESet = this.maxDiffESet;
        this.maxDiffESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldMaxDiff, (Object)this.maxDiff, !oldMaxDiffESet));
        }
    }

    @Override
    public void unsetMaxDiff() {
        String oldMaxDiff = this.maxDiff;
        boolean oldMaxDiffESet = this.maxDiffESet;
        this.maxDiff = "";
        this.maxDiffESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 9, (Object)oldMaxDiff, (Object)"", oldMaxDiffESet));
        }
    }

    @Override
    public boolean isSetMaxDiff() {
        return this.maxDiffESet;
    }

    @Override
    public MonotonyEnum getMonotony() {
        return this.monotony;
    }

    @Override
    public void setMonotony(MonotonyEnum newMonotony) {
        MonotonyEnum oldMonotony = this.monotony;
        this.monotony = newMonotony == null ? MONOTONY_EDEFAULT : newMonotony;
        boolean oldMonotonyESet = this.monotonyESet;
        this.monotonyESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)oldMonotony, (Object)this.monotony, !oldMonotonyESet));
        }
    }

    @Override
    public void unsetMonotony() {
        MonotonyEnum oldMonotony = this.monotony;
        boolean oldMonotonyESet = this.monotonyESet;
        this.monotony = MONOTONY_EDEFAULT;
        this.monotonyESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 10, (Object)oldMonotony, (Object)MONOTONY_EDEFAULT, oldMonotonyESet));
        }
    }

    @Override
    public boolean isSetMonotony() {
        return this.monotonyESet;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetDataConstrRule((DataConstrRule)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetDataConstrRule(null, msgs);
            }
            case 5: {
                return this.basicSetLowerLimit(null, msgs);
            }
            case 6: {
                return this.basicSetUpperLimit(null, msgs);
            }
            case 7: {
                return ((InternalEList)this.getScaleConstrs()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 6, DataConstrRule.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getDataConstrRule();
            }
            case 5: {
                return this.getLowerLimit();
            }
            case 6: {
                return this.getUpperLimit();
            }
            case 7: {
                return this.getScaleConstrs();
            }
            case 8: {
                return this.getMaxGradient();
            }
            case 9: {
                return this.getMaxDiff();
            }
            case 10: {
                return this.getMonotony();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setDataConstrRule((DataConstrRule)newValue);
                return;
            }
            case 5: {
                this.setLowerLimit((Limit)newValue);
                return;
            }
            case 6: {
                this.setUpperLimit((Limit)newValue);
                return;
            }
            case 7: {
                this.getScaleConstrs().clear();
                this.getScaleConstrs().addAll((Collection)newValue);
                return;
            }
            case 8: {
                this.setMaxGradient((String)newValue);
                return;
            }
            case 9: {
                this.setMaxDiff((String)newValue);
                return;
            }
            case 10: {
                this.setMonotony((MonotonyEnum)((Object)newValue));
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setDataConstrRule(null);
                return;
            }
            case 5: {
                this.setLowerLimit(null);
                return;
            }
            case 6: {
                this.setUpperLimit(null);
                return;
            }
            case 7: {
                this.getScaleConstrs().clear();
                return;
            }
            case 8: {
                this.unsetMaxGradient();
                return;
            }
            case 9: {
                this.unsetMaxDiff();
                return;
            }
            case 10: {
                this.unsetMonotony();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getDataConstrRule() != null;
            }
            case 5: {
                return this.lowerLimit != null;
            }
            case 6: {
                return this.upperLimit != null;
            }
            case 7: {
                return this.scaleConstrs != null && !this.scaleConstrs.isEmpty();
            }
            case 8: {
                return this.isSetMaxGradient();
            }
            case 9: {
                return this.isSetMaxDiff();
            }
            case 10: {
                return this.isSetMonotony();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (maxGradient: ");
        if (this.maxGradientESet) {
            result.append(this.maxGradient);
        } else {
            result.append("<unset>");
        }
        result.append(", maxDiff: ");
        if (this.maxDiffESet) {
            result.append(this.maxDiff);
        } else {
            result.append("<unset>");
        }
        result.append(", monotony: ");
        if (this.monotonyESet) {
            result.append((Object)this.monotony);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

