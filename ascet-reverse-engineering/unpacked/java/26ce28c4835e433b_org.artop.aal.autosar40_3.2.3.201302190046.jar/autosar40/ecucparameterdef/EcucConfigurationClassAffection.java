/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.ecucparameterdef;

import autosar40.ecucparameterdef.EcucAffectionEnum;
import autosar40.ecucparameterdef.EcucCommonAttributes;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface EcucConfigurationClassAffection
extends ARObject {
    public EcucCommonAttributes getEcucCommonAttributes();

    public void setEcucCommonAttributes(EcucCommonAttributes var1);

    public EList<EcucCommonAttributes> getAffecteds();

    public EcucAffectionEnum getAffectionKind();

    public void setAffectionKind(EcucAffectionEnum var1);

    public void unsetAffectionKind();

    public boolean isSetAffectionKind();
}

