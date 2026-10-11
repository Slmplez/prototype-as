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
package autosar40.swcomponent.communication.impl;

import autosar40.commonstructure.datadefproperties.SwDataDefProps;
import autosar40.genericstructure.varianthandling.BooleanValueVariationPoint;
import autosar40.genericstructure.varianthandling.PositiveIntegerValueVariationPoint;
import autosar40.swcomponent.communication.CommunicationPackage;
import autosar40.swcomponent.communication.HandleOutOfRangeEnum;
import autosar40.swcomponent.communication.HandleOutOfRangeStatusEnum;
import autosar40.swcomponent.communication.ReceiverComSpec;
import autosar40.swcomponent.communication.impl.RPortComSpecImpl;
import autosar40.swcomponent.datatype.dataprototypes.AutosarDataPrototype;
import autosar40.swcomponent.datatype.dataprototypes.VariableDataPrototype;
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
    protected VariableDataPrototype dataElement;
    protected AutosarDataPrototype externalReplacement;
    protected static final HandleOutOfRangeEnum HANDLE_OUT_OF_RANGE_EDEFAULT = HandleOutOfRangeEnum.NONE;
    protected HandleOutOfRangeEnum handleOutOfRange = HANDLE_OUT_OF_RANGE_EDEFAULT;
    protected boolean handleOutOfRangeESet;
    protected static final HandleOutOfRangeStatusEnum HANDLE_OUT_OF_RANGE_STATUS_EDEFAULT = HandleOutOfRangeStatusEnum.SILENT;
    protected HandleOutOfRangeStatusEnum handleOutOfRangeStatus = HANDLE_OUT_OF_RANGE_STATUS_EDEFAULT;
    protected boolean handleOutOfRangeStatusESet;
    protected PositiveIntegerValueVariationPoint maxDeltaCounterInit;
    protected SwDataDefProps networkRepresentation;
    protected BooleanValueVariationPoint usesEndToEndProtection;

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
        this.setDataElement((VariableDataPrototype)newGDataElement);
    }

    @Override
    public VariableDataPrototype getDataElement() {
        if (this.dataElement != null && this.dataElement.eIsProxy()) {
            InternalEObject oldDataElement = (InternalEObject)this.dataElement;
            this.dataElement = (VariableDataPrototype)this.eResolveProxy(oldDataElement);
            if (this.dataElement != oldDataElement && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 6, (Object)oldDataElement, (Object)this.dataElement));
            }
        }
        return this.dataElement;
    }

    public VariableDataPrototype basicGetDataElement() {
        return this.dataElement;
    }

    @Override
    public void setDataElement(VariableDataPrototype newDataElement) {
        VariableDataPrototype oldDataElement = this.dataElement;
        this.dataElement = newDataElement;
        AutosarObjectUtil.setDest((EObject)this, (int)6, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldDataElement, (Object)this.dataElement));
        }
    }

    @Override
    public AutosarDataPrototype getExternalReplacement() {
        if (this.externalReplacement != null && this.externalReplacement.eIsProxy()) {
            InternalEObject oldExternalReplacement = (InternalEObject)this.externalReplacement;
            this.externalReplacement = (AutosarDataPrototype)this.eResolveProxy(oldExternalReplacement);
            if (this.externalReplacement != oldExternalReplacement && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 7, (Object)oldExternalReplacement, (Object)this.externalReplacement));
            }
        }
        return this.externalReplacement;
    }

    public AutosarDataPrototype basicGetExternalReplacement() {
        return this.externalReplacement;
    }

    @Override
    public void setExternalReplacement(AutosarDataPrototype newExternalReplacement) {
        AutosarDataPrototype oldExternalReplacement = this.externalReplacement;
        this.externalReplacement = newExternalReplacement;
        AutosarObjectUtil.setDest((EObject)this, (int)7, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldExternalReplacement, (Object)this.externalReplacement));
        }
    }

    @Override
    public HandleOutOfRangeEnum getHandleOutOfRange() {
        return this.handleOutOfRange;
    }

    @Override
    public void setHandleOutOfRange(HandleOutOfRangeEnum newHandleOutOfRange) {
        HandleOutOfRangeEnum oldHandleOutOfRange = this.handleOutOfRange;
        this.handleOutOfRange = newHandleOutOfRange == null ? HANDLE_OUT_OF_RANGE_EDEFAULT : newHandleOutOfRange;
        boolean oldHandleOutOfRangeESet = this.handleOutOfRangeESet;
        this.handleOutOfRangeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldHandleOutOfRange, (Object)this.handleOutOfRange, !oldHandleOutOfRangeESet));
        }
    }

    @Override
    public void unsetHandleOutOfRange() {
        HandleOutOfRangeEnum oldHandleOutOfRange = this.handleOutOfRange;
        boolean oldHandleOutOfRangeESet = this.handleOutOfRangeESet;
        this.handleOutOfRange = HANDLE_OUT_OF_RANGE_EDEFAULT;
        this.handleOutOfRangeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 8, (Object)oldHandleOutOfRange, (Object)HANDLE_OUT_OF_RANGE_EDEFAULT, oldHandleOutOfRangeESet));
        }
    }

    @Override
    public boolean isSetHandleOutOfRange() {
        return this.handleOutOfRangeESet;
    }

    @Override
    public HandleOutOfRangeStatusEnum getHandleOutOfRangeStatus() {
        return this.handleOutOfRangeStatus;
    }

    @Override
    public void setHandleOutOfRangeStatus(HandleOutOfRangeStatusEnum newHandleOutOfRangeStatus) {
        HandleOutOfRangeStatusEnum oldHandleOutOfRangeStatus = this.handleOutOfRangeStatus;
        this.handleOutOfRangeStatus = newHandleOutOfRangeStatus == null ? HANDLE_OUT_OF_RANGE_STATUS_EDEFAULT : newHandleOutOfRangeStatus;
        boolean oldHandleOutOfRangeStatusESet = this.handleOutOfRangeStatusESet;
        this.handleOutOfRangeStatusESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldHandleOutOfRangeStatus, (Object)this.handleOutOfRangeStatus, !oldHandleOutOfRangeStatusESet));
        }
    }

    @Override
    public void unsetHandleOutOfRangeStatus() {
        HandleOutOfRangeStatusEnum oldHandleOutOfRangeStatus = this.handleOutOfRangeStatus;
        boolean oldHandleOutOfRangeStatusESet = this.handleOutOfRangeStatusESet;
        this.handleOutOfRangeStatus = HANDLE_OUT_OF_RANGE_STATUS_EDEFAULT;
        this.handleOutOfRangeStatusESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 9, (Object)oldHandleOutOfRangeStatus, (Object)HANDLE_OUT_OF_RANGE_STATUS_EDEFAULT, oldHandleOutOfRangeStatusESet));
        }
    }

    @Override
    public boolean isSetHandleOutOfRangeStatus() {
        return this.handleOutOfRangeStatusESet;
    }

    @Override
    public PositiveIntegerValueVariationPoint getMaxDeltaCounterInit() {
        return this.maxDeltaCounterInit;
    }

    public NotificationChain basicSetMaxDeltaCounterInit(PositiveIntegerValueVariationPoint newMaxDeltaCounterInit, NotificationChain msgs) {
        PositiveIntegerValueVariationPoint oldMaxDeltaCounterInit = this.maxDeltaCounterInit;
        this.maxDeltaCounterInit = newMaxDeltaCounterInit;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 10, (Object)oldMaxDeltaCounterInit, (Object)newMaxDeltaCounterInit);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setMaxDeltaCounterInit(PositiveIntegerValueVariationPoint newMaxDeltaCounterInit) {
        if (newMaxDeltaCounterInit != this.maxDeltaCounterInit) {
            NotificationChain msgs = null;
            if (this.maxDeltaCounterInit != null) {
                msgs = ((InternalEObject)this.maxDeltaCounterInit).eInverseRemove((InternalEObject)this, -11, null, msgs);
            }
            if (newMaxDeltaCounterInit != null) {
                msgs = ((InternalEObject)newMaxDeltaCounterInit).eInverseAdd((InternalEObject)this, -11, null, msgs);
            }
            if ((msgs = this.basicSetMaxDeltaCounterInit(newMaxDeltaCounterInit, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)newMaxDeltaCounterInit, (Object)newMaxDeltaCounterInit));
        }
    }

    @Override
    public SwDataDefProps getNetworkRepresentation() {
        return this.networkRepresentation;
    }

    public NotificationChain basicSetNetworkRepresentation(SwDataDefProps newNetworkRepresentation, NotificationChain msgs) {
        SwDataDefProps oldNetworkRepresentation = this.networkRepresentation;
        this.networkRepresentation = newNetworkRepresentation;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 11, (Object)oldNetworkRepresentation, (Object)newNetworkRepresentation);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setNetworkRepresentation(SwDataDefProps newNetworkRepresentation) {
        if (newNetworkRepresentation != this.networkRepresentation) {
            NotificationChain msgs = null;
            if (this.networkRepresentation != null) {
                msgs = ((InternalEObject)this.networkRepresentation).eInverseRemove((InternalEObject)this, -12, null, msgs);
            }
            if (newNetworkRepresentation != null) {
                msgs = ((InternalEObject)newNetworkRepresentation).eInverseAdd((InternalEObject)this, -12, null, msgs);
            }
            if ((msgs = this.basicSetNetworkRepresentation(newNetworkRepresentation, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 11, (Object)newNetworkRepresentation, (Object)newNetworkRepresentation));
        }
    }

    @Override
    public BooleanValueVariationPoint getUsesEndToEndProtection() {
        return this.usesEndToEndProtection;
    }

    public NotificationChain basicSetUsesEndToEndProtection(BooleanValueVariationPoint newUsesEndToEndProtection, NotificationChain msgs) {
        BooleanValueVariationPoint oldUsesEndToEndProtection = this.usesEndToEndProtection;
        this.usesEndToEndProtection = newUsesEndToEndProtection;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 12, (Object)oldUsesEndToEndProtection, (Object)newUsesEndToEndProtection);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setUsesEndToEndProtection(BooleanValueVariationPoint newUsesEndToEndProtection) {
        if (newUsesEndToEndProtection != this.usesEndToEndProtection) {
            NotificationChain msgs = null;
            if (this.usesEndToEndProtection != null) {
                msgs = ((InternalEObject)this.usesEndToEndProtection).eInverseRemove((InternalEObject)this, -13, null, msgs);
            }
            if (newUsesEndToEndProtection != null) {
                msgs = ((InternalEObject)newUsesEndToEndProtection).eInverseAdd((InternalEObject)this, -13, null, msgs);
            }
            if ((msgs = this.basicSetUsesEndToEndProtection(newUsesEndToEndProtection, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 12, (Object)newUsesEndToEndProtection, (Object)newUsesEndToEndProtection));
        }
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 10: {
                return this.basicSetMaxDeltaCounterInit(null, msgs);
            }
            case 11: {
                return this.basicSetNetworkRepresentation(null, msgs);
            }
            case 12: {
                return this.basicSetUsesEndToEndProtection(null, msgs);
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
                if (resolve) {
                    return this.getExternalReplacement();
                }
                return this.basicGetExternalReplacement();
            }
            case 8: {
                return this.getHandleOutOfRange();
            }
            case 9: {
                return this.getHandleOutOfRangeStatus();
            }
            case 10: {
                return this.getMaxDeltaCounterInit();
            }
            case 11: {
                return this.getNetworkRepresentation();
            }
            case 12: {
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
                this.setDataElement((VariableDataPrototype)newValue);
                return;
            }
            case 7: {
                this.setExternalReplacement((AutosarDataPrototype)newValue);
                return;
            }
            case 8: {
                this.setHandleOutOfRange((HandleOutOfRangeEnum)((Object)newValue));
                return;
            }
            case 9: {
                this.setHandleOutOfRangeStatus((HandleOutOfRangeStatusEnum)((Object)newValue));
                return;
            }
            case 10: {
                this.setMaxDeltaCounterInit((PositiveIntegerValueVariationPoint)newValue);
                return;
            }
            case 11: {
                this.setNetworkRepresentation((SwDataDefProps)newValue);
                return;
            }
            case 12: {
                this.setUsesEndToEndProtection((BooleanValueVariationPoint)newValue);
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
                this.setExternalReplacement(null);
                return;
            }
            case 8: {
                this.unsetHandleOutOfRange();
                return;
            }
            case 9: {
                this.unsetHandleOutOfRangeStatus();
                return;
            }
            case 10: {
                this.setMaxDeltaCounterInit(null);
                return;
            }
            case 11: {
                this.setNetworkRepresentation(null);
                return;
            }
            case 12: {
                this.setUsesEndToEndProtection(null);
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
                return this.externalReplacement != null;
            }
            case 8: {
                return this.isSetHandleOutOfRange();
            }
            case 9: {
                return this.isSetHandleOutOfRangeStatus();
            }
            case 10: {
                return this.maxDeltaCounterInit != null;
            }
            case 11: {
                return this.networkRepresentation != null;
            }
            case 12: {
                return this.usesEndToEndProtection != null;
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
        result.append(" (handleOutOfRange: ");
        if (this.handleOutOfRangeESet) {
            result.append((Object)this.handleOutOfRange);
        } else {
            result.append("<unset>");
        }
        result.append(", handleOutOfRangeStatus: ");
        if (this.handleOutOfRangeStatusESet) {
            result.append((Object)this.handleOutOfRangeStatus);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

