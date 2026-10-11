/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package gautosar.gecucparameterdef;

import gautosar.gecucparameterdef.GConfigParameter;
import gautosar.gecucparameterdef.GEnumerationLiteralDef;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface GEnumerationParamDef
extends GConfigParameter {
    public EList<GEnumerationLiteralDef> gGetLiterals();

    public String gGetDefaultValue();

    public void gSetDefaultValue(String var1);
}

