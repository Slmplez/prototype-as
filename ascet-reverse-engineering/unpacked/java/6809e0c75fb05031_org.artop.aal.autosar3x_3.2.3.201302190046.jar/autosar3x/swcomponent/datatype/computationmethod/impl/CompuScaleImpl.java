/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuScale
 *  gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuScaleContents
 *  gautosar.gswcomponents.gdatatype.gdatatypes.glocalconstraints.GLimit
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar3x.swcomponent.datatype.computationmethod.impl;

import autosar3x.genericstructure.commonpatterns.multilanguagedata.MlData2;
import autosar3x.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar3x.swcomponent.datatype.computationmethod.CompuScale;
import autosar3x.swcomponent.datatype.computationmethod.CompuScaleContents;
import autosar3x.swcomponent.datatype.computationmethod.CompuScales;
import autosar3x.swcomponent.datatype.computationmethod.ComputationmethodPackage;
import autosar3x.swcomponent.datatype.localconstraints.Limit;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuScale;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuScaleContents;
import gautosar.gswcomponents.gdatatype.gdatatypes.glocalconstraints.GLimit;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class CompuScaleImpl
extends ARObjectImpl
implements CompuScale {
    protected static final String GSHORT_LABEL_EDEFAULT = null;
    protected static final String SHORT_LABEL_EDEFAULT = "";
    protected String shortLabel = "";
    protected boolean shortLabelESet;
    protected static final String SYMBOL_EDEFAULT = "";
    protected String symbol = "";
    protected boolean symbolESet;
    protected MlData2 desc;
    protected Limit lowerLimit;
    protected Limit upperLimit;
    protected CompuScaleContents compuScaleContentsType;

    protected CompuScaleImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ComputationmethodPackage.Literals.COMPU_SCALE;
    }

    public GCompuScaleContents gGetCompuScaleContents() {
        return this.getCompuScaleContentsType();
    }

    public void gSetCompuScaleContents(GCompuScaleContents newGCompuScaleContents) {
        this.setCompuScaleContentsType((CompuScaleContents)newGCompuScaleContents);
    }

    public GLimit gGetLowerLimit() {
        return this.getLowerLimit();
    }

    public void gSetLowerLimit(GLimit newGLowerLimit) {
        this.setLowerLimit((Limit)newGLowerLimit);
    }

    public GLimit gGetUpperLimit() {
        return this.getUpperLimit();
    }

    public void gSetUpperLimit(GLimit newGUpperLimit) {
        this.setUpperLimit((Limit)newGUpperLimit);
    }

    public String gGetShortLabel() {
        String tgtFeatureValue = this.getShortLabel();
        return tgtFeatureValue;
    }

    public void gSetShortLabel(String newGShortLabel) {
        this.setShortLabel(newGShortLabel);
    }

    public void gUnsetShortLabel() {
        this.unsetShortLabel();
    }

    public boolean gIsSetShortLabel() {
        return this.isSetShortLabel();
    }

    @Override
    public CompuScales getCompuScales() {
        if (this.eContainerFeatureID() != 8) {
            return null;
        }
        return (CompuScales)this.eContainer();
    }

    public NotificationChain basicSetCompuScales(CompuScales newCompuScales, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newCompuScales, 8, msgs);
        return msgs;
    }

    @Override
    public void setCompuScales(CompuScales newCompuScales) {
        if (newCompuScales != this.eInternalContainer() || this.eContainerFeatureID() != 8 && newCompuScales != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newCompuScales)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newCompuScales != null) {
                msgs = ((InternalEObject)newCompuScales).eInverseAdd((InternalEObject)this, 6, CompuScales.class, msgs);
            }
            if ((msgs = this.basicSetCompuScales(newCompuScales, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)newCompuScales, (Object)newCompuScales));
        }
    }

    @Override
    public String getShortLabel() {
        return this.shortLabel;
    }

    @Override
    public void setShortLabel(String newShortLabel) {
        String oldShortLabel = this.shortLabel;
        this.shortLabel = newShortLabel;
        boolean oldShortLabelESet = this.shortLabelESet;
        this.shortLabelESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldShortLabel, (Object)this.shortLabel, !oldShortLabelESet));
        }
    }

    @Override
    public void unsetShortLabel() {
        String oldShortLabel = this.shortLabel;
        boolean oldShortLabelESet = this.shortLabelESet;
        this.shortLabel = "";
        this.shortLabelESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 9, (Object)oldShortLabel, (Object)"", oldShortLabelESet));
        }
    }

    @Override
    public boolean isSetShortLabel() {
        return this.shortLabelESet;
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)oldSymbol, (Object)this.symbol, !oldSymbolESet));
        }
    }

    @Override
    public void unsetSymbol() {
        String oldSymbol = this.symbol;
        boolean oldSymbolESet = this.symbolESet;
        this.symbol = "";
        this.symbolESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 10, (Object)oldSymbol, (Object)"", oldSymbolESet));
        }
    }

    @Override
    public boolean isSetSymbol() {
        return this.symbolESet;
    }

    @Override
    public MlData2 getDesc() {
        return this.desc;
    }

    public NotificationChain basicSetDesc(MlData2 newDesc, NotificationChain msgs) {
        MlData2 oldDesc = this.desc;
        this.desc = newDesc;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 11, (Object)oldDesc, (Object)newDesc);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setDesc(MlData2 newDesc) {
        if (newDesc != this.desc) {
            NotificationChain msgs = null;
            if (this.desc != null) {
                msgs = ((InternalEObject)this.desc).eInverseRemove((InternalEObject)this, -12, null, msgs);
            }
            if (newDesc != null) {
                msgs = ((InternalEObject)newDesc).eInverseAdd((InternalEObject)this, -12, null, msgs);
            }
            if ((msgs = this.basicSetDesc(newDesc, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 11, (Object)newDesc, (Object)newDesc));
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
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 12, (Object)oldLowerLimit, (Object)newLowerLimit);
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
                msgs = ((InternalEObject)this.lowerLimit).eInverseRemove((InternalEObject)this, -13, null, msgs);
            }
            if (newLowerLimit != null) {
                msgs = ((InternalEObject)newLowerLimit).eInverseAdd((InternalEObject)this, -13, null, msgs);
            }
            if ((msgs = this.basicSetLowerLimit(newLowerLimit, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 12, (Object)newLowerLimit, (Object)newLowerLimit));
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
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 13, (Object)oldUpperLimit, (Object)newUpperLimit);
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
                msgs = ((InternalEObject)this.upperLimit).eInverseRemove((InternalEObject)this, -14, null, msgs);
            }
            if (newUpperLimit != null) {
                msgs = ((InternalEObject)newUpperLimit).eInverseAdd((InternalEObject)this, -14, null, msgs);
            }
            if ((msgs = this.basicSetUpperLimit(newUpperLimit, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 13, (Object)newUpperLimit, (Object)newUpperLimit));
        }
    }

    @Override
    public CompuScaleContents getCompuScaleContentsType() {
        return this.compuScaleContentsType;
    }

    public NotificationChain basicSetCompuScaleContentsType(CompuScaleContents newCompuScaleContentsType, NotificationChain msgs) {
        CompuScaleContents oldCompuScaleContentsType = this.compuScaleContentsType;
        this.compuScaleContentsType = newCompuScaleContentsType;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 14, (Object)oldCompuScaleContentsType, (Object)newCompuScaleContentsType);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setCompuScaleContentsType(CompuScaleContents newCompuScaleContentsType) {
        if (newCompuScaleContentsType != this.compuScaleContentsType) {
            NotificationChain msgs = null;
            if (this.compuScaleContentsType != null) {
                msgs = ((InternalEObject)this.compuScaleContentsType).eInverseRemove((InternalEObject)this, 4, CompuScaleContents.class, msgs);
            }
            if (newCompuScaleContentsType != null) {
                msgs = ((InternalEObject)newCompuScaleContentsType).eInverseAdd((InternalEObject)this, 4, CompuScaleContents.class, msgs);
            }
            if ((msgs = this.basicSetCompuScaleContentsType(newCompuScaleContentsType, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 14, (Object)newCompuScaleContentsType, (Object)newCompuScaleContentsType));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 8: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetCompuScales((CompuScales)otherEnd, msgs);
            }
            case 14: {
                if (this.compuScaleContentsType != null) {
                    msgs = ((InternalEObject)this.compuScaleContentsType).eInverseRemove((InternalEObject)this, -15, null, msgs);
                }
                return this.basicSetCompuScaleContentsType((CompuScaleContents)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 8: {
                return this.basicSetCompuScales(null, msgs);
            }
            case 11: {
                return this.basicSetDesc(null, msgs);
            }
            case 12: {
                return this.basicSetLowerLimit(null, msgs);
            }
            case 13: {
                return this.basicSetUpperLimit(null, msgs);
            }
            case 14: {
                return this.basicSetCompuScaleContentsType(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 8: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 6, CompuScales.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.gGetCompuScaleContents();
            }
            case 5: {
                return this.gGetLowerLimit();
            }
            case 6: {
                return this.gGetUpperLimit();
            }
            case 7: {
                return this.gGetShortLabel();
            }
            case 8: {
                return this.getCompuScales();
            }
            case 9: {
                return this.getShortLabel();
            }
            case 10: {
                return this.getSymbol();
            }
            case 11: {
                return this.getDesc();
            }
            case 12: {
                return this.getLowerLimit();
            }
            case 13: {
                return this.getUpperLimit();
            }
            case 14: {
                return this.getCompuScaleContentsType();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.gSetCompuScaleContents((GCompuScaleContents)newValue);
                return;
            }
            case 5: {
                this.gSetLowerLimit((GLimit)newValue);
                return;
            }
            case 6: {
                this.gSetUpperLimit((GLimit)newValue);
                return;
            }
            case 7: {
                this.gSetShortLabel((String)newValue);
                return;
            }
            case 8: {
                this.setCompuScales((CompuScales)newValue);
                return;
            }
            case 9: {
                this.setShortLabel((String)newValue);
                return;
            }
            case 10: {
                this.setSymbol((String)newValue);
                return;
            }
            case 11: {
                this.setDesc((MlData2)newValue);
                return;
            }
            case 12: {
                this.setLowerLimit((Limit)newValue);
                return;
            }
            case 13: {
                this.setUpperLimit((Limit)newValue);
                return;
            }
            case 14: {
                this.setCompuScaleContentsType((CompuScaleContents)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.gSetCompuScaleContents(null);
                return;
            }
            case 5: {
                this.gSetLowerLimit(null);
                return;
            }
            case 6: {
                this.gSetUpperLimit(null);
                return;
            }
            case 7: {
                this.gUnsetShortLabel();
                return;
            }
            case 8: {
                this.setCompuScales(null);
                return;
            }
            case 9: {
                this.unsetShortLabel();
                return;
            }
            case 10: {
                this.unsetSymbol();
                return;
            }
            case 11: {
                this.setDesc(null);
                return;
            }
            case 12: {
                this.setLowerLimit(null);
                return;
            }
            case 13: {
                this.setUpperLimit(null);
                return;
            }
            case 14: {
                this.setCompuScaleContentsType(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.gGetCompuScaleContents() != null;
            }
            case 5: {
                return this.gGetLowerLimit() != null;
            }
            case 6: {
                return this.gGetUpperLimit() != null;
            }
            case 7: {
                return this.gIsSetShortLabel();
            }
            case 8: {
                return this.getCompuScales() != null;
            }
            case 9: {
                return this.isSetShortLabel();
            }
            case 10: {
                return this.isSetSymbol();
            }
            case 11: {
                return this.desc != null;
            }
            case 12: {
                return this.lowerLimit != null;
            }
            case 13: {
                return this.upperLimit != null;
            }
            case 14: {
                return this.compuScaleContentsType != null;
            }
        }
        return super.eIsSet(featureID);
    }

    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GCompuScale.class) {
            switch (derivedFeatureID) {
                case 4: {
                    return 2;
                }
                case 5: {
                    return 3;
                }
                case 6: {
                    return 4;
                }
                case 7: {
                    return 5;
                }
            }
            return -1;
        }
        return super.eBaseStructuralFeatureID(derivedFeatureID, baseClass);
    }

    public int eDerivedStructuralFeatureID(int baseFeatureID, Class<?> baseClass) {
        if (baseClass == GCompuScale.class) {
            switch (baseFeatureID) {
                case 2: {
                    return 4;
                }
                case 3: {
                    return 5;
                }
                case 4: {
                    return 6;
                }
                case 5: {
                    return 7;
                }
            }
            return -1;
        }
        return super.eDerivedStructuralFeatureID(baseFeatureID, baseClass);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (shortLabel: ");
        if (this.shortLabelESet) {
            result.append(this.shortLabel);
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

