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

import autosar21.genericstructure.commonpatterns.inlinetextmodel.impl.MixedContent5Impl;
import autosar21.genericstructure.commonpatterns.singlelanguagedata.SinglelanguagedataPackage;
import autosar21.genericstructure.commonpatterns.singlelanguagedata.SlData5;
import java.util.Collection;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.util.EDataTypeUniqueEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class SlData5Impl
extends MixedContent5Impl
implements SlData5 {
    protected EList<String> allowBreaks;
    protected EList<String> floats;
    protected EList<String> helpEntries;
    protected EList<String> keepWithPrevious;
    protected EList<String> pgwides;
    protected EList<String> xmlspaces;

    protected SlData5Impl() {
    }

    @Override
    protected EClass eStaticClass() {
        return SinglelanguagedataPackage.Literals.SL_DATA5;
    }

    @Override
    public EList<String> getAllowBreaks() {
        if (this.allowBreaks == null) {
            this.allowBreaks = new EDataTypeUniqueEList.Unsettable(String.class, (InternalEObject)this, 5);
        }
        return this.allowBreaks;
    }

    @Override
    public void unsetAllowBreaks() {
        if (this.allowBreaks != null) {
            ((InternalEList.Unsettable)this.allowBreaks).unset();
        }
    }

    @Override
    public boolean isSetAllowBreaks() {
        return this.allowBreaks != null && ((InternalEList.Unsettable)this.allowBreaks).isSet();
    }

    @Override
    public EList<String> getFloats() {
        if (this.floats == null) {
            this.floats = new EDataTypeUniqueEList.Unsettable(String.class, (InternalEObject)this, 6);
        }
        return this.floats;
    }

    @Override
    public void unsetFloats() {
        if (this.floats != null) {
            ((InternalEList.Unsettable)this.floats).unset();
        }
    }

    @Override
    public boolean isSetFloats() {
        return this.floats != null && ((InternalEList.Unsettable)this.floats).isSet();
    }

    @Override
    public EList<String> getHelpEntries() {
        if (this.helpEntries == null) {
            this.helpEntries = new EDataTypeUniqueEList.Unsettable(String.class, (InternalEObject)this, 7);
        }
        return this.helpEntries;
    }

    @Override
    public void unsetHelpEntries() {
        if (this.helpEntries != null) {
            ((InternalEList.Unsettable)this.helpEntries).unset();
        }
    }

    @Override
    public boolean isSetHelpEntries() {
        return this.helpEntries != null && ((InternalEList.Unsettable)this.helpEntries).isSet();
    }

    @Override
    public EList<String> getKeepWithPrevious() {
        if (this.keepWithPrevious == null) {
            this.keepWithPrevious = new EDataTypeUniqueEList.Unsettable(String.class, (InternalEObject)this, 8);
        }
        return this.keepWithPrevious;
    }

    @Override
    public void unsetKeepWithPrevious() {
        if (this.keepWithPrevious != null) {
            ((InternalEList.Unsettable)this.keepWithPrevious).unset();
        }
    }

    @Override
    public boolean isSetKeepWithPrevious() {
        return this.keepWithPrevious != null && ((InternalEList.Unsettable)this.keepWithPrevious).isSet();
    }

    @Override
    public EList<String> getPgwides() {
        if (this.pgwides == null) {
            this.pgwides = new EDataTypeUniqueEList.Unsettable(String.class, (InternalEObject)this, 9);
        }
        return this.pgwides;
    }

    @Override
    public void unsetPgwides() {
        if (this.pgwides != null) {
            ((InternalEList.Unsettable)this.pgwides).unset();
        }
    }

    @Override
    public boolean isSetPgwides() {
        return this.pgwides != null && ((InternalEList.Unsettable)this.pgwides).isSet();
    }

    @Override
    public EList<String> getXmlspaces() {
        if (this.xmlspaces == null) {
            this.xmlspaces = new EDataTypeUniqueEList.Unsettable(String.class, (InternalEObject)this, 10);
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
                return this.getAllowBreaks();
            }
            case 6: {
                return this.getFloats();
            }
            case 7: {
                return this.getHelpEntries();
            }
            case 8: {
                return this.getKeepWithPrevious();
            }
            case 9: {
                return this.getPgwides();
            }
            case 10: {
                return this.getXmlspaces();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 5: {
                this.getAllowBreaks().clear();
                this.getAllowBreaks().addAll((Collection)newValue);
                return;
            }
            case 6: {
                this.getFloats().clear();
                this.getFloats().addAll((Collection)newValue);
                return;
            }
            case 7: {
                this.getHelpEntries().clear();
                this.getHelpEntries().addAll((Collection)newValue);
                return;
            }
            case 8: {
                this.getKeepWithPrevious().clear();
                this.getKeepWithPrevious().addAll((Collection)newValue);
                return;
            }
            case 9: {
                this.getPgwides().clear();
                this.getPgwides().addAll((Collection)newValue);
                return;
            }
            case 10: {
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
                this.unsetAllowBreaks();
                return;
            }
            case 6: {
                this.unsetFloats();
                return;
            }
            case 7: {
                this.unsetHelpEntries();
                return;
            }
            case 8: {
                this.unsetKeepWithPrevious();
                return;
            }
            case 9: {
                this.unsetPgwides();
                return;
            }
            case 10: {
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
                return this.isSetAllowBreaks();
            }
            case 6: {
                return this.isSetFloats();
            }
            case 7: {
                return this.isSetHelpEntries();
            }
            case 8: {
                return this.isSetKeepWithPrevious();
            }
            case 9: {
                return this.isSetPgwides();
            }
            case 10: {
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
        result.append(" (allowBreaks: ");
        result.append(this.allowBreaks);
        result.append(", floats: ");
        result.append(this.floats);
        result.append(", helpEntries: ");
        result.append(this.helpEntries);
        result.append(", keepWithPrevious: ");
        result.append(this.keepWithPrevious);
        result.append(", pgwides: ");
        result.append(this.pgwides);
        result.append(", xmlspaces: ");
        result.append(this.xmlspaces);
        result.append(')');
        return result.toString();
    }
}

