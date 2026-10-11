/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.util.EDataTypeUniqueEList$Unsettable
 *  org.eclipse.emf.ecore.util.InternalEList$Unsettable
 */
package autosar21.genericstructure.commonpatterns.singlelanguagedata.impl;

import autosar21.genericstructure.commonpatterns.inlinetextmodel.impl.MixedContent3Impl;
import autosar21.genericstructure.commonpatterns.singlelanguagedata.SinglelanguagedataPackage;
import autosar21.genericstructure.commonpatterns.singlelanguagedata.SlData3p;
import java.util.Collection;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.util.EDataTypeUniqueEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class SlData3pImpl
extends MixedContent3Impl
implements SlData3p {
    protected EList<String> xmlspaces;

    protected SlData3pImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return SinglelanguagedataPackage.Literals.SL_DATA3P;
    }

    @Override
    public EList<String> getXmlspaces() {
        if (this.xmlspaces == null) {
            this.xmlspaces = new EDataTypeUniqueEList.Unsettable(String.class, (InternalEObject)this, 5);
        }
        return this.xmlspaces;
    }

    @Override
    public void unsetXmlspaces() {
        if (this.xmlspaces != null) {
            ((InternalEList.Unsettable)this.xmlspaces).unset();
        }
    }

    @Override
    public boolean isSetXmlspaces() {
        return this.xmlspaces != null && ((InternalEList.Unsettable)this.xmlspaces).isSet();
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 5: {
                return this.getXmlspaces();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 5: {
                this.getXmlspaces().clear();
                this.getXmlspaces().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 5: {
                this.unsetXmlspaces();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 5: {
                return this.isSetXmlspaces();
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (xmlspaces: ");
        result.append(this.xmlspaces);
        result.append(')');
        return result.toString();
    }
}

