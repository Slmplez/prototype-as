/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar21.ecucparameterdef;

import autosar21.ecucparameterdef.CommonConfigurationAttributes;
import autosar21.ecucparameterdef.ConfigurationAffection;
import autosar21.genericstructure.infrastructure.ARObject;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ConfigurationClassAffection
extends ARObject {
    public CommonConfigurationAttributes getCommonConfigurationAttributes();

    public void setCommonConfigurationAttributes(CommonConfigurationAttributes var1);

    public EList<CommonConfigurationAttributes> getAffecteds();

    public ConfigurationAffection getAffectionKind();

    public void setAffectionKind(ConfigurationAffection var1);

    public void unsetAffectionKind();

    public boolean isSetAffectionKind();
}

