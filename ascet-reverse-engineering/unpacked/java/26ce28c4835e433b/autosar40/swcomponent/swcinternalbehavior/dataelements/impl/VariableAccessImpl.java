/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcomponents.ginstancerefs.GVariableInAtomicSwcIRef
 *  gautosar.gswcomponents.gswcinternalbehavior.gdataelements.GVariableAccess
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.BasicEList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.swcomponent.swcinternalbehavior.dataelements.impl;

import autosar40.genericstructure.generaltemplateclasses.identifiable.impl.IdentifiableImpl;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.swcomponent.swcinternalbehavior.dataelements.AutosarVariableRef;
import autosar40.swcomponent.swcinternalbehavior.dataelements.DataelementsPackage;
import autosar40.swcomponent.swcinternalbehavior.dataelements.VariableAccess;
import autosar40.swcomponent.swcinternalbehavior.dataelements.VariableAccessScopeEnum;
import autosar40.swcomponent.swcinternalbehavior.dataelements.instancerefsusage.VariableInAtomicSWCTypeInstanceRef;
import autosar40.util.Autosar40Factory;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GVariableInAtomicSwcIRef;
import gautosar.gswcomponents.gswcinternalbehavior.gdataelements.GVariableAccess;
import java.util.ArrayList;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.BasicEList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class VariableAccessImpl
extends IdentifiableImpl
implements VariableAccess {
    protected AutosarVariableRef accessedVariable;
    protected static final VariableAccessScopeEnum SCOPE_EDEFAULT = VariableAccessScopeEnum.COMMUNICATION_INTER_ECU;
    protected VariableAccessScopeEnum scope = SCOPE_EDEFAULT;
    protected boolean scopeESet;
    protected VariationPoint variationPoint;

    protected VariableAccessImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return DataelementsPackage.Literals.VARIABLE_ACCESS;
    }

    public GVariableInAtomicSwcIRef gGetDataElement() {
        BasicEList untypedList = new BasicEList();
        AutosarVariableRef accessedVariable = this.getAccessedVariable();
        if (accessedVariable != null) {
            untypedList.add((Object)this.getAccessedVariable());
        }
        ArrayList<VariableInAtomicSWCTypeInstanceRef> resultObjects = new ArrayList<VariableInAtomicSWCTypeInstanceRef>();
        resultObjects.clear();
        for (Object previousObject : untypedList) {
            VariableInAtomicSWCTypeInstanceRef resultObject = ((AutosarVariableRef)previousObject).getAutosarVariable();
            if (resultObject == null) continue;
            resultObjects.add(resultObject);
        }
        untypedList.clear();
        untypedList.addAll(resultObjects);
        if (untypedList.isEmpty()) {
            return null;
        }
        return (GVariableInAtomicSwcIRef)untypedList.get(0);
    }

    public void gSetDataElement(GVariableInAtomicSwcIRef newGDataElement) {
        AutosarVariableRef accessedVariable = this.getAccessedVariable();
        if (accessedVariable == null) {
            accessedVariable = Autosar40Factory.eINSTANCE.createAutosarVariableRef();
        }
        this.setAccessedVariable(accessedVariable);
        accessedVariable.setAutosarVariable((VariableInAtomicSWCTypeInstanceRef)newGDataElement);
    }

    @Override
    public AutosarVariableRef getAccessedVariable() {
        return this.accessedVariable;
    }

    public NotificationChain basicSetAccessedVariable(AutosarVariableRef newAccessedVariable, NotificationChain msgs) {
        AutosarVariableRef oldAccessedVariable = this.accessedVariable;
        this.accessedVariable = newAccessedVariable;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldAccessedVariable, (Object)newAccessedVariable);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setAccessedVariable(AutosarVariableRef newAccessedVariable) {
        if (newAccessedVariable != this.accessedVariable) {
            NotificationChain msgs = null;
            if (this.accessedVariable != null) {
                msgs = ((InternalEObject)this.accessedVariable).eInverseRemove((InternalEObject)this, -20, null, msgs);
            }
            if (newAccessedVariable != null) {
                msgs = ((InternalEObject)newAccessedVariable).eInverseAdd((InternalEObject)this, -20, null, msgs);
            }
            if ((msgs = this.basicSetAccessedVariable(newAccessedVariable, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)newAccessedVariable, (Object)newAccessedVariable));
        }
    }

    @Override
    public VariableAccessScopeEnum getScope() {
        return this.scope;
    }

    @Override
    public void setScope(VariableAccessScopeEnum newScope) {
        VariableAccessScopeEnum oldScope = this.scope;
        this.scope = newScope == null ? SCOPE_EDEFAULT : newScope;
        boolean oldScopeESet = this.scopeESet;
        this.scopeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldScope, (Object)this.scope, !oldScopeESet));
        }
    }

    @Override
    public void unsetScope() {
        VariableAccessScopeEnum oldScope = this.scope;
        boolean oldScopeESet = this.scopeESet;
        this.scope = SCOPE_EDEFAULT;
        this.scopeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 20, (Object)oldScope, (Object)SCOPE_EDEFAULT, oldScopeESet));
        }
    }

    @Override
    public boolean isSetScope() {
        return this.scopeESet;
    }

    @Override
    public VariationPoint getVariationPoint() {
        return this.variationPoint;
    }

    public NotificationChain basicSetVariationPoint(VariationPoint newVariationPoint, NotificationChain msgs) {
        VariationPoint oldVariationPoint = this.variationPoint;
        this.variationPoint = newVariationPoint;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldVariationPoint, (Object)newVariationPoint);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setVariationPoint(VariationPoint newVariationPoint) {
        if (newVariationPoint != this.variationPoint) {
            NotificationChain msgs = null;
            if (this.variationPoint != null) {
                msgs = ((InternalEObject)this.variationPoint).eInverseRemove((InternalEObject)this, -22, null, msgs);
            }
            if (newVariationPoint != null) {
                msgs = ((InternalEObject)newVariationPoint).eInverseAdd((InternalEObject)this, -22, null, msgs);
            }
            if ((msgs = this.basicSetVariationPoint(newVariationPoint, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)newVariationPoint, (Object)newVariationPoint));
        }
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 19: {
                return this.basicSetAccessedVariable(null, msgs);
            }
            case 21: {
                return this.basicSetVariationPoint(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 18: {
                return this.gGetDataElement();
            }
            case 19: {
                return this.getAccessedVariable();
            }
            case 20: {
                return this.getScope();
            }
            case 21: {
                return this.getVariationPoint();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 18: {
                this.gSetDataElement((GVariableInAtomicSwcIRef)newValue);
                return;
            }
            case 19: {
                this.setAccessedVariable((AutosarVariableRef)newValue);
                return;
            }
            case 20: {
                this.setScope((VariableAccessScopeEnum)((Object)newValue));
                return;
            }
            case 21: {
                this.setVariationPoint((VariationPoint)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 18: {
                this.gSetDataElement(null);
                return;
            }
            case 19: {
                this.setAccessedVariable(null);
                return;
            }
            case 20: {
                this.unsetScope();
                return;
            }
            case 21: {
                this.setVariationPoint(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 18: {
                return this.gGetDataElement() != null;
            }
            case 19: {
                return this.accessedVariable != null;
            }
            case 20: {
                return this.isSetScope();
            }
            case 21: {
                return this.variationPoint != null;
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GVariableAccess.class) {
            switch (derivedFeatureID) {
                case 18: {
                    return 6;
                }
            }
            return -1;
        }
        return super.eBaseStructuralFeatureID(derivedFeatureID, baseClass);
    }

    @Override
    public int eDerivedStructuralFeatureID(int baseFeatureID, Class<?> baseClass) {
        if (baseClass == GVariableAccess.class) {
            switch (baseFeatureID) {
                case 6: {
                    return 18;
                }
            }
            return -1;
        }
        return super.eDerivedStructuralFeatureID(baseFeatureID, baseClass);
    }

    @Override
    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (scope: ");
        if (this.scopeESet) {
            result.append((Object)this.scope);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

