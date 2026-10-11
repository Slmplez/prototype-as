/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gdatatype.gdataprototypes.GApplicationCompositeElementDataPrototype
 *  gautosar.gswcomponents.gdatatype.gdatatypes.GApplicationDataType
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.swcomponent.datatype.dataprototypes.impl;

import autosar40.swcomponent.datatype.dataprototypes.ApplicationCompositeElementDataPrototype;
import autosar40.swcomponent.datatype.dataprototypes.DataprototypesPackage;
import autosar40.swcomponent.datatype.dataprototypes.impl.DataPrototypeImpl;
import autosar40.swcomponent.datatype.datatypes.ApplicationDataType;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GApplicationCompositeElementDataPrototype;
import gautosar.gswcomponents.gdatatype.gdatatypes.GApplicationDataType;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ApplicationCompositeElementDataPrototypeImpl
extends DataPrototypeImpl
implements ApplicationCompositeElementDataPrototype,
IReferringClass {
    protected ApplicationDataType type;

    protected ApplicationCompositeElementDataPrototypeImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return DataprototypesPackage.Literals.APPLICATION_COMPOSITE_ELEMENT_DATA_PROTOTYPE;
    }

    public GApplicationDataType gGetElementType() {
        return this.getType();
    }

    public void gSetElementType(GApplicationDataType newGElementType) {
        this.setType((ApplicationDataType)newGElementType);
    }

    @Override
    public ApplicationDataType getType() {
        if (this.type != null && this.type.eIsProxy()) {
            InternalEObject oldType = (InternalEObject)this.type;
            this.type = (ApplicationDataType)this.eResolveProxy(oldType);
            if (this.type != oldType && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 21, (Object)oldType, (Object)this.type));
            }
        }
        return this.type;
    }

    public ApplicationDataType basicGetType() {
        return this.type;
    }

    @Override
    public void setType(ApplicationDataType newType) {
        ApplicationDataType oldType = this.type;
        this.type = newType;
        AutosarObjectUtil.setDest((EObject)this, (int)21, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldType, (Object)this.type));
        }
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 20: {
                return this.gGetElementType();
            }
            case 21: {
                if (resolve) {
                    return this.getType();
                }
                return this.basicGetType();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 20: {
                this.gSetElementType((GApplicationDataType)newValue);
                return;
            }
            case 21: {
                this.setType((ApplicationDataType)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 20: {
                this.gSetElementType(null);
                return;
            }
            case 21: {
                this.setType(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 20: {
                return this.gGetElementType() != null;
            }
            case 21: {
                return this.type != null;
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GApplicationCompositeElementDataPrototype.class) {
            switch (derivedFeatureID) {
                case 20: {
                    return 6;
                }
            }
            return -1;
        }
        return super.eBaseStructuralFeatureID(derivedFeatureID, baseClass);
    }

    @Override
    public int eDerivedStructuralFeatureID(int baseFeatureID, Class<?> baseClass) {
        if (baseClass == GApplicationCompositeElementDataPrototype.class) {
            switch (baseFeatureID) {
                case 6: {
                    return 20;
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
}

