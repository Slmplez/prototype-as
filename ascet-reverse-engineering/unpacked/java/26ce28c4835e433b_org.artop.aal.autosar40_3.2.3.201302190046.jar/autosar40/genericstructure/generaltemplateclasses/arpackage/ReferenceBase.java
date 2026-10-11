/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.genericstructure.generaltemplateclasses.arpackage;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.arpackage.ARPackage;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ReferenceBase
extends ARObject {
    public ARPackage getARPackage();

    public void setARPackage(ARPackage var1);

    public String getShortLabel();

    public void setShortLabel(String var1);

    public void unsetShortLabel();

    public boolean isSetShortLabel();

    public Boolean getIsDefault();

    public void setIsDefault(Boolean var1);

    public void unsetIsDefault();

    public boolean isSetIsDefault();

    public Boolean getIsGlobal();

    public void setIsGlobal(Boolean var1);

    public void unsetIsGlobal();

    public boolean isSetIsGlobal();

    public Boolean getBaseIsThisPackage();

    public void setBaseIsThisPackage(Boolean var1);

    public void unsetBaseIsThisPackage();

    public boolean isSetBaseIsThisPackage();

    public EList<String> getGlobalElements();

    public void unsetGlobalElements();

    public boolean isSetGlobalElements();

    public ARPackage getPackage();

    public void setPackage(ARPackage var1);
}

