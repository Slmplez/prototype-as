/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.PositiveIntegerDatatype
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar40.commonstructure.measurementcalibrationsupport.impl;

import autosar40.commonstructure.datadefproperties.SwDataDefProps;
import autosar40.commonstructure.flatmap.FlatInstanceDescriptor;
import autosar40.commonstructure.measurementcalibrationsupport.ImplementationElementInParameterInstanceRef;
import autosar40.commonstructure.measurementcalibrationsupport.McDataInstance;
import autosar40.commonstructure.measurementcalibrationsupport.MeasurementcalibrationsupportPackage;
import autosar40.genericstructure.generaltemplateclasses.identifiable.impl.IdentifiableImpl;
import autosar40.genericstructure.varianthandling.VariationPoint;
import java.util.Collection;
import org.artop.aal.common.datatypes.PositiveIntegerDatatype;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class McDataInstanceImpl
extends IdentifiableImpl
implements McDataInstance,
IReferringClass {
    protected static final PositiveIntegerDatatype ARRAY_SIZE_EDEFAULT = new PositiveIntegerDatatype(new Long(0L).longValue());
    protected PositiveIntegerDatatype arraySize = ARRAY_SIZE_EDEFAULT.clone();
    protected boolean arraySizeESet;
    protected FlatInstanceDescriptor flatMapEntry;
    protected ImplementationElementInParameterInstanceRef instanceInMemory;
    protected SwDataDefProps resultingProperties;
    protected EList<McDataInstance> subElements;
    protected static final String SYMBOL_EDEFAULT = "";
    protected String symbol = "";
    protected boolean symbolESet;
    protected VariationPoint variationPoint;

    protected McDataInstanceImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return MeasurementcalibrationsupportPackage.Literals.MC_DATA_INSTANCE;
    }

    @Override
    public Long getArraySize() {
        return (Long)this.arraySize.basicGetValue();
    }

    @Override
    public void setArraySize(Long newArraySize) {
        Long oldArraySize = (Long)this.arraySize.basicGetValue();
        this.arraySize.basicSetValue((Object)newArraySize);
        boolean oldArraySizeESet = this.arraySizeESet;
        this.arraySizeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)oldArraySize, (Object)newArraySize, !oldArraySizeESet));
        }
    }

    @Override
    public void unsetArraySize() {
        Long oldArraySize = (Long)this.arraySize.basicGetValue();
        boolean oldArraySizeESet = this.arraySizeESet;
        this.arraySize = ARRAY_SIZE_EDEFAULT.clone();
        this.arraySizeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 18, (Object)oldArraySize, (Object)ARRAY_SIZE_EDEFAULT, oldArraySizeESet));
        }
    }

    @Override
    public boolean isSetArraySize() {
        return this.arraySizeESet;
    }

    @Override
    public FlatInstanceDescriptor getFlatMapEntry() {
        if (this.flatMapEntry != null && this.flatMapEntry.eIsProxy()) {
            InternalEObject oldFlatMapEntry = (InternalEObject)this.flatMapEntry;
            this.flatMapEntry = (FlatInstanceDescriptor)this.eResolveProxy(oldFlatMapEntry);
            if (this.flatMapEntry != oldFlatMapEntry && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 19, (Object)oldFlatMapEntry, (Object)this.flatMapEntry));
            }
        }
        return this.flatMapEntry;
    }

    public FlatInstanceDescriptor basicGetFlatMapEntry() {
        return this.flatMapEntry;
    }

    @Override
    public void setFlatMapEntry(FlatInstanceDescriptor newFlatMapEntry) {
        FlatInstanceDescriptor oldFlatMapEntry = this.flatMapEntry;
        this.flatMapEntry = newFlatMapEntry;
        AutosarObjectUtil.setDest((EObject)this, (int)19, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldFlatMapEntry, (Object)this.flatMapEntry));
        }
    }

    @Override
    public ImplementationElementInParameterInstanceRef getInstanceInMemory() {
        return this.instanceInMemory;
    }

    public NotificationChain basicSetInstanceInMemory(ImplementationElementInParameterInstanceRef newInstanceInMemory, NotificationChain msgs) {
        ImplementationElementInParameterInstanceRef oldInstanceInMemory = this.instanceInMemory;
        this.instanceInMemory = newInstanceInMemory;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldInstanceInMemory, (Object)newInstanceInMemory);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setInstanceInMemory(ImplementationElementInParameterInstanceRef newInstanceInMemory) {
        if (newInstanceInMemory != this.instanceInMemory) {
            NotificationChain msgs = null;
            if (this.instanceInMemory != null) {
                msgs = ((InternalEObject)this.instanceInMemory).eInverseRemove((InternalEObject)this, 4, ImplementationElementInParameterInstanceRef.class, msgs);
            }
            if (newInstanceInMemory != null) {
                msgs = ((InternalEObject)newInstanceInMemory).eInverseAdd((InternalEObject)this, 4, ImplementationElementInParameterInstanceRef.class, msgs);
            }
            if ((msgs = this.basicSetInstanceInMemory(newInstanceInMemory, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)newInstanceInMemory, (Object)newInstanceInMemory));
        }
    }

    @Override
    public SwDataDefProps getResultingProperties() {
        return this.resultingProperties;
    }

    public NotificationChain basicSetResultingProperties(SwDataDefProps newResultingProperties, NotificationChain msgs) {
        SwDataDefProps oldResultingProperties = this.resultingProperties;
        this.resultingProperties = newResultingProperties;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldResultingProperties, (Object)newResultingProperties);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setResultingProperties(SwDataDefProps newResultingProperties) {
        if (newResultingProperties != this.resultingProperties) {
            NotificationChain msgs = null;
            if (this.resultingProperties != null) {
                msgs = ((InternalEObject)this.resultingProperties).eInverseRemove((InternalEObject)this, -22, null, msgs);
            }
            if (newResultingProperties != null) {
                msgs = ((InternalEObject)newResultingProperties).eInverseAdd((InternalEObject)this, -22, null, msgs);
            }
            if ((msgs = this.basicSetResultingProperties(newResultingProperties, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)newResultingProperties, (Object)newResultingProperties));
        }
    }

    @Override
    public EList<McDataInstance> getSubElements() {
        if (this.subElements == null) {
            this.subElements = new EObjectContainmentEList(McDataInstance.class, (InternalEObject)this, 22);
        }
        return this.subElements;
    }

    @Override
    public String getSymbol() {
        return this.symbol;
    }

    @Override
    public void setSymbol(String newSymbol) {
        String oldSymbol = this.symbol;
        this.symbol = newSymbol;
        boolean oldSymbolESet = this.symbolESet;
        this.symbolESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 23, (Object)oldSymbol, (Object)this.symbol, !oldSymbolESet));
        }
    }

    @Override
    public void unsetSymbol() {
        String oldSymbol = this.symbol;
        boolean oldSymbolESet = this.symbolESet;
        this.symbol = SYMBOL_EDEFAULT;
        this.symbolESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 23, (Object)oldSymbol, (Object)SYMBOL_EDEFAULT, oldSymbolESet));
        }
    }

    @Override
    public boolean isSetSymbol() {
        return this.symbolESet;
    }

    @Override
    public VariationPoint getVariationPoint() {
        return this.variationPoint;
    }

    public NotificationChain basicSetVariationPoint(VariationPoint newVariationPoint, NotificationChain msgs) {
        VariationPoint oldVariationPoint = this.variationPoint;
        this.variationPoint = newVariationPoint;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 24, (Object)oldVariationPoint, (Object)newVariationPoint);
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
                msgs = ((InternalEObject)this.variationPoint).eInverseRemove((InternalEObject)this, -25, null, msgs);
            }
            if (newVariationPoint != null) {
                msgs = ((InternalEObject)newVariationPoint).eInverseAdd((InternalEObject)this, -25, null, msgs);
            }
            if ((msgs = this.basicSetVariationPoint(newVariationPoint, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 24, (Object)newVariationPoint, (Object)newVariationPoint));
        }
    }

    @Override
    public PositiveIntegerDatatype getArraySizeData() {
        return this.arraySize.clone();
    }

    @Override
    public void setArraySizeData(PositiveIntegerDatatype newArraySize) {
        this.arraySize.setRadix((int)newArraySize.getRadix());
        this.arraySize.setNoOfDigits((int)newArraySize.getNoOfDigits());
        this.setArraySize(newArraySize.getValue());
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 20: {
                if (this.instanceInMemory != null) {
                    msgs = ((InternalEObject)this.instanceInMemory).eInverseRemove((InternalEObject)this, -21, null, msgs);
                }
                return this.basicSetInstanceInMemory((ImplementationElementInParameterInstanceRef)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 20: {
                return this.basicSetInstanceInMemory(null, msgs);
            }
            case 21: {
                return this.basicSetResultingProperties(null, msgs);
            }
            case 22: {
                return ((InternalEList)this.getSubElements()).basicRemove((Object)otherEnd, msgs);
            }
            case 24: {
                return this.basicSetVariationPoint(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 18: {
                return this.getArraySize();
            }
            case 19: {
                if (resolve) {
                    return this.getFlatMapEntry();
                }
                return this.basicGetFlatMapEntry();
            }
            case 20: {
                return this.getInstanceInMemory();
            }
            case 21: {
                return this.getResultingProperties();
            }
            case 22: {
                return this.getSubElements();
            }
            case 23: {
                return this.getSymbol();
            }
            case 24: {
                return this.getVariationPoint();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 18: {
                this.setArraySize((Long)newValue);
                return;
            }
            case 19: {
                this.setFlatMapEntry((FlatInstanceDescriptor)newValue);
                return;
            }
            case 20: {
                this.setInstanceInMemory((ImplementationElementInParameterInstanceRef)newValue);
                return;
            }
            case 21: {
                this.setResultingProperties((SwDataDefProps)newValue);
                return;
            }
            case 22: {
                this.getSubElements().clear();
                this.getSubElements().addAll((Collection)newValue);
                return;
            }
            case 23: {
                this.setSymbol((String)newValue);
                return;
            }
            case 24: {
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
                this.unsetArraySize();
                return;
            }
            case 19: {
                this.setFlatMapEntry(null);
                return;
            }
            case 20: {
                this.setInstanceInMemory(null);
                return;
            }
            case 21: {
                this.setResultingProperties(null);
                return;
            }
            case 22: {
                this.getSubElements().clear();
                return;
            }
            case 23: {
                this.unsetSymbol();
                return;
            }
            case 24: {
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
                return this.isSetArraySize();
            }
            case 19: {
                return this.flatMapEntry != null;
            }
            case 20: {
                return this.instanceInMemory != null;
            }
            case 21: {
                return this.resultingProperties != null;
            }
            case 22: {
                return this.subElements != null && !this.subElements.isEmpty();
            }
            case 23: {
                return this.isSetSymbol();
            }
            case 24: {
                return this.variationPoint != null;
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

    @Override
    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (arraySize: ");
        if (this.arraySizeESet) {
            result.append(this.arraySize);
        } else {
            result.append("<unset>");
        }
        result.append(", symbol: ");
        if (this.symbolESet) {
            result.append(this.symbol);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

