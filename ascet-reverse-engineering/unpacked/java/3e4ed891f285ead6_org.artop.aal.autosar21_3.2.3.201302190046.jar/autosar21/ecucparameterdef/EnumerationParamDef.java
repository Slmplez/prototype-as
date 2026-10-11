/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gecucparameterdef.GEnumerationParamDef
 *  org.eclipse.emf.common.util.EList
 */
package autosar21.ecucparameterdef;

import autosar21.ecucparameterdef.ConfigParameter;
import autosar21.ecucparameterdef.EnumerationLiteralDef;
import gautosar.gecucparameterdef.GEnumerationParamDef;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface EnumerationParamDef
extends ConfigParameter,
GEnumerationParamDef {
    public String getDefaultValue();

    public void setDefaultValue(String var1);

    public void unsetDefaultValue();

    public boolean isSetDefaultValue();

    public EList<EnumerationLiteralDef> getLiterals();
}

