/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcommunication.GReceiverComSpec
 *  gautosar.gswcomponents.gdatatype.gdataprototypes.GVariableDataPrototype
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar3x.swcomponent.communication.impl;

import autosar3x.commonstructure.filter.DataFilter;
import autosar3x.swcomponent.communication.CommunicationPackage;
import autosar3x.swcomponent.communication.ReceiverComSpec;
import autosar3x.swcomponent.communication.impl.RPortComSpecImpl;
import autosar3x.swcomponent.portinterface.DataElementPrototype;
import gautosar.gswcomponents.gcommunication.GReceiverComSpec;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GVariableDataPrototype;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class ReceiverComSpecImpl
extends RPortComSpecImpl
implements ReceiverComSpec,
IReferringClass {
    protected DataElementPrototype dataElement;
    protected DataFilter filter;
    protected static final Boolean USES_END_TO_END_PROTECTION_EDEFAULT = Boolean.FALSE;
    protected Boolean usesEndToEndProtection = USES_END_TO_END_PROTECTION_EDEFAULT;
    protected boolean usesEndToEndProtectionESet;

    protected ReceiverComSpecImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return CommunicationPackage.Literals.RECEIVER_COM_SPEC;
    }

    public GVariableDataPrototype gGetDataElement() {
        return this.getDataElement();
    }

    public void gSetDataElement(GVariableDataPrototype newGDataElement) {
        this.setDataElement((DataElementPrototype)newGDataElement);
    }

    @Override
    public DataElementPrototype getDataElement() {
        if (this.dataElement != null && this.dataElement.eIsProxy()) {
            InternalEObject oldDataElement = (InternalEObject)this.dataElement;
            this.dataElement = (DataElementPrototype)this.eResolveProxy(oldDataElement);
            if (this.dataElement != oldDataElement && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 6, (Object)oldDataElement, (Object)this.dataElement));
            }
        }
        return this.dataElement;
    }

    public DataElementPrototype basicGetDataElement() {
        return this.dataElement;
    }

    @Override
    public void setDataElement(DataElementPrototype newDataElement) {
        DataElementPrototype oldDataElement = this.dataElement;
        this.dataElement = newDataElement;
        AutosarObjectUtil.setDest((EObject)this, (int)6, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldDataElement, (Object)this.dataElement));
        }
    }

    @Override
    public DataFilter getFilter() {
        return this.filter;
    }

    public NotificationChain basicSetFilter(DataFilter newFilter, NotificationChain msgs) {
        DataFilter oldFilter = this.filter;
        this.filter = newFilter;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldFilter, (Object)newFilter);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setFilter(DataFilter newFilter) {
        if (newFilter != this.filter) {
            NotificationChain msgs = null;
            if (this.filter != null) {
                msgs = ((InternalEObject)this.filter).eInverseRemove((InternalEObject)this, -8, null, msgs);
            }
            if (newFilter != null) {
                msgs = ((InternalEObject)newFilter).eInverseAdd((InternalEObject)this, -8, null, msgs);
            }
            if ((msgs = this.basicSetFilter(newFilter, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)newFilter, (Object)newFilter));
        }
    }

    @Override
    public Boolean getUsesEndToEndProtection() {
        return this.usesEndToEndProtection;
    }

    @Override
    public void setUsesEndToEndProtection(Boolean newUsesEndToEndProtection) {
        Boolean oldUsesEndToEndProtection = this.usesEndToEndProtection;
        this.usesEndToEndProtection = newUsesEndToEndProtection;
        boolean oldUsesEndToEndProtectionESet = this.usesEndToEndProtectionESet;
        this.usesEndToEndProtectionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldUsesEndToEndProtection, (Object)this.usesEndToEndProtection, !oldUsesEndToEndProtectionESet));
        }
    }

    @Override
    public void unsetUsesEndToEndProtection() {
        Boolean oldUsesEndToEndProtection = this.usesEndToEndProtection;
        boolean oldUsesEndToEndProtectionESet = this.usesEndToEndProtectionESet;
        this.usesEndToEndProtection = USES_END_TO_END_PROTECTION_EDEFAULT;
        this.usesEndToEndProtectionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 8, (Object)oldUsesEndToEndProtection, (Object)USES_END_TO_END_PROTECTION_EDEFAULT, oldUsesEndToEndProtectionESet));
        }
    }

    @Override
    public boolean isSetUsesEndToEndProtection() {
        return this.usesEndToEndProtectionESet;
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 7: {
                return this.basicSetFilter(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 5: {
                return this.gGetDataElement();
            }
            case 6: {
                if (resolve) {
                    return this.getDataElement();
                }
                return this.basicGetDataElement();
            }
            case 7: {
                return this.getFilter();
            }
            case 8: {
                return this.getUsesEndToEndProtection();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 5: {
                this.gSetDataElement((GVariableDataPrototype)newValue);
                return;
            }
            case 6: {
                this.setDataElement((DataElementPrototype)newValue);
                return;
            }
            case 7: {
                this.setFilter((DataFilter)newValue);
                return;
            }
            case 8: {
                this.setUsesEndToEndProtection((Boolean)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 5: {
                this.gSetDataElement(null);
                return;
            }
            case 6: {
                this.setDataElement(null);
                return;
            }
            case 7: {
                this.setFilter(null);
                return;
            }
            case 8: {
                this.unsetUsesEndToEndProtection();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 5: {
                return this.gGetDataElement() != null;
            }
            case 6: {
                return this.dataElement != null;
            }
            case 7: {
                return this.filter != null;
            }
            case 8: {
                return this.isSetUsesEndToEndProtection();
            }
        }
        return super.eIsSet(featureID);
    }

    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GReceiverComSpec.class) {
            switch (derivedFeatureID) {
                case 5: {
                    return 2;
                }
            }
            return -1;
        }
        return super.eBaseStructuralFeatureID(derivedFeatureID, baseClass);
    }

    public int eDerivedStructuralFeatureID(int baseFeatureID, Class<?> baseClass) {
        if (baseClass == GReceiverComSpec.class) {
            switch (baseFeatureID) {
                case 2: {
                    return 5;
                }
            }
            return -1;
        }
        return super.eDerivedStructuralFeatureID(baseFeatureID, baseClass);
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

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (usesEndToEndProtection: ");
        if (this.usesEndToEndProtectionESet) {
            result.append(this.usesEndToEndProtection);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

